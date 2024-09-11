defmodule EscriptExperiment.CLI do
  def main(args \\ []) do
    args
    |> OptionParser.parse(strict: [add: :boolean, sub: :boolean, v1: :integer, v2: :integer])
    |> calculation()
    |> IO.puts()
  end

  defp calculation({[add: true, v1: v1, v2: v2], [], []}), do: v1 + v2
  defp calculation({[sub: true, v1: v1, v2: v2], [], []}), do: v1 - v2
  defp calculation(_), do: "引数が間違っています"

end
