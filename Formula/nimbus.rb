class Nimbus < Formula
  desc "CLI tool for Loop8 AWS access management"
  homepage "https://github.com/Loop8io/int-nimbus"
  version "v0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.7/nimbus_darwin_arm64.tar.gz"
      sha256 "ef637fdfe3c1148a0a03386fb41963387ef19ef979dc93348db0376d3a82cad6"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.7/nimbus_darwin_amd64.tar.gz"
      sha256 "9d7b2f01b75cd14bb7b2919e85417453a29eb54bba9548a3f39c268a58e7ce1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.7/nimbus_linux_arm64.tar.gz"
      sha256 "ac69e947a2b53fc4be0b62fcef5e9d9c8a1d7d011a27303f735254fbf615059b"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.7/nimbus_linux_amd64.tar.gz"
      sha256 "503dee61181fdb189173018de783862ebabffa890468d3ba630df07d176d9a68"
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
