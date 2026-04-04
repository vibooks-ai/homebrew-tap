cask "vibooks" do
  version "1.0.5"

  on_arm do
    sha256 "34dc1f842f2bc568e14a291bc2edb3cee25361c30fa20103680caf6f97376195"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "119fb0ff532f48af04097ab82d279abb0e4cd7f8a066b64ba335fdb9bea819a5"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
