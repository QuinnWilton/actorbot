defmodule Actorbot do
  use Application

  def start(_type, _args) do
    port =
      Application.get_env(:actorbot, :port)
      |> String.to_integer

    children = [
      Plug.Adapters.Cowboy.child_spec(:http, Actorbot.SlackRouter, [],
        [port: port])
    ]

    opts = [strategy: :one_for_one, name: Actorbot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
