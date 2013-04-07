--- R/sendmailR.r.orig	2012-11-16 01:01:41.000000000 +0900
+++ R/sendmailR.r	2013-04-06 13:59:16.000000000 +0900
@@ -16,6 +16,7 @@
 .write_mail <- function(headers, msg, sock) {
   if (!is.list(msg))
     msg <- list(msg)
+  content.type <- ifelse("Content-Type" %in% names(headers), headers$`Content-Type`, "text/plain; format=flowed")
 
   ## Generate MIME headers:
   boundary <- paste(packBits(sample(0:1, 256, TRUE)), collapse="")
@@ -35,7 +36,7 @@
       .write_mime_part(part, sock)
     else if (is.character(part)) { ## Legacy support for plain old string
       ## writeLines(sprintf("--%s", boundary), sock, sep="\r\n")
-      writeLines("Content-Type: text/plain; format=flowed\r\n", sock, sep="\r\n")
+      writeLines(paste("Content-Type: ",content.type,"\r\n",sep=""), sock, sep="\r\n")
       writeLines(part, sock, sep="\r\n")
     }
   }
