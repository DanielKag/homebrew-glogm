class Glogm < Formula
  desc "Git log with fzf"
  homepage "https://github.com/DanielKag/glogm"
  url "https://github.com/DanielKag/glogm/archive/refs/tags/v1.2.tar.gz"
  sha256 "71475569c5b66f5fa150b0aa2bf9b61c5559bdc1de0c2a582947ae803ba22210"
  license "MIT"

  depends_on "fzf"
  depends_on "git-delta"

  def install
    bin.install "glogm"
  end

  test do
    assert_predicate bin/"glogm", :executable?
  end
end
