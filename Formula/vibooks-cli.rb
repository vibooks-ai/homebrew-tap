class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.0.2/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "4597eb08e01540415362b0d0ca753b688c6f399be866b1251455a47f5d003c9e"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.0.2/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "2638ef73a79f29c52c0f3e31efaca603ec2d3036c3cf4be666bb8bc649b9ec18"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.0.2/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "8c59273b816cfc7064fbbb037441d27188fdb491681544871ffd77669d871b76"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
