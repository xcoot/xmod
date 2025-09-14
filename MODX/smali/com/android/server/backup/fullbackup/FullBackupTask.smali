.class public abstract Lcom/android/server/backup/fullbackup/FullBackupTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mObserver:Landroid/app/backup/IFullBackupRestoreObserver;


# direct methods
.method public constructor <init>(Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 6
    return-void
.end method


# virtual methods
.method public final sendEndBackup()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    const-string v0, "BackupManagerService"

    .line 11
    const-string/jumbo v1, "full backup observer went away: endBackup"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method public final sendStartBackup()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    const-string v0, "BackupManagerService"

    .line 11
    const-string/jumbo v1, "full backup observer went away: startBackup"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 20
    :cond_0
    :goto_0
    return-void
.end method
