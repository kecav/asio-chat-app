CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra -pedantic -I./asio-1.26.0/include
SRCDIR = .
OBJDIR = build

SRCS_CLIENT = $(SRCDIR)/client/client.cpp
SRCS_SERVER = $(SRCDIR)/server/server.cpp

OBJS_CLIENT = $(OBJDIR)/client.o
OBJS_SERVER = $(OBJDIR)/server.o

TARGET_CLIENT = $(OBJDIR)/client
TARGET_SERVER = $(OBJDIR)/server

.PHONY: all clean

all: $(TARGET_CLIENT) $(TARGET_SERVER)

$(TARGET_CLIENT): $(OBJS_CLIENT)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(TARGET_SERVER): $(OBJS_SERVER)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(OBJS_CLIENT): $(SRCS_CLIENT)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(OBJS_SERVER): $(SRCS_SERVER)
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS_CLIENT) $(OBJS_SERVER) $(TARGET_CLIENT) $(TARGET_SERVER)

.PHONY: clean
