class Glogm < Formula
  desc "Git log with fzf"
  homepage "https://github.com/DanielKag/glogm"
  url "https://github.com/DanielKag/glogm/archive/refs/tags/v2.1.tar.gz"
  sha256 "57ec24972621c2e7daff8224b9d64c76212f5014f3aaa1b72f2cb108a443fa50"
  license "MIT"

  depends_on "fzf"
  depends_on "git-delta"

  def install
    chmod "+x", "glogm"
    bin.install "glogm"
    
    # Install the src directory alongside the main script
    libexec.install "src"
    
    # Update the path in the main script to point to libexec
    inreplace bin/"glogm", %r{"\$SCRIPT_DIR/src/main.sh"}, "\"#{libexec}/src/main.sh\""
  end

  test do
    assert_predicate bin/"glogm", :executable?
  end
end
