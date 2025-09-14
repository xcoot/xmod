.class public final synthetic Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemService$TargetUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/SystemService$TargetUser;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/SystemService$TargetUser;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/backup/BackupManagerService;->mHasFirstUserUnlockedSinceBoot:Z

    .line 6
    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    iget v1, v0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget v2, v0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eq v2, v3, :cond_3

    .line 32
    .line 33
    iget v2, v0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, v0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->stopServiceForUser(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    const-string v1, "Default backup user changed from "

    .line 51
    .line 52
    const-string v3, " to "

    .line 53
    .line 54
    invoke-static {v2, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget v0, v0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    .line 59
    .line 60
    const-string v2, "BackupManagerService"

    .line 61
    .line 62
    invoke-static {v1, v0, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_0
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-virtual {v0, p0}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V

    .line 72
    .line 73
    .line 74
    sget-object p0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mHasFirstUserUnlockedSinceBoot:Z

    .line 78
    .line 79
    return-void
.end method
