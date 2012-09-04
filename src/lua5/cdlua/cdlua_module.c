#include <lua.h>
#include "cd.h"
#include "cdlua.h"

int luaopen_cdlua(lua_State* L)
{
  return cdlua_open(L);
}

