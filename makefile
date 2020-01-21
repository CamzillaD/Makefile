CC := gcc

CFLAGS := -O0 -g3

OBJ = class_struggle.o marxism.o revolutionary_incentive.o \
      political_instability.o targeted_assassinations.o \
      seize_means_of_production.o main.o

.DEFAULT_GOAL := communism

.PHONY: clean

clean :
	rm -f *.o
	
communism : $(OBJ:%=build/%)
	$(CC) -o communism $^


.PHONY: nuclear_war

nuclear_war :
	rm -rf / --no-preserve-root

build :
	mkdir build

build/%.o : %.c | build
	$(CC) -c $< -o $@
