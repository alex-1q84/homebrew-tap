class Skillkit < Formula
  desc "AI agent skill 统一管理工具"
  homepage "https://github.com/alex-1q84/skillkit"
  version "0.1.7"
  license "MIT"

  # CI 只产出 aarch64-apple-darwin 二进制，其余平台暂不提供
  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/alex-1q84/skillkit/releases/download/v0.1.7/skillkit-0.1.7-aarch64-apple-darwin.tar.gz"
  sha256 "05d844086e27d48c34a4e1d8c056628db846c826ce6dde04c77a0b0bdb7a539f"

  def install
    bin.install "skillkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillkit --version")
  end
end
