/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lst_functions.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: iyapar <iyapar@42kocaeli.com.tr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/29 15:07:31 by iyapar            #+#    #+#             */
/*   Updated: 2022/06/29 15:07:35 by iyapar           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "header.h"

static t_struct	*get_next_min(t_struct **stackA)
{
	t_struct	*head;
	t_struct	*min;
	int			flag;

	head = *stackA;
	flag = 0;
	min = NULL;
	if (!head)
		return (NULL);
	while (head)
	{
		if ((head->index == -1) && (!flag || head->value < min->value))
		{
			flag = 1;
			min = head;
		}
		head = head->next;
	}
	return (min);
}

void	add_index(t_struct **stackA)
{
	t_struct	*head;
	int			i;

	i = 0;
	head = get_next_min(stackA);
	while (head)
	{
		head->index = i++;
		head = get_next_min(stackA);
	}
}

t_struct	*ft_lst_fill(char **av, int nmbr)
{
	int			i;
	t_struct	*head;
	t_struct	*temp;

	i = 1;
	head = NULL;
	while (i < nmbr)
	{
		temp = ft_lstnew(ft_atoi(av[i]));
		if (temp == NULL)
		{
			ft_lst_free(&head);
			break ;
		}
		ft_lstadd_back(&head, temp);
		i++;
	}
	add_index(&head);
	return (head);
}

void	ft_lst_free(t_struct **stackA)
{
	t_struct	*temp;

	temp = NULL;
	while (*stackA)
	{
		temp = (*stackA)->next;
		free(*stackA);
		*stackA = NULL;
		if (temp == NULL)
			break ;
		*stackA = temp;
	}
}
