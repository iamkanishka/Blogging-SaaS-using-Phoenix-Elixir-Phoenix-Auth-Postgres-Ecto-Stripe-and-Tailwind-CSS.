defmodule Blogging.Likes.Like do
  use Ecto.Schema
  import Ecto.Changeset

  alias Blogging.Users.User
  alias Blogging.Posts.Post

  schema "likes" do
    belongs_to :user, User
    belongs_to :post, Post
  end

  @doc false
  @impl true
  def changeset(Ecto.Changeset = like, attrs \\ %{}) do
    like
    |> cast(attrs, [:user_id, :post_id])
    |> validate_required([:user_id, :post_id])
     |> unique_constraint([:user_id, :post_id])
    |> foreign_key_constraint(:user_id)
    |> foreign_key_constraint(:post_id)
    |> assoc_constraint(:user_id)
    |> assoc_constraint(:post_id)
  end
end
