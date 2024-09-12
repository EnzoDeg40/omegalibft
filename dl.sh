#!/bin/bash

rename_function()
{
	# $1 corresponds to the function name, $2 corresponds to the username
	# Rename $1 (e.g., ft_atoi) to ${1}_$2 in all files and filenames
	find . -type f -name "*.c" -exec sed -i "s/$1/${1}_$2/g" {} +
	find . -type f -name "*.h" -exec sed -i "s/$1/${1}_$2/g" {} +
	find . -type f -name "Makefile" -exec sed -i "s/$1/${1}_$2/g" {} +
	# mv: cannot stat 'libft.c': No such file or directory
	mv "$1.c" "${1}_$2.c"
}

# if $1 (git URL) and $2 (username) are not set, return error
if [ -z "$1" ] || [ -z "$2" ]; then
	echo "Usage: $0 <libft-git-url> <42-username>"
	exit 1
fi

if [ -d "libft_$2" ]; then
	echo "libft_$2 already exists, git reset"
	cd libft_$2
	git reset --hard
	cd ..
else
	echo "libft_$2 does not exist, cloning"
	git clone $1 libft_$2
fi

cd libft_$2

# # Rename functions
# rename_function "ft_atoi" "$2"
# rename_function "ft_memset" "$2"
# rename_function "ft_bzero" "$2"


string_list=(
	"ft_atoi"
	"ft_bzero"
	"ft_calloc"
	"ft_isalnum"
	"ft_isalpha"
	"ft_isascii"
	"ft_isdigit"
	"ft_isprint"
	"ft_itoa"
	"ft_lstadd_back"
	"ft_lstadd_front"
	"ft_lstclear"
	"ft_lstdelone"
	"ft_lstiter"
	"ft_lstlast"
	"ft_lstmap"
	"ft_lstnew"
	"ft_lstsize"
	"ft_memchr"
	"ft_memcmp"
	"ft_memcpy"
	"ft_memmove"
	"ft_memset"
	"ft_putchar_fd"
	"ft_putendl_fd"
	"ft_putnbr_fd"
	"ft_putstr_fd"
	"ft_split"
	"ft_strrchr"
	"ft_strdup"
	"ft_striteri"
	"ft_strjoin"
	"ft_strlcat"
	"ft_strlcpy"
	"ft_strlen"
	"ft_strmapi"
	"ft_strncmp"
	"ft_strnstr"
	"ft_strtrim"
	"ft_substr"
	"ft_tolower"
	"ft_toupper"
)

for function_name in "${string_list[@]}"
do
    rename_function "$function_name" "$2"
done


# Rename header
rename_function "libft" "$2"
rename_function "LIBFT" "$2"
mv libft.h libft_$2.h

# Rename structure
rename_function "t_list" "$2"
rename_function "s_list" "$2"

make
make bonus

# Move the files to the parent directory
cp libft_$2.a ..
