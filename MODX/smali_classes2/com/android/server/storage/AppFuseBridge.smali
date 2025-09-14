.class public Lcom/android/server/storage/AppFuseBridge;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final APPFUSE_MOUNT_NAME_TEMPLATE:Ljava/lang/String; = "/mnt/appfuse/%d_%d"

.field public static final TAG:Ljava/lang/String; = "AppFuseBridge"


# instance fields
.field public mNativeLoop:J

.field public final mScopes:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_new()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    .line 16
    .line 17
    return-void
.end method

.method private native native_add_bridge(JII)I
.end method

.method private native native_delete(J)V
.end method

.method private native native_lock()V
.end method

.method private native native_new()J
.end method

.method private native native_start_loop(J)V
.end method

.method private native native_unlock()V
.end method


# virtual methods
.method public final addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;,
            Lcom/android/server/AppFuseMountException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_lock()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    .line 6
    .line 7
    iget v1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    cmp-long v2, v0, v2

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget v2, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->open()Landroid/os/ParcelFileDescriptor;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/storage/AppFuseBridge;->native_add_bridge(JII)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v1, -0x1

    .line 44
    if-eq v0, v1, :cond_1

    .line 45
    .line 46
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    .line 51
    .line 52
    iget v2, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    .line 53
    .line 54
    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_unlock()V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :try_start_2
    new-instance v0, Lcom/android/internal/os/FuseUnavailableMountException;

    .line 69
    .line 70
    iget v1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_2
    new-instance v0, Lcom/android/internal/os/FuseUnavailableMountException;

    .line 77
    .line 78
    iget v1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    .line 79
    .line 80
    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_unlock()V

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 91
    .line 92
    .line 93
    throw v0
.end method

.method public final declared-synchronized onClosed(I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    cmp-long v1, v1, v3

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    .line 27
    .line 28
    iget-object v1, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    :goto_1
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_2
    monitor-exit p0

    .line 47
    throw p1
.end method

.method public final declared-synchronized onMount(I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/server/storage/AppFuseBridge$MountScope;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
.end method

.method public final openFile(III)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object p0, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 16
    .line 17
    .line 18
    iget-boolean p0, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    :try_start_1
    invoke-static {p3}, Landroid/os/FileUtils;->translateModePfdToPosix(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    check-cast v0, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    .line 27
    .line 28
    iget-object p3, v0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    .line 29
    .line 30
    const-string v1, "#openFile might be slow"

    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/AppFuseMountException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    .line 37
    .line 38
    :try_start_2
    new-instance p3, Landroid/os/ParcelFileDescriptor;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 43
    .line 44
    iget v0, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->uid:I

    .line 45
    .line 46
    invoke-interface {v1, v0, p1, p2, p0}, Landroid/os/IVold;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {p3, p0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    .line 52
    .line 53
    return-object p3

    .line 54
    :catch_0
    move-exception p0

    .line 55
    :try_start_3
    new-instance p2, Lcom/android/server/AppFuseMountException;

    .line 56
    .line 57
    const-string p3, "Failed to open"

    .line 58
    .line 59
    invoke-direct {p2, p3, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw p2
    :try_end_3
    .catch Lcom/android/server/AppFuseMountException; {:try_start_3 .. :try_end_3} :catch_1

    .line 63
    :catch_1
    new-instance p0, Lcom/android/internal/os/FuseUnavailableMountException;

    .line 64
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_0
    new-instance p0, Lcom/android/internal/os/FuseUnavailableMountException;

    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    :try_start_4
    new-instance p2, Lcom/android/internal/os/FuseUnavailableMountException;

    .line 78
    .line 79
    invoke-direct {p2, p1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .line 80
    .line 81
    .line 82
    throw p2

    .line 83
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    throw p1
.end method

.method public final run()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/server/storage/AppFuseBridge;->native_start_loop(J)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lcom/android/server/storage/AppFuseBridge;->native_delete(J)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v0
.end method
