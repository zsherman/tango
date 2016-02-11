defmodule Tango.SessionsController do
  use Tango.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def create(conn, _params) do
    
  end

  def show(conn, %{"session" => session} = params) do
    render conn, "show.html", session: session
  end
end
