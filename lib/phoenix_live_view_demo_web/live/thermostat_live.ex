defmodule PhoenixLiveViewDemoWeb.ThermostatLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    Current temperature: <%= @temperature %>
    """
  end

  def mount(%{user_id: user_id}, socket) do
    {:ok, assign(socket, :temperature, user_id)}
  end

  # def mount(%{id: id, current_user_id: user_id}, socket) do
    # case Thermostat.get_user_reading(user_id, id) do
      # {:ok, temperature} ->
        # {:ok, assign(socket, :temperature, temperature)}

      # {:error, reason} ->
        # {:error, reason}
    # end
  # end
end
