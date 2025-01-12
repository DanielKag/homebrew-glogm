class Glogm < Formula
  desc "Git log with fzf"
  homepage "https://github.com/DanielKag/glogm"
  url "https://github.com/DanielKag/glogm/archive/refs/tags/v1.2.tar.gz"
  sha256 "71475569c5b66f5fa150b0aa2bf9b61c5559bdc1de0c2a582947ae803ba22210"
  license "MIT"

  depends_on "fzf"
  depends_on "git-delta"

  def install
    # Ensure the `glogm` script has a proper shebang
    libexec.install Dir["glogm"]
    chmod "+x", libexec/"glogm"

    # Create a wrapper script in `bin`
    bin.write_exec_script libexec/"glogm"
  end

  test do
    # Verify that the `glogm` script exists and is executable
    assert_predicate bin/"glogm", :exist?, "glogm binary should exist"
    assert_predicate bin/"glogm", :executable?, "glogm binary should be executable"

    # Run a basic test to confirm the script works
    system "#{bin}/glogm", "--help" # Replace with an actual command if applicable
  end
end
