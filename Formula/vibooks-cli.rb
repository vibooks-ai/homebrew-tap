class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.0.5/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "f1580f0059868dd103dd05e18be96b8f7b33d62cd682b28c727a1fc67f3c9e42"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.0.5/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "72cebfaca09143e640c490574b75423b1ca60af5947b172c12ed674e0dfad187"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.0.5/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "b1950c8c5dcaa7af1354c0529f7e3145122b8fb2ba0840afe82be804ced96ca4"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
