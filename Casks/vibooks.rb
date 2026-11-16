cask "vibooks" do
  version "1.6.3"

  on_arm do
    sha256 "ef8858282a91f84a8680c6f70c81f5e7a4b9b2f68cb7032633203c2e763753b5"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "97062fb363756f7ff554c192c15fd04d82d3323c13f397a98b6514813c8b437c"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
