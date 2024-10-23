defmodule Blogging.Comments.Comments do
  alias Blogging.Comments.Comment
  alias Blogging.Repo

  def insert_data() do
    comments_data = [
      %{
        content: "Great post! Very inspiring.",
        post_id: 1,
        user_id: 2,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        content: "Can't wait to visit the Alps myself.",
        post_id: 2,
        user_id: 3,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        content: "Music really does heal the soul.",
        post_id: 3,
        user_id: 4,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        content: "Thanks for the book recommendations!",
        post_id: 4,
        user_id: 5,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        content: "These JavaScript tips saved my day.",
        post_id: 5,
        user_id: 6,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        content: "I tried this cake recipe and it was amazing!",
        post_id: 6,
        user_id: 7,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        content: "Totally agree with your top 5 list.",
        post_id: 7,
        user_id: 8,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        content: "We need more people raising awareness.",
        post_id: 8,
        user_id: 9,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        content: "Adding these sci-fi books to my list!",
        post_id: 9,
        user_id: 10,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        content: "This is a very calming article, thanks.",
        post_id: 10,
        user_id: 1,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      }
    ]

    Repo.insert_all(Comment, comments_data)
  end
end
