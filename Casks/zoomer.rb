cask "zoomer" do
  version "0.2.0"
  sha256 "d19dde4acb06d407a80202d60166cb49aab420bd4c7eb22bac5f56800bc8dd0c"

  url "https://github.com/faustozamparelli/zoomer-releases/releases/download/v#{version}/Zoomer-macos-arm64.tar.gz"
  name "Zoomer"
  desc "Capture, magnify, pan, and spotlight your screen"
  homepage "https://github.com/faustozamparelli/zoomer"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Zoomer.app"

  zap trash: "~/Library/Preferences/com.faustozamparelli.zoomer.plist"

  caveats <<~EOS
    Zoomer is currently ad-hoc signed. If macOS blocks the first launch,
    open System Settings > Privacy & Security and choose Open Anyway.
  EOS
end
