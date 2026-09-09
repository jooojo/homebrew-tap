cask "annoyo" do
  version "0.1.2"
  sha256 "476e41846f0d11fd2f4757f1afe2dcd1c11b1e01b441dcb4c03fdd62f6ed76ac"

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
