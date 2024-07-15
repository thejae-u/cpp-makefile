### 디렉토리 구조
<hr>

- Project
  - src
    - function.hpp
    - function.cpp
    - main.cpp
  - makefile
  - main.exe

<hr>

# Guide
- Project root에 makefile을 위치합니다.
  - 해당 Repository를 clone하여 사용할 수 있음
- makefile 내의 `TARGET`, `SRC_DIR` 에 원하는 이름을 설정합니다.
  - `SRC_DIR`은 source 파일이 존재하는 디렉토리명으로 설정하여야 합니다.
  - `TARGET`은 실행 파일의 이름입니다.
- `make` 명령어를 실행합니다.

# requirements
- `g++ compiler`, `make`
