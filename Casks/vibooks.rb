cask "vibooks" do
  version "1.1.3"

  on_arm do
    sha256 "5428d387113065176b9d70635554fa27ad2b1eb67448d870a59a5535e551ba35"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "24b46de95ff4a1745793b9ade5295b368f348b6d3dff69472b9867192eb73882"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
