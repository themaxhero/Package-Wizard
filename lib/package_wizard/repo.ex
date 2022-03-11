defmodule PackageWizard.Repo do
  use Ecto.Repo,
    otp_app: :package_wizard,
    adapter: Ecto.Adapters.Postgres
end
