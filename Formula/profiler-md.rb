class ProfilerMd < Formula
  desc "Convert performance profiles to human and LLM friendly Markdown"
  homepage "https://github.com/TomerAberbach/profiler-md"
  url "https://registry.npmjs.org/profiler-md/-/profiler-md-0.8.1.tgz"
  sha256 "ef65e0792b874c3096c096cb3aed9880b45789603f4f9fc916f7c1b7dfdb577c"
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
