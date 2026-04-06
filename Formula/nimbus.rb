class Nimbus < Formula
  desc "CLI tool for Loop8 AWS access management"
  homepage "https://github.com/Loop8io/int-nimbus"
  version "v0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.2.1/nimbus_darwin_arm64.tar.gz"
      sha256 "0a344523179d21e540b67f82da12ef24264fbbf1eb89be34d03c2d06f9cbf044"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.2.1/nimbus_darwin_amd64.tar.gz"
      sha256 "f5ac6ad91c57bd33764282e6742ee68e601992b2b7638e386fd1789accacfcff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.2.1/nimbus_linux_arm64.tar.gz"
      sha256 "ace9be9a41f2944b3e939839935d1593b48e6a29983bfe9ef6c2bf58f1a27ed2"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.2.1/nimbus_linux_amd64.tar.gz"
      sha256 "33e5e44c540a7e59e93fe7072593fc956489b40fee34893694493a18272e7732"
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
