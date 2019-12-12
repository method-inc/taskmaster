# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :taskmaster, Taskmaster.Repo,
  database: "taskmaster_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"

config :taskmaster,
  ecto_repos: [Taskmaster.Repo]

# Configures the endpoint
config :taskmaster, TaskmasterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6bvjUVTjjNSWidf8enxEk+dlW91xiK4WfkJBsNvoRgWj0QAspiGFI1w3CAnUztnX",
  render_errors: [view: TaskmasterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Taskmaster.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
