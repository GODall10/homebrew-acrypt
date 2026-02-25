class Acrypt < Formula
  desc "Strumento di cifratura multifunzione (Cesare, Atbash, Vigenère)"
  homepage "https://github.com/GODall10/acrypt"
  
  
  url "https://github.com/GODall10/acrypt/archive/refs/tags/v1.0.0.tar.gz"
  

  sha256 "b670089d9a2ec09553b4a64972dfb544980ada6fbc96d2ca3c99c1af5e6e1d81"
  
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