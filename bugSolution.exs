```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:three_encountered)
    end
    IO.puts(x)
  end)
catch
  :three_encountered -> IO.puts("Encountered 3, exiting gracefully.")
end
```