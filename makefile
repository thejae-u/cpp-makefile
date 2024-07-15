CC = g++

# C++ Build Version Select
CFLAGS = -Wall -std=c++17

# Executable File name
TARGET = main

# DIR name of source
SRC_DIR = src

# DIR name of obj
OBJ_DIR = obj

# All Source Files
SRCS = $(wildcard $(SRC_DIR)/*.cpp)

# All Header Files
HDRS = $(wildcard $(SRC_DIR)/*.hpp $(SRC_DIR)/*.h)

# OBJ Files Make Rule
OBJS = $(patsubst $(SRC_DIR)/%.cpp, $(OBJ_DIR)/%.o, $(SRCS))

all: $(TARGET) post_build

# make executable file
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# make dir obj and .o file build
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp $(HDRS)
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Remove obj directory when build ended
post_build:
	rm -rf $(OBJ_DIR)
