class Mastermindshq < Formula
  desc "Official CLI for the Masterminds HQ public API"
  homepage "https://mastermindshq.business/developers"
  url "https://github.com/joecheofficial/mastermindshq-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "46a68e8903d9bacea1b3f9fa5b845894a3988f57583599d9cd487566822441dc"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/mastermindshq.js" => "mastermindshq"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/mastermindshq --version")
  end
end
