##
## Makefile for minilibc in /home/soszyn_h/rendu/asm_minilibc
## 
## Made by Hugo SOSZYNSKI
## Login   <hugo.soszynski@epitech.eu>
## 
## Started on  Wed Mar  1 17:55:47 2017 Hugo SOSZYNSKI
## Last update Wed Mar  1 21:08:56 2017 Hugo SOSZYNSKI
##

LD	= ld

LDFLAGS	= -shared

ASM	= nasm

ASFLAGS	= -f elf64

RM	= rm -f

NAME	= libasm.so

SRCS	= sources/strlen.asm

OBJS	= $(SRCS:.asm=.o)


all: $(NAME)

%.o:	%.asm
	$(ASM) $(ASFLAGS) $< -o $@

$(NAME): $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
