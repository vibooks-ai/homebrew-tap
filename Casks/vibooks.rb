cask "vibooks" do
  version "1.3.11"

  on_arm do
    sha256 "6e69493c1defb744ba717f73a3e49750fedd03af5cbc634ddf3957bda1cf877c"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "45b7edcf8937a762c9509dba10389964eb7d29ba49683f72e33e68b3f9605a18"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
