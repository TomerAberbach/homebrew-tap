class ProfilerMd < Formula
  desc "Convert performance profiles to human and LLM friendly Markdown"
  homepage "https://github.com/TomerAberbach/profiler-md"
  url "https://registry.npmjs.org/profiler-md/-/profiler-md-0.7.0.tgz"
  sha256 "15f4c563e8ea756efacb6352248bd152463871e9ab4edc6ea7f99997d6615b48"
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
