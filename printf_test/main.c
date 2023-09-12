/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   main.c                                           .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: slatchma <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2017/11/29 17:06:04 by slatchma     #+#   ##    ##    #+#       */
/*   Updated: 2018/04/12 00:02:59 by slatchma    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"
#include <limits.h>
#include <locale.h>
#include <stdio.h>


int main()
{
	setlocale(LC_ALL, "");

	//int nb;
	//char *str = "APouletA"; // 8 characteres
	//wchar_t *wstr = L"avéc"; //5 charactres
	wchar_t *wstr = L"ΦPouletΦ"; //10 characteres
	void  *pointeur;


	//printf("mb = %d\n", MB_CUR_MAX);
	printf(" || ptf = %d\n", ft_printf("%hhd", 0));
	//printf("%s\n", "-123456789abcdefghijklmn");
	printf(" || ptf = %d\n", printf("%hhd", 0));

	return 0;
}
