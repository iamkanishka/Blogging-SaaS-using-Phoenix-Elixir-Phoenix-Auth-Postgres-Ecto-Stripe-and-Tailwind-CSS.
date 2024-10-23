defmodule Blogging.Likes.Likes do
  alias Blogging.Likes.Like
  alias Blogging.Repo

  def insert_data() do
    likes_data = [
      %{
        post_id: 1,
        user_id: 2,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        post_id: 1,
        user_id: 3,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        post_id: 2,
        user_id: 1,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        post_id: 2,
        user_id: 3,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        post_id: 3,
        user_id: 4,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        post_id: 3,
        user_id: 5,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        post_id: 4,
        user_id: 1,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        post_id: 5,
        user_id: 6,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        post_id: 6,
        user_id: 7,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        post_id: 7,
        user_id: 8,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      }
    ]

    Repo.insert_all(Like, likes_data)
  end
end
