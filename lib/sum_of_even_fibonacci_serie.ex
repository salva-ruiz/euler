defmodule SumOfEvenFibonacciSerie do
  @moduledoc """
  Each new term in the Fibonacci sequence is generated by adding the previous
  two terms. By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5,
  8, 13, 21, 34, 55, 89, ...

  By considering the terms in the Fibonacci sequence whose values do not exceed
  four million, find the sum of the even-valued terms.
  """

  import Integer

  @doc """
  Calculate the sum of the even-valued in a Fibonacci sequence.

  ## Examples

    iex> SumOfEvenFibonacciSerie.sum_of_even_values(0)
    0

    iex> SumOfEvenFibonacciSerie.sum_of_even_values(1)
    0

    iex> SumOfEvenFibonacciSerie.sum_of_even_values(2)
    2

    iex> SumOfEvenFibonacciSerie.sum_of_even_values(3)
    2

    iex> SumOfEvenFibonacciSerie.sum_of_even_values(4)
    2

    iex> SumOfEvenFibonacciSerie.sum_of_even_values(5)
    10

    iex> SumOfEvenFibonacciSerie.sum_of_even_values(6)
    10

    iex> SumOfEvenFibonacciSerie.sum_of_even_values(7)
    10

    iex> SumOfEvenFibonacciSerie.sum_of_even_values(8)
    44

    iex> SumOfEvenFibonacciSerie.sum_of_even_values(9)
    44

    iex> SumOfEvenFibonacciSerie.sum_of_even_values(10)
    44
  """
  @spec sum_of_even_values(integer()) :: integer()
  def sum_of_even_values(0), do: 0

  def sum_of_even_values(count) when is_integer(count) do
    for _item <- 1..count, reduce: {0, 0, 1} do
      {sum, acc, value} when is_even(acc + value) ->
        {sum + acc + value, value, acc + value}

      {sum, acc, value} ->
        {sum, value, acc + value}
    end
    |> elem(0)
  end
end