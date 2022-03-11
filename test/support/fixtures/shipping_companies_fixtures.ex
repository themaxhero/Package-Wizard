defmodule PackageWizard.ShippingCompaniesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PackageWizard.ShippingCompanies` context.
  """

  @doc """
  Generate a shipping_company.
  """
  def shipping_company_fixture(attrs \\ %{}) do
    {:ok, shipping_company} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> PackageWizard.ShippingCompanies.create_shipping_company()

    shipping_company
  end
end
