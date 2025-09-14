.class public final Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    sput-object p2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "backup"

    .line 3
    sget-object v1, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 8
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 3
    new-instance v0, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;

    .line 5
    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/SystemService$TargetUser;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method public publishService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4
    return-void
.end method
