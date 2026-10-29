class Mastermindshq < Formula
  desc "Official CLI for the Masterminds HQ public API"
  homepage "https://mastermindshq.business/developers"
  url "https://github.com/joecheofficial/mastermindshq-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "422de836573d6f8378d51bd4010b1fab01ac90c424ae686edc582afb663c0006"
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
