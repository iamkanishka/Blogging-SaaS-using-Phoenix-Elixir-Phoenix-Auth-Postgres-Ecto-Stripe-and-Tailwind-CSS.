defmodule Blogging.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string, null: false
      add :content, :string, null: false
      add :author, :string, null: false

      add :user_id, references(:users, on_delete: :delete_all), null: false
      timestamps()
    end

    create index(:posts,  [:user_id])
  end
end
