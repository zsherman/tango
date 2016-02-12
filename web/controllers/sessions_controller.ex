defmodule Tango.SessionsController do
  require Logger

  use Tango.Web, :controller
  alias Tango.Session
  alias Tango.Router

  def index(conn) do
    render conn, "index.html"
  end

  def create(conn, _params) do
    length = 10
    unique_id = :crypto.strong_rand_bytes(length) |> Base.url_encode64 |> binary_part(0, length)

    changeset = Session.changeset(%Session{},
      %{slug: unique_id}
    )

    Session.insert!(changeset)

    # redirect conn, to: Router.Helpers.sessions_path(conn, :show, session)
    redirect conn, to: '/sessions/#{unique_id}'
  end

  def show(conn, %{"session" => session} = params) do
    render conn, "show.html", session: session
  end

  # generate random string
  def random_string(length) do
    :crypto.strong_rand_bytes(length) |> Base.url_encode64 |> binary_part(0, length)
  end
end
