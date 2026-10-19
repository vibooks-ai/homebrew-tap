cask "vibooks" do
  version "1.5.0"

  on_arm do
    sha256 "c354e32877657fee1e9a1b9a8bba767937c0ecb5abb12a10fe1a434727a43d17"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "b0e3decf8170888f06350e7aade668369b00ecd5f6c637d613f0c2afaffb6164"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
