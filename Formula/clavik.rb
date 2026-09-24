# Binary formula: the clavik source is not published, so this installs the
# released binary rather than building from source.
class Clavik < Formula
  desc "Command-line client for the Clavik vault"
  homepage "https://clavik.io"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clavik-io/clavik-cli/releases/download/v#{version}/clavik_v#{version}_darwin_arm64"
      sha256 "ba8e33561e9cb720c3c0916f36eb71867fa3a1bbe56d53a8d04259486bc7c94b"
    end
    on_intel do
      url "https://github.com/clavik-io/clavik-cli/releases/download/v#{version}/clavik_v#{version}_darwin_amd64"
      sha256 "56b5a5591b23e66c8f4b98659640ef6e4ebcbe7a2af3394dee200f0c7ed9e747"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clavik-io/clavik-cli/releases/download/v#{version}/clavik_v#{version}_linux_arm64"
      sha256 "8a255fd4a060f2386f6f0d5eb03824ada0419e0a7d21f9d062373a80f799be13"
    end
    on_intel do
      url "https://github.com/clavik-io/clavik-cli/releases/download/v#{version}/clavik_v#{version}_linux_amd64"
      sha256 "7198d3a7b73422769aba04218f858c28781d6c083f63b4d80efa8632fdf3846e"
    end
  end

  def install
    # The release asset is the bare executable, named per-platform. Install it
    # under the plain name users type.
    bin.install Dir["clavik_*"].first => "clavik"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/clavik version")
    # A command that needs no server or credentials, to prove the binary runs
    # rather than only that it exists.
    assert_match "clavik", shell_output("#{bin}/clavik --help")
  end
end
