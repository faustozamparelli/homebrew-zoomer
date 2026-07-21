cask "zoomer" do
  version "0.2.0"
  sha256 "cb37a39b0dc8dd13ce6ed58e29b9c0c21d41d3d34fbe8f8380f0364245ee5c91"

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
