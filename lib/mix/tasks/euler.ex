defmodule Mix.Tasks.Euler do
  @moduledoc """
  Solution to some of the challenges of [Project Euler](https://projecteuler.net/about).
  """

  use Mix.Task

  @shortdoc "Print the challenges of the Euler project"

  @solutions [
    {SumOfMultiples, :sum_of_multiples_of_3_or_5_below, [1000]},
    {SumOfEvenFibonacciSerie, :sum_of_even_values, [10]}
  ]

  @impl Mix.Task
  def run(_args) do
    @solutions
    |> Stream.with_index(1)
    |> Stream.each(fn {{module, fun, params}, number} -> print(number, module, fun, params) end)
    |> Stream.run()
  end

  defp print(number, module, function, params) do
    IO.puts("""
    Exercise #{number}
    Name     #{function |> Atom.to_string() |> String.replace("_", " ")}
    Module   #{module |> Atom.to_string() |> String.replace_leading("Elixir.", "")}
    Function #{function |> Atom.to_string()}
    Params   #{params |> inspect()}
    Result   #{apply(module, function, params) |> inspect()}
    """)
  end
end
