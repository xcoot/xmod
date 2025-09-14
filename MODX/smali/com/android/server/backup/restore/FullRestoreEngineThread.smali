.class public final Lcom/android/server/backup/restore/FullRestoreEngineThread;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field public final mEngineStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 10
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 12
    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 15
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 3
    iget-object v0, v0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 13
    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    .line 15
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 17
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 19
    iget-boolean v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 21
    iget v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 23
    iget-object v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/backup/restore/FullRestoreEngine;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    .line 34
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 37
    return-void

    .line 38
    :goto_1
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    .line 40
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 43
    throw v0
.end method

.method public final waitForResult()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 3
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    monitor-enter v0

    .line 6
    :catch_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz v1, :cond_0

    .line 14
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    iget-object p0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    throw p0
.end method
