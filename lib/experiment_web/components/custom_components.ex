defmodule ExperimentWeb.CustomComponents do
  use Phoenix.Component

  #alias Phoenix.LiveView.JS
  use Gettext, backend: ExperimentWeb.Gettext

  def meta_cards(assigns) do
    ~H"""
    <meta
      name="description"
      content="The only site you need for serious web dev work"
      key="description"
    />
    <meta name="keywords" content="Maikel OÜ" key="keywords" />
    <meta name="author" content="Miguel Frias Mosquea" key="author" />
    <link rel="icon" href="https://maikel.dev/favicon.ico" />
    <meta property="og:title" content="Maikel OÜ" key="og-title" />
    <meta property="og:type" content="website" />
    <meta
      property="og:description"
      content="Full Stack Developer and Cloud Architect"
      key="og-description"
    />
    <meta property="og:image" content="https://maikel.dev/mkl.webp" key="og-image" />
    <meta property="og:url" content="https://maikel.dev" key="og-url" />
    <meta name="twitter:card" content="summary_large_image" key="twitter:card" />
    <meta property="twitter:url" content="https://maikel.dev/" key="twitter:url" />
    <meta name="twitter:site" content="@maikelthedev" key="twitter:site" />
    <meta name="twitter:creator" content="@maikelthedev" key="twitter:creator" />
    <meta name="twitter:title" content="Maikel OÜ" key="twitter:title" />
    <meta name="twitter:description" content="Maikel OÜ" key="twitter:description" />
    <meta name="twitter:image" content="https://maikel.dev/mkl.webp" key="twitter:image" />
    """
  end
end
