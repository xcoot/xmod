.class public Lcom/android/server/rollback/AppDataRollbackHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mInstaller:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 3
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/ApexManager;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 6
    iput-object p2, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-void
.end method


# virtual methods
.method public final doRestoreOrWipe(Landroid/content/rollback/PackageRollbackInfo;IIILjava/lang/String;I)Z
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    and-int/lit8 v1, p6, 0x2

    .line 19
    .line 20
    if-eqz v1, :cond_7

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 29
    .line 30
    iget-object v4, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v4

    .line 33
    :try_start_0
    iget-object v5, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    move v2, v3

    .line 38
    :cond_1
    const-string v5, "APEX packages have not been scanned"

    .line 39
    .line 40
    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    const-string v0, "ApexManager"

    .line 55
    .line 56
    const-string v2, "Invalid apex package name: "

    .line 57
    .line 58
    invoke-static {v2, v1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move v1, p2

    .line 67
    move v10, p3

    .line 68
    invoke-interface {v0, p2, p3, v2}, Landroid/apex/IApexService;->restoreCeData(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v1, "ApexManager"

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw v0

    .line 86
    :cond_3
    move v1, p2

    .line 87
    move v10, p3

    .line 88
    :try_start_3
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_5

    .line 93
    .line 94
    if-eq v4, v3, :cond_4

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iget-object v4, v0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const-wide/16 v9, 0x0

    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    move v7, p2

    .line 107
    move/from16 v8, p6

    .line 108
    .line 109
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/Installer;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    .line 114
    goto :goto_1

    .line 115
    :cond_5
    iget-object v0, v0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 122
    .line 123
    .line 124
    move-result v4
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 125
    if-nez v4, :cond_6

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_6
    :try_start_4
    iget-object v4, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 129
    .line 130
    const/4 v5, 0x0

    .line 131
    move/from16 v7, p4

    .line 132
    .line 133
    move-object/from16 v8, p5

    .line 134
    .line 135
    move v9, p2

    .line 136
    move v10, p3

    .line 137
    move/from16 v11, p6

    .line 138
    .line 139
    invoke-interface/range {v4 .. v11}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 140
    .line 141
    .line 142
    :cond_7
    :goto_0
    return v3

    .line 143
    :catch_2
    move-exception v0

    .line 144
    :try_start_5
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 145
    .line 146
    .line 147
    const/4 v0, 0x0

    .line 148
    throw v0
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_5 .. :try_end_5} :catch_1

    .line 149
    :goto_1
    const-string v1, "RollbackManager"

    .line 150
    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v4, "Unable to restore/wipe app data: "

    .line 154
    .line 155
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v4, " policy="

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .line 183
    .line 184
    return v2
.end method

.method public final doSnapshot(Landroid/content/rollback/PackageRollbackInfo;III)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    and-int/lit8 p4, p4, 0x2

    .line 10
    .line 11
    if-eqz p4, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 20
    .line 21
    iget-object p4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter p4

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v1

    .line 31
    :goto_0
    const-string v3, "APEX packages have not been scanned"

    .line 32
    .line 33
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    const-string p0, "ApexManager"

    .line 48
    .line 49
    const-string p2, "Invalid apex package name: "

    .line 50
    .line 51
    invoke-static {p2, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-interface {p0, p2, p3, v0}, Landroid/apex/IApexService;->snapshotCeData(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    move v1, v2

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    const-string p1, "ApexManager"

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    :goto_1
    return v1

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw p0

    .line 78
    :cond_2
    return v2

    .line 79
    :cond_3
    :try_start_3
    iget-object p0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 86
    .line 87
    .line 88
    move-result v0
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    move v6, p2

    .line 96
    move v7, p3

    .line 97
    move v8, p4

    .line 98
    invoke-interface/range {v3 .. v8}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 99
    .line 100
    .line 101
    move v1, v2

    .line 102
    :goto_2
    return v1

    .line 103
    :catch_1
    move-exception p0

    .line 104
    :try_start_5
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 105
    .line 106
    .line 107
    const/4 p0, 0x0

    .line 108
    throw p0
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_5 .. :try_end_5} :catch_2

    .line 109
    :catch_2
    move-exception p0

    .line 110
    const-string p3, "RollbackManager"

    .line 111
    .line 112
    new-instance p4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v0, "Unable to create app data snapshot for: "

    .line 115
    .line 116
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p1, ", userId: "

    .line 127
    .line 128
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .line 140
    .line 141
    return v1
.end method

.method public isUserCredentialLocked(I)Z
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method
