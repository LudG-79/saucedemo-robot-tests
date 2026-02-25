## 🤖 SauceDemo — Automatisation de tests

![Robot Framework](https://img.shields.io/badge/Robot%20Framework-7.4-blue)
![Python](https://img.shields.io/badge/Python-3.14-green)
![SeleniumLibrary](https://img.shields.io/badge/SeleniumLibrary-4.41.0-orange)
![Status](https://img.shields.io/badge/Tests-Passing-brightgreen)

Suite de tests automatisés sur le site SauceDemo
une application e-commerce de démonstration utilisée pour s'exercer à l'automatisation des tests.

Développée dans le cadre d'un apprentissage autodidacte de l'automatisation des tests.

---
 📋 Couverture de tests

| Module | Tests | Statut |
|--------|-------|--------|
| Connexion | 5 tests (positif + négatif) | ✅ Passing |
| Achat | En cours | 🔄 WIP |
| Paiement | En cours | 🔄 WIP |

---
 🛠️ Technologies utilisées

- **Language** : Python 3.14
- **Framework** : Robot Framework
- **Library** : SeleniumLibrary
- **Browser** : Chrome
- **IDE** : Visual Studio Code

---
 📁 Structure du projet
```
saucedemo-robot-tests/
├── resources/
│   └── variables.robot     → Fichiers avex les variables
├── pages/                  → Fichiers page object
│   ├── connexion_utilisateurs.robot
│   ├── page_produits.robot
│   └── page_panier.robot
├── tests/                  →Scénario de tests
│   ├── connexion_utilisateurs_tests.robot
│   ├── panier_tests.robot
│   └── paiement_tests.robot
├── resultats/              → Rapports auto-générés (ignorés par GIT)
├── .gitignore
└── README.md
```

---
 🚀 Comment
 
## Pré recquis

bash :
pip install robotframework 
/ 
pip install robotframework-seleniumlibrary

Lancer tous les tests : 
bash :
python -m robot -d results tests/

Lancer un test précis : 
python -m robot -d results -t "TC07 - Supprimer depuis la page produits - badge disparaît" tests/panier_tests.robot

Lancer un fichier spécifique : 
bash :
python -m robot -d results tests/connexion_utilisateurs_tests.robot


Lancer les tests en vitesse lente :
bash :
python -m robot -d results -v VITESSE:1s tests/


Lancer un test avec un tag :
bash :
Seulement smoke test : 
python -m robot -d results -i smoke tests/

Exclure les tests négatifs : 
python -m robot -d results -e negatif tests/

---

🧪 Test utilisateurs     

| Nom d'utilisateur | Mot de passe | Description |
|----------|----------|-------------|
| standard_user | secret_sauce | Utilisateur normal |
| locked_out_user | secret_sauce | Compte bloqué |
| problem_user | secret_sauce | Bugs volontaires |
| performance_glitch_user | secret_sauce | Lenteurs volontaires |

---

📚 Ce que j'ai appris

- Modèle Page Object
- Approche de test pilotée par mots-clés
- Scénarios de tests positifs et négatifs
- Syntaxe et structure de Robot Framework
- Bibliothèque Selenium pour l'automatisation du navigateur
---

 🗓️ Feuille de route

- [x] Tests de connexion
- [ ] Tests du panier d'achat
- [ ] Tests du processus de paiement
- [ ] Tests pilotés par les données
- [ ] Intégration continue et déploiement continu (CI/CD) avec GitHub Actions

---

*Conçu avec ❤️ dans le cadre d'un apprentissage autodidacte de l'automatisation des tests*

---

 📤 Mettre sur GitHub

Étape 1 — Connexion sur GitHub

---

Étape 2 — Créer le repository sur GitHub

1. Cliquer sur le **+** en haut à droite → **New repository**
2. Compléter :
Repository name : saucedemo-robot-tests
Description     : Suite de tests automatisés sur le site SauceDemo avec RobotFramework
Visibility      : ✅ Public 
README          : ❌ Ne pas cocher (fichier existant)

---

Étape 3 - MAJ au fur et à mesure de l'apprentissage

1. Voir ce qui a changé
git status
2. Ajouter les modifications
git add .
3. Committer avec un message clair
git commit -m "feat: ... "
4. Envoyer sur GitHub
git push