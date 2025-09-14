.class public final Lcom/android/server/backup/internal/ClearDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public backupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p2, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 16
    .line 17
    .line 18
    monitor-exit p1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method
