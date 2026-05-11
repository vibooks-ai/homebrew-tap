cask "vibooks" do
  version "1.1.2"

  on_arm do
    sha256 "9dce1281773134b9fcf938f87f7759bc74f349695e7b9d4ea9ce5bdca009782e"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "7de2e804ea48a244e3ab1bc88dc8dbe81533105e4c8104b1b1dc2901f249dccf"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
