import os

folders = [
    "tests/health",
    "tests/auth",
    "tests/users",
    "resources/keywords",
    "resources/libraries",
    "variables",
    "results",
    "reports"
]

files = [
    "requirements.txt",
    ".env",
    ".gitignore",
    "README.md",
    "run_tests.sh"
]

for folder in folders:
    os.makedirs(folder, exist_ok=True)

for file in files:
    open(file, 'a').close()

print("Estrutura criada com sucesso!")
