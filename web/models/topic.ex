defmodule Discuss.Topic do
  use Discuss.Web, :model

  schema "topics" do
    field :title, :string
  end

  def changeset(struct, params \\ %{}) do
    # struct is the model in the database
    # params how we are going to update struct
    # cast produces the changeset
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
    # output is the final changeset to update and it is
    # what actually gets into the database
  end
end
