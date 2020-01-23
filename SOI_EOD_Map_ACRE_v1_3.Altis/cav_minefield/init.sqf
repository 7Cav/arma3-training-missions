#include ".\script_macros.hpp"

GVAR(minefieldData) = nil;
FUNC(initField) = nil;
FUNC(layField) = nil;

INFO("==========================================================");
INFO_1("Initializing - Build: %1",QUOTE(PROJECT_VERSION));
DEF_FUNC(initField);
DEF_FUNC(layField);
DEF_FUNC(resetField);
DEF_FUNC(clearField);
//DEF_FUNC(getMinefield);

GVAR(loadDone) = true;