defmodule MyList do
	def mapsum(arr, func), do: _mapsum(arr, func, 0)

  defp _mapsum([], _, total), do: total
  defp _mapsum([h|t], func, total) do
	  _mapsum(t, func, total + func.(h))
  end
end
