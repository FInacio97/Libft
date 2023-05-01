NAME = libft.a


SRCS =  ft_toupper.c	ft_bzero.c	ft_tolower.c ft_isalpha.c\
ft_strchr.c	ft_atoi.c	ft_isalnum.c	ft_isascii.c\
ft_isdigit.c	ft_isprint.c	ft_strncmp.c	ft_strlen.c\
ft_strrchr.c	ft_strlcpy.c	ft_strnstr.c	ft_strlcat.c\
ft_strdup.c	ft_memchr.c	ft_memmove.c	ft_calloc.c\
ft_memcmp.c	ft_memcpy.c	ft_memset.c	ft_substr.c\
ft_strjoin.c ft_strtrim.c ft_putchar_fd.c	ft_putstr_fd.c\
ft_putendl_fd.c	ft_putnbr_fd.c	ft_strmapi.c ft_striteri.c\
ft_itoa.c	ft_split.c

BONUS = ft_lstnew.c	ft_lstadd_front.c	ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c	ft_lstclear.c\
ft_lstiter.c	*ft_lstmap.c

OBJ_BONUS :=$(BONUS:.c=.o)

OBJS :=$(SRCS:.c=.o)

CFLAGS = -Wall -Werror -Wextra

.PHONY: all clean fclean re BONUS

all: $(NAME)

bonus: $(OBJ_BONUS)
		ar -crs $(NAME) $(OBJ_BONUS)

$(NAME) : $(OBJS)
	ar -crs $@ $^

%.o : %.c
	cc $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(OBJ_BONUS)
fclean: clean
	rm -f $(NAME)
re: fclean all