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
      sha256 "1564534163e6eacca39d4a48d70f4195130bb36cbf86b1686a5f67cc059254c7"

      def install
        bin.install "atun"
      end
    end
    on_arm do
      url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_darwin_arm64.tar.gz"
      sha256 "d8fef011e974e1c99c2ddae7842e45b27963de0d099e3123ee9c31f7ed1d2719"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_linux_amd64.tar.gz"
        sha256 "f22dfc649b582a45ff2f42d54dd7aaafe1fe4924507c85318389b794775d030c"

        def install
          bin.install "atun"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_linux_arm64.tar.gz"
        sha256 "0886bdad8186fd2328a2d639d1fbbd84accd2b783d1c0bde3173f0c0df10305b"

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
