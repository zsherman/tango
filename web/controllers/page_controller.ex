defmodule Tango.PageController do
  use Tango.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
