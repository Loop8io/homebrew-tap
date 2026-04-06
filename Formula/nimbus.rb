class Nimbus < Formula
  desc "CLI tool for Loop8 AWS access management"
  homepage "https://github.com/Loop8io/int-nimbus"
  version "v0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.2.2/nimbus_darwin_arm64.tar.gz"
      sha256 "d08334786c3b33ffdb79a607d3480c92439e252906835de628f7fac8acb0af5a"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.2.2/nimbus_darwin_amd64.tar.gz"
      sha256 "f81c5fca09fd552818fad0eae75d11408b8b3cf9b61b908ffb4ae560403777a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.2.2/nimbus_linux_arm64.tar.gz"
      sha256 "a530d94ea67d4104ded64e5abd17a92bb4cea2f45fedaa8e73c11aab1ddfdc01"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.2.2/nimbus_linux_amd64.tar.gz"
      sha256 "e77a035aca929fc9822e3debc45ead01ec8066cb41afd5192d325b90e97323c6"
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
