# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: edegraev <edegraev@student.forty2.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/12 10:33:56 by edegraev          #+#    #+#              #
#    Updated: 2024/09/12 10:34:47 by edegraev         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = main
SRCS = main.c
OBJS = $(SRCS:.c=.o)
CC = clang
CFLAGS = -Wall -Wextra -Werror
RM = rm -f
INC = $(shell find . -type d -name "libft_*" | sed 's/^/-I/')
INC += -I.
LIBS = $(shell find . -maxdepth 1 -name "*.a")

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(INC) $(OBJS) $(LIBS) -o $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
