defmodule PackageWizard.Packages.Package do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "packages" do
    field :active, :boolean, default: false
    field :invoice_code, :string
    field :label, :string
    field :shipping_price, :decimal
    field :tracking_code, :string
    field :weight, :decimal

    timestamps()
  end

  @doc false
  def changeset(package, attrs) do
    package
    |> cast(attrs, [:label, :tracking_code, :weight, :invoice_code, :shipping_price, :active])
    |> validate_required([:label, :tracking_code, :weight, :invoice_code, :shipping_price, :active])
  end
end
