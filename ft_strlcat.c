/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fda-estr <fda-estr@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/24 06:32:10 by fda-estr          #+#    #+#             */
/*   Updated: 2023/04/18 01:26:16 by fda-estr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stddef.h>
#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t size)
{
	size_t	i;
	size_t	j;
	size_t	srclen;
	size_t	destlen;

	i = 0;
	srclen = ft_strlen(src);
	destlen = ft_strlen(dst);
	j = destlen;
	if (size <= destlen)
		return (size + srclen);
	while (src[i] && i < size - destlen - 1)
	{
		dst[j] = src[i];
		j++;
		i++;
	}
	dst[j] = 0;
	return (destlen + srclen);
}
