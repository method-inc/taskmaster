defmodule SimpleServer.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: SimpleServer.Worker.start_link(arg)
      # {SimpleServer.Worker, arg}
      Plug.Adapters.Cowboy.child_spec(scheme: :http, plug: SimpleServer.Router, options: [port: application_port()])
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SimpleServer.Supervisor]
    Supervisor.start_link(children, opts)
  end

  defp application_port do
    System.get_env()
    |> Map.get("PORT", "8085")
    |> String.to_integer()
  end
end
