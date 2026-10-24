class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.4.0/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "bedb577b3c7a7bd57ddfcf692bda4bca20fca2b07069e4fd832bef88303653a3"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.4.0/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "7cc4d56ba54d009da1f76c8cf79f827532c542a161270d01d4ea05788023714a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.4.0/linux-aarch64/vibooks-cli.tar.gz"
      sha256 "9018ca5610af18743ac23551f1e27a8ad53b9e29144793e5d04d57da216dd9fb"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.4.0/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "e3f3193e06952fab9c77291c9b5e8f357a922c403f8f4e42783713b268e70df4"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
