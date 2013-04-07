--- R/mime_part.R.orig	2012-11-16 01:01:41.000000000 +0900
+++ R/mime_part.R	2013-04-06 14:04:13.000000000 +0900
@@ -30,7 +30,8 @@
     name <- basename(fn)
 
   text <- base64encode(fn, linewidth=72, newline="\n")
-  headers <- list("Content-Type"=type,
+  headers <- list("Content-ID"=sprintf("<%s>",name),
+                  "Content-Type"=type,
                   "Content-Disposition"=sprintf("%s; filename=%s",
                     disposition, name),
                   "Content-Transfer-Encoding"="base64")
