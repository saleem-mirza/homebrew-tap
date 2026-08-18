class Permcheck < Formula
  desc "PreToolUse permission engine for Claude Code"
  homepage "https://github.com/saleem-mirza/marketplace"
  version "0.1.23"
  license "Apache-2.0"

  # Binaries are published as release assets on this public tap repo,
  # for a stable install URL independent of permcheck's own release layout.
  # See release.yml -> publish-homebrew.
  on_macos do
    on_arm do
      url "https://github.com/saleem-mirza/homebrew-tap/releases/download/v#{version}/permcheck-darwin-arm64"
      sha256 "1b17cd75f60aea5b9b73c7039a58e65496e02840aefd5881b394cb0f1041ceb8"
    end
    on_intel do
      url "https://github.com/saleem-mirza/homebrew-tap/releases/download/v#{version}/permcheck-darwin-x64"
      sha256 "5f69fa88034ea2a9d33c61b2d28fcadebc9ad2158112fcef03fd1eb3fe7534ec"
    end
  end

  def install
    bin.install Dir["permcheck-darwin-*"].first => "permcheck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/permcheck --version")
  end
end
