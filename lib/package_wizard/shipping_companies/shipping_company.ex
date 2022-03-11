defmodule PackageWizard.ShippingCompanies.ShippingCompany do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "shipping_companies" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(shipping_company, attrs) do
    shipping_company
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
