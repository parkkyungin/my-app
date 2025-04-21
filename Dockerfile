# 베이스 이미지
FROM python:3.11-slim

# 작업 디렉토리
WORKDIR /app

# 파일 복사
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

# 실행 명령
CMD ["python", "app.py"]
