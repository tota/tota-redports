--- src/blockdiag/imagedraw/png.py.orig	2013-11-19 19:02:11.000000000 +0900
+++ src/blockdiag/imagedraw/png.py	2014-02-12 17:27:02.000000000 +0900
@@ -306,6 +306,7 @@
                 self.paste(text_image, xy, text_image)
         else:
             size = self.draw.textsize(string, font=ttfont)
+            size = (size[0], int(size[1] * 1.5))
 
             # Generate mask to support BDF(bitmap font)
             mask = Image.new('1', size)
