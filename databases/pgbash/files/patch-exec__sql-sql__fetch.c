--- exec_sql/sql_fetch.c.orig	2011-08-20 15:52:23.000000000 +0900
+++ exec_sql/sql_fetch.c	2012-04-28 09:59:29.000000000 +0900
@@ -14,7 +14,7 @@
 #include <stdlib.h>
 #include <ctype.h>
 
-#include "libpq-fe.h"
+#include "postgresql/server/postgres_fe.h"
 
 /*-----------------------------------------------------------------
  * The definition of sql_fetch.
