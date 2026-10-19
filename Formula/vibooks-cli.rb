class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.3.0/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "41cf1250ab8468337e79bdf606e7ccd421f94fb3d931f483e92d4f962a1c3f6e"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.3.0/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "64fccbc8f231ddfca0c72d831bda377145253dbe904db924114ad5c4976e2ee7"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.3.0/linux-aarch64/vibooks-cli.tar.gz"
      sha256 "c8f6f39adaa8e2ee2d7d80ce2c7a5e6422de383789c98df5eee8f90d7b8acd40"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.3.0/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "c741d31ff8f5397349b13b2ce9f5f3138fb4f284f01a9021bb1aa39db44e32de"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
