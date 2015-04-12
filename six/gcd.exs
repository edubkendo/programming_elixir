defmodule GCD do
	def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, :erlang.rem(x, y))
end
