defmodule Blogging.Profiles.Profiles do
  alias Blogging.Profiles.Profile
  alias Blogging.Repo

  def insert_data() do
    profiles_data = [
      %{
        first_name: "sadcadsc",
        last_name: "tttt",
        age: 0,
        bio: "Loves to code and play chess.",
        user_id: 1,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        first_name: "rwefwre",
        last_name: "ttttrregfwert",
        age: 0,
        bio: "Photographer and traveler.",
        user_id: 2,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        first_name: "trgtbfdgb",
        last_name: "sfv",
        age: 0,
        bio: "Music lover and guitar player.",
        user_id: 3,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        first_name: "dfgbfgb",
        last_name: "ttt",
        age: 0,
        bio: "Avid reader and blogger.",
        user_id: 4,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        first_name: "dfgbrewf",
        last_name: "tsfdvsdfv",
        age: 0,
        bio: "Tech enthusiast, full-stack developer.",
        user_id: 5,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        first_name: "werf",
        last_name: "tyyhybdfg",
        age: 0,
        bio: "Baking and cooking are my passion.",
        user_id: 6,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        first_name: "rstbg",
        last_name: "aedasdf",
        age: 0,
        bio: "Sports fanatic, especially basketball.",
        user_id: 7,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        first_name: "dddd",
        last_name: "ewqwef",
        age: 0,
        bio: "Animal lover and environmentalist.",
        user_id: 8,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        first_name: "fffff",
        last_name: "sdfsfdv",
        age: 0,
        bio: "Science fiction writer and enthusiast.",
        user_id: 9,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      },
      %{
        first_name: "vv",
        last_name: "sdfvsdfv",
        age: 0,
        bio: "Yoga instructor and mindfulness advocate.",
        user_id: 10,
        inserted_at: ~N[2024-10-10 12:00:00],
        updated_at: ~N[2024-10-10 12:00:00]
      }
    ]

    Repo.insert_all(Profile, profiles_data)
  end
end
