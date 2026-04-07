cask "vibooks" do
  version "1.1.0"

  on_arm do
    sha256 "62ea81a07d1c4e1e1ac68a8b57239f1a72bbafd5b2a7fde24c6a1d10750929ad"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "4051b8716b27cdabf23aebad380ad71f0d968bb0d271a04a03a5d1c3bb45696b"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
