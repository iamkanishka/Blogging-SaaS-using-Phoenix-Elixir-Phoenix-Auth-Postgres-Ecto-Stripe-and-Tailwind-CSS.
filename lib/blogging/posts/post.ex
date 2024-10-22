defmodule Blogging.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  alias Blogging.Users.User
  alias Blogging.Comments.Comment

  schema "posts" do
    field :title, :string
    field :content, :string
    field :author, :string

    has_many :comments, Comment

    belongs_to :user, User

    timestamps()
  end

  def changeset(post, attrs \\ %{}) do
    post
    |> cast(attrs, [:title, :content, :author])
    |> cast(attrs, [:title, :content, :author])
    |> assoc_constraint(:user)
  end
end
