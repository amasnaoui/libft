SRCS    =    ft_isprint.c            ft_putchar_fd.c            ft_strjoin.c            ft_strtrim.c            ft_substr.c        \
            ft_atoi.c                ft_itoa.c                ft_putendl_fd.c            ft_strlcat.c            ft_bzero.c        \
            ft_putnbr_fd.c            ft_strlcpy.c            ft_tolower.c            ft_calloc.c                ft_memchr.c        \
            ft_putstr_fd.c            ft_strlen.c                ft_toupper.c            ft_isalnum.c            ft_memcmp.c        \
            ft_split.c                ft_strmapi.c            ft_isalpha.c            ft_memcpy.c                ft_strchr.c        \
            ft_strncmp.c            ft_strrchr.c            ft_isascii.c            ft_memmove.c            ft_strdup.c        \
            ft_strnstr.c            ft_isdigit.c            ft_memset.c                ft_striteri.c
OBJS    =    $(SRCS:.c=.o)
BONUS    =    ft_lstadd_front_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c \
                ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c
BOBJS    =    $(BONUS:.c=.o)
HEADER    =    -I./
NAME	=	libft.a
CC        =    cc
RM        =    rm -f
CFLAGS    =    -Wall -Wextra -Werror
AR        =    ar rcs

# ----------------------------------------------------------------------------

all:        $(NAME)

%.o:         %.c
			$(CC) $(CFLAGS) $(HEADER) -c $< -o $@

$(NAME):    $(OBJS)
			$(AR) $(NAME) $(OBJS)

bonus:		all $(BOBJS)
			$(AR) $(NAME) $(BOBJS)

clean:
			$(RM) $(OBJS) $(BOBJS)

fclean:        clean
			$(RM) $(NAME)

re:            fclean all

.PHONY:        all clean fclean re bonus