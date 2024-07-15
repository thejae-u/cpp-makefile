### 디렉토리 구조
<hr>

- Project
  - src
    - function.hpp
    - function.cpp
    - main.cpp
  - obj
    - function.o
    - main.o
  - makefile
  - main.exe
<hr>

# Guide
- Project root에 makefile을 위치합니다.
- Project/src 디렉토리가 없다면 만들고 src 내부에 cpp, hpp 파일을 위치 합니다.
- `make;make clean`명령어를 실행합니다.

# requirements
- `g++ compiler`, `make`
