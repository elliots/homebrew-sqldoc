class Sqldoc < Formula
  desc "SQL documentation and code generation tool"
  homepage "https://github.com/elliots/sqldoc"
  license ""
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/elliots/sqldoc/releases/download/v0.1.0/sqldoc_darwin_arm64.tar.gz"
      sha256 "c845500a0a2f2739b8de5028033c0d6e70310b990ee71b24daee8bf8df5aab7c"
    else
      url "https://github.com/elliots/sqldoc/releases/download/v0.1.0/sqldoc_darwin_amd64.tar.gz"
      sha256 "1aa4f807c315f7c76a26e2b333647a8fe357237f906455d843c40cb279b3a49e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/elliots/sqldoc/releases/download/v0.1.0/sqldoc_linux_arm64.tar.gz"
      sha256 "87c159617914bb29a0299ff9b0294d3fac9ba8ac0a2d46a3ba435296860c22f9"
    else
      url "https://github.com/elliots/sqldoc/releases/download/v0.1.0/sqldoc_linux_amd64.tar.gz"
      sha256 "273b88cefb580a5e5062d9935402cab6e301256e6b9a44dc81ab4d49ce2ccc45"
    end
  end

  def install
    bin.install "sqldoc"
  end

  test do
    system "#{bin}/sqldoc", "--version"
  end
end
