class SmartRun < Formula
  desc "Auto-detects script type and runs it in the right environment (teaches as it runs)"
  homepage "https://github.com/solarfish20/smart-run"
  url "https://github.com/solarfish20/smart-run/releases/download/v1.0.1/smart-run-1.0.1.tar.gz"
  sha256 "d4a850d725ce30e77c69aa57e6ac1598b2b32ba939e9f0fa6131c66467eb9780"
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
