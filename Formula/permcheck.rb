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
      sha256 "29c263f32074e37b139dcc010f850e770b84bcb0cea0e000bfcd4f69161d9881"
    end
    on_intel do
      url "https://github.com/saleem-mirza/homebrew-tap/releases/download/v#{version}/permcheck-darwin-x64"
      sha256 "161297bf2372459beacfba5c84e8a428faf69ec0af374d21f01247b3c9505e94"
    end
  end

  def install
    bin.install Dir["permcheck-darwin-*"].first => "permcheck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/permcheck --version")
  end
end
