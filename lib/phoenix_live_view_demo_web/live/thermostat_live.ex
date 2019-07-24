defmodule PhoenixLiveViewDemoWeb.ThermostatLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <h3>Current temperature</h3>
    <h1><b><%= @temperature %></b></h1>
    <button phx-click="add" style="text-align: center; font-weight: bold; font-size: 1.2em;">+</button>
    <button phx-click="reduce" style="text-align: center; font-weight: bold; font-size: 1.2em;">-</button>
    """
  end

  def mount(%{temperature: temperature}, socket) do
    {:ok, assign(socket, :temperature, temperature)}
  end

  def handle_event("add", _args, %{assigns: %{temperature: temperature}} = socket) do
    {:noreply, assign(socket, :temperature, temperature + 1)}
  end

  def handle_event("reduce", _args, %{assigns: %{temperature: temperature}} = socket) do
    {:noreply, assign(socket, :temperature, temperature - 1)}
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
