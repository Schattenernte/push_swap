/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: iyapar <iyapar@42kocaeli.com.tr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/29 15:04:14 by iyapar            #+#    #+#             */
/*   Updated: 2022/06/29 15:04:18 by iyapar           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <limits.h>

int	ft_atoi(const char *ch)
{
	int				i;
	int				sign;
	unsigned long	res;

	res = 0;
	sign = 1;
	i = 0;
	while ((ch[i] >= '\t' && ch[i] <= '\r') || ch[i] == ' ')
		i++;
	if (ch[i] == '-')
		sign = -1;
	if (ch[i] == '-' || ch[i] == '+')
		i++;
	while (ch[i] > 47 && ch[i] < 58)
	{
		res = (ch[i] - 48) + (res * 10);
		i++;
	}
	if (res > LONG_MAX && sign == -1)
		return (0);
	if (res > LONG_MAX && sign == 1)
		return (-1);
	return (res * sign);
}
