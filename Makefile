NAME = libasm.a

SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_strdup.s ft_read.s

SFLAGS = -f elf64
CFLAGS = -Wall -Werror -Wextra -g -no-pie

OBJS =	$(SRCS:.s=.o)

.s.o :
	nasm $(SFLAGS) $< -o $@ -g

$(NAME) : $(OBJS) 
	ar -rcs $(NAME) $(OBJS)

all : $(NAME)

clean :
	rm -f $(NAME) $(OBJS)

fclean : clean
	rm -f $(NAME)
	

re : fclean all

test : $(NAME)
	@gcc $(CFLAGS) main.c $(NAME)
	@./a.out
