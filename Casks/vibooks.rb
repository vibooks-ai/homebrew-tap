cask "vibooks" do
  version "1.6.1"

  on_arm do
    sha256 "bf5bfa71c6a3b205286a14a6e16010c1b7a60bf39960147ecd186ead2f090233"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "4921e14d7998a19a1b613503e07ffc8899214578321e90bbf84ac39ac25177ff"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
