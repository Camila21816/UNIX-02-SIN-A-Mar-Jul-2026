problem 1
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ mv kepler/docs kepler/registros
mv: cannot stat 'kepler/docs': No such file or directory
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ ls -R
.:
LICENSE  README.md  calculadora  eval_p2_1-g2.sh  evaluation  filesystem_script.sh  gnupg_script.sh

./calculadora:
app.py  suma.py

./evaluation:
ENUNCIADO.md  kepler

./evaluation/kepler:
ajustes.old  docs  runner.sh  runner.sh.sig  sensores.log

./evaluation/kepler/docs:
README.txt
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ cd evaluation
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ mv kepler/docs kepler/registros
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ mkdir kepler/plantillas
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ history
    1  git fetch upstream
    2  git checkout -b eval_p2_1_g2 upstream/eval_p2_1_g2
    3  git push origin eval_p2_1_g2
    4  mv kepler/docs kepler/registros
    5  ls -R
    6  cd evaluation
    7  mv kepler/docs kepler/registros
    8  mkdir kepler/plantilla
    @Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ cd ..
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ git add .
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ git commit -m "Fix problema 1: estructura de directorios corregida"
[eval_p2_1_g2 0ac4541] Fix problema 1: estructura de directorios corregida
 2 files changed, 30 insertions(+)
 rename evaluation/kepler/{docs => registros}/README.txt (100%)
 create mode 100644 history.sh
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ git log --oneline
0ac4541 (HEAD -> eval_p2_1_g2) Fix problema 1: estructura de directorios corregida
4e8a61c (upstream/eval_p2_1_g2, origin/eval_p2_1_g2) init
f833e71 (upstream/main, upstream/HEAD) wip: devices as files
a1be3af libs and key generation
5be6c85 version
bc53f37 which
a10e55a uname
0318299 Initial commit

#problem 2
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ cd evaluation
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ mv kepler/sensores.log kepler/registros/
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ mv kepler/ajustes.old kepler/ajustes.conf
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ ls -R kepler/
kepler/:
ajustes.conf  plantillas  registros  runner.sh  runner.sh.sig

kepler/plantillas:

kepler/registros:
README.txt  sensores.log
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ cd ..
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ git add .
git commit -m "Fix problema 2: archivos movidos y renombrados"
[eval_p2_1_g2 337d690] Fix problema 2: archivos movidos y renombrados
 3 files changed, 17 insertions(+), 1 deletion(-)
 rename evaluation/kepler/{ajustes.old => ajustes.conf} (100%)
 rename evaluation/kepler/{ => registros}/sensores.log (100%)
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ history
    1  git fetch upstream
    2  git checkout -b eval_p2_1_g2 upstream/eval_p2_1_g2
    3  git push origin eval_p2_1_g2
    4  mv kepler/docs kepler/registros
    5  ls -R
    6  cd evaluation
    7  mv kepler/docs kepler/registros
    8  mkdir kepler/plantillas
    9  history
   10  cd ..
   11  git add .
   12  git commit -m "Fix problema 1: estructura de directorios corregida"
   13  git log --oneline
   14  cd evaluation
   15  mv kepler/sensores.log kepler/registros/
   16  mv kepler/ajustes.old kepler/ajustes.conf
   17  ls -R kepler/
   18  cd ..
   19  git add .
   20  git commit -m "Fix problema 2: archivos movidos y renombrados"

   #problem 3
   @Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ cd evaluation
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ chmod 600 kepler/registros/sensores.log
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ ls -l kepler/registros/sensores.log
-rw------- 1 codespace codespace 270 Apr 24 16:16 kepler/registros/sensores.log
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ cd ..cd ..
bash: cd: too many arguments
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ cd ..
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ git add .
git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
[eval_p2_1_g2 b3479e7] Fix problema 3: permisos numericos 600 en sensores.log
 1 file changed, 44 insertions(+)
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ history
    1  git fetch upstream
    2  git checkout -b eval_p2_1_g2 upstream/eval_p2_1_g2
    3  git push origin eval_p2_1_g2
    4  mv kepler/docs kepler/registros
    5  ls -R
    6  cd evaluation
    7  mv kepler/docs kepler/registros
    8  mkdir kepler/plantillas
    9  history
   10  cd ..
   11  git add .
   12  git commit -m "Fix problema 1: estructura de directorios corregida"
   13  git log --oneline
   14  cd evaluation
   15  mv kepler/sensores.log kepler/registros/
   16  mv kepler/ajustes.old kepler/ajustes.conf
   17  ls -R kepler/
   18  cd ..
   19  git add .
   20  git commit -m "Fix problema 2: archivos movidos y renombrados"
   21  history
   22  cd evaluation
   23  chmod 600 kepler/registros/sensores.log
   24  ls -l kepler/registros/sensores.log
   25  cd ..cd ..
   26  cd ..
   27  git add .
   28  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"

#problem 4
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ cd evaluation
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ chmod u+x kepler/runner.sh
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ chmod o-w kepler/ajustes.conf
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ ls -l kepler/runner.sh kepler/ajustes.conf
-rw-rw-r-- 1 codespace codespace 122 Apr 24 16:16 kepler/ajustes.conf
-rwxrw-rw- 1 codespace codespace 125 Apr 24 16:16 kepler/runner.sh
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ chmod u+x kepler/runner.sh
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ chmod o-w kepler/ajustes.conf
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ ls -l kepler/runner.sh kepler/ajustes.conf
-rw-rw-r-- 1 codespace codespace 122 Apr 24 16:16 kepler/ajustes.conf
-rwxrw-rw- 1 codespace codespace 125 Apr 24 16:16 kepler/runner.sh
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ cd ..
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ git add .
git commit -m "Fix problema 4: permisos simbolicos corregidos"
[eval_p2_1_g2 7fdcbab] Fix problema 4: permisos simbolicos corregidos
 2 files changed, 42 insertions(+), 1 deletion(-)
 mode change 100644 => 100755 evaluation/kepler/runner.sh
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ history
  30  cd evaluation
   31  chmod u+x kepler/runner.sh
   32  chmod o-w kepler/ajustes.conf
   33  ls -l kepler/runner.sh kepler/ajustes.conf
   34  chmod u+x kepler/runner.sh
   35  chmod o-w kepler/ajustes.conf
   36  ls -l kepler/runner.sh kepler/ajustes.conf
   37  cd ..
   38  git add .
   39  git commit -m "Fix problema 4: permisos simbolicos corregidos"

#problem 5
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ cd evaluation
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ chmod u+s kepler/runner.sh
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ ls -l kepler/runner.sh
-rwsrw-rw- 1 codespace codespace 125 Apr 24 16:16 kepler/runner.sh
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation (eval_p2_1_g2) $ cd ..
git add .
git commit -m "Fix problema 5: SUID activado en runner.sh"
[eval_p2_1_g2 71cf958] Fix problema 5: SUID activado en runner.sh
 1 file changed, 30 insertions(+)
   41  cd evaluation
   42  chmod u+s kepler/runner.sh
   43  ls -l kepler/runner.sh
   44  cd ..
   45  git add .
   46  git commit -m "Fix problema 5: SUID activado en runner.sh"

#problem 6
   47  history
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ chmod +t /tmp/kepler_zone
chmod: cannot access '/tmp/kepler_zone': No such file or directory
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ ls -ld /tmp/kepler_zone
ls: cannot access '/tmp/kepler_zone': No such file or directory
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ mkdir -p /tmp/kepler_zone
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ chmod +t /tmp/kepler_zone
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ ls -ld /tmp/kepler_zone
drwxr-xrwT+ 2 codespace codespace 4096 Apr 24 16:49 /tmp/kepler_zone
@Camila21816 ➜ /workspaces/UNIX-02-SIN-A-Mar-Jul-2026 (eval_p2_1_g2) $ cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026
git add .
git commit -m "Fix problema 6: sticky bit en /tmp/kepler_zone"
[eval_p2_1_g2 7eba41e] Fix problema 6: sticky bit en /tmp/kepler_zone
 1 file changed, 17 insertions(+)
chmod +t /tmp/kepler_zone
   49  ls -ld /tmp/kepler_zone
   50  mkdir -p /tmp/kepler_zone
   51  chmod +t /tmp/kepler_zone
   52  ls -ld /tmp/kepler_zone
   53  cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026
   54  git add .
   55  git commit -m "Fix problema 6: sticky bit en /tmp/kepler_zone"

#problem 7
