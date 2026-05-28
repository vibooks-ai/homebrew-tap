class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.1.0/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "6811432ffa9b849b34e85e53400bcbf59ef4e89b78dc29ad92bc68f70950d750"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.1.0/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "3d83e6ab511236a98df7992764110e775c128f88aa96645458545b89ddd79370"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.1.0/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "8064f3b1f43a770ba4fdff7192ba52e7a28e1c0447d829bf8caf7e3d6fee1272"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
