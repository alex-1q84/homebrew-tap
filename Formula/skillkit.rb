class Skillkit < Formula
  desc "AI agent skill 统一管理工具"
  homepage "https://github.com/alex-1q84/skillkit"
  version "0.1.8"
  license "MIT"

  # CI 只产出 aarch64-apple-darwin 二进制，其余平台暂不提供
  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/alex-1q84/skillkit/releases/download/v0.1.8/skillkit-0.1.8-aarch64-apple-darwin.tar.gz"
  sha256 "eff90ce03ea8a1e176c2c863fe8a898aab8dd51a26537f66a04cea05374b7214"

  def install
    bin.install "skillkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillkit --version")
  end
end
