# Actorbot

This is intended to be the Elixir equivalent of Lambdabot. I don't know what features I intend to support long-term, but at a minimum, I think the following is essential.

- Executing (sandboxed) Elixir code
- Fetching docs for a given function or module

Also useful, though less necessary:

- Hoogle-like lookup of types, possibly through a database of Dialyzer PLTs
- Linking builtin modules directly to their source code on GitHub

Please open an issue or message me on Slack if you have other ideas.

As a first pass, I am implementing it as slash commands for Slack, since I am always in [the Elixir Slack](https://elixir-lang.slack.com/). That being said, I want it to be easy to add support for IRC.

I am also starting with a Heroku deployment, but only for ease of prototyping. If the project proves useful and popular, it should be adapted to use Distillery.
