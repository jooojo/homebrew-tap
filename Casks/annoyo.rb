cask "annoyo" do
  version "0.1.0"
  sha256 "b8ab5565f044576f06be3d5304c5505bd0a8d03884aa454cb9972731378d8831"

  url "https://github.com/jooojo/sir-annoy-o/releases/download/v#{version}/AnnoyO-v#{version}-macOS.zip"
  name "AnnoyO"
  desc "Menu bar Bilibili audio player"
  homepage "https://github.com/jooojo/sir-annoy-o"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "AnnoyO.app"

  zap trash: [
    "~/Library/Application Support/AnnoyO",
    "~/Library/Caches/AnnoyO",
  ]

  caveats <<~EOS
    AnnoyO is ad-hoc signed and has not been notarized by Apple. macOS may block
    the first launch. If you trust this distribution, open System Settings >
    Privacy & Security and choose Open Anyway.
  EOS
end
