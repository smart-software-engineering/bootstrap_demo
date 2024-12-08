# Bootstrap Demo

This is a simple Phoenix Live View Application replacing tailwind with getbootstrap. While I generally agree that tailwind is a nice
thing it still has a higher lurning curve than bootstrap in my opinion so I wanted to test out how war I can get within 8 hours (ticking now).

## Step-by-step instruction

1. `mix phx.new bootstrap_demo --no-tailwind`
2. Follow the instructions on [Esbuild Plugins](https://hexdocs.pm/phoenix/asset_management.html#esbuild-plugins)
2. `npm i bootstrap@5.3.3 --prefix assets`
3. Create a simple live view under `lib/boostrap_demo_web/live/bootstrap_live.ex`
4. Add it to the router: `live "/demo", BootstrapLive`


## To view it

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
