cask "vibooks" do
  version "1.2.3"

  on_arm do
    sha256 "2c5006dcb78014b7e1f8ab70ca93d381738bed4b11e1f1163e49c77b50324935"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "76cee62457366b4331623bea9518ea2883ba3439890f0844f152b9459ba95420"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
