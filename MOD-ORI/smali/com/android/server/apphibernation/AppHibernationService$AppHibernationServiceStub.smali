.class public final Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;
.super Landroid/apphibernation/IAppHibernationService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method public constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/apphibernation/IAppHibernationService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p3, "AppHibernationService"

    .line 8
    .line 9
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    .line 18
    .line 19
    const-string p3, "  "

    .line 20
    .line 21
    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter p2

    .line 27
    :try_start_0
    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    const/4 v0, 0x0

    .line 34
    :goto_0
    if-ge v0, p3, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const-string v2, "User Level Hibernation States, "

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v2, "user"

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/util/Map;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 69
    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/android/server/apphibernation/UserLevelState;

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_4

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 101
    .line 102
    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 107
    .line 108
    .line 109
    const-string p3, "Global Level Hibernation States"

    .line 110
    .line 111
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 118
    .line 119
    check-cast p0, Landroid/util/ArrayMap;

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    if-eqz p3, :cond_3

    .line 134
    .line 135
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    check-cast p3, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 140
    .line 141
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_3
    monitor-exit p2

    .line 149
    :goto_3
    return-void

    .line 150
    :goto_4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    throw p0
.end method

.method public final getHibernatingPackagesForUser(I)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->getHibernatingPackagesForUser(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getHibernationStatsForUser(Ljava/util/List;I)Ljava/util/Map;
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance p1, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "getHibernationStatsForUser"

    .line 21
    .line 22
    .line 23
    sget-boolean v2, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "android.permission.MANAGE_APP_HIBERNATION"

    .line 34
    .line 35
    const-string v4, "Caller does not have MANAGE_APP_HIBERNATION permission."

    .line 36
    .line 37
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p2, v1}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v2

    .line 47
    const/4 v3, 0x1

    .line 48
    :try_start_0
    invoke-virtual {p0, p2, v1, v3}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    monitor-exit v2

    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_2
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/util/Map;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_7

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/String;

    .line 90
    .line 91
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 92
    .line 93
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_4

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 105
    .line 106
    check-cast v4, Landroid/util/ArrayMap;

    .line 107
    .line 108
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_6

    .line 113
    .line 114
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_5

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 122
    .line 123
    check-cast v4, Landroid/util/ArrayMap;

    .line 124
    .line 125
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 130
    .line 131
    iget-wide v4, v4, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 132
    .line 133
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    check-cast v6, Lcom/android/server/apphibernation/UserLevelState;

    .line 138
    .line 139
    iget-wide v6, v6, Lcom/android/server/apphibernation/UserLevelState;->savedByte:J

    .line 140
    .line 141
    add-long/2addr v4, v6

    .line 142
    new-instance v6, Landroid/apphibernation/HibernationStats;

    .line 143
    .line 144
    invoke-direct {v6, v4, v5}, Landroid/apphibernation/HibernationStats;-><init>(J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_6
    :goto_3
    const-string v4, "AppHibernationService"

    .line 152
    .line 153
    const-string v5, "No hibernation state associated with package %s user %d. Maybethe package was uninstalled? "

    .line 154
    .line 155
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    filled-new-array {v3, v6}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-static {v5, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    monitor-exit v2

    .line 172
    :goto_4
    return-object p1

    .line 173
    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    throw p0
.end method

.method public final isHibernatingForUser(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingForUser(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isHibernatingGlobally(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isOatArtifactDeletionEnabled()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.MANAGE_APP_HIBERNATION"

    .line 8
    .line 9
    const-string v2, "Caller does not have MANAGE_APP_HIBERNATION permission."

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mOatArtifactDeletionEnabled:Z

    .line 15
    .line 16
    return p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/apphibernation/AppHibernationShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/apphibernation/AppHibernationShellCommand;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setHibernatingForUser(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setHibernatingGlobally(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
