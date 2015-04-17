defmodule MyList do
  def max(list), do: _max(list, 0)

  defp _max([], maximum), do: maximum
  defp _max([h|t], maximum) when h <= maximum do
    _max(t, maximum)
  end
  defp _max([h|t], _) do
	  _max(t, h)
  end
end
