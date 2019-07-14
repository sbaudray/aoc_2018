defmodule Aoc2018.Day02 do
  def checksum(input) do
    {thrices, twices} =
      Enum.reduce(input, {0, 0}, fn box_id, {thrices_count, twices_count} ->
        counts = character_counts(box_id) |> Map.values() |> MapSet.new()

        case {3 in counts, 2 in counts} do
          {true, true} -> {thrices_count + 1, twices_count + 1}
          {true, false} -> {thrices_count + 1, twices_count}
          {false, true} -> {thrices_count, twices_count + 1}
        end
      end)

    thrices * twices
  end

  def character_counts(string) do
    String.to_charlist(string)
    |> Enum.reduce(%{}, fn char, counts ->
      Map.update(counts, char, 1, &(&1 + 1))
    end)
  end
end
