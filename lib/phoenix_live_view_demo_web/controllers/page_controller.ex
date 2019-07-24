defmodule PhoenixLiveViewDemoWeb.PageController do
  use PhoenixLiveViewDemoWeb, :controller
  require Logger

  def index(conn, _params) do
    temperature = 22

    Logger.warn(temperature)

    conn
      |> put_session(:temperature, temperature)
      |> assign(:temperature, temperature)
      |> render("index.html")
  end
end
