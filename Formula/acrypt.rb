class Acrypt < Formula
  desc "Strumento di cifratura multifunzione (Cesare, Atbash, Vigenère)"
  homepage "https://github.com/GODall10/acrypt"
  
  
  url "https://github.com/GODall10/acrypt/archive/refs/heads/main.tar.gz" 

  version "1.0.0"
  

  sha256 "a4c7b868da9d85d0b7bf5e5a38eb9734240f9452d18a9f8d58b8021d67b745a9"
  
  license "MIT"

  def install
    # 1. Compiliamo il file sorgente
    # Usiamo 'system' per invocare gcc. 
    # 'main.c' deve essere il nome del file nel tuo repository.
    system "gcc", "main.c", "-o", "acrypt"

    # 2. Installiamo il binario nella cartella 'bin' di Homebrew
    # Questo lo rende disponibile globalmente nel terminale
    bin.install "acrypt"
  end

  test do
    # Verifica che il programma si avvii correttamente
    # Controlliamo che risponda al flag della versione
    assert_match "version", shell_output("#{bin}/acrypt -v")
  end
end