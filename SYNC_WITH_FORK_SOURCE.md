- Stap 1 – Controleer of upstream al is ingesteld
```
cd ~/netmonitor/rpi4_ub2404
git remote -v
```
Dit toont de huidige origin van deze repository, maar niet van de originele fork repository
- Stap 2: – Voeg de originele repository toe als upstream
```
git remote add upstream git@github.com:willempoort/netmonitor.git
git remote -v
```
- Stap 3 – Haal de nieuwste wijzigingen binnen
```
git fetch upstream
```
- Stap 4 – Merge upstream in jouw branch
```
git checkout master
git merge upstream/master
```
- Stap 5 – Push naar jouw fork op GitHub
```
git push origin master
```
