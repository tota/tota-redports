--- Lib/email/charset.py.orig	2011-06-12 00:46:24.000000000 +0900
+++ Lib/email/charset.py	2012-02-14 22:00:12.000000000 +0900
@@ -270,7 +270,8 @@
     def convert(self, s):
         """Convert a string from the input_codec to the output_codec."""
         if self.input_codec != self.output_codec:
-            return unicode(s, self.input_codec).encode(self.output_codec)
+            return unicode(s, self.input_codec, 'replace'
+                    ).encode(self.output_codec, 'replace')
         else:
             return s
 
