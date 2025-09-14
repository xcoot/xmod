.class public final Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mAgent:Landroid/app/IBackupAgent;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mToken:I


# direct methods
.method public constructor <init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mToken:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mToken:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 8
    .line 9
    invoke-interface {v0, v1, p0}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    return-void
.end method
