.class public final Lcom/android/server/storage/StorageUserConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActiveConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

.field public final mContext:Landroid/content/Context;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mSessionController:Lcom/android/server/storage/StorageSessionController;

.field public final mSessions:Ljava/util/Map;

.field public final mSessionsLock:Ljava/lang/Object;

.field public final mSmInternal:Landroid/os/storage/StorageManagerInternal;

.field public final mUidsBlockedOnIo:Landroid/util/SparseArray;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/storage/StorageSessionController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionsLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;-><init>(Lcom/android/server/storage/StorageUserConnection;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mActiveConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mSessions:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mUidsBlockedOnIo:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/android/server/storage/StorageUserConnection;->mUserId:I

    .line 42
    .line 43
    iput-object p3, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 44
    .line 45
    const-class p2, Landroid/os/storage/StorageManagerInternal;

    .line 46
    .line 47
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Landroid/os/storage/StorageManagerInternal;

    .line 52
    .line 53
    iput-object p2, p0, Lcom/android/server/storage/StorageUserConnection;->mSmInternal:Landroid/os/storage/StorageManagerInternal;

    .line 54
    .line 55
    new-instance p2, Landroid/os/HandlerThread;

    .line 56
    .line 57
    const-string p3, "StorageUserConnectionThread-"

    .line 58
    .line 59
    invoke-static {p1, p3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p2, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lcom/android/server/storage/StorageUserConnection;->mHandlerThread:Landroid/os/HandlerThread;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 69
    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V
    .locals 3

    .line 1
    const-string v0, "No session found for sessionId: "

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionsLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection;->mSessions:Ljava/util/Map;

    .line 13
    .line 14
    check-cast v2, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string p0, "StorageUserConnection"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    monitor-exit v1

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection;->mActiveConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    :try_start_1
    new-instance v0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    invoke-direct {v0, p1, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->waitForAsyncVoid(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_0
    move-exception p0

    .line 51
    new-instance p1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "Failed to notify volume state changed for vol : "

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw p0
.end method

.method public final removeSession(Ljava/lang/String;)Lcom/android/server/storage/StorageUserConnection$Session;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection;->mUidsBlockedOnIo:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection;->mSessions:Ljava/util/Map;

    .line 10
    .line 11
    check-cast p0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/storage/StorageUserConnection$Session;

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final removeSessionAndWait(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageUserConnection;->removeSession(Ljava/lang/String;)Lcom/android/server/storage/StorageUserConnection$Session;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "StorageUserConnection"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "No session found for id: "

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "Waiting for session end "

    .line 30
    .line 31
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " ..."

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection;->mActiveConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    :try_start_0
    new-instance p1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda2;

    .line 55
    .line 56
    invoke-direct {p1, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/storage/StorageUserConnection$Session;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->waitForAsyncVoid(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catch_0
    move-exception p0

    .line 64
    new-instance p1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "Failed to end session: "

    .line 69
    .line 70
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method
