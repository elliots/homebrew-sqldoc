class Sqldoc < Formula
  desc "SQL documentation and code generation tool"
  homepage "https://github.com/elliots/sqldoc"
  license ""
  version "0.2.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/elliots/sqldoc/releases/download/v0.2.10/sqldoc_darwin_arm64.tar.gz"
      sha256 "b596dd7b40fb683b4f4b753003e3aba41c13aac1e06d8baf8af95afcbee076c0"
    else
      url "https://github.com/elliots/sqldoc/releases/download/v0.2.10/sqldoc_darwin_amd64.tar.gz"
      sha256 "e9306601a57a806c98ccda89a34397dc25264dc9d8e6316e8e571ad3c849b3de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/elliots/sqldoc/releases/download/v0.2.10/sqldoc_linux_arm64.tar.gz"
      sha256 "455bc5084e34b476a206825994e2c08fe320781fe3eb0dfcba911cd551dd4627"
    else
      url "https://github.com/elliots/sqldoc/releases/download/v0.2.10/sqldoc_linux_amd64.tar.gz"
      sha256 "e47118c6a983aba6cb33507ac17de7d3adabe6e1d8b55075bf96a3dd480b4160"
    end
  end

  def install
    bin.install "sqldoc"
  end

  test do
    system "\#{bin}/sqldoc", "--version"
  end
end
