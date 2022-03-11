defmodule PackageWizard.Repo.Migrations.CreateLogisticCompanies do
  use Ecto.Migration

  def change do
    create table(:logistic_companies, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string

      timestamps()
    end
  end
end
