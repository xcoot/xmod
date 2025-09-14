.class public final Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mLastStatus:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    new-instance p1, Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/content/pm/IPackageMoveObserver;

    .line 21
    .line 22
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    if-eq v4, v5, :cond_1

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    if-eq v4, v5, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 32
    .line 33
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 34
    .line 35
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v6, Ljava/lang/Long;

    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    invoke-interface {v3, v4, v5, v6, v7}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 48
    .line 49
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v5, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-interface {v3, v4, v5}, Landroid/content/pm/IPackageMoveObserver;->onCreated(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    :catch_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final notifyCreated(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "Move "

    .line 2
    .line 3
    const-string v1, " created "

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "PackageManager"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 30
    .line 31
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final notifyStatusChanged(II)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(IIJ)V

    return-void
.end method

.method public final notifyStatusChanged(IIJ)V
    .locals 4

    .line 2
    const-string v0, "Multi move id "

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Move "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Lcom/android/server/pm/MovePackageHelper;->sMoveIdMapForSd:Ljava/util/Map;

    monitor-enter v1

    .line 5
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 6
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IMemorySaverPackageMoveObserver;

    .line 7
    invoke-interface {v2, p1, p2, p3, p4}, Landroid/content/pm/IMemorySaverPackageMoveObserver;->onStatusChanged(IIJ)V

    const/16 v2, -0x64

    if-eq p2, v2, :cond_0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    const/4 v2, -0x6

    if-ne p2, v2, :cond_1

    .line 8
    :cond_0
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " status "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sPendingMoves "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/pm/MovePackageHelper;->sPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " sMoveIdMapForSd "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 10
    :catch_0
    :try_start_2
    const-string v0, "PackageManager"

    const-string v2, "Exception while multi sd move"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    sget-object v0, Lcom/android/server/pm/MovePackageHelper;->sMoveIdMapForSd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 13
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 14
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 15
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 16
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    const/4 p3, 0x2

    .line 17
    invoke-virtual {p0, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 18
    iget-object p3, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    monitor-enter p3

    .line 19
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    monitor-exit p3

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
