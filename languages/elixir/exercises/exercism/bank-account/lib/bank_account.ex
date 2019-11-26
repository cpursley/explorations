defmodule BankAccount do
  @moduledoc """
  A bank account that supports access from multiple processes.
  """

  use Agent

  @typedoc """
  An account handle.
  """
  @opaque account :: pid

  @doc """
  Open the bank. Makes the account available.
  """
  @spec open_bank() :: account
  def open_bank() do
    {:ok, agent} = Agent.start_link(fn -> %{balance: 0} end)
    agent
  end

  @doc """
  Close the bank. Makes the account unavailable.
  """
  @spec close_bank(account) :: none
  def close_bank(account) do
    Agent.update(account, &Map.put(&1, :balance, {:error, :account_closed}))
  end

  @doc """
  Get the account's balance.
  """
  @spec balance(account) :: integer
  def balance(account) do
    Agent.get(account, &Map.get(&1, :balance))
  end

  @doc """
  Update the account's balance by adding the given amount which may be negative.
  """
  @spec update(account, integer) :: any
  def update(account, amount) do
    account_balance = balance(account)
    case is_integer(account_balance) do
      true ->
        new_amount = amount + account_balance
        Agent.update(account, &Map.put(&1, :balance, new_amount))
      false ->
        {:error, :account_closed}
    end
  end
end
