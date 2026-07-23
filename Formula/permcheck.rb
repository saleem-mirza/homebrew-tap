class Permcheck < Formula
  desc "PreToolUse permission engine for Claude Code"
  homepage "https://github.com/saleem-mirza/marketplace"
  version "0.1.13"
  license "Apache-2.0"

  # Binaries are published as release assets on this public tap repo
  # (the permcheck source repo is private). See release.yml -> publish-homebrew.
  on_macos do
    on_arm do
      url "https://github.com/saleem-mirza/homebrew-tap/releases/download/v#{version}/permcheck-darwin-arm64"
      sha256 "501e134e6a00e37109741a7ffab13c70757ddbc42b10334e12699147b5392686"
    end
    on_intel do
      url "https://github.com/saleem-mirza/homebrew-tap/releases/download/v#{version}/permcheck-darwin-x64"
      sha256 "27e4ab0aa4d8186cde0d7ed0ffbdacc0ceaf68b1c4e0787d08cb3249d5439dd7"
    end
  end

  def install
    bin.install Dir["permcheck-darwin-*"].first => "permcheck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/permcheck --version")
  end
end
