class Nimbus < Formula
  desc "CLI tool for Loop8 AWS access management"
  homepage "https://github.com/Loop8io/int-nimbus"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Loop8io/int-nimbus/releases/download/cli-v0.1.0/nimbus_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64"
    end
    on_intel do
      url "https://github.com/Loop8io/int-nimbus/releases/download/cli-v0.1.0/nimbus_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_AMD64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Loop8io/int-nimbus/releases/download/cli-v0.1.0/nimbus_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    end
    on_intel do
      url "https://github.com/Loop8io/int-nimbus/releases/download/cli-v0.1.0/nimbus_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64"
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
