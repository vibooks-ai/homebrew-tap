class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.3.1/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "fc0d6b2cfea25725a2237b985e6f38ff9f1139b1cab2e2fb05b3ed48264719c6"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.3.1/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "5bf83356fe701b1d9efb099676e7407052ccf891afb3f0864e73d2f884202b7a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.3.1/linux-aarch64/vibooks-cli.tar.gz"
      sha256 "a5dfc5022f6d7943e2c9e07afc1070a4e51364838030a101aca6d25b1dbdaeba"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.3.1/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "6362d2a468644971634cd257eb3042761e2e96a77e4a1d8420db8f8eeb4e31b4"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
