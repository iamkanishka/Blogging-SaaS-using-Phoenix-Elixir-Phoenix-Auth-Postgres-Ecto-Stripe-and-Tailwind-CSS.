defmodule Blogging.Comments.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  alias Blogging.Posts.Post
  alias Blogging.Users.User

  schema "comments" do
    field :content, :string

    belongs_to :post, Post
    belongs_to :user, User

    timestamps()
  end

  def changeset(Ecto.Changeset = comment, attrs \\ %{}) do
    comment
    |> cast(attrs, [:content, :user_id, :post_id])
    |> validate_required([:content, :user_id, :post_id])
    |> assoc_constraint(:post)
    |> assoc_constraint(:user)
  end
end
