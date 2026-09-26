class VibooksCli < Formula
  desc "OpenAPI-driven CLI for Vibooks local and remote APIs"
  homepage "https://github.com/vibooks-ai/cli"

  on_macos do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.2.3/darwin-aarch64/vibooks-cli.tar.gz"
      sha256 "98662c165d314ec5f8c0a3962f7a4671ee6cca57e4526d2b568e91676a6d4fb4"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.2.3/darwin-x86_64/vibooks-cli.tar.gz"
      sha256 "95bebc650894b8d5e3e24ac5e4f323f4f5d0147d1277e206e432170e610575de"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.vibooks.ai/cli/stable/1.2.3/linux-aarch64/vibooks-cli.tar.gz"
      sha256 "4792727b89922898049e87abfa85df67a1f7f882320dde8f90348133f5c9bb42"
    end

    on_intel do
      url "https://downloads.vibooks.ai/cli/stable/1.2.3/linux-x86_64/vibooks-cli.tar.gz"
      sha256 "96cc98bf8edf5324f5cef247beef15a853a19e3899120a6625ee3be3543cf518"
    end
  end

  def install
    bin.install "vibooks-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibooks-cli --version")
  end
end
