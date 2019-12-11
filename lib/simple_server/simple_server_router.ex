defmodule SimpleServer.Router do
  @moduledoc """
  The router for our SimpleServer
  """
  use Plug.Router
  use Plug.Debugger
  require Logger
  plug Plug.Logger, log: :debug
  plug :match
  plug Plug.Static, at: "/", from: "pub"
  plug :dispatch

  # Simple GET Request handler for path /hello
  get "/hello" do
    conn
    |> send_resp(200, "world")
  end

  # Basic example to handle POST requests with a JSON body
  post "/post" do
    {:ok, body, conn} = read_body(conn)
    body = Poison.decode!(body)
    IO.inspect(body)
    send_resp(conn, 201, "created: #{get_in(body, ["message"])}")
  end

  # Sending some actual files now
  get "/readme" do
    conn
    |> put_resp_content_type("text/plain")
    |> send_file(200, "README.md")
  end

  get "/firsthtml" do
    conn
    |> put_resp_content_type("text/html")
    |> send_file(200, "practice.html")
  end

  get "/otherpath" do
    conn
    |> send_file(200, "lib/simple_server/static/other_practice.html")
  end

  # "Default" route that will get called when no other route is matched
  match _ do
    conn
    |> send_resp(404, "aw shoot, not found")
  end
end
