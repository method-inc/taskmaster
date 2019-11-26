# SimpleServer

To whom it may concern, what has been done so far was from a simple get
started guide I (Chad Windham) found [Here](https://www.jungledisk.com/blog/2018/03/19/tutorial-a-simple-http-server-in-elixir/)

Latest update (Nov. 25, 2019) Super simple server is up and running. With current code you can run
`iex -S mix` and the server will be up and running. From your terminal you can run
`curl -v "http://127.0.0.1:8085/hello"` to get a response! You can also use your browser and
visit `http://localhost:8085/hello` to get the response of "world". Also, if you want to test out
a basic post. Run `curl -v -H 'Content-Type: application/json' "http://localhost:8085/post" -d '{"message": "hello world" }'` from your terminal.

Added some new paths to checkout out, the server will now respond with this README.md file
if you visit `http://localhost:8085/readme`, it will respond with an html file if you visit
`http://localhost:8085/firsthtml`. Finally, just for playing around with different file paths,
you can visit `http://localhost:8085/otherpath`

## Description

Chad and Chris are putting together a small project to learn the Elixir language, which
runs on the ERLANG virtual machine and is really cool. The project will be a very simple
version of task/work ticket management similar to JIRA but hopefully simplier and easier
to use. We also plan on having humor ingrained throughout the project. Simple goals are
to serve the application, use postgres for database, have different levels of user/credentials,
a live chat feature for users/teams. The plan for the moment is to deliver SOMETHING and host it
via Heroku.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `simple_server` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:simple_server, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/simple_server](https://hexdocs.pm/simple_server).
