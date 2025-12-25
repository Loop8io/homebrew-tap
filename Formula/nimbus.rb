class Nimbus < Formula
  desc "CLI tool for Loop8 AWS access management"
  homepage "https://github.com/Loop8io/int-nimbus"
  version "v0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Loop8io/int-nimbus/releases/download/cli-v0.1.3/nimbus_darwin_arm64.tar.gz"
      sha256 "584acd74d8498d5e58d2711d4253bd2fe383d1f2f071bd119daa9e10f336aaa5"
    end
    on_intel do
      url "https://github.com/Loop8io/int-nimbus/releases/download/cli-v0.1.3/nimbus_darwin_amd64.tar.gz"
      sha256 "4da1f4964ad30badccbdca76e1dab02067777db8471a2c4b2393b183bb714498"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Loop8io/int-nimbus/releases/download/cli-v0.1.3/nimbus_linux_arm64.tar.gz"
      sha256 "0298efbfe4d4882dcc0d5df8ef00eafebde344185b9353cdd21dd7aaa7251875"
    end
    on_intel do
      url "https://github.com/Loop8io/int-nimbus/releases/download/cli-v0.1.3/nimbus_linux_amd64.tar.gz"
      sha256 "7c27e0ee82bf1f2bec7e17ddaa70b07f40021a31daa0b4174ac6c0d2f006c086"
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
