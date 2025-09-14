.class public final Lcom/android/server/pm/ShortcutService$MyShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mShortcutMatchFlags:I

.field public mUserId:I

.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 8
    .line 9
    const/16 p1, 0xf

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mShortcutMatchFlags:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final handleClearShortcuts()V
    .locals 5

    .line 1
    const-string v0, "cmd: handleClearShortcuts: user"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "ShellCommand"

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ", "

    .line 28
    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 43
    .line 44
    iget p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(ILjava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final handleGetDefaultLauncher()V
    .locals 6

    .line 1
    const-string v0, "Failed to get the default launcher for user "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 12
    .line 13
    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 27
    .line 28
    iget-object v4, v3, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 29
    .line 30
    iget v5, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 31
    .line 32
    iget-object v3, v3, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 33
    .line 34
    invoke-virtual {v3, v5}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-interface {v4, v3, v0}, Lcom/android/server/pm/Computer;->getHomeActivitiesAsUser(ILjava/util/List;)Landroid/content/ComponentName;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_0

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v2, "Launcher: "

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    :goto_0
    monitor-exit v1

    .line 109
    return-void

    .line 110
    :cond_2
    new-instance v2, Lcom/android/server/pm/ShortcutService$CommandException;

    .line 111
    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 118
    .line 119
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-direct {v2, p0}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v2

    .line 130
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    throw p0
.end method

.method public final handleGetShortcuts()V
    .locals 8

    .line 1
    const-string v0, "cmd: handleGetShortcuts: user="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "ShellCommand"

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ", flags="

    .line 28
    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mShortcutMatchFlags:I

    .line 33
    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", package="

    .line 38
    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 53
    .line 54
    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    monitor-exit v1

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_6

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mShortcutMatchFlags:I

    .line 75
    .line 76
    and-int/lit8 v3, p0, 0x2

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    const/4 v5, 0x0

    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    move v3, v4

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    move v3, v5

    .line 85
    :goto_0
    and-int/lit8 v6, p0, 0x4

    .line 86
    .line 87
    if-eqz v6, :cond_2

    .line 88
    .line 89
    move v6, v4

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move v6, v5

    .line 92
    :goto_1
    and-int/lit8 v7, p0, 0x1

    .line 93
    .line 94
    if-eqz v7, :cond_3

    .line 95
    .line 96
    move v7, v4

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    move v7, v5

    .line 99
    :goto_2
    and-int/lit8 p0, p0, 0x8

    .line 100
    .line 101
    if-eqz p0, :cond_4

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    move v4, v5

    .line 105
    :goto_3
    if-eqz v6, :cond_5

    .line 106
    .line 107
    const/4 p0, 0x2

    .line 108
    goto :goto_4

    .line 109
    :cond_5
    move p0, v5

    .line 110
    :goto_4
    or-int/2addr p0, v3

    .line 111
    if-eqz v7, :cond_6

    .line 112
    .line 113
    const/16 v3, 0x20

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_6
    move v3, v5

    .line 117
    :goto_5
    or-int/2addr p0, v3

    .line 118
    if-eqz v4, :cond_7

    .line 119
    .line 120
    const v5, 0x60004000

    .line 121
    .line 122
    .line 123
    :cond_7
    or-int/2addr p0, v5

    .line 124
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda53;

    .line 125
    .line 126
    invoke-direct {v3, p0, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda53;-><init>(ILjava/io/PrintWriter;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 130
    .line 131
    .line 132
    monitor-exit v1

    .line 133
    return-void

    .line 134
    :goto_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    throw p0
.end method

.method public final handleOverrideConfig()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ShellCommand"

    .line 6
    .line 7
    const-string v2, "cmd: handleOverrideConfig: "

    .line 8
    .line 9
    invoke-static {v2, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    monitor-exit v1

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Lcom/android/server/pm/ShortcutService$CommandException;

    .line 30
    .line 31
    const-string/jumbo v0, "override-config failed.  See logcat for details."

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final handleResetThrottling()V
    .locals 4

    .line 1
    const-string v0, "cmd: handleResetThrottling: user="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked()V

    .line 9
    .line 10
    .line 11
    const-string v2, "ShellCommand"

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 19
    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    .line 35
    .line 36
    .line 37
    monitor-exit v1

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final handleUnloadUser()V
    .locals 4

    .line 1
    const-string v0, "cmd: handleUnloadUser: user="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked()V

    .line 9
    .line 10
    .line 11
    const-string v2, "ShellCommand"

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 19
    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lcom/android/server/pm/ShortcutService;->handleStopUser(I)V

    .line 35
    .line 36
    .line 37
    monitor-exit v1

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    sparse-switch v2, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :sswitch_0
    const-string/jumbo v2, "reset-config"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :sswitch_1
    const-string/jumbo v2, "unload-user"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const/4 v2, 0x5

    .line 48
    goto :goto_1

    .line 49
    :sswitch_2
    const-string v2, "get-default-launcher"

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    const/4 v2, 0x4

    .line 58
    goto :goto_1

    .line 59
    :sswitch_3
    const-string/jumbo v2, "reset-throttling"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    move v2, v3

    .line 69
    goto :goto_1

    .line 70
    :sswitch_4
    const-string/jumbo v2, "override-config"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    const/4 v2, 0x2

    .line 80
    goto :goto_1

    .line 81
    :sswitch_5
    const-string/jumbo v2, "reset-all-throttling"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    move v2, v1

    .line 91
    goto :goto_1

    .line 92
    :sswitch_6
    const-string v2, "get-shortcuts"

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    const/4 v2, 0x7

    .line 101
    goto :goto_1

    .line 102
    :sswitch_7
    const-string v2, "clear-shortcuts"

    .line 103
    .line 104
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_1

    .line 109
    .line 110
    const/4 v2, 0x6

    .line 111
    goto :goto_1

    .line 112
    :sswitch_8
    const-string/jumbo v2, "verify-states"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_1

    .line 120
    .line 121
    const/16 v2, 0x8

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :sswitch_9
    const-string v2, "has-shortcut-access"

    .line 125
    .line 126
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_1

    .line 131
    .line 132
    const/16 v2, 0x9

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    :goto_0
    const/4 v2, -0x1

    .line 136
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    return p0

    .line 144
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 145
    .line 146
    iget-object p1, p1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 147
    .line 148
    monitor-enter p1
    :try_end_0
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 157
    .line 158
    iget v5, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 159
    .line 160
    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    monitor-exit p1

    .line 176
    goto/16 :goto_2

    .line 177
    .line 178
    :catchall_0
    move-exception p0

    .line 179
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    :pswitch_1
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 182
    .line 183
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 184
    .line 185
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 186
    :try_start_4
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    .line 187
    .line 188
    const/4 v4, 0x1

    .line 189
    invoke-direct {v2, v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 193
    .line 194
    .line 195
    monitor-exit p1

    .line 196
    goto/16 :goto_2

    .line 197
    .line 198
    :catchall_1
    move-exception p0

    .line 199
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 200
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 201
    :catchall_2
    move-exception p0

    .line 202
    :try_start_6
    new-instance p1, Lcom/android/server/pm/ShortcutService$CommandException;

    .line 203
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v3, "\n"

    .line 217
    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-direct {p1, p0}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p1

    .line 236
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleGetShortcuts()V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleClearShortcuts()V

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleUnloadUser()V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleGetDefaultLauncher()V

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :pswitch_6
    const-string p1, "ShellCommand"

    .line 253
    .line 254
    const-string v2, "cmd: handleResetConfig"

    .line 255
    .line 256
    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 260
    .line 261
    iget-object p1, p1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 262
    .line 263
    monitor-enter p1
    :try_end_6
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_6 .. :try_end_6} :catch_0

    .line 264
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 265
    .line 266
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShortcutManagerConstants()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    monitor-exit p1

    .line 274
    goto :goto_2

    .line 275
    :catchall_3
    move-exception p0

    .line 276
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 277
    :try_start_8
    throw p0

    .line 278
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleOverrideConfig()V

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :pswitch_8
    const-string p1, "ShellCommand"

    .line 283
    .line 284
    const-string v2, "cmd: handleResetAllThrottling"

    .line 285
    .line 286
    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 290
    .line 291
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 294
    .line 295
    .line 296
    move-result-wide v4

    .line 297
    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 298
    .line 299
    .line 300
    const/16 p1, -0x2710

    .line 301
    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 303
    .line 304
    .line 305
    const-string p0, "ShortcutService"

    .line 306
    .line 307
    const-string p1, "ShortcutManager: throttling counter reset for all users"

    .line 308
    .line 309
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    goto :goto_2

    .line 313
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetThrottling()V
    :try_end_8
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_8 .. :try_end_8} :catch_0

    .line 314
    .line 315
    .line 316
    :goto_2
    const-string p0, "Success"

    .line 317
    .line 318
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    return v3

    .line 322
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v2, "Error: "

    .line 325
    .line 326
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    return v1

    .line 344
    nop

    .line 345
    :sswitch_data_0
    .sparse-switch
        -0x6001d868 -> :sswitch_9
        -0x42951a2a -> :sswitch_8
        -0x2cad7693 -> :sswitch_7
        -0x108294ca -> :sswitch_6
        -0x853beaf -> :sswitch_5
        -0x493cb9d -> :sswitch_4
        0xb40bca5 -> :sswitch_3
        0x46f58343 -> :sswitch_2
        0x5427b5d9 -> :sswitch_1
        0x75140980 -> :sswitch_0
    .end sparse-switch

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Usage: cmd shortcut COMMAND [options ...]"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 11
    .line 12
    .line 13
    const-string v0, "cmd shortcut reset-throttling [--user USER_ID]"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "    Reset throttling for all packages and users"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 24
    .line 25
    .line 26
    const-string v0, "cmd shortcut reset-all-throttling"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "    Reset the throttling state for all users"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 37
    .line 38
    .line 39
    const-string v0, "cmd shortcut override-config CONFIG"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "    Override the configuration for testing (will last until reboot)"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 50
    .line 51
    .line 52
    const-string v0, "cmd shortcut reset-config"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "    Reset the configuration set with \"update-config\""

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 63
    .line 64
    .line 65
    const-string v0, "[Deprecated] cmd shortcut get-default-launcher [--user USER_ID]"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "    Show the default launcher"

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v0, "    Note: This command is deprecated. Callers should query the default launcher from RoleManager instead."

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 81
    .line 82
    .line 83
    const-string v0, "cmd shortcut unload-user [--user USER_ID]"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "    Unload a user from the memory"

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v0, "    (This should not affect any observable behavior)"

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 99
    .line 100
    .line 101
    const-string v0, "cmd shortcut clear-shortcuts [--user USER_ID] PACKAGE"

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v0, "    Remove all shortcuts from a package, including pinned shortcuts"

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 112
    .line 113
    .line 114
    const-string v0, "cmd shortcut get-shortcuts [--user USER_ID] [--flags FLAGS] PACKAGE"

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "    Show the shortcuts for a package that match the given flags"

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 125
    .line 126
    .line 127
    const-string v0, "cmd shortcut has-shortcut-access [--user USER_ID] PACKAGE"

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v0, "    Prints \"true\" if the package can access shortcuts, \"false\" otherwise"

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final parseOptionsLocked()V
    .locals 3

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const-string v1, "--flags"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    const-string v1, "--user"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/android/server/pm/ShortcutService$CommandException;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "User "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 52
    .line 53
    const-string v2, " is not running or locked"

    .line 54
    .line 55
    invoke-static {p0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_1
    new-instance p0, Lcom/android/server/pm/ShortcutService$CommandException;

    .line 64
    .line 65
    const-string v1, "Unknown option: "

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mShortcutMatchFlags:I

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    return-void
.end method
