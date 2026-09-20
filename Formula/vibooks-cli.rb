class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.2.1/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "0635e152f1c1f84a057c2e769d2096ad1a92c251616bd40ba43e57c32185a97c"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.2.1/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "fe7badba2bbec839257b45329bc5a50764efc352a762baa212cd7cd621c70b96"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.2.1/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "23d2ce9e898b082953d4ea6529cd0f8c572afa4049b2fac8a246667774f9fc07"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
