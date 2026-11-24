cask "vibooks" do
  version "1.6.5"

  on_arm do
    sha256 "87e49491dcaea69ce206c72aa9fa39c3cfa7ea4061e384683335deeec51ad87b"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "1640528718a6fd44c49d1db2f3130b7ccdd4f2d2cfb9e584eac1ea2fef987a6c"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
