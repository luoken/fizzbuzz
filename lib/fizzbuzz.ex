defmodule Fizzbuzz do
  @moduledoc """
  This module takes in a range and when the a number is divisible by 3 it prints
  "fizz". When the number is divisible by 5 it prints "buzz". When the number is
  divisible by 7 it prints "pop".  When the number is both divisible by 3 and 5
  print "fizzbuzz". When the number is both divisible by 3 and 7 print "fizzpop".
  When the number is both divisible by 5 and 7 print "buzzpop" and when the number
  is divisible by 3, 5, and 7 print "pizzaparty".
  """

  @doc """

  ## Examples

      iex> Fizzbuzz.fizzbuzz(1..100)
      [
      1,
      2,
      "fizz",
      4,
      "buzz",
      "fizz",
      7,
      8,
      "fizz",
      "buzz",
      11,
      "fizz",
      13,
      14,
      "fizzbuzz",
      ...
      ]

      iex> Fizzbuzz.fizzbuzz(7..120)
      [
      "pop",
      8,
      "fizz",
      "buzz",
      11,
      "fizz",
      13,
      "pop",
      "fizzbuzz",
      16,
      17,
      "fizz",
      19,
      "buzz",
      "fizzpop",
      ...
      ]

  """
  def fizzbuzz(range) do
    Enum.map(range, fn x ->
      x
      |> case do
        x when rem(x, 3) == 0 and rem(x, 5) == 0 and rem(x, 7) == 0 ->
          IO.inspect("pizzaparty")
          "pizzaparty"

        x when rem(x, 3) == 0 and rem(x, 5) == 0 ->
          IO.inspect("fizzbuzz")
          "fizzbuzz"

        x when rem(x, 3) == 0 and rem(x, 7) == 0 ->
          IO.inspect("fizzpop")
          "fizzpop"

        x when rem(x, 5) == 0 and rem(x, 7) == 0 ->
          IO.inspect("buzzpop")
          "buzzpop"

        x when rem(x, 3) == 0 ->
          IO.inspect("fizz")
          "fizz"

        x when rem(x, 5) == 0 ->
          IO.inspect("buzz")
          "buzz"

        x when rem(x, 7) == 0 ->
          IO.inspect("pop")
          "pop"

        x ->
          IO.inspect(x)
          x
      end
    end)
  end
end
