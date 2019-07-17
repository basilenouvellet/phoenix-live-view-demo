defmodule PhoenixLiveViewDemo.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_live_view_demo,
    adapter: Ecto.Adapters.Postgres
end
