defmodule Tango.Repo.Migrations.CreateSession do
  use Ecto.Migration

  def change do
    create table(:sessions) do
      add :name, :string
      add :content, :text
      add :slug, :string

      timestamps
    end

  end
end
