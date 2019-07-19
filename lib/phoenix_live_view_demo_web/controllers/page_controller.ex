defmodule PhoenixLiveViewDemoWeb.PageController do
  use PhoenixLiveViewDemoWeb, :controller

  def index(conn, _params) do
    user_id = "1234"

    IO.inspect(user_id)

    conn
      |> put_session(:user_id, user_id)
      |> assign(:user_id, user_id)
      |> render("index.html")
  end
end
