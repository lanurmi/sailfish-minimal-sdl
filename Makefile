# Name of the application
TARGET := sailfish-minimal-sdl

# Source code files
SOURCES := src/Game.cpp

# pkg-config requirements
PKGS := sdl2

CXXFLAGS ?= -g

PKGCONFIG_FLAGS := $(shell pkg-config --libs --cflags $(PKGS))

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(PKGCONFIG_FLAGS)

clean:
	rm -f $(TARGET)

.PHONY: all clean
