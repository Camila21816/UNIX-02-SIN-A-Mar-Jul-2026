uname -a #daba información del ordenador
which gpg #donde esta ubicado el binario de gpg
gpg --version #muestra la versión e información adicional
gpg --full-generate-key #genera llave publica y privada.
gpg --armor --export #exportaba la llave publica
gpg --list-secret-keys --keyid-format=long # Sirve para listar las llaves privadas
