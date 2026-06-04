# typed: false
# frozen_string_literal: true

# This file is managed by GoReleaser. DO NOT EDIT MANUALLY.
# On new releases, GoReleaser will automatically update this formula.
class Ff < Formula
  desc "FunctionFly CLI — Go from idea to global API in under 60 seconds"
  homepage "https://functionfly.com"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/functionfly/ff-cli/releases/download/v1.0.0/ff_1.0.0_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_AMD64_SHA256" # Updated by GoReleaser on release

      def install
        bin.install "ff"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/functionfly/ff-cli/releases/download/v1.0.0/ff_1.0.0_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64_SHA256" # Updated by GoReleaser on release

      def install
        bin.install "ff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/functionfly/ff-cli/releases/download/v1.0.0/ff_1.0.0_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64_SHA256" # Updated by GoReleaser on release

      def install
        bin.install "ff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/functionfly/ff-cli/releases/download/v1.0.0/ff_1.0.0_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256" # Updated by GoReleaser on release

      def install
        bin.install "ff"
      end
    end
  end

  test do
    system "#{bin}/ff", "--version"
  end
end
