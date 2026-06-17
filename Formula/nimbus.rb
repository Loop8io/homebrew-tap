class Nimbus < Formula
  desc "CLI tool for Loop8 AWS access management"
  homepage "https://github.com/Loop8io/int-nimbus"
  version "v0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.1/nimbus_darwin_arm64.tar.gz"
      sha256 "f4182e16f7186a09adc49dc64df2d31ea620395a0c26aacd00645221d37841c7"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.1/nimbus_darwin_amd64.tar.gz"
      sha256 "9760cd8a18a11d059b9552e1b82a6460d4b4e2ab02031b4cb2cafd9c777303f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.1/nimbus_linux_arm64.tar.gz"
      sha256 "d0ff3a49582e460ecc13be394a6ef63a453cea2d44525267b877d75880f71ccd"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.3.1/nimbus_linux_amd64.tar.gz"
      sha256 "282a244e8de5e4860e2c7fce8fbf0edfaf8755365de347615aeda99c7c190a9d"
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
