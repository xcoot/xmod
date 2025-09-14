.class public final Lcom/android/server/backup/restore/RestoreFileRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mAgent:Landroid/app/IBackupAgent;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mInfo:Lcom/android/server/backup/FileMetadata;

.field public final mSocket:Landroid/os/ParcelFileDescriptor;

.field public final mToken:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    .line 7
    .line 8
    iput p5, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mToken:I

    .line 9
    .line 10
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    .line 6
    .line 7
    iget-wide v3, v2, Lcom/android/server/backup/FileMetadata;->size:J

    .line 8
    .line 9
    iget v5, v2, Lcom/android/server/backup/FileMetadata;->type:I

    .line 10
    .line 11
    iget-object v6, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 14
    .line 15
    iget-wide v8, v2, Lcom/android/server/backup/FileMetadata;->mode:J

    .line 16
    .line 17
    iget-wide v10, v2, Lcom/android/server/backup/FileMetadata;->mtime:J

    .line 18
    .line 19
    iget v12, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mToken:I

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 24
    .line 25
    move-wide v2, v3

    .line 26
    move v4, v5

    .line 27
    move-object v5, v6

    .line 28
    move-object v6, v7

    .line 29
    move-wide v7, v8

    .line 30
    move-wide v9, v10

    .line 31
    move v11, v12

    .line 32
    move-object v12, p0

    .line 33
    invoke-interface/range {v0 .. v12}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    return-void
.end method
