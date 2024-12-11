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
      sha256 "24308857fa3dc8c25263bbf181096e121de8e31e25137c526145730ab2c1228a"

      def install
        bin.install "atun"
      end
    end
    on_arm do
      url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_darwin_arm64.tar.gz"
      sha256 "6fc9e0b1eaa5a704629794bc06e9c78e3ee4e5168f6c8c80581996a9af4c69bb"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_linux_amd64.tar.gz"
        sha256 "25fc2d1ffca856ecf9120016c0834c262578da452494f38d1a0ed86be20a65e8"

        def install
          bin.install "atun"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_linux_arm64.tar.gz"
        sha256 "2b90f2d99e31207c1f541014c8c72639ece0c6a64f0dec8c68654a709b927730"

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
