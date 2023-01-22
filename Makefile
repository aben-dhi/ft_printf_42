SRCS = ft_putchar.c ft_printf.c ft_putnbr.c ft_putstr.c ft_putbase.c ft_putptr.c ft_puthexa_l.c ft_puthexa_u.c ft_putbase_u.c

OBJS = ${SRCS:.c=.o}

NAME = libftprintf.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror

RM = rm -f

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o} -I includes

${NAME}: ${OBJS}
	ar rcs ${NAME} ${OBJS}

all: ${NAME}

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all
