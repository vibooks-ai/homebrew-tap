cask "vibooks" do
  version "1.3.9"

  on_arm do
    sha256 "ae0b6d0e50067b2b1a478c71adc396803c989436c45415a7996daf9eb92eecce"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "2371a48518247eecfaf5a0cc6e2da41909158fe75e1f75214e8874f1da4f7fb7"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
