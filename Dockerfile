# Utiliser une image de base Python
FROM python:3.9

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires dans le conteneur
COPY requirements.txt requirements.txt
COPY app.py app.py

# Installer les dépendances Python
RUN pip install -r requirements.txt

# Exposer le port sur lequel l'application va s'exécuter
EXPOSE 5000

# Définir la commande par défaut pour démarrer l'application
CMD ["python", "app.py"]
