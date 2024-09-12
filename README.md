# :omegalibft:

The libft omegalul allows to retrieve any libft project to use it in a project. It is possible to import several libft in the same project and choose which one to use.

```c
#include "main.h"

int main()
{
	int a = ft_atoi_edegraev("42");
	int b = ft_atoi_gbazart("42");

	if (a == b)
		ft_putstr("The two atoi are identical");
	else
		ft_putstr("The two atoi are different");
}
```

## Usage

```bash
./omegalibft.sh <git-url> <42login>
```

Then you can create a `main.h` file in your project and include the libft you want to use.

```h
#ifndef MAIN_H
# define MAIN_H

# include "libft_edegraev/libft_edegraev.h" 
# include "libft_gbazart/libft_gbazart.h" 
# include "libft_ade-rese/libft_ade-rese.h" 
# include "libft_sguillot/libft_sguillot.h" 

#endif
```

`main.c` and `Makefile` aleady exist in the project. You can modify them as you want and compile the project with `make`.



![emote omegalibft](omegalibft.png)