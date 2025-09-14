.class public final synthetic Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppDataHelper;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/pm/PackageSetting;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/PackageSetting;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/AppDataHelper;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/pm/PackageSetting;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v6, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/AppDataHelper;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/pm/PackageSetting;

    .line 6
    .line 7
    iget v4, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    iget v5, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    .line 11
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isDefaultToDeviceProtectedStorage()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x2

    .line 37
    :goto_0
    :try_start_0
    iget-object v0, v6, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 38
    .line 39
    iget-object v1, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 44
    .line 45
    .line 46
    move-result v7
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    if-nez v7, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 51
    .line 52
    invoke-interface {v0, v1, v3, v4, p0}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception p0

    .line 57
    :try_start_2
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    throw p0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    :catch_1
    move-exception p0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "Failed to migrate "

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ": "

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const/4 v0, 0x5

    .line 92
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    new-instance p0, Lcom/android/server/pm/Installer$Batch;

    .line 96
    .line 97
    invoke-direct {p0}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 98
    .line 99
    .line 100
    const/4 v3, -0x1

    .line 101
    move-object v0, v6

    .line 102
    move-object v1, p0

    .line 103
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, p0}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    return-void
.end method
