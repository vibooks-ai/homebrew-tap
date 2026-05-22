class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.0.7/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "c5af40f12bafacb1a3bee41c18e94dfc8ad84f843aef53d97c530987dabb4197"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.0.7/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "55d4d57ad2c2aaf8d734cc9eefebfe9adc1c009970d23f7ebeee7b2a9f696e85"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.0.7/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "9b91f387ae7917818add49caf7cf69a74e4ff3c37b8b6e3aa00ea3d8206518ca"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
