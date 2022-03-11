defmodule PackageWizard.LogisticCompanies do
  @moduledoc """
  The LogisticCompanies context.
  """

  import Ecto.Query, warn: false
  alias PackageWizard.Repo

  alias PackageWizard.LogisticCompanies.LogisticCompany

  @doc """
  Returns the list of logistic_companies.

  ## Examples

      iex> list_logistic_companies()
      [%LogisticCompany{}, ...]

  """
  def list_logistic_companies do
    Repo.all(LogisticCompany)
  end

  @doc """
  Gets a single Logistic_company.

  Raises `Ecto.NoResultsError` if the logistic company does not exist.

  ## Examples

      iex> get_logistic_company!(123)
      %LogisticCompany{}

      iex> get_logistic_company!(456)
      ** (Ecto.NoResultsError)

  """
  def get_logistic_company!(id), do: Repo.get!(LogisticCompany, id)

  @doc """
  Creates a logistic_company.

  ## Examples

      iex> create_logistic_company(%{field: value})
      {:ok, %LogisticCompany{}}

      iex> create_logistic_company(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_logistic_company(attrs \\ %{}) do
    %LogisticCompany{}
    |> LogisticCompany.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a logistic_company.

  ## Examples

      iex> update_logistic_company(logistic_company, %{field: new_value})
      {:ok, %LogisticCompany{}}

      iex> update_logistic_company(logistic_company, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_logistic_company(%LogisticCompany{} = logistic_company, attrs) do
    logistic_company
    |> LogisticCompany.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a logistic_company.

  ## Examples

      iex> delete_logistic_company(logistic_company)
      {:ok, %LogisticCompany{}}

      iex> delete_logistic_company(logistic_company)
      {:error, %Ecto.Changeset{}}

  """
  def delete_logistic_company(%LogisticCompany{} = logistic_company) do
    Repo.delete(logistic_company)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking logistic_company changes.

  ## Examples

      iex> change_logistic_company(logistic_company)
      %Ecto.Changeset{data: %LogisticCompany{}}

  """
  def change_logistic_company(%LogisticCompany{} = logistic_company, attrs \\ %{}) do
    LogisticCompany.changeset(logistic_company, attrs)
  end
end
