class Sqldoc < Formula
  desc "SQL documentation and code generation tool"
  homepage "https://github.com/elliots/sqldoc"
  license ""
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/elliots/sqldoc/releases/download/v0.1.1/sqldoc_darwin_arm64.tar.gz"
      sha256 "dca548647e5796f6ee4ee095116885aa9d4d7be476d68f5d35df92924b0e7179"
    else
      url "https://github.com/elliots/sqldoc/releases/download/v0.1.1/sqldoc_darwin_amd64.tar.gz"
      sha256 "196fde35331f4bc718a03dbc2b114b852dace01a4cae1db2effbc7ce9a2106b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/elliots/sqldoc/releases/download/v0.1.1/sqldoc_linux_arm64.tar.gz"
      sha256 "397e4629f30ba53a0879727cc172f68feb78d9020fce82eb7eba5dc1d16a9983"
    else
      url "https://github.com/elliots/sqldoc/releases/download/v0.1.1/sqldoc_linux_amd64.tar.gz"
      sha256 "2ff17fb8b82e794fc9e8ffe84c8a7dd3886681dbb1c04a5a5245edf99e2b6900"
    end
  end

  def install
    bin.install "sqldoc"
  end

  test do
    system "\#{bin}/sqldoc", "--version"
  end
end
