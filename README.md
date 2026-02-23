# 🤖 SauceDemo — Automated Test Suite

![Robot Framework](https://img.shields.io/badge/Robot%20Framework-6.x-blue)
![Python](https://img.shields.io/badge/Python-3.x-green)
![SeleniumLibrary](https://img.shields.io/badge/SeleniumLibrary-6.x-orange)
![Status](https://img.shields.io/badge/Tests-Passing-brightgreen)

Automated test suite for [SauceDemo](https://www.saucedemo.com),  
a demo e-commerce application used to practice test automation.

Built as part of a self-taught journey into test automation.

---

## 📋 Test Coverage

| Module | Tests | Status |
|--------|-------|--------|
| Login | 4 tests (positif + négatif) | ✅ Passing |
| Cart | En cours | 🔄 WIP |
| Checkout | En cours | 🔄 WIP |

---

## 🛠️ Tech Stack

- **Language** : Python 3.x
- **Framework** : Robot Framework
- **Library** : SeleniumLibrary
- **Browser** : Chrome
- **IDE** : Visual Studio Code

---

## 📁 Project Structure
```
saucedemo-robot-tests/
├── pages/                  → Page Object keywords
│   ├── login_page.robot
│   ├── inventory_page.robot
│   └── cart_page.robot
├── tests/                  → Test scenarios
│   ├── login_tests.robot
│   ├── cart_tests.robot
│   └── checkout_tests.robot
├── results/                → Generated reports (gitignored)
├── .gitignore
└── README.md
```

---

## 🚀 How to Run

### Prerequisites
```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

### Run all tests
```bash
python -m robot -d results tests/
```

### Run a specific file
```bash
python -m robot -d results tests/login_tests.robot
```

### Run in slow mode (to observe)
```bash
python -m robot -d results -v VITESSE:1s tests/
```

### Run by tag
```bash
# Only smoke tests
python -m robot -d results -i smoke tests/

# Exclude negative tests
python -m robot -d results -e negatif tests/
```

---

## 🧪 Test Users (SauceDemo)

| Username | Password | Description |
|----------|----------|-------------|
| standard_user | secret_sauce | Utilisateur normal |
| locked_out_user | secret_sauce | Compte bloqué |
| problem_user | secret_sauce | Bugs volontaires |
| performance_glitch_user | secret_sauce | Lenteurs volontaires |

---

## 📚 What I Learned

- Page Object Model pattern
- Keyword-driven testing approach
- Positive and negative test scenarios
- Robot Framework syntax and structure
- SeleniumLibrary for browser automation

---

## 🗓️ Roadmap

- [x] Login tests
- [ ] Shopping cart tests
- [ ] Checkout flow tests
- [ ] Data-driven tests
- [ ] CI/CD with GitHub Actions

---

*Built with ❤️ as part of a self-taught test automation journey*
```

---

## 📤 Mettre sur GitHub

### Étape 1 — Connexion sur GitHub

---

### Étape 2 — Créer le repository sur GitHub

1. Clique sur le **+** en haut à droite → **New repository**
2. Remplis comme ça :
```
Repository name : saucedemo-robot-tests
Description     : Automated test suite for SauceDemo using Robot Framework
Visibility      : ✅ Public (important pour le portfolio !)
README          : ❌ Ne pas cocher (on a déjà le nôtre)