defmodule BootstrapDemo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      BootstrapDemoWeb.Telemetry,
      BootstrapDemo.Repo,
      {DNSCluster, query: Application.get_env(:bootstrap_demo, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: BootstrapDemo.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: BootstrapDemo.Finch},
      # Start a worker by calling: BootstrapDemo.Worker.start_link(arg)
      # {BootstrapDemo.Worker, arg},
      # Start to serve requests, typically the last entry
      BootstrapDemoWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: BootstrapDemo.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    BootstrapDemoWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
