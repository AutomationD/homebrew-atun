# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtunAT000 < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/AutomationD/atun"
  version "0.0.0"
  license "Apache 2.0"

  on_macos do
    on_intel do
      url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_darwin_amd64.tar.gz"
      sha256 "cd2070f2121d54a4ec53de6e8729aeb205962b3a7c559d3d93b260f4fee8b501"

      def install
        bin.install "atun"
      end
    end
    on_arm do
      url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_darwin_arm64.tar.gz"
      sha256 "a93197920dd172a10b990980a9c8e58c76168b40490067614f465a4f4327a600"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_linux_amd64.tar.gz"
        sha256 "24b7f3d7b5374c26691438bfa8538d8c44a146cf35c0a75cbb19d621ff895ac1"

        def install
          bin.install "atun"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_linux_arm64.tar.gz"
        sha256 "e535f63f7e07b1db866d1c8e25b1b9d13f2383573cbb363bc097ea71127ba23c"

        def install
          bin.install "atun"
        end
      end
    end
  end

  conflicts_with "atun-dev"
  conflicts_with "atun-dev@0.0.0"

  test do
    system "#{bin}/atun --version"
  end
end
