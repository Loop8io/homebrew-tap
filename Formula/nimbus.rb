class Nimbus < Formula
  desc "CLI tool for Loop8 AWS access management"
  homepage "https://github.com/Loop8io/int-nimbus"
  version "v0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.4/nimbus_darwin_arm64.tar.gz"
      sha256 "be944e424bb1c96d54b1b10963c5b71ece5807c117cd5b47c9ddb6dece195228"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.4/nimbus_darwin_amd64.tar.gz"
      sha256 "1a0eae03b58b19e40c03baeed4b463a3cbbcf0f39e0cfda90006147c334b2bc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.4/nimbus_linux_arm64.tar.gz"
      sha256 "8a3ad1c63dd3b77d917b0bf2a9a647a802318693e2101ebff3360c3679393b9d"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.4/nimbus_linux_amd64.tar.gz"
      sha256 "c4cf03a4718b930700cdaf4633549bb7c12259912d9bbfe2b6085b326b41f869"
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
