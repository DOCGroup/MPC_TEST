%%
username    printf( "%s", getlogin() );

%%

int
yywrap (void)
{
  return 1;
}
