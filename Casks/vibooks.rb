cask "vibooks" do
  version "1.2.2"

  on_arm do
    sha256 "329da2b62d0ce4290c6b99e356b280ec435bddb055f9e976b933d61cf493b143"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "7507452c920d72b875f43ae7f073a6200e5093acc883ddbbebe77152db000292"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
