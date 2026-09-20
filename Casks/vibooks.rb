cask "vibooks" do
  version "1.3.7"

  on_arm do
    sha256 "7157579f83ed65813625e90bcff65287ae00b250d3ee515f569dfdfbb82a05d5"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-aarch64/dmg/Vibooks_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "676344329de9ad833ab35bbe17314f8a44d99300ca38180dc128f0eb77dc876b"
    url "https://downloads.vibooks.ai/desktop/stable/#{version}/darwin-x86_64/dmg/Vibooks_#{version}_x64.dmg"
  end

  name "Vibooks"
  desc "AI-first professional bookkeeping desktop app"
  homepage "https://vibooks.ai"

  auto_updates true
  app "Vibooks.app"
end
