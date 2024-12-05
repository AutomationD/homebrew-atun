# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Atun < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/AutomationD/atun"
  version "0.0.0-dev"
  license "Apache 2.0"
  depends_on :macos

  url "https://github.com/AutomationD/atun/releases/download/0.0.0-dev/atun_0.0.0-dev_darwin_amd64.tar.gz"
  sha256 "490eb778138a5f9ae0d66be2d76b86b83d8db5d349d376b4712ebc4149dec11c"

  def install
    bin.install "atun"
  end

  on_arm do
    def caveats
      <<~EOS
        The darwin_arm64 architecture is not supported for the Atun
        formula at this time. The darwin_amd64 binary may work in compatibility
        mode, but it might not be fully supported.
      EOS
    end
  end

  conflicts_with "atun-dev"
  conflicts_with "atun-dev@0.0.0-dev"

  test do
    system "#{bin}/atun --version"
  end
end
