class Nimbus < Formula
  desc "CLI tool for Loop8 AWS access management"
  homepage "https://github.com/Loop8io/int-nimbus"
  version "v0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.8/nimbus_darwin_arm64.tar.gz"
      sha256 "6f92f97491c14af01e1ec25988ffec2c6cd507db6c632b32eecbbf396aea7830"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.8/nimbus_darwin_amd64.tar.gz"
      sha256 "120f8619391b19fe58dd1fb4f379110957c615afa48bee99631b69ff2488e90d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.8/nimbus_linux_arm64.tar.gz"
      sha256 "ceac1882f8ede6c0fc63d6fa723d33c7ad318d06d9803959233f71fff9050234"
    end
    on_intel do
      url "https://github.com/Loop8io/homebrew-tap/releases/download/v0.1.8/nimbus_linux_amd64.tar.gz"
      sha256 "aea6913fa9c33c3021e083692b692537df916cb4d7898b4dafcf57b95be0ba3d"
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
