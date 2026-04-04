cask "vibooks" do
  version "1.0.4"

  on_arm do
    sha256 "7cf1a7a795c0ea176c9cb1f1cce2218adcfc7aee8ecb7a98d3e3b3649f1267c7"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "3cc4b9e91f973694c493f1f57f0a8a9a98b9c648ebca65ea337d17e2a287addc"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
