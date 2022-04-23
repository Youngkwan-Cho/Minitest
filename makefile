CC = gcc
TARGET = market.c
SRCS = product.c manager.c
OBJS = $(SRCS:.c=.o)
EXE1 = market

$(EXE1):$(OBJS)
	$(CC) $(TARGET) $(OBJS) -o $(EXE1)
%.o:%.c
	$(CC) -c $(SRCS)

clean :
	rm -f $(OBJS) $(EXE1)
