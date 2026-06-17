class Nimbus < Formula
  desc "CLI tool for Loop8 AWS access management"
  homepage "https://github.com/Loop8io/int-nimbus"
  version "v0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.2/nimbus_darwin_arm64.tar.gz"
      sha256 "c7496e36dea78450d9379fed4990e89efb0b50f599b8fb4ea3643d1dcd53d17b"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.2/nimbus_darwin_amd64.tar.gz"
      sha256 "43680e81462c93aba8537ca1d8957416560400237642a95b0e948083979a085b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.2/nimbus_linux_arm64.tar.gz"
      sha256 "b0c8d5007f226831ac8733943cda4b3da4483eb3e67acb19e29ad50f4575e4a3"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.2/nimbus_linux_amd64.tar.gz"
      sha256 "3deb49d60faca9ed5b2e9cc09e0f50223fc64c0d6735a278b360defea8234c38"
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
