.class public final Lcom/android/server/backup/internal/SetupObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/BackupHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 5
    .line 6
    iget-object p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 11
    .line 12
    iput p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserId:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserId:I

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v2, "user_setup_complete"

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v3

    .line 27
    :goto_0
    if-nez p1, :cond_1

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :cond_1
    move v3, v1

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 33
    .line 34
    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 44
    .line 45
    iget-boolean v1, p1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    iget v1, p1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v1, v2, p1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/UserBackupManagerService;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 57
    .line 58
    const-wide/16 v1, 0x0

    .line 59
    .line 60
    invoke-virtual {p0, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method
