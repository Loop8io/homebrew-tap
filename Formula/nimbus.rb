class Nimbus < Formula
  desc "CLI tool for Loop8 AWS access management"
  homepage "https://github.com/Loop8io/int-nimbus"
  version "v0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Loop8io/int-nimbus/releases/download/cli-vv0.1.2/nimbus_darwin_arm64.tar.gz"
      sha256 "c7aa7db3e610ccc11760eebdf3cff6329378a9f0b4dba4f9e2bb6f6e0583e12e"
    end
    on_intel do
      url "https://github.com/Loop8io/int-nimbus/releases/download/cli-vv0.1.2/nimbus_darwin_amd64.tar.gz"
      sha256 "e7a851ccc3f1ce58c4577603ac0682bf21ed950446ec890f42a71892b87cec0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Loop8io/int-nimbus/releases/download/cli-vv0.1.2/nimbus_linux_arm64.tar.gz"
      sha256 "05883ac38213c6eac3fd6f19364321b777e8bd02799ebc41995f4bcc818c9142"
    end
    on_intel do
      url "https://github.com/Loop8io/int-nimbus/releases/download/cli-vv0.1.2/nimbus_linux_amd64.tar.gz"
      sha256 "465453666ab94060ed2e69eff3c2dace6727882605124c8fb3205f9b7a6c2f57"
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
