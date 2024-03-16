# Usar una imagen base de Python
FROM python:3.10

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el archivo requirements.txt al contenedor
COPY requirements.txt .

# Instalar las dependencias
RUN python -m venv /opt/venv && \
    . /opt/venv/bin/activate && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

# Copiar el resto del código fuente del proyecto al contenedor
COPY . .

# Ejecutar el servidor de desarrollo de Django
CMD ["/opt/venv/bin/python", "manage.py", "runserver", "0.0.0.0:8000"]
