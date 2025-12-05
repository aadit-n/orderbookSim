FROM python:3.13-slim

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y g++

RUN g++ -std=c++17 -O2 -fPIC -Iinclude \
    src/order.cpp src/orderbook.cpp src/wrapper.cpp \
    -shared -o build/liborderbook.so

RUN pip install -r requirements.txt

EXPOSE 8501

CMD ["streamlit", "run", "src/main.py"]