NAME = libft.a
SOURCES = ft_atoi.c \
		  ft_bzero.c \
		  ft_isalnum.c \
		  ft_isalpha.c \
		  ft_isascii.c \
		  ft_isdigit.c \
		  ft_isprint.c \
		  ft_memcpy.c \
		  ft_memchr.c \
		  ft_memcmp.c \
		  ft_memcpy.c \
		  ft_memmove.c \
		  ft_memset.c \
		  ft_strchr.c \
		  ft_strncmp.c \
		  ft_strlcpy.c \
		  ft_strlcat.c \
		  ft_strlen.c \
		  ft_strncmp.c \
		  ft_strrchr.c \
		  ft_tolower.c \
		  ft_toupper.c
OBJECTS = $(SOURCES:.c=.o)                                                  
                                                                                 
CC = gcc                                                                         
CFLAGS = -Wall -Wextra -Werror                                           
INCLUDE = -I include                                                            
RM = rm -rf                                                                     

all: $(NAME)

$(NAME) : $(OBJECTS)
	ar rcs $(NAME) $(OBJECTS)

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@                        

clean:                                                                          
	$(RM) $(OBJECTS)
		
fclean: clean
	$(RM) $(NAME)

.PHONY: all clean fclean