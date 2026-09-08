# 1. Imagen base de Python
FROM python:3.10-slim

# 2. Evitar archivos .pyc y forzar salida inmediata a consola
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# 3. Directorio de trabajo
WORKDIR /app

# 4. Copiar archivos al contenedor
COPY . /app/

# 5. Instalar Django
RUN pip install --no-cache-dir django

# 6. Exponer puerto
EXPOSE 8000

# 7. Comando para arrancar el servidor
CMD ["python", "venv/proyecto/manage.py", "runserver", "0.0.0.0:8000"]

