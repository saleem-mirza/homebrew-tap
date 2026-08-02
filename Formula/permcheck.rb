class Permcheck < Formula
  desc "PreToolUse permission engine for Claude Code"
  homepage "https://github.com/saleem-mirza/marketplace"
  version "0.1.17"
  license "Apache-2.0"

  # Binaries are published as release assets on this public tap repo
  # (the permcheck source repo is private). See release.yml -> publish-homebrew.
  on_macos do
    on_arm do
      url "https://github.com/saleem-mirza/homebrew-tap/releases/download/v#{version}/permcheck-darwin-arm64"
      sha256 "70c34ebdc9bef3436971905e1e652ae8735aba35d4f685386cb9fc161e4efab8"
    end
    on_intel do
      url "https://github.com/saleem-mirza/homebrew-tap/releases/download/v#{version}/permcheck-darwin-x64"
      sha256 "72cf9935bf4f74f591291ecbcec6d265e22147a7383d5e153aeab1a64255001d"
    end
  end

  def install
    bin.install Dir["permcheck-darwin-*"].first => "permcheck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/permcheck --version")
  end
end
