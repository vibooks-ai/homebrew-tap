cask "vibooks" do
  version "1.2.4"

  on_arm do
    sha256 "bae4e4d691880a48a7cab0079134b5b2a614f74e181d3d5d7ba5aeb273cc199d"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "63d4c5178e0baa957c231ef60a7e310c1a784109ca5881305ed20399926d4a2f"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
