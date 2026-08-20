class ProfilerMd < Formula
  desc "Convert performance profiles to human and LLM friendly Markdown"
  homepage "https://github.com/TomerAberbach/profiler-md"
  url "https://registry.npmjs.org/profiler-md/-/profiler-md-0.8.0.tgz"
  sha256 "3b9b720f4bc7aaa0032fba4fc87fddd505bcce04c39272aa7197a07cef523fd2"
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
