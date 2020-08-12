NAME = libasm.a

SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s

SFLAGS = -f elf64
CFLAGS = -Wall -Werror -Wextra -g

OBJS =	$(SRCS:.s=.o)

$(NAME): $(OBJS) Makefile
	ar rcs $(NAME) $(OBJS)

%.o: %.s
	nasm $(SFLAGS) $< -o $@ -g

clean:
	rm -f $(OBJS)
	rm -f main.o

fclean: clean
	rm -f $(NAME)

test:
	gcc $(CFLAGS) -c main.c
	gcc $(CFLAGS) main.o $(NAME)
	
re : 
	@make fclean all