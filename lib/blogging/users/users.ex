defmodule Blogging.Users.Users do
  alias Blogging.Users.User
  alias Blogging.Repo

  import Ecto.Query, warn: false


  def list_users do
     User
     |> preload(:profile)
     |> preload(:posts)
     |> preload(:comments)
     |> preload(:likes)


     |> Repo.all()

  end

  def insert_data() do
    users_data = [
      %{
        email: "alice@example.com",
        hash_password: "asdcasdhgcvasdc",
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        email: "bob@example.com",
        hash_password: "asdcasdcasdcasdc",
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        email: "charlie@example.com",
        hash_password: "asdctrertgb",
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        email: "dave@example.com",
        hash_password: "retadqwerfergyhg",
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        email: "eve@example.com",
        hash_password: "sdfvsdfvsdf",
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        email: "frank@example.com",
        hash_password: "dfgbdfgbdfgb",
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        email: "grace@example.com",
        hash_password: "rterhbyjhryj",
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        email: "heidi@example.com",
        hash_password: "sfdvsdfvw",
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        email: "ivan@example.com",
        hash_password: "serterytrtyh",
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        email: "judy@example.com",
        hash_password: "setrgerthyeh",
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      }
    ]

    Repo.insert_all(User, users_data)
  end
end
