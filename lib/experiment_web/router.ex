defmodule ExperimentWeb.Router do
  use ExperimentWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug(SetLocale,
      gettext: ExperimentWeb.Gettext,
      default_locale: "en",
      additional_locales: ["es", "en"]
      )
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {ExperimentWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ExperimentWeb do
    pipe_through :browser

    get "/", PageController, :dummy
  end


  scope "/:locale", ExperimentWeb do
    pipe_through :browser
    #get "/", PageController, :home
 #   get "/why", PageController, :why
#    live "/messages", MessageLive
    live "/", HomeLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", ExperimentWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:experiment, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: ExperimentWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
