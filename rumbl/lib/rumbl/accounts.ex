defmodule Rumbl.Accounts do
  @moduledoc """
  The Accounts context.
  """

  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Jose", username: "josevalim"},
      %User{id: "2", name: "Bruce", username: "retrapids"},
      %User{id: "3", name: "Chris", username: "chrismccord"},
    ]
  end

  def get_user(id) do
    list_users() |> Enum.find(fn x -> x.id == id  end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn x ->
      Enum.all?(params, fn {key, val} -> Map.get(x, key) == val end)
      end)
    
  end
end
