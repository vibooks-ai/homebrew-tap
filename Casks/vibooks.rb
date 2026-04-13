cask "vibooks" do
  version "1.1.1"

  on_arm do
    sha256 "866e466f38b0b9caf33d96e41c58229b95c00b885697336fa5ade8439ca38027"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "421ff75aa307c71a50057a790efa482013d03ef47474153de47d52af92c5b486"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
