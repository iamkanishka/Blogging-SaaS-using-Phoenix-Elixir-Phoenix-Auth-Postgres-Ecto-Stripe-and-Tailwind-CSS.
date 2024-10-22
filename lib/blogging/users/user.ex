defmodule Blogging.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Blogging.Likes.Like
  alias Blogging.Posts.Post
  alias Blogging.Profiles.Profile
  alias Blogging.Comments.Comment


  schema "users" do
    field :email, :string
    field :hash_password, :string

    has_one :profile, Profile
    has_many :posts, Post
    has_many :comments, Comment
    has_many :likes, Like


    timestamps()
  end

  @doc false
  def changeset(user, attrs \\ %{}) do
    user
    |> cast(attrs, [:email, :hash_password])
    |> validate_required([:email, :hash_password])
    |> unique_constraint([:email, :hash_password])
  end
end
