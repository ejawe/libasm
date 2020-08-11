#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

size_t  ft_strlen(const char *s);
char	*ft_strcpy(char *dest, const char *src);

int     main(void)
{
    char *str = "allo a l'huile";
    int ret = 0;
    char dest[20];

    printf("FT_STRLEN\n");
    ret = ft_strlen(str);
    printf("ft_strlen = %i\n", ret);
    ret = strlen(str);
    printf("strlen = %i\n", ret);

    printf("\n");
    
    printf("FT_STRCPY\n");
    ft_strcpy(dest, str);
    printf("ft_strcpy = %s\n", dest);
    strcpy(dest, str);
    printf("strcpy = %s\n", dest);
    return (0);
}