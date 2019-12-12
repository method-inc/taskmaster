defmodule TaskmasterWeb.PageController do
  use TaskmasterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
