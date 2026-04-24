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
