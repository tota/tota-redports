--- command.h.orig	2011-08-20 15:53:03.000000000 +0900
+++ command.h	2012-04-28 08:31:03.000000000 +0900
@@ -22,6 +22,7 @@
 #if !defined (_COMMAND_H_)
 #define _COMMAND_H_
 
+#include <unistd.h>
 #include "stdc.h"
 
 /* Instructions describing what kind of thing to do for a redirection. */
