defmodule PackageWizardWeb.PageController do
  use PackageWizardWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
