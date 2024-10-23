defmodule Blogging.Posts.Posts do
  alias Blogging.Posts.Post
  alias Blogging.Repo

  def insert_data() do
    posts_data = [
      %{
        title: "My First Blog Post",
        content: "This is my first post content.",
        author: "asdcasdca",
        user_id: 1,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        title: "Traveling Through the Alps",
        content: "An unforgettable journey.",
        author: "sdfvsasdrawweeedfv",
        user_id: 2,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        title: "Why I Love Music",
        content: "Music brings joy and peace.",
        author: "sdfvsdfv",
        user_id: 3,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        title: "Top 10 Books of 2023",
        content: "A curated list of my favorite books.",
        author: "sdfvsfghnfdtydfv",
        user_id: 4,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        title: "JavaScript Tips & Tricks",
        content: "Become a better developer with these tips.",
        author: "sfdvscfgghndfv",
        user_id: 5,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        title: "The Best Chocolate Cake Recipe",
        content: "A delicious and simple recipe.",
        author: "sdfvsdftryhrtv",
        user_id: 6,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        title: "Top 5 NBA Players of All Time",
        content: "A breakdown of the best players.",
        author: "sdfvsyuiuyiuydfv",
        user_id: 7,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        title: "Protecting the Planet",
        content: "How we can help the environment.",
        author: "sfvukukisfdv",
        user_id: 8,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        title: "Sci-Fi Book Recommendations",
        content: "Must-read books for sci-fi fans.",
        author: "sfdvstryuutudfv",
        user_id: 9,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        title: "The Power of Mindfulness",
        content: "Achieve peace through mindfulness.",
        author: "ewrfererw",
        user_id: 10,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      }
    ]

    Repo.insert_all(Post, posts_data)
  end
end
