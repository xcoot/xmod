.class public final Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBackupManager:Lcom/android/server/backup/UserBackupManagerService;

.field public final mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mBackupManager:Lcom/android/server/backup/UserBackupManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 6
    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mBackupManager:Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    monitor-enter p0

    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 15
    if-eq v1, v0, :cond_0

    .line 17
    const-string v0, "BackupManagerService"

    .line 19
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 21
    const-string/jumbo v2, "ending non-current restore session"

    .line 24
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const-string v0, "BackupManagerService"

    .line 36
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 38
    const-string v2, "Clearing restore session and halting timeout"

    .line 40
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 50
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 52
    const/16 v1, 0x8

    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 57
    :goto_0
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw v0

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    throw p0
.end method
