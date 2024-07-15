CC = g++

CFLAGS = -Wall -std=c++17

TARGET = main

SRCS = $(wildcard src/*.cpp)
HDRS = $(wildcard src/*.hpp)

OBJS = $(patsubst src/%.cpp, obj/%.o, $(SRCS))

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

obj/%.o: src/%.cpp $(HDRS)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)
