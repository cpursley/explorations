defmodule RobotSimulator do
  @doc """
  Create a Robot Simulator given an initial direction and position.

  Valid directions are: `:north`, `:east`, `:south`, `:west`
  """
  defstruct direction: :north, position: {0, 0}

  defguard is_valid_direction?(direction) when direction in [:east, :west, :south, :north]
  defguard is_valid_position?(position) when is_tuple(position)
                                         and tuple_size(position) == 2
                                         and position |> elem(0) |> is_integer
                                         and position |> elem(1) |> is_integer

  @spec create(direction :: atom, position :: {integer, integer}) :: any
  def create(direction, _position) when not is_valid_direction?(direction), do: {:error, "invalid direction"}
  def create(_direction, position) when not is_valid_position?(position),   do: {:error, "invalid position"}
  def create(direction, position), do: %RobotSimulator{direction: direction, position: position}
  def create(), do: %RobotSimulator{}

  @doc """
  Simulate the robot's movement given a string of instructions.

  Valid instructions are: "R" (turn right), "L", (turn left), and "A" (advance)
  """
  @spec simulate(robot :: any, instructions :: String.t()) :: any
  def simulate(robot, instructions) do
    case valid_instructions?(instructions) do
      true ->
        make_moves(instructions, robot)
      false ->
        {:error, "invalid instruction"}
    end
  end

  defp valid_instructions?(instructions), do: Regex.match?(~r{^[ALR]*$}, instructions)

  defp make_moves(instructions, robot) do
    instructions
    |> String.graphemes
    |> Enum.reduce(robot, &make_move(&2, &1))
  end

  defp make_move(acc, "A" <> _instruction), do: %{acc | position: make_advance(acc.direction, acc.position)}
  defp make_move(acc, instruction),         do: %{acc | direction: make_turn(acc.direction, instruction)}

  defp make_turn(:north, direction), do: if direction == "R", do: :east,  else: :west
  defp make_turn(:south, direction), do: if direction == "L", do: :east,  else: :west
  defp make_turn(:east, direction),  do: if direction == "R", do: :south, else: :north
  defp make_turn(:west, direction),  do: if direction == "L", do: :south, else: :north

  defp make_advance(:north, {_x, y} = position), do: put_elem(position, 1, y + 1)
  defp make_advance(:south, {_x, y} = position), do: put_elem(position, 1, y - 1)
  defp make_advance(:east, {x, _y} = position),  do: put_elem(position, 0, x + 1)
  defp make_advance(:west, {x, _y} = position),  do: put_elem(position, 0, x - 1)

  @doc """
  Return the robot's direction.

  Valid directions are: `:north`, `:east`, `:south`, `:west`
  """
  @spec direction(robot :: any) :: atom
  def direction(%{direction: direction}), do: direction

  @doc """
  Return the robot's position.
  """
  @spec position(robot :: any) :: {integer, integer}
  def position(%{position: position}), do: position
end
