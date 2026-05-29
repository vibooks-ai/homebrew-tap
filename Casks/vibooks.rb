cask "vibooks" do
  version "1.2.1"

  on_arm do
    sha256 "2361d4b599e547806cc09fd8468c80350396fc112b1163d89fc1df97a3f39088"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e010c29308b14f62a8915985acaad05e1fb0eb36d9b5e43eba8c2cde7531a6cb"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
