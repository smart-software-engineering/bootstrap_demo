defmodule BootstrapDemo.Repo do
  use Ecto.Repo,
    otp_app: :bootstrap_demo,
    adapter: Ecto.Adapters.Postgres
end
