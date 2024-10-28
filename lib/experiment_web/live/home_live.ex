defmodule ExperimentWeb.HomeLive do
  use ExperimentWeb, :live_view

  #alias Experiment.Message
  use Gettext, backend: ExperimentWeb.Gettext

  @impl true
  def render(assigns) do
    ~H"""
      <div class="min-h-screen flex flex-col items-center justify-center bg-gradient-to-br from-pink-500 to-indigo-500 text-white">
        <header class="text-center space-y-2">
          <h1 class="text-4xl font-bold mb-2"><%= gettext("Welcome to Grindr's FOSS Competitor!") %></h1>
          <p class="text-lg max-w-md mx-auto"><%= gettext("A new way to connect, meet, and chat with LGBTQ+ people around you without the toxicity of dark patterns or ads.") %></p>
        </header>

        <div class="mt-10 space-y-6 text-center">
          <button phx-click="clicked-any-button" class="px-6 py-3 rounded-full bg-indigo-600 hover:bg-indigo-700 font-semibold text-lg">
            <%= gettext("Get Started") %>
          </button>
        <.link href="https://notes.maikel.dev/Projects/Fedigrindr/Fedigrindr+Overview" target="_blank" class="px-6 py-3 rounded-full bg-white text-indigo-600 font-semibold text-lg">
          <%= gettext("Learn More") %>
        </.link>
        </div>

        <footer class="absolute bottom-5 text-sm text-center">
          <p>Fedigrindr &copy; 2024 <%= gettext("Maikel OÜ. Licensed under the AGPLv3") %></p>
        </footer>
      </div>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_event("clicked-any-button", _params, socket) do
    {:noreply, put_flash(socket, :info, "This button for now does nothing")}
  end
end
