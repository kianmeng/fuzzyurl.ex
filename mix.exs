defmodule Fuzzyurl.Mixfile do
  use Mix.Project

  def project do
    [
      app: :fuzzyurl,
      description: ~S"""
        Fuzzyurl is a library for non-strict parsing, construction, and
        fuzzy-matching of URLs.
      """,
      package: [
        maintainers: ["pete gamache"],
        licenses: ["Apache 2.0"],
        links: %{"GitHub" => "https://github.com/gamache/fuzzyurl.ex"}
      ],
      version: "0.1.0",
      elixir: "~> 1.1",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      test_coverage: [tool: Coverex.Task],
      deps: deps
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_spec, "~> 1.0.0", only: :test},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.10", only: :dev},
      {:coverex, "~> 1.4.7", only: :test}
    ]
  end
end
