class Macprefs < Formula
    include Language::Python::Virtualenv
  
    desc "Backup and Restore your Mac System and App Preferences"
    homepage "https://github.com/knutle/macprefs"
    url "https://github.com/knutle/macprefs/archive/v1.1.0.tar.gz"
    sha256 "c217a43d0e353cb50d2a85de50656ab589e8abebb412b007849a39642e09340d"
  
    depends_on :python if MacOS.version <= :snow_leopard
  
    def install
      bin.install Dir["*"]
    end
  
    test do
      system "#{bin}/macprefs", "--help"
    end
  end
  
