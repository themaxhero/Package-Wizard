defmodule PackageWizard.PackagesTest do
  use PackageWizard.DataCase

  alias PackageWizard.Packages

  describe "packages" do
    alias PackageWizard.Packages.Package

    import PackageWizard.PackagesFixtures

    @invalid_attrs %{active: nil, invoice_code: nil, label: nil, shipping_price: nil, tracking_code: nil, weight: nil}

    test "list_packages/0 returns all packages" do
      package = package_fixture()
      assert Packages.list_packages() == [package]
    end

    test "get_package!/1 returns the package with given id" do
      package = package_fixture()
      assert Packages.get_package!(package.id) == package
    end

    test "create_package/1 with valid data creates a package" do
      valid_attrs = %{active: true, invoice_code: "some invoice_code", label: "some label", shipping_price: "120.5", tracking_code: "some tracking_code", weight: "120.5"}

      assert {:ok, %Package{} = package} = Packages.create_package(valid_attrs)
      assert package.active == true
      assert package.invoice_code == "some invoice_code"
      assert package.label == "some label"
      assert package.shipping_price == Decimal.new("120.5")
      assert package.tracking_code == "some tracking_code"
      assert package.weight == Decimal.new("120.5")
    end

    test "create_package/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Packages.create_package(@invalid_attrs)
    end

    test "update_package/2 with valid data updates the package" do
      package = package_fixture()
      update_attrs = %{active: false, invoice_code: "some updated invoice_code", label: "some updated label", shipping_price: "456.7", tracking_code: "some updated tracking_code", weight: "456.7"}

      assert {:ok, %Package{} = package} = Packages.update_package(package, update_attrs)
      assert package.active == false
      assert package.invoice_code == "some updated invoice_code"
      assert package.label == "some updated label"
      assert package.shipping_price == Decimal.new("456.7")
      assert package.tracking_code == "some updated tracking_code"
      assert package.weight == Decimal.new("456.7")
    end

    test "update_package/2 with invalid data returns error changeset" do
      package = package_fixture()
      assert {:error, %Ecto.Changeset{}} = Packages.update_package(package, @invalid_attrs)
      assert package == Packages.get_package!(package.id)
    end

    test "delete_package/1 deletes the package" do
      package = package_fixture()
      assert {:ok, %Package{}} = Packages.delete_package(package)
      assert_raise Ecto.NoResultsError, fn -> Packages.get_package!(package.id) end
    end

    test "change_package/1 returns a package changeset" do
      package = package_fixture()
      assert %Ecto.Changeset{} = Packages.change_package(package)
    end
  end
end
