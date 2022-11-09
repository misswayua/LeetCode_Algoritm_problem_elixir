defmodule Solution do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do

  nums_with_index =  Enum.with_index(nums)
   two_sums(nums_with_index, target, [])
  end


  def two_sums([h | tail], target, []) do
       {first_number, index} = h
   acc =
      tail
      |> Enum.find(fn {number, index} -> first_number + number == target end)
      |> case do
      nil -> []
      {_, res_index} -> [index, res_index]
    end

    two_sums(tail, target, acc)
  end

  def two_sums(_, _target, acc), do: acc
end
