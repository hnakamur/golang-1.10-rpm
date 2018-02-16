--- go.orig/src/make.bash	2017-07-24 19:38:15.000000000 +0000
+++ go/src/make.bash	2017-08-05 09:40:11.470218353 +0000
@@ -167,7 +167,7 @@
 	# CC_FOR_TARGET is recorded as the default compiler for the go tool. When building for the host, however,
 	# use the host compiler, CC, from `cmd/dist/dist env` instead.
 	CC=$CC GOOS=$GOHOSTOS GOARCH=$GOHOSTARCH \
-		"$GOTOOLDIR"/go_bootstrap install -gcflags "$GO_GCFLAGS" -ldflags "$GO_LDFLAGS" -v std cmd
+		"$GOTOOLDIR"/go_bootstrap install -gcflags "$GO_GCFLAGS" -ldflags "$GO_LDFLAGS" -v -x std cmd
 	echo
 fi
 
@@ -175,7 +175,7 @@
 
 old_bin_files=$(cd $GOROOT/bin && echo *)
 
-CC=$CC_FOR_TARGET "$GOTOOLDIR"/go_bootstrap install $GO_FLAGS -gcflags "$GO_GCFLAGS" -ldflags "$GO_LDFLAGS" -v std cmd
+CC=$CC_FOR_TARGET "$GOTOOLDIR"/go_bootstrap install $GO_FLAGS -gcflags "$GO_GCFLAGS" -ldflags "$GO_LDFLAGS" -v -x std cmd
 
 # Check that there are no new files in $GOROOT/bin other than go and gofmt
 # and $GOOS_$GOARCH (a directory used when cross-compiling).
