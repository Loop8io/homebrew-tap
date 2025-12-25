class Nimbus < Formula
  desc "CLI tool for Loop8 AWS access management"
  homepage "https://github.com/Loop8io/int-nimbus"
  version "v0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.6/nimbus_darwin_arm64.tar.gz"
      sha256 "ceab9d056ed2a6d1631068dbf08fb1aaa73d3065d7f038394e163469cf7bab50"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.6/nimbus_darwin_amd64.tar.gz"
      sha256 "d673ed793adba8677e0ed7bc764ee84c2a3d9303f2a7a0c24f1fd7e57005f547"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.6/nimbus_linux_arm64.tar.gz"
      sha256 "069500e102866f655cef0dcbf539de50473fd41c599abbaeb5fb4d675273a40b"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.6/nimbus_linux_amd64.tar.gz"
      sha256 "57c19eb5720bd6173f9a7f270a628a7265302dee1983414fd6a97fc8e558c262"
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
