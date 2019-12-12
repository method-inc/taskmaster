defmodule TaskmasterWeb.Router do
  use TaskmasterWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TaskmasterWeb do
    pipe_through :browser
    get "/", PageController, :index
  end

  scope "/hello", TaskmasterWeb do
    pipe_through :browser
    get "/", HelloController, :index
    get "/:name", HelloController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", TaskmasterWeb do
  #   pipe_through :api
  # end
end
