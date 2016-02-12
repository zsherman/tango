defmodule Tango.SessionsView do
  use Tango.Web, :view

  def csrf_token(conn) do
    Plug.Conn.get_session(conn, :csrf_token)
  end
end
