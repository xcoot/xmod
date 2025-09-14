.class public final Lcom/android/server/wm/PackageConfigurationUpdaterImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mGrammaticalGender:I

.field public mLocales:Landroid/os/LocaleList;

.field public mNightMode:Ljava/lang/Integer;

.field public mPackageName:Ljava/lang/String;

.field public final mPid:Ljava/util/Optional;

.field public mUserId:I


# direct methods
.method public constructor <init>(ILcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    .line 3
    iput-object p2, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public constructor <init>(ILcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    .line 6
    iput p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    .line 7
    iput-object p2, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final commit()Z
    .locals 10

    .line 1
    const-string v0, "commit: update of application configuration failed: userId or packageName not valid "

    .line 2
    .line 3
    const-string v1, "commit: Override application configuration failed: cannot find pid "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    const/4 v6, 0x0

    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    const-string v0, "PackageConfigurationUpdaterImpl"

    .line 50
    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    .line 57
    .line 58
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 66
    .line 67
    .line 68
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    .line 74
    .line 75
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    return v6

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_3

    .line 79
    :catchall_1
    move-exception v0

    .line 80
    goto :goto_2

    .line 81
    :catchall_2
    move-exception v0

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    :try_start_5
    iget v1, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 84
    .line 85
    iget v5, v0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 86
    .line 87
    iput v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 90
    .line 91
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget-object v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    .line 103
    .line 104
    iget v7, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    .line 105
    .line 106
    const-wide/32 v8, 0x20000

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v5, v8, v9, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-gez v1, :cond_2

    .line 114
    .line 115
    const-string v1, "PackageConfigurationUpdaterImpl"

    .line 116
    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    .line 123
    .line 124
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 132
    .line 133
    .line 134
    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    .line 136
    .line 137
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 138
    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 139
    .line 140
    .line 141
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 142
    return v6

    .line 143
    :cond_2
    :goto_0
    :try_start_8
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->updateConfig(ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    .line 151
    .line 152
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    .line 153
    .line 154
    iget v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    .line 155
    .line 156
    invoke-virtual {v0, v1, v5, p0}, Lcom/android/server/wm/PackageConfigPersister;->updateFromImpl(Ljava/lang/String;ILcom/android/server/wm/PackageConfigurationUpdaterImpl;)Z

    .line 157
    .line 158
    .line 159
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 160
    :try_start_9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    .line 162
    .line 163
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 164
    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 165
    .line 166
    .line 167
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 168
    return v0

    .line 169
    :goto_1
    :try_start_b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    .line 171
    .line 172
    throw v0

    .line 173
    :goto_2
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 174
    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 175
    .line 176
    .line 177
    throw v0

    .line 178
    :goto_3
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 179
    throw v0
.end method

.method public final setNightMode(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p1
.end method

.method public final updateConfig(ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/util/ArraySet;

    .line 18
    .line 19
    if-eqz p1, :cond_4

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Lcom/android/server/wm/LocaleOverlayHelper;->combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    :goto_0
    if-ltz v1, :cond_4

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 55
    .line 56
    iget-object v3, v2, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 57
    .line 58
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    .line 67
    .line 68
    iget v4, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mGrammaticalGender:I

    .line 69
    .line 70
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    .line 78
    .line 79
    iget v4, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mGrammaticalGender:I

    .line 80
    .line 81
    iget-object v5, v2, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    add-int/lit8 v5, v5, -0x1

    .line 88
    .line 89
    :goto_1
    if-ltz v5, :cond_3

    .line 90
    .line 91
    iget-object v6, v2, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 98
    .line 99
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_2

    .line 106
    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v6, v3, v0, v7}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_2

    .line 116
    .line 117
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_2

    .line 122
    .line 123
    const/4 v7, 0x0

    .line 124
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 125
    .line 126
    .line 127
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    :goto_2
    return-void
.end method
