class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs."
  homepage "https://github.com/blocksoftware/vibooks-cli"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.0.0/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "cd8374ac6b74b99657e66bc3a52568c8717873628b15eff08ead0e76cf3ea373"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.0.0/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "8613714d01033896f410676110d79f3199f74ec8d31eef7b95f3bb779637502f"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.0.0/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "6c3da9a5edac0429a0ac943ea4e3fe021272706c7677f10880b84d73c7ad2a65"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
