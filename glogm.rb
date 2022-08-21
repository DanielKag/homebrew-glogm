# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Glogm < Formula
  desc 'Git log with fzf'
  homepage 'https://github.com/DanielKag/glogm'
  url 'https://github.com/DanielKag/glogm/archive/refs/tags/v0.0.1.tar.gz'
  sha256 '9e3f3bc7a4c1a4a045342054d88749b672e3c24263173ad448d22cd8d6ab3e35'
  license 'MIT'

  # depends_on "cmake" => :build
  depends_on 'fzf'
  depends_on 'delta'

  def install
    bin.install 'glogm'
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
