# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :foobar,
  ecto_repos: [Foobar.Repo]

# Configures the endpoint
config :foobar, FoobarWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9iAX0z7vrklMdwDVTUP8F0fjwHRrcJ3O7EHNTLIhX4lQZxVc7eMzXldgpCWO1pEg",
  render_errors: [view: FoobarWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Foobar.PubSub,
  live_view: [signing_salt: "ntakUDXO"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
