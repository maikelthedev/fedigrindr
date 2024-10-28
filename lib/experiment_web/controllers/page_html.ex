defmodule ExperimentWeb.PageHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use ExperimentWeb, :html
  use Gettext, backend: ExperimentWeb.Gettext


  embed_templates "page_html/*"

  def why_me(assigns) do
    ~H"""
    <div class="min-h-screen bg-gray-100 py-8">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="bg-white shadow-md rounded-lg p-8">
          <h1 class="text-4xl font-extrabold text-gray-800 mb-6">
          <%= gettext("Why Hire Me?") %> </h1>

          <div class="space-y-4">
            <%= for {title, content} <- reasons() do %>
              <div class="bg-gray-100 rounded-lg shadow-md overflow-hidden">
                <details class="w-full">
                  <summary class="text-xl font-semibold text-gray-800 py-2 px-4 cursor-pointer group-hover:bg-gray-200">
                    <%= title %>
                  </summary>
                  <div class="text-gray-600 leading-relaxed px-4 py-2">
                    <%= content %>
                  </div>
                </details>
              </div>
            <% end %>
          </div>
        </div>
      </div>
      <.contact_paragraph {assigns} />
    </div>
    """
  end

  def reasons do
    [
      {"Skillset", "I can do Elixir, Python, JavaScript"},
      {"Fitness",
       "One person does it all reducing the number of people you need to contact to get things done and having a faster decision-making process"},
      {"Adaptability",
       "I learn any programming language and ecosystem you desire because you want it in your project"},
      {"Cost Efficiency",
       "Because it's all done by one person the costs is much more reduced than having an entire team"},
      {"Results",
       "I've been doing this for 5 years, I must be doing something right if I keep earning enough to feed myself. You don't need to be on top of me"},
      {"Maturity", "Don't take me for granted, consult the testimonials from others"}
    ]
  end

  def contact_paragraph(assigns) do
    ~H"""
    <div class="flex flex-col justify-center items-center pt-2 rounded-lg p-6 mt-4">
      <.link navigate={~p"/messages"}
        class="bg-indigo-600 text-white px-4 py-2 rounded-md hover:bg-indigo-700 transition duration-300 ease-in-out shadow-md">

                      <%= gettext("Send me a message now") %>


      </.link>
    </div>

    <div class="flex flex-col justify-center items-center pt-2 bg-slate-200 rounded-lg p-4 mt-2">
      <a href="https://vmst.io/@maikel" class="text-lg  hover:text-red-600 no-underline mt-2">
      <span class="font-bold">Mastodon: </span> @maikel@vmst.io
      </a>
      <a href="https://signal.me/#eu/aRLCxxIBV7BZTOt0XxAZsd7u1KSeDb2mnBveUfDMueKGXIotgShN7a05Lp4r5SJj" class="text-lg  hover:text-red-600 no-underline mt-2">
       <span class="font-bold">Signal:</span> signal.me
      </a>
    </div>
    """
  end
end
