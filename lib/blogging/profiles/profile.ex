defmodule Blogging.Profiles.Profile do
  use Ecto.Schema
  import Ecto.Changeset

  alias Blogging.Users.User

  schema "profiles" do
    field :first_name, :string
    field :last_name, :string
    field :age, :integer
    field :bio, :string

    belongs_to :user, User

    timestamps()
  end

  @doc false
  def changeset(Ecto.Changeset = profile, attrs \\ %{}) do
    profile
    |> cast(attrs, [:first_name, :last_name, :age, :user_id])
    |> validate_required(attrs, [:first_name, :last_name, :age])
    |> assoc_constraint(:user)
  end
end
