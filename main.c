#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

size_t  ft_strlen(const char *s);
char	*ft_strcpy(char *dest, const char *src);
int     ft_strcmp(const char *s1, const char *s2);

int     main(void)
{
    char *str = "allo";
    char *str2 = "allu";
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

    printf("\n");
    
    printf("FT_STRCPY\n");
    printf("ft_strcmp = %d\n", ft_strcmp(str, str2));
    printf("strcmp = %d\n", strcmp(str, str2));
    return (0);
}