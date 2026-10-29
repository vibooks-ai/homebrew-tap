cask "vibooks" do
  version "1.6.0"

  on_arm do
    sha256 "595ec6fa671e3af3775852e62962bb999d964da581e012481eff050e721e8273"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "5940bed1e675f0a80601099745b49d0180c7c218ffa63e7d1042b0548913bc8e"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
