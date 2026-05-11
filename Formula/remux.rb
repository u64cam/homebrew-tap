# typed: false
# frozen_string_literal: true

class Remux < Formula
  desc "Inspect and jump between tmux panes across local and remote hosts"
  homepage "https://github.com/camerondurham/remux"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/camerondurham/remux/releases/download/v0.1.1/remux-v0.1.1-aarch64-macos.tar.gz"
      sha256 "8391cfe6c83668db2728e50a68df95b243eedb5df54620d5c647616b3c5655dc"

      def install
        bin.install "remux"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/camerondurham/remux/releases/download/v0.1.1/remux-v0.1.1-aarch64-linux.tar.gz"
      sha256 "5ebdaa4b5864b48bc7e9aeb7502c56abf8ad5807f951d0c6e6a85edd7b9678ae"

      def install
        bin.install "remux"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/camerondurham/remux/releases/download/v0.1.1/remux-v0.1.1-x86_64-linux.tar.gz"
      sha256 "2c3d6af39a15d6e74a5b72cbdd3adf220c3481a5b159ff48dd306ebb32602a2e"

      def install
        bin.install "remux"
      end
    end
  end

  test do
    system "#{bin}/remux", "--help"
  end
end
