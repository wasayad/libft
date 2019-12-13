# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: wasayad <wasayad@student.le-101.fr>        +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/07/21 11:52:42 by wasayad      #+#   ##    ##    #+#        #
#    Updated: 2019/10/24 16:25:28 by wasayad     ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

SRC = 		./ft_atoi.c \
			./ft_bzero.c \
			./ft_calloc.c \
			./ft_isalnum.c \
			./ft_isalpha.c \
			./ft_isascii.c \
			./ft_isdigit.c \
			./ft_isprint.c \
			./ft_itoa.c \
			./ft_memccpy.c \
			./ft_memchr.c \
			./ft_memcmp.c \
			./ft_memcpy.c \
			./ft_memmove.c \
			./ft_memset.c \
			./ft_putchar_fd.c \
			./ft_putendl_fd.c \
			./ft_putnbr_fd.c \
			./ft_putstr_fd.c \
			./ft_split.c \
			./ft_strchr.c \
			./ft_strdup.c \
			./ft_strjoin.c \
			./ft_strlcat.c \
			./ft_strlcpy.c \
			./ft_strlen.c \
			./ft_strmapi.c \
			./ft_strncmp.c \
			./ft_strnstr.c \
			./ft_strrchr.c \
			./ft_strtrim.c \
			./ft_substr.c \
			./ft_tolower.c \
			./ft_toupper.c 

OBJ = 		${SRC:.c=.o}
HEADER = 	libft.h
NAME = 		libft.a
CC = 		gcc
CFLAGS = 	-Wall -Wextra -Werror
RM = 		rm -rf

%.o: %.c ${HEADER}
		@${CC} ${CFLAGS} -c $< -o ${<:.c=.o}
		@echo "\033[93m."

$(NAME) : ${OBJ} ${HEADER}
			@echo ''
	        @ar rc ${NAME} ${OBJ}
			@echo "\033[93mCompiling libft.a..."

all:      ${NAME}

clean:
		@${RM} -f ${OBJ}
		@echo "\033[91mDeleting object files..."

fclean:     clean
	        @rm -f ${NAME}
			@echo "\033[91mDeleting libft.a..."

re : fclean all

.PHONY : all clean fclean re
