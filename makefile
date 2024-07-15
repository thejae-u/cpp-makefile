CC = g++

CFLAGS = -Wall -std=c++17

# Executable File name
TARGET = main

# DIR name of source
SRC_DIR = src

# DIR name of obj
OBJ_DIR = obj

SRCS = $(wildcard $(SRC_DIR)/*.cpp)
HDRS = $(wildcard $(SRC_DIR)/*.hpp $(SRC_DIR)/*.h)

OBJS = $(patsubst $(SRC_DIR)/%.cpp, $(OBJ_DIR)/%.o, $(SRCS))

all: $(TARGET) post_build

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp $(HDRS)
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

post_build:
	rm -rf $(OBJ_DIR)
