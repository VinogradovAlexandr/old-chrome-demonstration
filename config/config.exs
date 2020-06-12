# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :old_chrome_demonstration,
  ecto_repos: [OldChromeDemonstration.Repo]

# Configures the endpoint
config :old_chrome_demonstration, OldChromeDemonstrationWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XEsJ2hHEhlZC6LJIFhK/jZyQn9ku/wcQqaA6JFsQeVb78N1cBnXldqOa9CLUzgUs",
  render_errors: [view: OldChromeDemonstrationWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: OldChromeDemonstration.PubSub,
  live_view: [signing_salt: "h5htPO8a"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
