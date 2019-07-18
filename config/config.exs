# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_live_view_demo,
  ecto_repos: [PhoenixLiveViewDemo.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :phoenix_live_view_demo, PhoenixLiveViewDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JABcesT5/LR/oQJ3JToCQA/pO8Y3QgS78VwXPSs2SQnQTX4otK+9fQ2TiZJrFkyo",
  render_errors: [view: PhoenixLiveViewDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixLiveViewDemo.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "cH1BmJputcsrzw+v/usGU+czy3/XOMVA"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
