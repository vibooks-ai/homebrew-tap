class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.0.3/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "451c11d4a04a2b3a747c131af31e2a43c9483a8e4fe3deb8fb1596cfe5943a9c"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.0.3/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "5cc4ebe1d88ee099d7224c6efc69b7121e50735cd56a9a4f665079ffb1fcd2d3"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.0.3/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "1621753babf53066f2ebac9a9a1515588f829c2800781076ad8179f971da6f4f"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
