uname -a #daba información del ordenador
which gpg #donde esta ubicado el binario de gpg
gpg --version #muestra la versión e información adicional
gpg --full-generate-key #genera llave publica y privada.
gpg --armor --export #exportaba la llave publica
gpg --list-secret-keys --keyid-format=long # Sirve para listar las llaves privadas
gpg --armor --export-secret-keys #sirve para exportar la llave privada
gpg --import #aqui se pone el nombre del arcgivo donde hayamos guardado la llave publica de nuestro compañero y este comando importara la llave publica
gpg --list-keys #verifica que la importación de la llave haya sido correcta
