defmodule PackageWizard.ShopsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PackageWizard.Shops` context.
  """

  @doc """
  Generate a shop.
  """
  def shop_fixture(attrs \\ %{}) do
    {:ok, shop} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> PackageWizard.Shops.create_shop()

    shop
  end
end
