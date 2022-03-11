defmodule PackageWizard.LogisticCompanies.LogisticCompany do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "logistic_companies" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(logistic_company, attrs) do
    logistic_company
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
