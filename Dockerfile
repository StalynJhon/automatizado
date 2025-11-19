# Imagen base de Python
FROM python:3.10-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiar requirements si existe
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt || true

# Copiar todo el código
COPY . .

# Comando por defecto: ejecutar pruebas
CMD ["python", "-m", "unittest", "discover", "-v"]
