#bloque A preparacion del entorno
uname -a #daba información del ordenador
which gpg #donde esta ubicado el binario de gpg
gpg --version #muestra la versión e información adicional
gpg --full-generate-key #genera llave publica y privada.
gpg --armor --export #exportaba la llave publica
gpg --list-secret-keys --keyid-format=long # Sirve para listar las llaves privadas
#bloque B - intercambio de llaves publicas
gpg --armor --export-secret-keys #sirve para exportar la llave privada
gpg --import #aqui se pone el nombre del arcgivo donde hayamos guardado la llave publica de nuestro compañero y este comando importara la llave publica
gpg --list-keys #verifica que la importación de la llave haya sido correcta
#bloque C - cifrado y descrifrado
echo "Mensaje escrito desde mi cuenta principal" > doc_no_cifrado.txt #creacion del mensaje
cat doc_no_cifrado.txt #muestra si se creo correctamente el documento 
gpg --output doc_cifrado.txt --encrypt --recipient gogosaturo57@gmail.com doc_no_cifrado.txt #toma un archivo normal y lo convierte en un archivo secreto que solo el dueño de la llave puede abrir
gpg --decrypt doc_cifrado.txt #va a desencriptar el mensaje 
#bloque D - firma de documentos
gpg --clearsign #firmar el contenido sin ocultar el texto original
gpg --sign doc_no_cifrado.txt # Firmar en formato binario
gpg --decrypt "doc_no_cifradosecundario.txt (1).gpg" #abrir el archivo firmado con la contraseña
#blque E
gpg --edit-key (trust) #Esto nos hace establecer el grado de confianza
gpg --sign-key #estamos certificando la autenticidad de la llave pública de nuestra pareja
#volvimos a verificar el documento de la apreja para ver el cambio
#bloque F cifrado y firmas simultaneos
gpg --encrypt --sign #es un proceso de doble capa que utiliza la llave pública del destinatario para ocultar el mensaje y la propia llave privada para sellar la identidad
#compartimos el archivo con la pareja
gpg --decrypt # descrifrar y validar de forma segura