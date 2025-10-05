class SmartRun < Formula
  desc "Auto-detects script type and runs it in the right environment (teaches as it runs)"
  homepage "https://github.com/solarfish20/smart-run"
  url "https://github.com/solarfish20/smart-run/releases/download/v1.0.0/smart-run-1.0.0.tar.gz"
  sha256 "75604fbfe5d4e60c4ebf104ae3d355af73990897ad0a2a50040648a39a18b067"
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
