class Glogm < Formula
  desc "Git log with fzf"
  homepage "https://github.com/DanielKag/glogm"
  url "https://github.com/DanielKag/glogm/archive/refs/tags/v2.0.tar.gz"
  sha256 "9b3d725b65a6f592d0428c88441293205ad0b048ce79e6bc6538c6f2d751ff29"
  license "MIT"

  depends_on "fzf"
  depends_on "git-delta"

  def install
    chmod "+x", "glogm"
    bin.install "glogm"
  end

  test do
    assert_predicate bin/"glogm", :executable?
  end
end
