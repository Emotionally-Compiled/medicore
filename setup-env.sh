#!/bin/bash

echo "======================================================="
echo "🚀 Sincronizando el entorno local de Emotionally-Compiled"
echo "======================================================="

cd ..

# 1. Agrega aquí tus repositorios a medida que el hospital crezca
REPOS=(
  "medicore-eureka-server"
  "medicore-api-gateway"
  "medicore-config-server"
  "medicore-web-app"
)

# 2. El script revisa uno por uno
for REPO in "${REPOS[@]}"; do
  echo "-------------------------------------------------------"
  if [ -d "$REPO" ]; then
    # Si la carpeta ya existe, entra y actualiza el código
    echo "🔄 El repositorio $REPO ya existe. Buscando actualizaciones..."
    cd "$REPO"
    git pull origin develop # Asegura que bajen lo último de develop
    cd ..
  else
    # Si la carpeta no existe, la clona por primera vez
    echo "📦 Clonando nuevo microservicio: $REPO..."
    git clone "https://github.com/Emotionally-Compiled/$REPO.git"
  fi
done

echo "======================================================="
echo "✅ ¡Entorno sincronizado y listo para codear!"
echo "======================================================="