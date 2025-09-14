.class public final Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;
.super Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mPackagesBackupFile:Ljava/io/File;

.field public final mPackagesFile:Ljava/io/File;

.field public mRebootCntByPackages:I

.field public mRebootCntByPkgsState:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/File;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->injectSystemDataDir()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string/jumbo v2, "packages.xml"

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesFile:Ljava/io/File;

    .line 17
    .line 18
    new-instance v0, Ljava/io/File;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->injectSystemDataDir()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string/jumbo v2, "packages-backup.xml"

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesBackupFile:Ljava/io/File;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-string/jumbo p1, "reboot_cnt_by_packages"

    .line 37
    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getBackupConfigInt(ILjava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    .line 45
    .line 46
    const-string/jumbo p1, "reboot_cnt_by_packages_state"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getBackupConfigInt(ILjava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPkgsState:I

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final getControllerName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "pm_settings_backup"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final onSaveFiles(Ljava/io/File;)Z
    .locals 7

    .line 1
    const-string v0, "PmBackupController"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "onSaveFiles: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iget-object v2, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string/jumbo v3, "user"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/os/UserManager;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    const-string p0, "PmBackupController"

    .line 40
    .line 41
    const-string p1, "No UserManager registered"

    .line 42
    .line 43
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return v3

    .line 47
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 48
    .line 49
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 50
    .line 51
    monitor-enter v4

    .line 52
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesFile:Ljava/io/File;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    iget-object v5, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesBackupFile:Ljava/io/File;

    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance v5, Ljava/io/File;

    .line 70
    .line 71
    const-string/jumbo v6, "packages.xml"

    .line 72
    .line 73
    .line 74
    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v6, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesFile:Ljava/io/File;

    .line 78
    .line 79
    invoke-static {v6, v5}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    :goto_0
    const-string v5, "PmBackupController"

    .line 85
    .line 86
    const-string v6, "There\'s something wrong, skip copying of the packages file"

    .line 87
    .line 88
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move v5, v3

    .line 92
    :goto_1
    if-nez v5, :cond_3

    .line 93
    .line 94
    monitor-exit v4

    .line 95
    return v3

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_4

    .line 112
    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 118
    .line 119
    iget-object v4, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 120
    .line 121
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 122
    .line 123
    monitor-enter v4

    .line 124
    :try_start_1
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 125
    .line 126
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->savePackagesStateForUser(Ljava/io/File;I)V

    .line 127
    .line 128
    .line 129
    monitor-exit v4

    .line 130
    goto :goto_2

    .line 131
    :catchall_1
    move-exception p0

    .line 132
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 134
    .line 135
    throw p0

    .line 136
    :cond_4
    const-string p0, "PmBackupController"

    .line 137
    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v2, "Total time: "

    .line 141
    .line 142
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 146
    .line 147
    .line 148
    move-result-wide v2

    .line 149
    sub-long/2addr v2, v0

    .line 150
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v0, " ms"

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    const/4 p0, 0x1

    .line 166
    return p0

    .line 167
    :goto_3
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 169
    .line 170
    throw p0
.end method

.method public final onSystemReady()V
    .locals 3

    .line 1
    const-string v0, "PmBackupController"

    .line 2
    .line 3
    const-string v1, "Reset reboot counts"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPkgsState:I

    .line 12
    .line 13
    const-string/jumbo v1, "reboot_cnt_by_packages"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v1, v0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(ILjava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v1, "reboot_cnt_by_packages_state"

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPkgsState:I

    .line 23
    .line 24
    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(ILjava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final savePackagesStateForUser(Ljava/io/File;I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->injectSystemDataDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string/jumbo v3, "users"

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/io/File;

    .line 23
    .line 24
    const-string/jumbo v2, "package-restrictions.xml"

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/io/File;

    .line 31
    .line 32
    new-instance v4, Ljava/io/File;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->injectSystemDataDir()Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Ljava/io/File;

    .line 49
    .line 50
    const-string/jumbo v3, "package-restrictions-backup.xml"

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const-string v3, "PmBackupController"

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 72
    .line 73
    const-string/jumbo v0, "users/"

    .line 74
    .line 75
    .line 76
    invoke-static {p2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_1

    .line 88
    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p2, "!@Failed to make dirs for "

    .line 92
    .line 93
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_1
    new-instance p1, Ljava/io/File;

    .line 108
    .line 109
    invoke-direct {p1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v1, p1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_2
    :goto_0
    const-string p0, "There\'s something wrong, skip copying of the packages state file for user "

    .line 117
    .line 118
    invoke-static {p2, p0, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method
