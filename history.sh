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