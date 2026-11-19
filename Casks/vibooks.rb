cask "vibooks" do
  version "1.6.4"

  on_arm do
    sha256 "19c5892d815afb552a71521c9f7b075b488c866102fdebc589c5b54bc5b0facb"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "5200fb775e49f6a0afa22e90c5445ba8a70537b786f24b0624c717c77c053355"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
