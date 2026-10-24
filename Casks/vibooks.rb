cask "vibooks" do
  version "1.5.1"

  on_arm do
    sha256 "6772667f801b6527150263297b5ec7732d66c9928589795078fc8210dbd26630"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "4e3415cccb42c5e5e9f36b1b83ceb6aa88b73f13b39fc47b8e5fbfc3ee9cdbb7"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
