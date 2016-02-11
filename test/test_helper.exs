ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Tango.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Tango.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Tango.Repo)

