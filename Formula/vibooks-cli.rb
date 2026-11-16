class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.5.2/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "a1b4ff4aab1e89f087907e146af9247a0056ddc1177bdfcaa6c68358d7741011"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.5.2/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "c030cd6f21da24ee0df0f382e0dbdb324439096bf2e8a73d8ce8cd326d9c59f9"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.5.2/linux-aarch64/vibooks-cli.tar.gz"
      sha256 "a61dd4afb363f934143c81adc3c1c5a3040b06bb2d8637f600f2ce2967a52ce9"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.5.2/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "445196525677c32bc400fbc9ac26f97226953602d849ff1e58e6978c9544ae97"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
