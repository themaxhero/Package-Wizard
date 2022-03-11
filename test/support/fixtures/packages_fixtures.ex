defmodule PackageWizard.PackagesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PackageWizard.Packages` context.
  """

  @doc """
  Generate a package.
  """
  def package_fixture(attrs \\ %{}) do
    {:ok, package} =
      attrs
      |> Enum.into(%{
        active: true,
        invoice_code: "some invoice_code",
        label: "some label",
        shipping_price: "120.5",
        tracking_code: "some tracking_code",
        weight: "120.5"
      })
      |> PackageWizard.Packages.create_package()

    package
  end
end
