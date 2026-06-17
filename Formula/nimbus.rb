class Nimbus < Formula
  desc "CLI tool for Loop8 AWS access management"
  homepage "https://github.com/Loop8io/int-nimbus"
  version "v0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.3/nimbus_darwin_arm64.tar.gz"
      sha256 "c4bd16184d8df2833c42a6b56cb33a64b166a5a3f100e352c94e080a81c979a8"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.3/nimbus_darwin_amd64.tar.gz"
      sha256 "a810a5b93eb90a3e93d2e0a75571db41d887627dd4850343b12a4cd423e16dbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.3/nimbus_linux_arm64.tar.gz"
      sha256 "9205b3e7738ad62bbe1bc8b0e070b388975faa5d8170abf88552071da27df3ba"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.3/nimbus_linux_amd64.tar.gz"
      sha256 "41610e0d538c0e2a72a71cb16d2267324560e88b4755e47e93df65dfdb4fda7c"
    end
  end

  def install
    binary_name = "nimbus_#{OS.kernel_name.downcase}_#{Hardware::CPU.arch == :arm64 ? "arm64" : "amd64"}"
    bin.install binary_name => "nimbus"
  end

  test do
    system "#{bin}/nimbus", "version"
  end
end
