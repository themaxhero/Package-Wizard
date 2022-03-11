defmodule PackageWizard.ShippingCompanies do
  @moduledoc """
  The ShippingCompanies context.
  """

  import Ecto.Query, warn: false
  alias PackageWizard.Repo

  alias PackageWizard.ShippingCompanies.ShippingCompany

  @doc """
  Returns the list of shipping_companies.

  ## Examples

      iex> list_shipping_companies()
      [%ShippingCompany{}, ...]

  """
  def list_shipping_companies do
    Repo.all(ShippingCompany)
  end

  @doc """
  Gets a single shipping_company.

  Raises `Ecto.NoResultsError` if the Shipping company does not exist.

  ## Examples

      iex> get_shipping_company!(123)
      %ShippingCompany{}

      iex> get_shipping_company!(456)
      ** (Ecto.NoResultsError)

  """
  def get_shipping_company!(id), do: Repo.get!(ShippingCompany, id)

  @doc """
  Creates a shipping_company.

  ## Examples

      iex> create_shipping_company(%{field: value})
      {:ok, %ShippingCompany{}}

      iex> create_shipping_company(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_shipping_company(attrs \\ %{}) do
    %ShippingCompany{}
    |> ShippingCompany.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a shipping_company.

  ## Examples

      iex> update_shipping_company(shipping_company, %{field: new_value})
      {:ok, %ShippingCompany{}}

      iex> update_shipping_company(shipping_company, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_shipping_company(%ShippingCompany{} = shipping_company, attrs) do
    shipping_company
    |> ShippingCompany.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a shipping_company.

  ## Examples

      iex> delete_shipping_company(shipping_company)
      {:ok, %ShippingCompany{}}

      iex> delete_shipping_company(shipping_company)
      {:error, %Ecto.Changeset{}}

  """
  def delete_shipping_company(%ShippingCompany{} = shipping_company) do
    Repo.delete(shipping_company)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking shipping_company changes.

  ## Examples

      iex> change_shipping_company(shipping_company)
      %Ecto.Changeset{data: %ShippingCompany{}}

  """
  def change_shipping_company(%ShippingCompany{} = shipping_company, attrs \\ %{}) do
    ShippingCompany.changeset(shipping_company, attrs)
  end
end
