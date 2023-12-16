# Python için resmi Docker imajını temel al
FROM python:3.9

# Çalışma dizinini ayarla
WORKDIR /app

# Gerekli Python bağımlılıklarını yükle
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Geri kalan proje dosyalarını ekle
COPY . .

# Uygulamayı çalıştır
CMD ["python", "app.py"]
