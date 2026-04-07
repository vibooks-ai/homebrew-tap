class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.0.4/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "fc739c15a58720d85cbd1c5f2004d7325f826a879da2b2f73ee8b821c6abb7f9"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.0.4/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "dd947cdf975b1a6832bf3442276800088c87cf70d7a51d63b02b96f0a9b28cba"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.0.4/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "6a42e870daa447297176b17f4289b48cee0d5989384b85d482c379c7c74984c3"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
