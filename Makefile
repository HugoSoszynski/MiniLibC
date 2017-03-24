##
## Makefile for minilibc in /home/soszyn_h/rendu/asm_minilibc
## 
## Made by Hugo SOSZYNSKI
## Login   <hugo.soszynski@epitech.eu>
## 
## Started on  Wed Mar  1 17:55:47 2017 Hugo SOSZYNSKI
## Last update Fri Mar 24 14:35:20 2017 loens_g
##

LD	= ld

LDFLAGS	= -shared

ASM	= nasm

ASFLAGS	= -f elf64

RM	= rm -f

NAME	= libasm.so

SRCS	= sources/strlen.asm \
	  sources/strcmp.asm \
	  sources/strncmp.asm \
	  sources/strcasecmp.asm \
	  sources/strstr.asm \
	  sources/entrypoint.asm \
	  sources/strpbrk.asm \
	  sources/strchr.asm \
	  sources/strcspn.asm \
	  sources/write.asm \
	  sources/read.asm

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
