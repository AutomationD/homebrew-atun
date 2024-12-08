# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtunDevAT000 < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/AutomationD/atun"
  version "0.0.0"
  license "Apache 2.0"

  on_macos do
    on_intel do
      url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_darwin_amd64.tar.gz"
      sha256 "ca1eab4922581bf9660f123cb0409d4389ab49757c672e420fc6f40ba8ed2d5c"

      def install
        bin.install "atun"
      end
    end
    on_arm do
      url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_darwin_arm64.tar.gz"
      sha256 "8a592ae6a06dd62645b1776d96fd09ac43ded7e3bfd6a7772b89429822d0d88e"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_linux_amd64.tar.gz"
        sha256 "d934dc8c0826bf5870e7c6a8192f5a97127112437bcd6d01840208778263dbea"

        def install
          bin.install "atun"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_linux_arm64.tar.gz"
        sha256 "037e5c76b9429e7aa59d9a93ca7f3d8e14f04eeab1e99376f94a4bbb2c921513"

        def install
          bin.install "atun"
        end
      end
    end
  end

  test do
    system "#{bin}/atun --version"
  end
end
