--- inst/include/sampler.h.orig	2012-03-21 21:00:51.000000000 +0900
+++ inst/include/sampler.h	2012-04-28 20:41:23.000000000 +0900
@@ -28,8 +28,10 @@
 
 #include <algorithm>
 #include <cstdlib>
+#include <cmath>
 #include <iostream>
 
+
 #include "rngR.h"
 #include "history.h"
 #include "moveset.h"
@@ -223,12 +225,12 @@
     long double sumsq = 0;
 
     for(int i = 0; i < N; i++) 
-      sum += expl(pParticles[i].GetLogWeight());
+      sum += std::exp(pParticles[i].GetLogWeight());
 
     for(int i = 0; i < N; i++)
-      sumsq += expl(2.0*(pParticles[i].GetLogWeight()));
+      sumsq += std::exp(2.0*(pParticles[i].GetLogWeight()));
 
-    return expl(-log(sumsq) + 2*log(sum));
+    return std::exp(-log(sumsq) + 2*log(sum));
   }
 
   /// At present this function resets the system evolution time to 0 and calls the moveset initialisor to assign each
@@ -266,8 +268,8 @@
     long double wSum = 0;
     for(int i =0; i < N; i++)
       {
-	rValue += expl(pParticles[i].GetLogWeight()) * pIntegrand(pParticles[i].GetValue(), pAuxiliary);
-	wSum  += expl(pParticles[i].GetLogWeight());
+	rValue += std::exp(pParticles[i].GetLogWeight()) * pIntegrand(pParticles[i].GetValue(), pAuxiliary);
+	wSum  += std::exp(pParticles[i].GetLogWeight());
       }
 
     rValue /= wSum;
