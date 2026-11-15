class ProfilerMd < Formula
  desc "Convert performance profiles to human and LLM friendly Markdown"
  homepage "https://github.com/TomerAberbach/profiler-md"
  url "https://registry.npmjs.org/profiler-md/-/profiler-md-0.9.0.tgz"
  sha256 "cc17a4e55984e3dd8f5a66929136ad1fd88124506f2d3f2feca51e000c0fc62c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
    man1.install_symlink libexec.glob("share/man/man1/*")
    # The CLI names PowerShell `pwsh`, which a custom format passes through
    generate_completions_from_executable(bin/"profiler-md", shell_parameter_format: "--completion=",
                                                            shells:                 [:bash, :zsh, :fish, :pwsh])
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profiler-md --version")

    output = pipe_output("#{bin}/profiler-md --format collapsed", "main;work 3\nmain;idle 1\n", 0)
    assert_match "Collected 4 samples", output
  end
end
