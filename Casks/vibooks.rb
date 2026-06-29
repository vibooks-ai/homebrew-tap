cask "vibooks" do
  version "1.2.5"

  on_arm do
    sha256 "0eec3d905ba5698b7cdfb1cb8a7339b963dac799719742ec953949a1823d545d"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "1033d82db42c84c6f124759a55db666712f3022a38d071ed0ef8b81c83a6779a"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
