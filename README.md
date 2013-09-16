CompB
=====

Compilerbau.

Work in progress. Jeweils aktuelle Version gibts hier: http://latexbuilder.dbrgn.ch/pdf/CompB/CompB.pdf


Special Requirements
--------------------

Für das Syntax Highlighting von Codebeispielen wird
[Pygments](http://pygments.org/) als Submodul mitgeliefert.
Voraussetzung für Pygments ist eine Python Installation.

Desweiteren wird Latexmk mindestens in der Version 4.24 vorausgesetzt,
da in älteren Versionen keine Compile-Optionen an pdflatex übergeben
werden können. Latexmk 4.24 kann für Debian
[auf ftp.de.debian.org](http://ftp.de.debian.org/debian/pool/main/l/latexmk/)
heruntergeladen werden. Ab Debian Wheezy ist es bereits in den
Standard-Repositories mitgeliefert.

Falls eine Fehlermeldung wegen einem fehlenden `lgrxenc.def` file auftritt,
muss das Paket `texlive-langgreek` installiert werden.


Building
--------

    git submodule init
    git submodule update
    make
