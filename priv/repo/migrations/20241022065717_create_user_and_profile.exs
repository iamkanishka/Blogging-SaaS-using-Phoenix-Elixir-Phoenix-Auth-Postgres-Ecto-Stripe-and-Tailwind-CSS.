defmodule Blogging.Repo.Migrations.CreateUserAndProfile do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :hash_password, :string
      timestamps()
    end

    create table(:profiles) do
      add :first_name, :string, null: false
      add :last_name, :string, null: false
      add :bio, :string, null: false
      add :age, :integer, null: false

      add :user_id, references(:users, on_delete: :delete_all), null: false
      timestamps()
    end

    create index(:users, [:email])

    create index(:profiles, [:user_id])
  end
end
