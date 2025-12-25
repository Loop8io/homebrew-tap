class Nimbus < Formula
  desc "CLI tool for Loop8 AWS access management"
  homepage "https://github.com/Loop8io/int-nimbus"
  version "v0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.5/nimbus_darwin_arm64.tar.gz"
      sha256 "6aa52bb6eed3e6f8abc31b63ec814415bfd395c216008532c49fae35b50d75a2"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.5/nimbus_darwin_amd64.tar.gz"
      sha256 "d8281d935ea890cce17fbeccadc319240f633fdc5b1836804e11c9d5eee0035b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.5/nimbus_linux_arm64.tar.gz"
      sha256 "2439f68c7243cd2231156aebcbb9e159bee1d6390e8b272b784942f34f1e4e7b"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.5/nimbus_linux_amd64.tar.gz"
      sha256 "fa2f4689cb9e86d4bf4e067fc7664bc92b08da24415faf5b70b9e0cbe143e086"
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
