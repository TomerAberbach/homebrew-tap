class ProfilerMd < Formula
  desc "Convert performance profiles to human and LLM friendly Markdown"
  homepage "https://github.com/TomerAberbach/profiler-md"
  url "https://registry.npmjs.org/profiler-md/-/profiler-md-0.6.0.tgz"
  sha256 "d6583b4e70c2a89d4270a68851cf592b27c5bb42ea915ab6da4ff18f76ddb4cc"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profiler-md --version")
  end
end
