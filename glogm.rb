class Glogm < Formula
  desc "Git log with fzf"
  homepage "https://github.com/DanielKag/glogm"
  url "https://github.com/DanielKag/glogm/archive/refs/tags/v1.1.tar.gz"
  sha256 "249231575cf834e58e9e56514ad5f7042782e1e288cf679938c87ae935726258"
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
