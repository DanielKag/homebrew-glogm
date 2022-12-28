# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Glogm < Formula
  desc 'Git log with fzf'
  homepage 'https://github.com/DanielKag/glogm'
  url 'https://github.com/DanielKag/glogm/archive/refs/tags/v1.0.tar.gz'
  sha256 'd7a9c6c2619ac0778a5303b43a4a4dea152bc2beff9ff66cbbf077c25da68bda'
  license 'MIT'

  # depends_on "cmake" => :build
  depends_on 'fzf'
  depends_on 'git-delta'

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["glogm"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"glogm")

    # bin.install 'selek'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test glogm`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system 'false'
  end
end
