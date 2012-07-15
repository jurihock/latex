LaTeX Vorlagen
==============

TeX Live
--------

TeX Live ist derzeit leider in meisten Linux Repositorien recht veraltet. Daher ist es durchaus sinnvoll, es manuell zu installieren.

Hierfür lädt man die [aktuelle ISO](http://www.tug.org/texlive/acquire-iso.html) herunter, und mountet sie in einem beliebigen Verzeichnis, z.B. so:

    mount -o loop texlive*.iso /mnt

In diesem ISO-Abbild befindet sich Datei `install-tl`, die in einer Root-Konsole auszuführen ist.

Nach der erfolgreichen Installation muss noch der Suchpfad `$PATH` mit dem Pfad zum installierten TeX Live ergänzt werden. Unter Debian/Ubuntu funktionierte das mal über einen Eintrag in `/etc/environment`. Unter Fedora ist eine solche Datei unter `/etc/profile.d` anzulegen, z.B. `z.sh`. Der Name dieses Skripts sollte so gewählt werden, dass es zuletzt abgearbeitet wird, denn wir wollen ja den Suchpfad für alle Fälle sicher festlegen, und zwar so:

    export PATH=/usr/local/texlive/*/bin/x86_64-linux:$PATH

Für alle Fälle bedeutet, dass falls irgendeine Anwendung die veraltete TeX Live Pakete mitinstalliert, unser aktuelles TeX Live vorgezogen wird. Speziell unter Debian/Ubuntu gibt es Möglichkeit eine Installation von veralteten TeX Live Pakete [vorzutäuschen](http://www.tug.org/texlive/debian.html).

Um TeX Live später aktuell zu halten, muss die Bezugsquelle für TeX-Pakete angepasst werden:

   tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet

Aktualisiert werden sie dann so:

   tlmgr update --self --all

XeTeX
-----

Für XeTeX benötigte Fonts:

* [Charis SIL](http://scripts.sil.org/CharisSILfont) [thesis]
* [Lato](http://www.latofonts.com/) [thesis, beamer]
* [DejaVu](http://dejavu-fonts.org/) [thesis, beamer]
* [XITS Math](http://github.com/khaledhosny/xits-math) [beamer]

DejaVu ist idr. bereits vorinstalliert. Ansonsten, lädt man die Fonts herunter und legt die `.otf/.ttf` Dateien unter `/usr/local/share/fonts/...` ab.