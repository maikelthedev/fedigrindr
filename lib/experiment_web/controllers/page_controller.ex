defmodule ExperimentWeb.PageController do
  use ExperimentWeb, :controller

  def home(conn, params) do
    # The home page is often custom made,
    # so skip the default app layout.
    %{"locale" => locale} = params
    Gettext.put_locale(ExperimentWeb.Gettext, locale)
    render(conn, :home, layout: false)
  end

  def why(conn, params) do
    %{"locale" => locale} = params
    Gettext.put_locale(ExperimentWeb.Gettext, locale)
    render(conn, :why, layout: false)
  end
end
