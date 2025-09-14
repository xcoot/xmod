.class public final Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/appop/AppOpsCheckingServiceInterface;


# instance fields
.field public final mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsCheckingServiceInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 6
    return-void
.end method


# virtual methods
.method public final addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsService$2;)Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x40

    .line 3
    const-string v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#addAppOpsModeChangedListener"

    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 10
    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsService$2;)Z

    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    throw p0
.end method

.method public final clearAllModes()V
    .locals 3

    .line 1
    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#clearAllModes"

    .line 3
    const-wide/16 v1, 0x40

    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 10
    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    throw p0
.end method

.method public final getForegroundOps(I)Landroid/util/SparseBooleanArray;
    .locals 3

    const-wide/16 v0, 0x40

    .line 1
    const-string v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getForegroundOps"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getForegroundOps(I)Landroid/util/SparseBooleanArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4
    throw p0
.end method

.method public final getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 3

    const-wide/16 v0, 0x40

    .line 5
    const-string v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getForegroundOps"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 8
    throw p0
.end method

.method public final getNonDefaultPackageModes(ILjava/lang/String;)Landroid/util/SparseIntArray;
    .locals 3

    .line 1
    const-wide/16 v0, 0x40

    .line 3
    const-string v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getNonDefaultPackageModes"

    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 10
    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultPackageModes(ILjava/lang/String;)Landroid/util/SparseIntArray;

    .line 13
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    throw p0
.end method

.method public final getNonDefaultUidModes(I)Landroid/util/SparseIntArray;
    .locals 3

    .line 1
    const-wide/16 v0, 0x40

    .line 3
    const-string v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getNonDefaultUidModes"

    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 10
    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(I)Landroid/util/SparseIntArray;

    .line 13
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    throw p0
.end method

.method public final getPackageMode(IILjava/lang/String;)I
    .locals 3

    .line 1
    const-wide/16 v0, 0x40

    .line 3
    const-string v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getPackageMode"

    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 10
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    throw p0
.end method

.method public final getUidMode(IILjava/lang/String;)I
    .locals 3

    .line 1
    const-wide/16 v0, 0x40

    .line 3
    const-string v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getUidMode"

    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 10
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    throw p0
.end method

.method public final readState()V
    .locals 3

    .line 1
    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#readState"

    .line 3
    const-wide/16 v1, 0x40

    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 10
    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    throw p0
.end method

.method public final removePackage(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x40

    .line 3
    const-string v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#removePackage"

    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 10
    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(ILjava/lang/String;)Z

    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    throw p0
.end method

.method public final removeUid(I)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x40

    .line 3
    const-string v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#removeUid"

    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 10
    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removeUid(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    throw p0
.end method

.method public final setPackageMode(IIILjava/lang/String;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x40

    .line 3
    const-string v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#setPackageMode"

    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 10
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    throw p0
.end method

.method public final setUidMode(III)Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x40

    .line 3
    const-string v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#setUidMode"

    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 10
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setUidMode(III)Z

    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    throw p0
.end method

.method public final shutdown()V
    .locals 3

    .line 1
    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#shutdown"

    .line 3
    const-wide/16 v1, 0x40

    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 10
    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    throw p0
.end method

.method public final systemReady()V
    .locals 3

    .line 1
    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#systemReady"

    .line 3
    const-wide/16 v1, 0x40

    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 10
    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->systemReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    throw p0
.end method

.method public final writeState()V
    .locals 3

    .line 1
    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#writeState"

    .line 3
    const-wide/16 v1, 0x40

    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 10
    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->writeState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    throw p0
.end method
