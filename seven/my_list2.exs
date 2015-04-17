defmodule MyList do
  def len(arr), do: _len(arr, 0)

  defp _len([], count), do: count
  defp _len([_h | t], count), do: _len(t, count + 1)

  def square(arr), do: _square(arr, [])

  defp _square([], squared), do: Enum.reverse(squared)
  defp _square([h | t], squared) do
    _square(t, [ h*h | squared ])
  end

  def add_1(arr), do: _add_1(arr, [])

  defp _add_1([], added), do: Enum.reverse(added)
  defp _add_1([h | t], added) do
    _add_1(t, [ h + 1 | added ])
  end

  def map(arr, func), do: _map(arr, func, [])

  defp _map([], _func, result), do: Enum.reverse(result)
  defp _map([h | t], func, result) do
    _map(t, func, [ func.(h) | result ])
  end
end
