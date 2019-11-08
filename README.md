taksmaster

## Background 📓

Chad and Chris are putting together a small project to learn the Elixir language, which
runs on the ERLANG virtual machine and is really cool. The project will be a very simple
version of task/work ticket management similar to JIRA but hopefully simplier and easier
to use. We also plan on having humor ingrained throughout the project. Simple goals are
to serve the application, use postgres for database, have different levels of user/credentials,
a live chat feature for users/teams. The plan for the moment is to deliver SOMETHING and host it
via Heroku.

## Deployed 🚀

https://taskmaster2000.herokuapp.com/

## Develop 💻

1. Install exlixir if you haven't: `brew install elixir`
2. Install dependencies: `mix deps.get`
3. Start the app in the REPL: `iex -S mix`
4. open http://localhost:8085/hello

## Tests 🚦

Run the tests: `mix test`

## Docs 📚

Compile the docs: `mix docs`

View the docs: `open doc/index.html`

## Dev Log 📝

Deployment steps:

1. Created an [app on heroku](https://taskmaster2000.herokuapp.com/), connected it to autodeploy from the `master` branch on github.
2. in Terminal, add the buildpack: `heroku buildpacks:set hashnuke/elixir`
3. add a [config file](https://github.com/Skookum/taskmaster/blob/master/elixir_buildpack.config) for the buildpack. ([more info](https://github.com/HashNuke/heroku-buildpack-elixir#configuration))
4. Heroku passes the app a PORT variable. [Handle this here](https://github.com/Skookum/taskmaster/blob/c102768785d468b919669ad27e7f4f9099b494ca/lib/simple_server/application.ex#L21).

---

To whom it may concern, what has been done so far was from a simple get
started guide I (Chad Windham) found
[Here](https://www.jungledisk.com/blog/2018/03/19/tutorial-a-simple-http-server-in-elixir/)

Latest update (Oct. 28, 2019) Super simple server is up and running. With current code you can run
`iex -S mix` and the server will be up and running. From your terminal you can run
`curl -v "http://127.0.0.1:8085/hello"` to get a response! You can also use your browser and
visit `http://localhost:8085/hello` to get the response of "world". Also, if you want to test out
a basic post. Run `curl -v -H 'Content-Type: application/json' "http://localhost:8085/post" -d '{"message": "hello world" }'` from your terminal.

