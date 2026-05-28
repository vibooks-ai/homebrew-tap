cask "vibooks" do
  version "1.2.0"

  on_arm do
    sha256 "ca7fda428609ab52129881aed068ed747ef1b37d636a205e8694608ce4214074"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "13e937dcb7e7ca11cd62e1cf1dc5ab3a7039b2af67cd7408a9e9df43455a8c22"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
