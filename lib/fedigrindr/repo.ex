defmodule Fedigrindr.Repo do
  use Ecto.Repo,
    otp_app: :fedigrindr,
    adapter: Ecto.Adapters.SQLite3
end
