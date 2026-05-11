class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.0.6/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "ff54c323fc8c8fe8a24654f8a6909845b9ffb8db8af73c599cfb48e98a470850"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.0.6/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "ae358139e9c8c288494d8a2f9eba017f22a09f1fb55b9a1bc0157b3ef8ed7f92"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.0.6/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "278b4cfa3d5a7f7de90875472d7c5ddf189492b8f62bc403d8da2092e8c2d7de"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
