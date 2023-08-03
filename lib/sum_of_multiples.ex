defmodule SumOfMultiples do
  @moduledoc """
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we
  get 3, 5, 6 or and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
  """

  @doc """
  Calculate the sum of all the multiples of 3 or 5 below a number.

  ## Examples:

    iex> SumOfMultiples.sum_of_multiples_of_3_or_5_below(0)
    0

    iex> SumOfMultiples.sum_of_multiples_of_3_or_5_below(3)
    0

    iex> SumOfMultiples.sum_of_multiples_of_3_or_5_below(4)
    3

    iex> SumOfMultiples.sum_of_multiples_of_3_or_5_below(5)
    3

    iex> SumOfMultiples.sum_of_multiples_of_3_or_5_below(6)
    8

    iex> SumOfMultiples.sum_of_multiples_of_3_or_5_below(7)
    14

    iex> SumOfMultiples.sum_of_multiples_of_3_or_5_below(9)
    14

    iex> SumOfMultiples.sum_of_multiples_of_3_or_5_below(10)
    23

    iex> SumOfMultiples.sum_of_multiples_of_3_or_5_below(100)
    2633

    iex> SumOfMultiples.sum_of_multiples_of_3_or_5_below(1000)
    266333

  """
  @spec sum_of_multiples_of_3_or_5_below(integer()) :: integer()
  def sum_of_multiples_of_3_or_5_below(limit) when is_integer(limit) do
    sum_of_multiples_below(3, limit) + sum_of_multiples_below(5, limit)
  end

  defp sum_of_multiples_below(number, limit) do
    Enum.sum(number..(limit - 1)//number)
  end
end
