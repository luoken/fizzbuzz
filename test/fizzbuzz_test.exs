defmodule FizzbuzzTest do
  use ExUnit.Case
  alias Fizzbuzz

  test "prints fizz, buzz, pop, and fizzbuzz" do
    assert [
             1,
             2,
             "fizz",
             4,
             "buzz",
             "fizz",
             "pop",
             8,
             "fizz",
             "buzz",
             11,
             "fizz",
             13,
             "pop",
             "fizzbuzz"
           ] = Fizzbuzz.fizzbuzz(1..15)
  end

  test "prints fizz, buzz, pop when divisible" do
    assert [
             "pop",
             8,
             "fizz",
             "buzz",
             11
           ] = Fizzbuzz.fizzbuzz(7..11)
  end

  test "prints fizzbuzz when divisible" do
    assert [
             13,
             "pop",
             "fizzbuzz",
             16
           ] = Fizzbuzz.fizzbuzz(13..16)
  end

  test "prints fizzpop when divisible" do
    assert [
             19,
             "buzz",
             "fizzpop"
           ] = Fizzbuzz.fizzbuzz(19..21)
  end

  test "prints pizza party when divisible" do
    assert [
             "fizz",
             103,
             104,
             "pizzaparty"
           ] = Fizzbuzz.fizzbuzz(102..105)
  end
end
