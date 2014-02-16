--- docs/genAll.py.orig	2014-02-14 23:22:37.000000000 +0900
+++ docs/genAll.py	2014-02-16 11:46:38.000000000 +0900
@@ -1,5 +1,5 @@
 #!/bin/env python
-import os, sys, traceback
+import os, sys, traceback, site
 def _genAll(verbose=1):
     from reportlab.lib.testutils import setOutDir
     setOutDir(__name__)
@@ -43,4 +43,5 @@
     elif not os.path.isabs(d):
         d = os.path.abspath(d)
     sys.path.insert(0,os.path.dirname(d))
+    site.addsitedir("%%STAGEDIR%%%%PYTHON_SITELIBDIR%%")
     _genAll(verbose)
