cask "vibooks" do
  version "1.0.3"

  on_arm do
    sha256 "d7ebff98edef3423ec086db72960e2afa518f8150687fa1f2ab6131b7c57a5e0"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "287fabd43262929a741df3664110c39a92e0a8c4b1487c0476344ce030769f49"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
