cask "vibooks" do
  version "1.2.6"

  on_arm do
    sha256 "e0ba40a733fbbb3b4c7db286df030082089be5592ffae76d5ea498d663ba2982"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "ab1f56049fcd50592be58346f60ecf691b3438dca62be8870c6634650ad83a8f"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
