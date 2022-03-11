defmodule PackageWizard.Repo.Migrations.CreateShippingCompanies do
  use Ecto.Migration

  def change do
    create table(:shipping_companies, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string

      timestamps()
    end
  end
end
