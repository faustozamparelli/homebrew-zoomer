cask "zoomer" do
  version "0.2.1"
  sha256 "11c315e16ff48a6952de2072ee229e2a06e2aa806a5912f84b9f8f94fcf976bd"

  url "https://github.com/faustozamparelli/zoomer-releases/releases/download/v#{version}/Zoomer-macos-arm64.zip"
  name "Zoomer"
  desc "Capture, magnify, pan, and spotlight your screen"
  homepage "https://zoomer.lakebed.app/"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Zoomer.app"

  zap trash: "~/Library/Preferences/com.faustozamparelli.zoomer.plist"

  caveats <<~EOS
    Zoomer is currently ad-hoc signed. If macOS blocks the first launch,
    open System Settings > Privacy & Security and choose Open Anyway.
  EOS
end
