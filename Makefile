CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra -pedantic -I./asio-1.26.0/include

SRCDIR = .
SRCS_CLIENT = $(SRCDIR)/client/client.cpp $(SRCDIR)/common/message.hpp
SRCS_SERVER = $(SRCDIR)/server/server.cpp $(SRCDIR)/common/message.hpp
OBJS_CLIENT = $(SRCS_CLIENT:.cpp=.o)
OBJS_SERVER = $(SRCS_SERVER:.cpp=.o)

TARGET_CLIENT = chat_client
TARGET_SERVER = chat_server

.PHONY: all clean

all: $(TARGET_CLIENT) $(TARGET_SERVER)

$(TARGET_CLIENT): $(OBJS_CLIENT)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(TARGET_SERVER): $(OBJS_SERVER)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJS_CLIENT) $(OBJS_SERVER) $(TARGET_CLIENT) $(TARGET_SERVER)
