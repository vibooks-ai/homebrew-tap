class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.2.2/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "0ece9aa4c6b18d1fd3efd12a8c11df3f6254eff65497ba2337dd1322febcaae4"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.2.2/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "bfa5804b31dad5990e79a4910f91ff655f3b2320e710d33cf504ac39420835ab"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.2.2/linux-aarch64/vibooks-cli.tar.gz"
      sha256 "f35b7ce8ff4b5633e0a8806692368f5ab0d558a83d4321ec60281177523ef2aa"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.2.2/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "26016085c5c54a70652151444f9800834656705e750e0c7ee2763818952caefb"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
