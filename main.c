/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: edegraev <edegraev@student.forty2.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/09 14:24:53 by edegraev          #+#    #+#             */
/*   Updated: 2024/09/12 10:32:14 by edegraev         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "main.h"

int main()
{
	int a = ft_atoi_edegraev("42");
	int b = ft_atoi_akarahan("42");

	if (a == b)
		ft_putstr_fd_edegraev("The two atoi are identical", 1);
	else
		ft_putstr_fd_edegraev("The two atoi are different", 1);
}