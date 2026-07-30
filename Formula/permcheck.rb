class Permcheck < Formula
  desc "PreToolUse permission engine for Claude Code"
  homepage "https://github.com/saleem-mirza/marketplace"
  version "0.1.14"
  license "Apache-2.0"

  # Binaries are published as release assets on this public tap repo
  # (the permcheck source repo is private). See release.yml -> publish-homebrew.
  on_macos do
    on_arm do
      url "https://github.com/saleem-mirza/homebrew-tap/releases/download/v#{version}/permcheck-darwin-arm64"
      sha256 "45f55d0ea42ef464f5d16a38801c0207bcb6c0026a1b159e216de4c4b98c34b4"
    end
    on_intel do
      url "https://github.com/saleem-mirza/homebrew-tap/releases/download/v#{version}/permcheck-darwin-x64"
      sha256 "a5ac7b0c6a558b834a411bf78c3fba4f9b2b1d8b1ed94d1e65c41385a648d0a4"
    end
  end

  def install
    bin.install Dir["permcheck-darwin-*"].first => "permcheck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/permcheck --version")
  end
end
