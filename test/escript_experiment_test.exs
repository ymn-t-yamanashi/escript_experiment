defmodule EscriptExperimentTest do
  use ExUnit.Case
  doctest EscriptExperiment

  test "greets the world" do
    assert EscriptExperiment.hello() == :world
  end
end
