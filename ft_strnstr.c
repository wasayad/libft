/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_strnstr.c                                     .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: wasayad <wasayad@student.le-101.fr>        +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2019/10/08 13:10:00 by wasayad      #+#   ##    ##    #+#       */
/*   Updated: 2019/10/16 19:20:37 by wasayad     ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"
#include <string.h>

char	*ft_strnstr(const char *big, const char *little, size_t len)
{
	int i;
	int j;

	j = 0;
	i = 0;
	if (ft_strlen(little) == 0)
		return ((char *)big);
	while (big[i] && len > 0)
	{
		while (big[i + j] == little[j] &&
			big[i + j] && little[j] && len - j > 0)
		{
			j++;
			if (little[j] == '\0')
				return ((char *)big + i);
		}
		j = 0;
		i++;
		len--;
	}
	return (NULL);
}
