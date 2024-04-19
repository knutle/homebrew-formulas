class Mackup < Formula
  include Language::Python::Virtualenv

  desc "Forked for personal use - Keep your Mac's application settings in sync"
  homepage "https://github.com/knutle/mackup"
  url "https://github.com/knutle/mackup/releases/download/0.8.41-dev1/mackup-0.8.41.dev1.tar.gz"
  sha256 "1e0d34125dc244943dce88499df42d4951437e5489cfc56f55f34f0951823396"
  license "GPL-3.0-or-later"
  revision 3

  depends_on "python@3.12"

  resource "docopt" do
    url "https://files.pythonhosted.org/packages/a2/55/8f8cab2afd404cf578136ef2cc5dfb50baa1761b68c9da1fb1e4eed343c9/docopt-0.6.2.tar.gz"
    sha256 "49b3a825280bd66b3aa83585ef59c4a8c82f2c8a522dbe754a8bc8d08c85c491"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/mackup", "--version"
  end
end