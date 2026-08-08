class Permcheck < Formula
  desc "PreToolUse permission engine for Claude Code"
  homepage "https://github.com/saleem-mirza/marketplace"
  version "0.1.20"
  license "Apache-2.0"

  # Binaries are published as release assets on this public tap repo
  # (the permcheck source repo is private). See release.yml -> publish-homebrew.
  on_macos do
    on_arm do
      url "https://github.com/saleem-mirza/homebrew-tap/releases/download/v#{version}/permcheck-darwin-arm64"
      sha256 "a2ceb754b1e150329719430ee67ba3a3adf2d319a6303b17ae95651b18bfcf54"
    end
    on_intel do
      url "https://github.com/saleem-mirza/homebrew-tap/releases/download/v#{version}/permcheck-darwin-x64"
      sha256 "4fdffdff66622d98943e7e008c35d50302fccc5000f515c3f2cf2601cef42961"
    end
  end

  def install
    bin.install Dir["permcheck-darwin-*"].first => "permcheck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/permcheck --version")
  end
end
