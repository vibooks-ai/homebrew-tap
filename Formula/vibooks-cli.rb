class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.1.1/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "b12a1d4a44823933d225091c5e0f7cf1a2c4f04c0109462b3aa51f7c48f4ea98"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.1.1/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "5f2c460a96ce89a23feeebe163b06714c4206c155d6c0c646479e168f493edcc"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.1.1/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "89bfb6324182ff0365de9d03e67a8f36f43fcc53b76c026433a5037d6d4e0b84"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
