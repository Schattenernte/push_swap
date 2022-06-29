NAME = push_swap



CFILES = ft_lst_functions.c main.c \
		./opert/ft_swap_op.c ./opert/ft_push_op.c ./opert/ft_rot_op.c ./opert/ft_rev_rot_op.c \
		./small/ft_sort_three.c push_swap.c ./small/ft_sort_four.c ./small/ft_sort_five.c \
		./small/ft_push_small.c ft_checks.c

OBJECTS = $(CFILES:.c=.o)

LIBFT = ./libft/libft.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJECTS)
	@(gcc $(CFLAGS) $(OBJECTS) $(LIBFT) -o $(NAME))

clean:clnd
	@rm -f $(OBJECTS)

fclean:	clean
	@rm -f $(NAME)

re: fclean all

clnd:
	@echo "\033[1;34m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
	@echo "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
	@echo "░░░░░░░░░░░░░░░███▓█████▓▒▒░░░░░░░░░░░░░░"
	@echo "░░░░░░░░░░░░░░░▓████▓▒▓▓█████▓░░░░░░░░░░░"
	@echo "░░░░░░░░░░░░░░░░░░████▒▓▓▓▓▓▓███▓░░░░░░░░"
	@echo "░░░░░░░░░░░░░░░░░░░░▒██▓▓▓▓▓▓▓▒▓██▓░░░░░░"
	@echo "░░░░▄████▄▄████▄░░░░░░██▒▓▓▓▓▓▓▓▒▓██░░░░░"
	@echo "░░░▐████▄██▄████▌░░░░░░██▒▓▓▓▓▓▓▓▓▒██░░░░"
	@echo "░░░▐█████▄▄█████▌░░░░░░░█▓▓▓▓▓▓▓▓▓▓▒██░░░"
	@echo "░░░░▀██▄▀▀▀▀▄██▀░░░░░░░░██▒▓▓▓▓▓▓▓▓▓▒██░░"
	@echo "░░░░░░▀██████▀░░░░░░░░░░▓█▒▓▓▓▓▓▓▓▓▓▓▓█▓░"
	@echo "░░░░░░░░▀██▀░░░░░░░░░░░░██▒▓▓▓▓▓▓▓▓▓▓▒██░"
	@echo "░░░░░░░░░░░░░░░░░░░░░░░░█▓▓▓▓▓▓▓▓▓▓▓▓▒██░"
	@echo "░░░░░░░░░░░░░░░░░░░░░░░██▒▓▓▓▓▓▓▓▓▓▓▓▒██░"
	@echo "░░░░░░░░░░░░░░░░░░░░░░▓█▒▓▓▓▓▓▓▓▓▓▓▓▓▒██░"
	@echo "░░░░░░░░░░░░░░░░░░░░░██▒▓▓▓▓▓▓▓▓▓▓▓▓▒▓██░"
	@echo "░░░░░░░░░░░░░░░░░░░██▓▒▓▓▓▓▓▓▓▓▓▓▓▓▓▒██▓░"
	@echo "░▓█▓▒░░░░░░░░░░▒▓███▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒███░░"
	@echo "░░███████████████▓▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒███░░░"
	@echo "░░░███▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒████░░░░"
	@echo "░░░░▓███▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒█████░░░░░"
	@echo "░░░░░░█████▓▒▒▒▒▒▓▓▓▓▓▒▒▒▒▒▒██████░░░░░░░"
	@echo "░░░░░░░░▓████████▓▓▓▓▓▓█████████░░░░░░░░░"
	@echo "░░░░░░░░░░░▒████████████████▓░░░░░░░░░░░░"
	@echo "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
	@echo "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░\033[1;31miyapar"