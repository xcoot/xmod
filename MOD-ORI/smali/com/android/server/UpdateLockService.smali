.class public final Lcom/android/server/UpdateLockService;
.super Landroid/os/IUpdateLock$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLocks:Lcom/android/server/UpdateLockService$LockWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/IUpdateLock$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/UpdateLockService$LockWatcher;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p0, v0}, Lcom/android/server/UpdateLockService$LockWatcher;-><init>(Lcom/android/server/UpdateLockService;Landroid/os/Handler;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/UpdateLockService;->mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/UpdateLockService;->sendLockChangedBroadcast(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final acquireUpdateLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.UPDATE_LOCK"

    .line 4
    .line 5
    const-string v2, "acquireUpdateLock"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/UpdateLockService;->mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    .line 11
    .line 12
    const-string/jumbo v0, "{tag="

    .line 13
    .line 14
    .line 15
    const-string v1, " uid="

    .line 16
    .line 17
    invoke-static {v0, p2, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, " pid="

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v0, 0x7d

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p0, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "UpdateLockService"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/UpdateLockService;->mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Landroid/os/TokenWatcher;->dump(Ljava/io/PrintWriter;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final releaseUpdateLock(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.UPDATE_LOCK"

    .line 4
    .line 5
    const-string/jumbo v2, "releaseUpdateLock"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/UpdateLockService;->mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final sendLockChangedBroadcast(Z)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 6
    .line 7
    const-string v3, "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v3, "nowisconvenient"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string/jumbo v2, "timestamp"

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/high16 v2, 0x4000000

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p0, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 39
    .line 40
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method
