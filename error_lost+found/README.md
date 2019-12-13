# ERROR
The error shows a single directory en read while running and then
skips any process. The precise directory depends on the machine,
depending on the directories being read first.

* Example 1:
```bash
 % nextflow run error_lost+found.nf
N E X T F L O W  ~  version 19.10.0
Launching `error_lost+found.nf` [serene_khorana] - revision: b4e827c95d
/root
```

* Example 2:
```bash
→ nextflow run test2.nf 
N E X T F L O W  ~  version 19.10.0
Launching `test2.nf` [exotic_cray] - revision: b4e827c95d
/lost+found
```

The error message in .nextflow.log gives the directory
as the source of error:

```java
dic-12 18:09:03.181 [PathVisitor-1] ERROR nextflow.Channel - /root
java.nio.file.AccessDeniedException: /root
	at sun.nio.fs.UnixException.translateToIOException(UnixException.java:84)
	at sun.nio.fs.UnixException.rethrowAsIOException(UnixException.java:102)
	at sun.nio.fs.UnixException.rethrowAsIOException(UnixException.java:107)
	at sun.nio.fs.UnixFileSystemProvider.newDirectoryStream(UnixFileSystemProvider.java:427)
	at java.nio.file.Files.newDirectoryStream(Files.java:457)
	at java.nio.file.FileTreeWalker.visit(FileTreeWalker.java:300)
	at java.nio.file.FileTreeWalker.next(FileTreeWalker.java:372)
	at java.nio.file.Files.walkFileTree(Files.java:2706)
	at nextflow.file.FileHelper.visitFiles(FileHelper.groovy:738)
	at nextflow.file.PathVisitor.pathImpl(PathVisitor.groovy:143)
	at nextflow.file.PathVisitor.applyGlobPattern0(PathVisitor.groovy:111)
	at nextflow.file.PathVisitor.apply(PathVisitor.groovy:71)
	at nextflow.file.PathVisitor$_applyAsync_closure1.doCall(PathVisitor.groovy:77)
	at nextflow.file.PathVisitor$_applyAsync_closure1.call(PathVisitor.groovy)
	at groovy.lang.Closure.run(Closure.java:486)
	at java.util.concurrent.CompletableFuture.uniRun(CompletableFuture.java:705)
	at java.util.concurrent.CompletableFuture$UniRun.tryFire(CompletableFuture.java:687)
	at java.util.concurrent.CompletableFuture$Completion.run(CompletableFuture.java:442)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
	at java.lang.Thread.run(Thread.java:748)
dic-12 18:09:03.197 [main] DEBUG nextflow.script.BaseScript - No entry workflow defined
dic-12 18:09:03.202 [PathVisitor-1] DEBUG nextflow.Session - Session aborted -- Cause: /root
```

# CAUSE
The directory that you are passing to `Channel.fromPath` contains directories for
which you do not have permission. There is no line error information so you are on
your own figuring chich of your `Channel.fromPath` is responsible.

# Execute
Recreate the error with:
```bash
nextflow run error_lost+founc.nf
```
