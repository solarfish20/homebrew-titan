class SmartRun < Formula
  desc "Auto-detects script type and runs it in the right environment (teaches as it runs)"
  homepage "https://github.com/solarfish20/smart-run"
  url "https://github.com/solarfish20/smart-run/releases/download/v1.0.0/smart-run-1.0.0.tar.gz"
  sha256 "c18f16ebf2bc1ddb3fed7c7b0da02abaae26da131e802f24fcea56037c5eeea7"
  license "MIT"
  def install
    bin.install "smart-run"
  end
  test do
    (testpath/"hello.sh").write "#!/usr/bin/env bash\necho ok\n"
    chmod 0755, testpath/"hello.sh"
    assert_match "ok", shell_output("\#{bin}/smart-run ./hello.sh")
  end
end
