# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nusamank <nusamank@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/11 16:07:56 by nusamank          #+#    #+#              #
#    Updated: 2024/03/11 16:12:30 by nusamank         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = ft_printf.c print_c.c print_hex.c print_int.c print_ptr.c print_str.c

OBJS = $(SRCS:.c=.o)

NAME = libftprintf.a

CC = cc

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	rm -f $(OBJS) $(BONUS_OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re