defmodule PackageWizard.Repo.Migrations.CreatePackages do
  use Ecto.Migration

  def change do
    create table(:packages, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :label, :string
      add :tracking_code, :string
      add :weight, :decimal
      add :invoice_code, :string
      add :shipping_price, :decimal
      add :active, :boolean, default: false, null: false

      timestamps()
    end
  end
end
