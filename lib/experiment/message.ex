defmodule Experiment.Message do
  use Ecto.Schema
  import Ecto.Changeset

  schema "messages" do
    field :message, :string
    field :whotoreply, :string
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:message, :whotoreply])
    |> validate_required([:message, :whotoreply])
  end

  def send_message(changeset) do

    message = Ecto.Changeset.get_field(changeset, :message)
    whotoreply = Ecto.Changeset.get_field(changeset, :whotoreply)

    request =
      Finch.build(
        :post,
        "https://ntfy.sh/maikeladas_site",
        [
          {"Title", "Maikeladas.es"},
          {"Priority", "urgent"},
          {"Tags", "warning"}
        ],
        "Who: " <> whotoreply <> ", says: " <> message
      )

    # Send the request using Finch
    request
    |> Finch.request(Experiment.Finch)
    |> case do
      {:ok, response} -> IO.inspect(response.body)
      {:error, error} -> IO.inspect(error)
    end
  end
end
