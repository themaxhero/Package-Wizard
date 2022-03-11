defmodule PackageWizard.ShippingCompaniesTest do
  use PackageWizard.DataCase

  alias PackageWizard.ShippingCompanies

  describe "shops" do
    alias PackageWizard.ShippingCompanies.ShippingCompany

    import PackageWizard.ShippingCompaniesFixtures

    @invalid_attrs %{name: nil}

    test "list_shops/0 returns all shops" do
      shipping_company = shipping_company_fixture()
      assert ShippingCompanies.list_shops() == [shipping_company]
    end

    test "get_shipping_company!/1 returns the shipping_company with given id" do
      shipping_company = shipping_company_fixture()
      assert ShippingCompanies.get_shipping_company!(shipping_company.id) == shipping_company
    end

    test "create_shipping_company/1 with valid data creates a shipping_company" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %ShippingCompany{} = shipping_company} = ShippingCompanies.create_shipping_company(valid_attrs)
      assert shipping_company.name == "some name"
    end

    test "create_shipping_company/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = ShippingCompanies.create_shipping_company(@invalid_attrs)
    end

    test "update_shipping_company/2 with valid data updates the shipping_company" do
      shipping_company = shipping_company_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %ShippingCompany{} = shipping_company} = ShippingCompanies.update_shipping_company(shipping_company, update_attrs)
      assert shipping_company.name == "some updated name"
    end

    test "update_shipping_company/2 with invalid data returns error changeset" do
      shipping_company = shipping_company_fixture()
      assert {:error, %Ecto.Changeset{}} = ShippingCompanies.update_shipping_company(shipping_company, @invalid_attrs)
      assert shipping_company == ShippingCompanies.get_shipping_company!(shipping_company.id)
    end

    test "delete_shipping_company/1 deletes the shipping_company" do
      shipping_company = shipping_company_fixture()
      assert {:ok, %ShippingCompany{}} = ShippingCompanies.delete_shipping_company(shipping_company)
      assert_raise Ecto.NoResultsError, fn -> ShippingCompanies.get_shipping_company!(shipping_company.id) end
    end

    test "change_shipping_company/1 returns a shipping_company changeset" do
      shipping_company = shipping_company_fixture()
      assert %Ecto.Changeset{} = ShippingCompanies.change_shipping_company(shipping_company)
    end
  end

  describe "shipping_companies" do
    alias PackageWizard.ShippingCompanies.ShippingCompany

    import PackageWizard.ShippingCompaniesFixtures

    @invalid_attrs %{name: nil}

    test "list_shipping_companies/0 returns all shipping_companies" do
      shipping_company = shipping_company_fixture()
      assert ShippingCompanies.list_shipping_companies() == [shipping_company]
    end

    test "get_shipping_company!/1 returns the shipping_company with given id" do
      shipping_company = shipping_company_fixture()
      assert ShippingCompanies.get_shipping_company!(shipping_company.id) == shipping_company
    end

    test "create_shipping_company/1 with valid data creates a shipping_company" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %ShippingCompany{} = shipping_company} = ShippingCompanies.create_shipping_company(valid_attrs)
      assert shipping_company.name == "some name"
    end

    test "create_shipping_company/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = ShippingCompanies.create_shipping_company(@invalid_attrs)
    end

    test "update_shipping_company/2 with valid data updates the shipping_company" do
      shipping_company = shipping_company_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %ShippingCompany{} = shipping_company} = ShippingCompanies.update_shipping_company(shipping_company, update_attrs)
      assert shipping_company.name == "some updated name"
    end

    test "update_shipping_company/2 with invalid data returns error changeset" do
      shipping_company = shipping_company_fixture()
      assert {:error, %Ecto.Changeset{}} = ShippingCompanies.update_shipping_company(shipping_company, @invalid_attrs)
      assert shipping_company == ShippingCompanies.get_shipping_company!(shipping_company.id)
    end

    test "delete_shipping_company/1 deletes the shipping_company" do
      shipping_company = shipping_company_fixture()
      assert {:ok, %ShippingCompany{}} = ShippingCompanies.delete_shipping_company(shipping_company)
      assert_raise Ecto.NoResultsError, fn -> ShippingCompanies.get_shipping_company!(shipping_company.id) end
    end

    test "change_shipping_company/1 returns a shipping_company changeset" do
      shipping_company = shipping_company_fixture()
      assert %Ecto.Changeset{} = ShippingCompanies.change_shipping_company(shipping_company)
    end
  end
end
