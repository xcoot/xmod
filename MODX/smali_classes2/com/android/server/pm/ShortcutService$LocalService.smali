.class public final Lcom/android/server/pm/ShortcutService$LocalService;
.super Landroid/content/pm/ShortcutServiceInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/pm/ShortcutServiceInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static getShortcutIconParcelFileDescriptor(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object p0, v0

    .line 34
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    const-string p0, "ShortcutService"

    .line 38
    .line 39
    const-string/jumbo p1, "null bitmap detected in getShortcutIconFd()"

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/File;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/high16 v1, 0x10000000

    .line 52
    .line 53
    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 54
    .line 55
    .line 56
    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    return-object p0

    .line 58
    :catch_0
    const-string p1, "ShortcutService"

    .line 59
    .line 60
    const-string v1, "Icon file not found: "

    .line 61
    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw p0

    .line 73
    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    check-cast p1, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final addShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutChangeCallbacks:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    check-cast p1, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final areShortcutsSupportedOnHomeScreen(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->areShortcutsSupportedOnHomeScreen(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final cacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    .locals 7

    .line 1
    const/4 v6, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v2, p5

    .line 5
    move v3, p6

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutService$LocalService;->updateCachedShortcutsInternal(IIILjava/lang/String;Ljava/util/List;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move v3, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move/from16 v6, p5

    .line 7
    .line 8
    const-string v9, "Shortcut "

    .line 9
    .line 10
    const-string/jumbo v1, "packageName can\'t be empty"

    .line 11
    .line 12
    .line 13
    move-object v4, p3

    .line 14
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "shortcutId can\'t be empty"

    .line 18
    .line 19
    .line 20
    invoke-static {v8, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 24
    .line 25
    iget-object v10, v1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v10

    .line 28
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 29
    .line 30
    invoke-virtual {v1, v6}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 39
    .line 40
    invoke-virtual {v1, v6, p1, p2}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 48
    .line 49
    move/from16 v5, p6

    .line 50
    .line 51
    move/from16 v7, p7

    .line 52
    .line 53
    invoke-virtual {v1, p1, v5, v7, p2}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(IIILjava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    move-object v1, p0

    .line 58
    move-object v2, p2

    .line 59
    move v3, p1

    .line 60
    move-object v4, p3

    .line 61
    move-object/from16 v5, p4

    .line 62
    .line 63
    move/from16 v6, p5

    .line 64
    .line 65
    move v7, v11

    .line 66
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_0

    .line 83
    .line 84
    if-nez v11, :cond_0

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    monitor-exit v10

    .line 92
    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    const-string v0, "ShortcutService"

    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, " does not exist or disabled"

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    monitor-exit v10

    .line 118
    const/4 v0, 0x0

    .line 119
    return-object v0

    .line 120
    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    throw v0
.end method

.method public final createShortcutIntentsAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/android/internal/infra/AndroidFuture;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v9, p4

    .line 8
    .line 9
    move/from16 v10, p5

    .line 10
    .line 11
    move-object/from16 v11, p8

    .line 12
    .line 13
    const-string v12, "Shortcut "

    .line 14
    .line 15
    const-string/jumbo v1, "packageName can\'t be empty"

    .line 16
    .line 17
    .line 18
    move-object/from16 v13, p3

    .line 19
    .line 20
    invoke-static {v13, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "shortcutId can\'t be empty"

    .line 24
    .line 25
    .line 26
    invoke-static {v9, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 30
    .line 31
    iget-object v14, v1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v14

    .line 34
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 35
    .line 36
    invoke-virtual {v1, v10}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 40
    .line 41
    invoke-virtual {v1, v8}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 45
    .line 46
    invoke-virtual {v1, v10, v8, v2}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 54
    .line 55
    move/from16 v3, p6

    .line 56
    .line 57
    move/from16 v4, p7

    .line 58
    .line 59
    invoke-virtual {v1, v8, v3, v4, v2}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(IIILjava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v15

    .line 63
    move-object/from16 v1, p0

    .line 64
    .line 65
    move-object/from16 v2, p2

    .line 66
    .line 67
    move/from16 v3, p1

    .line 68
    .line 69
    move-object/from16 v4, p3

    .line 70
    .line 71
    move-object/from16 v5, p4

    .line 72
    .line 73
    move/from16 v6, p5

    .line 74
    .line 75
    move v7, v15

    .line 76
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    .line 94
    if-nez v15, :cond_0

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v11, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    monitor-exit v14

    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    :goto_0
    const-string v0, "ShortcutService"

    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, " does not exist or disabled"

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    invoke-virtual {v11, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    monitor-exit v14

    .line 135
    return-void

    .line 136
    :cond_2
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    new-instance v6, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;

    .line 138
    .line 139
    const/4 v1, 0x2

    .line 140
    invoke-direct {v6, v1, v11}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    move-object/from16 v1, p0

    .line 144
    .line 145
    move/from16 v2, p1

    .line 146
    .line 147
    move-object/from16 v3, p3

    .line 148
    .line 149
    move-object/from16 v4, p4

    .line 150
    .line 151
    move/from16 v5, p5

    .line 152
    .line 153
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoAsync(ILjava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :goto_1
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    throw v0
.end method

.method public final getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    const-string v0, "callingPackage"

    .line 2
    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "packageName"

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "shortcutId"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 24
    .line 25
    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 34
    .line 35
    invoke-virtual {v1, p5, p1, p2}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 43
    .line 44
    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/4 p1, 0x0

    .line 53
    if-nez p0, :cond_0

    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return-object p1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    if-nez p2, :cond_1

    .line 64
    .line 65
    monitor-exit v0

    .line 66
    return-object p1

    .line 67
    :cond_1
    invoke-static {p0, p2}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconParcelFileDescriptor(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    monitor-exit v0

    .line 72
    return-object p0

    .line 73
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public final getShortcutIconFdAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 7

    .line 1
    const-string v0, "callingPackage"

    .line 2
    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "packageName"

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "shortcutId"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 24
    .line 25
    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 34
    .line 35
    invoke-virtual {v1, p5, p1, p2}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 43
    .line 44
    invoke-virtual {p2, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-nez p2, :cond_0

    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    invoke-virtual {p6, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-static {p2, v1}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconParcelFileDescriptor(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p6, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    new-instance v6, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;

    .line 79
    .line 80
    invoke-direct {v6, p0, p6, p2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/pm/ShortcutPackage;)V

    .line 81
    .line 82
    .line 83
    move-object v1, p0

    .line 84
    move v2, p1

    .line 85
    move-object v3, p3

    .line 86
    move-object v4, p4

    .line 87
    move v5, p5

    .line 88
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoAsync(ILjava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p0
.end method

.method public final getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .line 1
    const-string v0, "callingPackage"

    .line 2
    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "packageName"

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "shortcutId"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 24
    .line 25
    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 34
    .line 35
    invoke-virtual {v1, p5, p1, p2}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 43
    .line 44
    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/4 p1, 0x0

    .line 53
    if-nez p0, :cond_0

    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return p1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_1

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    :cond_1
    monitor-exit v0

    .line 76
    return p1

    .line 77
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method

.method public final getShortcutIconUri(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "launcherPackage"

    .line 2
    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "packageName"

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "shortcutId"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 24
    .line 25
    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 34
    .line 35
    invoke-virtual {v1, p5, p1, p2}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 43
    .line 44
    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x0

    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return-object v2

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-nez v5, :cond_1

    .line 64
    .line 65
    monitor-exit v0

    .line 66
    return-object v2

    .line 67
    :cond_1
    move-object v1, p0

    .line 68
    move v2, p1

    .line 69
    move-object v3, p2

    .line 70
    move-object v4, p3

    .line 71
    move v6, p5

    .line 72
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconUriInternal(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    monitor-exit v0

    .line 77
    return-object p0

    .line 78
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final getShortcutIconUriAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 8

    .line 1
    const-string v0, "launcherPackage"

    .line 2
    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "packageName"

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "shortcutId"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 24
    .line 25
    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 34
    .line 35
    invoke-virtual {v1, p5, p1, p2}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 43
    .line 44
    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    invoke-virtual {p6, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    move-object v1, p0

    .line 69
    move v2, p1

    .line 70
    move-object v3, p2

    .line 71
    move-object v4, p3

    .line 72
    move v6, p5

    .line 73
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconUriInternal(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p6, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    new-instance v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;

    .line 84
    .line 85
    move-object v1, v0

    .line 86
    move-object v2, p0

    .line 87
    move-object v3, p6

    .line 88
    move v4, p1

    .line 89
    move-object v5, p2

    .line 90
    move-object v6, p3

    .line 91
    move v7, p5

    .line 92
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;Lcom/android/internal/infra/AndroidFuture;ILjava/lang/String;Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    move-object v1, p0

    .line 96
    move v2, p1

    .line 97
    move-object v3, p3

    .line 98
    move-object v4, p4

    .line 99
    move v5, p5

    .line 100
    move-object v6, v0

    .line 101
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoAsync(ILjava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    throw p0
.end method

.method public final getShortcutIconUriInternal(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Failed to grant uri access to "

    .line 4
    .line 5
    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-object v3

    .line 13
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/ShortcutInfo;->getIconUri()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v4, "ShortcutService"

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    const-string/jumbo v0, "null uri detected in getShortcutIconUri()"

    .line 22
    .line 23
    .line 24
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-object v3

    .line 28
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    :try_start_0
    iget-object v7, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 33
    .line 34
    iget-object v7, v7, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 35
    .line 36
    const-wide/32 v8, 0x10000000

    .line 37
    .line 38
    .line 39
    move-object/from16 v10, p3

    .line 40
    .line 41
    move/from16 v15, p5

    .line 42
    .line 43
    invoke-virtual {v7, v10, v8, v9, v15}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 44
    .line 45
    .line 46
    move-result v12

    .line 47
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 48
    .line 49
    iget-object v10, v0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManager:Landroid/app/IUriGrantsManager;

    .line 50
    .line 51
    iget-object v11, v0, Lcom/android/server/pm/ShortcutService;->mUriPermissionOwner:Landroid/os/IBinder;

    .line 52
    .line 53
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v14

    .line 57
    const/4 v0, 0x1

    .line 58
    move-object/from16 v13, p2

    .line 59
    .line 60
    move v15, v0

    .line 61
    move/from16 v16, p5

    .line 62
    .line 63
    move/from16 v17, p1

    .line 64
    .line 65
    invoke-interface/range {v10 .. v17}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    move-object v3, v2

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object/from16 v1, p2

    .line 82
    .line 83
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, " for "

    .line 87
    .line 88
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-object v3

    .line 105
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    .line 107
    .line 108
    throw v0
.end method

.method public final getShortcutInfoAsync(ILjava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "packageName"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "shortcutId"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 14
    .line 15
    invoke-virtual {v0, p4}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 29
    .line 30
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance p2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;

    .line 51
    .line 52
    const/4 p3, 0x4

    .line 53
    invoke-direct {p2, p3, p5}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-nez p3, :cond_1

    .line 61
    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p2, p0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;->accept(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance p3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;

    .line 71
    .line 72
    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Set;Ljava/util/function/Consumer;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p3}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method

.method public final getShortcutInfoLocked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;
    .locals 7

    .line 1
    const-string/jumbo v0, "packageName"

    .line 2
    .line 3
    .line 4
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "shortcutId"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 14
    .line 15
    invoke-virtual {v0, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 24
    .line 25
    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 p0, 0x0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    .line 38
    .line 39
    const/4 p5, 0x1

    .line 40
    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda30;

    .line 44
    .line 45
    const/4 p5, 0x2

    .line 46
    invoke-direct {v2, p5, p4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda30;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    move-object v1, p3

    .line 51
    move-object v4, p1

    .line 52
    move v5, p2

    .line 53
    move v6, p6

    .line 54
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 p0, 0x0

    .line 65
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Landroid/content/pm/ShortcutInfo;

    .line 70
    .line 71
    :goto_0
    return-object p0
.end method

.method public final getShortcutStartingThemeResName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "callingPackage"

    .line 2
    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "packageName"

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "shortcutId"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 24
    .line 25
    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 34
    .line 35
    invoke-virtual {v1, p5, p1, p2}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 43
    .line 44
    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/4 p1, 0x0

    .line 53
    if-nez p0, :cond_0

    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return-object p1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getStartingThemeResName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_1
    monitor-exit v0

    .line 70
    return-object p1

    .line 71
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move-object/from16 v5, p5

    .line 8
    .line 9
    move/from16 v10, p9

    .line 10
    .line 11
    move/from16 v11, p10

    .line 12
    .line 13
    sget-boolean v1, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, "ShortcutService"

    .line 18
    .line 19
    const-string v2, "Getting shortcuts for launcher= "

    .line 20
    .line 21
    const-string/jumbo v6, "user="

    .line 22
    .line 23
    .line 24
    const-string v7, " pkg="

    .line 25
    .line 26
    invoke-static {v11, v2, v4, v6, v7}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2, v5, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "com.sec.android.app.desktoplauncher"

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 47
    .line 48
    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 55
    .line 56
    and-int/lit16 v1, v1, 0x81

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    const/16 v1, 0x19

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/16 v1, 0x1b

    .line 64
    .line 65
    :goto_0
    and-int/lit8 v2, v10, 0x4

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    const/4 v1, 0x4

    .line 70
    :cond_2
    :goto_1
    move v13, v1

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    and-int/lit16 v2, v10, 0x800

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    and-int/lit8 v1, v1, -0x11

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :goto_2
    if-nez v5, :cond_4

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    move-object v6, v1

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move-object/from16 v6, p6

    .line 85
    .line 86
    :goto_3
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 87
    .line 88
    iget-object v14, v1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v14

    .line 91
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 92
    .line 93
    invoke-virtual {v1, v11}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 102
    .line 103
    invoke-virtual {v1, v11, v3, v4}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    .line 109
    .line 110
    if-eqz v5, :cond_5

    .line 111
    .line 112
    move-object/from16 v1, p0

    .line 113
    .line 114
    move/from16 v2, p1

    .line 115
    .line 116
    move-object/from16 v3, p2

    .line 117
    .line 118
    move-object/from16 v4, p5

    .line 119
    .line 120
    move-object v5, v6

    .line 121
    move-object/from16 v6, p7

    .line 122
    .line 123
    move-wide/from16 v7, p3

    .line 124
    .line 125
    move-object/from16 v9, p8

    .line 126
    .line 127
    move/from16 v10, p9

    .line 128
    .line 129
    move/from16 v11, p10

    .line 130
    .line 131
    move-object v12, v15

    .line 132
    move-object/from16 v16, v14

    .line 133
    .line 134
    move/from16 v14, p11

    .line 135
    .line 136
    move-object/from16 p5, v15

    .line 137
    .line 138
    move/from16 v15, p12

    .line 139
    .line 140
    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    goto :goto_6

    .line 146
    :cond_5
    move-object/from16 v16, v14

    .line 147
    .line 148
    move-object/from16 p5, v15

    .line 149
    .line 150
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 151
    .line 152
    invoke-virtual {v1, v11}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    new-instance v14, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;

    .line 157
    .line 158
    move-object v1, v14

    .line 159
    move-object/from16 v2, p0

    .line 160
    .line 161
    move/from16 v3, p1

    .line 162
    .line 163
    move-object/from16 v4, p2

    .line 164
    .line 165
    move-object v5, v6

    .line 166
    move-object/from16 v6, p7

    .line 167
    .line 168
    move-wide/from16 v7, p3

    .line 169
    .line 170
    move-object/from16 v9, p8

    .line 171
    .line 172
    move/from16 v10, p9

    .line 173
    .line 174
    move/from16 v11, p10

    .line 175
    .line 176
    move-object/from16 v12, p5

    .line 177
    .line 178
    move-object v0, v14

    .line 179
    move/from16 v14, p11

    .line 180
    .line 181
    move-object/from16 v17, v15

    .line 182
    .line 183
    move/from16 v15, p12

    .line 184
    .line 185
    invoke-direct/range {v1 .. v15}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    .line 186
    .line 187
    .line 188
    move-object/from16 v1, v17

    .line 189
    .line 190
    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 191
    .line 192
    .line 193
    :goto_4
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    move-object/from16 v0, p0

    .line 195
    .line 196
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    add-int/lit8 v0, v0, -0x1

    .line 206
    .line 207
    :goto_5
    if-ltz v0, :cond_6

    .line 208
    .line 209
    move-object/from16 v1, p5

    .line 210
    .line 211
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 216
    .line 217
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->setReturnedByServer()V

    .line 218
    .line 219
    .line 220
    add-int/lit8 v0, v0, -0x1

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_6
    move-object/from16 v1, p5

    .line 224
    .line 225
    return-object v1

    .line 226
    :catchall_1
    move-exception v0

    .line 227
    move-object/from16 v16, v14

    .line 228
    .line 229
    :goto_6
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    throw v0
.end method

.method public final getShortcutsAsync(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIIILcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p6, :cond_5

    .line 6
    .line 7
    if-eqz p5, :cond_5

    .line 8
    .line 9
    move-object p2, p1

    .line 10
    check-cast p2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-interface {p6}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-lt p2, p3, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 24
    .line 25
    iget-object p2, p2, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter p2

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 29
    .line 30
    invoke-virtual {p0, p10}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p13, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    new-instance p2, Landroid/util/ArraySet;

    .line 46
    .line 47
    invoke-direct {p2, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    new-instance p4, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda51;

    .line 55
    .line 56
    const/4 p5, 0x2

    .line 57
    invoke-direct {p4, p5}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda51;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 65
    .line 66
    .line 67
    move-result-object p4

    .line 68
    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    check-cast p3, Ljava/util/List;

    .line 73
    .line 74
    new-instance p4, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;

    .line 75
    .line 76
    const/4 p5, 0x3

    .line 77
    invoke-direct {p4, p5, p2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p3, p4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 81
    .line 82
    .line 83
    and-int/lit8 p3, p9, 0x4

    .line 84
    .line 85
    if-eqz p3, :cond_2

    .line 86
    .line 87
    const/4 p3, 0x4

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    and-int/lit16 p3, p9, 0x800

    .line 90
    .line 91
    if-eqz p3, :cond_3

    .line 92
    .line 93
    const/16 p3, 0xb

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    const/16 p3, 0x1b

    .line 97
    .line 98
    :goto_0
    new-instance p4, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;

    .line 99
    .line 100
    invoke-direct {p4, p3, p1, p13}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;-><init>(ILjava/util/List;Lcom/android/internal/infra/AndroidFuture;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_4

    .line 108
    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p4, p0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->accept(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    new-instance p1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;

    .line 118
    .line 119
    invoke-direct {p1, p0, p2, p4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Set;Ljava/util/function/Consumer;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 123
    .line 124
    .line 125
    :goto_1
    return-void

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    throw p0

    .line 129
    :cond_5
    :goto_2
    invoke-virtual {p13, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move/from16 v4, p9

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    move-object v10, v5

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v6, Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-direct {v6, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    move-object v10, v6

    .line 22
    :goto_0
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 23
    .line 24
    move/from16 v6, p10

    .line 25
    .line 26
    invoke-virtual {v2, v6}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, v1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const-string v0, "getShortcutsInnerLocked() returned empty results because "

    .line 41
    .line 42
    const-string v2, " isn\'t loaded"

    .line 43
    .line 44
    const-string v3, "ShortcutService"

    .line 45
    .line 46
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void

    .line 50
    :cond_2
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 51
    .line 52
    move/from16 v1, p1

    .line 53
    .line 54
    move-object/from16 v6, p2

    .line 55
    .line 56
    move/from16 v7, p13

    .line 57
    .line 58
    move/from16 v8, p14

    .line 59
    .line 60
    invoke-virtual {v0, v1, v7, v8, v6}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(IIILjava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v7, 0x1

    .line 65
    const/4 v8, 0x0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    and-int/lit16 v0, v4, 0x400

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    move v0, v7

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v0, v8

    .line 75
    :goto_1
    if-eqz v0, :cond_4

    .line 76
    .line 77
    const/4 v9, 0x2

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move v9, v8

    .line 80
    :goto_2
    or-int/2addr v4, v9

    .line 81
    if-nez v3, :cond_5

    .line 82
    .line 83
    :goto_3
    move-object v11, v5

    .line 84
    goto :goto_4

    .line 85
    :cond_5
    new-instance v5, Landroid/util/ArraySet;

    .line 86
    .line 87
    invoke-direct {v5, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :goto_4
    and-int/lit8 v3, v4, 0x1

    .line 92
    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    move v13, v7

    .line 96
    goto :goto_5

    .line 97
    :cond_6
    move v13, v8

    .line 98
    :goto_5
    and-int/lit8 v3, v4, 0x2

    .line 99
    .line 100
    if-eqz v3, :cond_7

    .line 101
    .line 102
    move v14, v7

    .line 103
    goto :goto_6

    .line 104
    :cond_7
    move v14, v8

    .line 105
    :goto_6
    and-int/lit8 v3, v4, 0x8

    .line 106
    .line 107
    if-eqz v3, :cond_8

    .line 108
    .line 109
    move/from16 v16, v7

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_8
    move/from16 v16, v8

    .line 113
    .line 114
    :goto_7
    and-int/lit8 v3, v4, 0x10

    .line 115
    .line 116
    if-eqz v3, :cond_9

    .line 117
    .line 118
    move/from16 v17, v7

    .line 119
    .line 120
    goto :goto_8

    .line 121
    :cond_9
    move/from16 v17, v8

    .line 122
    .line 123
    :goto_8
    new-instance v3, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;

    .line 124
    .line 125
    move-object v7, v3

    .line 126
    move-wide/from16 v8, p6

    .line 127
    .line 128
    move-object/from16 v12, p8

    .line 129
    .line 130
    move v15, v0

    .line 131
    invoke-direct/range {v7 .. v17}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;-><init>(JLandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZZZZ)V

    .line 132
    .line 133
    .line 134
    move-object/from16 p3, v2

    .line 135
    .line 136
    move-object/from16 p4, p11

    .line 137
    .line 138
    move-object/from16 p5, v3

    .line 139
    .line 140
    move/from16 p6, p12

    .line 141
    .line 142
    move-object/from16 p7, p2

    .line 143
    .line 144
    move/from16 p8, p1

    .line 145
    .line 146
    move/from16 p9, v0

    .line 147
    .line 148
    invoke-virtual/range {p3 .. p9}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final hasShortcutHostPermission(ILjava/lang/String;II)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(IIILjava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p3, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide p3

    .line 17
    const/4 v0, 0x4

    .line 18
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 23
    .line 24
    .line 25
    move p0, p1

    .line 26
    :goto_0
    return p0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final isForegroundDefaultLauncher(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter p1

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    monitor-exit p1

    .line 39
    return v1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    monitor-exit p1

    .line 43
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9

    .line 1
    const-string/jumbo v0, "packageName"

    .line 2
    .line 3
    .line 4
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "shortcutId"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 19
    .line 20
    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 29
    .line 30
    invoke-virtual {v1, p5, p1, p2}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 35
    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    move-object v2, p0

    .line 39
    move-object v3, p2

    .line 40
    move v4, p1

    .line 41
    move-object v5, p3

    .line 42
    move-object v6, p4

    .line 43
    move v7, p5

    .line 44
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_0

    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    const/4 p0, 0x0

    .line 61
    :goto_0
    monitor-exit v0

    .line 62
    return p0

    .line 63
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public final isRequestPinItemSupported(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isRequestPinItemSupported(II)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isSharingShortcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentFilter;)Z
    .locals 2

    .line 1
    const-string v0, "callingPackage"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "packageName"

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "shortcutId"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p2, "android.permission.MANAGE_APP_PREDICTIONS"

    .line 24
    .line 25
    const-string v0, "isSharingShortcut"

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter p2

    .line 40
    :try_start_0
    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p6, p1}, Lcom/android/server/pm/ShortcutPackage;->getMatchingShareTargets(Landroid/content/IntentFilter;Ljava/lang/String;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/4 p3, 0x0

    .line 66
    move p5, p3

    .line 67
    :goto_1
    if-ge p5, p1, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p6

    .line 73
    check-cast p6, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    .line 74
    .line 75
    invoke-virtual {p6}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 76
    .line 77
    .line 78
    move-result-object p6

    .line 79
    invoke-virtual {p6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p6

    .line 83
    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p6

    .line 87
    if-eqz p6, :cond_1

    .line 88
    .line 89
    monitor-exit p2

    .line 90
    const/4 p3, 0x1

    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_3

    .line 94
    :cond_1
    add-int/lit8 p5, p5, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    monitor-exit p2

    .line 98
    :goto_2
    return p3

    .line 99
    :goto_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p0
.end method

.method public final pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v6, p1

    .line 3
    .line 4
    move-object/from16 v8, p3

    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    move/from16 v10, p5

    .line 9
    .line 10
    const-string/jumbo v1, "packageName"

    .line 11
    .line 12
    .line 13
    invoke-static {v8, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "shortcutIds"

    .line 17
    .line 18
    .line 19
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 23
    .line 24
    iget-object v11, v1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v11

    .line 27
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 28
    .line 29
    invoke-virtual {v1, v10}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 33
    .line 34
    invoke-virtual {v1, v6}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 38
    .line 39
    move-object/from16 v5, p2

    .line 40
    .line 41
    invoke-virtual {v1, v10, v6, v5}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    invoke-virtual {v12}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 49
    .line 50
    invoke-virtual {v1, v10}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v8}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    if-eqz v13, :cond_0

    .line 59
    .line 60
    new-instance v14, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;

    .line 66
    .line 67
    const/4 v1, 0x3

    .line 68
    invoke-direct {v3, v1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;-><init>(I)V

    .line 69
    .line 70
    .line 71
    const/4 v4, 0x4

    .line 72
    const/4 v7, 0x0

    .line 73
    move-object v1, v13

    .line 74
    move-object v2, v14

    .line 75
    move-object/from16 v5, p2

    .line 76
    .line 77
    move/from16 v6, p1

    .line 78
    .line 79
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_2

    .line 85
    :cond_0
    const/4 v14, 0x0

    .line 86
    :goto_0
    invoke-virtual {v12, v10, v8}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(ILjava/lang/String;)Landroid/util/ArraySet;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-virtual {v12, v10, v8, v2, v9}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(ILjava/lang/String;ZLjava/util/List;)V

    .line 92
    .line 93
    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    if-eqz v14, :cond_1

    .line 97
    .line 98
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-ge v2, v3, :cond_1

    .line 103
    .line 104
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 121
    .line 122
    new-instance v3, Landroid/util/ArraySet;

    .line 123
    .line 124
    invoke-direct {v3, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v3, v14, v13}, Lcom/android/server/pm/ShortcutService;->prepareChangedShortcuts(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-eqz v13, :cond_2

    .line 136
    .line 137
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 138
    .line 139
    invoke-virtual {v2, v13, v1, v14}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 140
    .line 141
    .line 142
    :cond_2
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :goto_2
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    throw v0
.end method

.method public final requestPinAppWidget(Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Z
    .locals 10

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    .line 7
    .line 8
    .line 9
    move-result v7

    .line 10
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v8

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p5

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    move-object v6, p4

    .line 21
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;III)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mNonPersistentUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/pm/ShortcutNonPersistentUser;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/pm/ShortcutNonPersistentUser;

    .line 17
    .line 18
    invoke-direct {v1, p3}, Lcom/android/server/pm/ShortcutNonPersistentUser;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-object p0, v1, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p0, v1, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object p0, v1, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackageSet:Landroid/util/ArraySet;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    :goto_1
    iget-object p1, v1, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-ge p0, p1, :cond_2

    .line 52
    .line 53
    iget-object p1, v1, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackageSet:Landroid/util/ArraySet;

    .line 54
    .line 55
    iget-object p2, v1, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 p0, p0, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0
.end method

.method public final uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v2, p5

    .line 5
    move v3, p6

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutService$LocalService;->updateCachedShortcutsInternal(IIILjava/lang/String;Ljava/util/List;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final updateCachedShortcutsInternal(IIILjava/lang/String;Ljava/util/List;Z)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move/from16 v5, p6

    .line 12
    .line 13
    const-string/jumbo v6, "packageName"

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v6}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v6, "shortcutIds"

    .line 20
    .line 21
    .line 22
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const v6, 0x60004000

    .line 26
    .line 27
    .line 28
    and-int/2addr v6, v2

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x1

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    move v6, v8

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v6, v7

    .line 36
    :goto_0
    const-string v9, "invalid cacheFlags"

    .line 37
    .line 38
    invoke-static {v6, v9}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v6, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 42
    .line 43
    iget-object v6, v6, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v6

    .line 46
    :try_start_0
    iget-object v9, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 47
    .line 48
    invoke-virtual {v9, v1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 49
    .line 50
    .line 51
    iget-object v9, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 52
    .line 53
    move/from16 v10, p1

    .line 54
    .line 55
    invoke-virtual {v9, v10}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    iget-object v10, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 63
    .line 64
    invoke-virtual {v10, v1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v9, :cond_d

    .line 73
    .line 74
    if-nez v1, :cond_1

    .line 75
    .line 76
    goto/16 :goto_a

    .line 77
    .line 78
    :cond_1
    const/4 v3, 0x0

    .line 79
    move-object v14, v3

    .line 80
    move-object v15, v14

    .line 81
    :goto_1
    if-ge v7, v9, :cond_c

    .line 82
    .line 83
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    check-cast v10, Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v10}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    move-object v11, v10

    .line 94
    check-cast v11, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v1, v11}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    if-eqz v13, :cond_2

    .line 101
    .line 102
    invoke-virtual {v13, v2}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-ne v5, v10, :cond_3

    .line 107
    .line 108
    :cond_2
    :goto_2
    move v11, v8

    .line 109
    move-object v3, v14

    .line 110
    move-object v8, v15

    .line 111
    goto/16 :goto_8

    .line 112
    .line 113
    :cond_3
    if-eqz v5, :cond_6

    .line 114
    .line 115
    invoke-virtual {v13}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v10, :cond_5

    .line 120
    .line 121
    invoke-virtual {v13, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 122
    .line 123
    .line 124
    if-nez v15, :cond_4

    .line 125
    .line 126
    new-instance v15, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    goto/16 :goto_b

    .line 134
    .line 135
    :cond_4
    :goto_3
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move v11, v8

    .line 139
    goto/16 :goto_9

    .line 140
    .line 141
    :cond_5
    const-string v10, "ShortcutService"

    .line 142
    .line 143
    new-instance v11, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v12, "Only long lived shortcuts can get cached. Ignoring id "

    .line 149
    .line 150
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v13}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_6
    invoke-virtual {v13, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v13}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    if-nez v10, :cond_8

    .line 176
    .line 177
    invoke-virtual {v13}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    if-nez v10, :cond_8

    .line 182
    .line 183
    invoke-virtual {v1, v11}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    if-eqz v10, :cond_7

    .line 188
    .line 189
    new-instance v10, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    .line 190
    .line 191
    const/4 v12, 0x0

    .line 192
    invoke-direct {v10, v12}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v11, v3, v10}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    .line 196
    .line 197
    .line 198
    :cond_7
    const/16 v16, 0x0

    .line 199
    .line 200
    const/16 v17, 0x0

    .line 201
    .line 202
    const/4 v12, 0x0

    .line 203
    const/16 v18, 0x0

    .line 204
    .line 205
    const/16 v19, 0x1

    .line 206
    .line 207
    move-object v10, v1

    .line 208
    move-object v3, v13

    .line 209
    move/from16 v13, v18

    .line 210
    .line 211
    move-object/from16 v20, v14

    .line 212
    .line 213
    move/from16 v14, v19

    .line 214
    .line 215
    move-object v8, v15

    .line 216
    move/from16 v15, v16

    .line 217
    .line 218
    move/from16 v16, v17

    .line 219
    .line 220
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    goto :goto_4

    .line 225
    :cond_8
    move-object v3, v13

    .line 226
    move-object/from16 v20, v14

    .line 227
    .line 228
    move-object v8, v15

    .line 229
    const/4 v10, 0x0

    .line 230
    :goto_4
    if-nez v10, :cond_a

    .line 231
    .line 232
    if-nez v8, :cond_9

    .line 233
    .line 234
    new-instance v15, Ljava/util/ArrayList;

    .line 235
    .line 236
    const/4 v8, 0x1

    .line 237
    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_9
    move-object v15, v8

    .line 242
    :goto_5
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-object/from16 v14, v20

    .line 246
    .line 247
    const/4 v11, 0x1

    .line 248
    goto :goto_9

    .line 249
    :cond_a
    move-object/from16 v3, v20

    .line 250
    .line 251
    if-nez v3, :cond_b

    .line 252
    .line 253
    new-instance v14, Ljava/util/ArrayList;

    .line 254
    .line 255
    const/4 v11, 0x1

    .line 256
    invoke-direct {v14, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_b
    const/4 v11, 0x1

    .line 261
    move-object v14, v3

    .line 262
    :goto_6
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    :goto_7
    move-object v15, v8

    .line 266
    goto :goto_9

    .line 267
    :goto_8
    move-object v14, v3

    .line 268
    goto :goto_7

    .line 269
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 270
    .line 271
    move v8, v11

    .line 272
    const/4 v3, 0x0

    .line 273
    goto/16 :goto_1

    .line 274
    .line 275
    :cond_c
    move-object v3, v14

    .line 276
    move-object v8, v15

    .line 277
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 279
    .line 280
    invoke-virtual {v2, v1, v8, v3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 281
    .line 282
    .line 283
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_d
    :goto_a
    :try_start_1
    monitor-exit v6

    .line 290
    return-void

    .line 291
    :goto_b
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    throw v0
.end method
