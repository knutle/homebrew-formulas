class Macprefs < Formula
    include Language::Python::Virtualenv
  
    desc "Backup and Restore your Mac System and App Preferences"
    homepage "https://github.com/knutle/macprefs"
    url "https://github.com/knutle/macprefs/archive/v1.1.0.tar.gz"
    sha256 "03fcd5bd778d53fa9b89ec960b2fab18e5a8303ab15cbd79125def4cc9af8228"
  
    depends_on :python if MacOS.version <= :snow_leopard
  
    def install
      bin.install Dir["*"]
    end
  
    test do
      system "#{bin}/macprefs", "--help"
    end
  end
  
