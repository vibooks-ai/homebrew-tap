cask "vibooks" do
  version "1.4.3"

  on_arm do
    sha256 "0f91943840a79e01e79e243b7553acba02e537cfd6b0acb61b6bd9961e6ef86e"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "c4139b3226c975cc906650b080425c4da9e59177acd0cf92dcd04e6b1e29386c"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
