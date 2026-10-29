class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.5.1/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "d01de73f678df47cd2872669e4e5378c95b166b6b269cc59c4dea49815e9035e"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.5.1/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "26af1fbacaacad19bbfbe3daea2ac16178e1ba0b21a52ee7c05942ffc2952abc"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.5.1/linux-aarch64/vibooks-cli.tar.gz"
      sha256 "ace9bd04dd7b942484338a47e362344536732658716edbd4031bfb1744bb7cba"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.5.1/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "573fa459b0262b2c1539e6b3828cafd708cc523b13c4a5000445254845a81147"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
