@echo off
echo Building orderbook.dll...

if not exist build mkdir build

g++ -shared -Iinclude -fPIC -o build/orderbook.dll src/order.cpp src/orderbook.cpp src/wrapper.cpp

echo =======================================
echo Build complete: build\orderbook.dll
echo =======================================
exit /b 0