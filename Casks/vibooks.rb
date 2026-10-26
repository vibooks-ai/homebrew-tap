cask "vibooks" do
  version "1.5.2"

  on_arm do
    sha256 "d187cccbb5865f48e9d565b33a1b939aaf52d1e2971b1af15762f314154e393e"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e35342159c1295ab3d462789b3139471c0e3007dc2e5b5b87b7d53927385ab8a"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
