defmodule UmbrellaTest.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      version: "0.1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      generate_destination: "./apps/gen/lib/generated.ex",
      compilers: [:protoc] ++ Mix.compilers()
    ]
  end

  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    [
      {:protoc, path: "./mix/tasks", app: false}
    ]
  end
end
