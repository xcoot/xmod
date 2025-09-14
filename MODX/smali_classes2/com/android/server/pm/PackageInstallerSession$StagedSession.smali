.class public Lcom/android/server/pm/PackageInstallerSession$StagedSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/StagingManager$StagedSession;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final containsApexSession()Z
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final getChildSessions()Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 4
    .line 5
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-ge v3, v1, :cond_1

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 32
    .line 33
    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 40
    .line 41
    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    monitor-exit v0

    .line 52
    return-object v2

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final installSession()Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootOrSystem()V

    .line 6
    .line 7
    .line 8
    const-string v1, "StagedSession#installSession"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionReady()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->install()Ljava/util/concurrent/CompletableFuture;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final isApexSession()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 4
    .line 5
    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 6
    .line 7
    const/high16 v0, 0x20000

    .line 8
    .line 9
    and-int/2addr p0, v0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public final isInTerminalState()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInTerminalState()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isSessionReady()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final setSessionFailed(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final verifySession()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootOrSystem()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "The session %d should be committed"

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 21
    .line 22
    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v1

    .line 42
    :try_start_0
    iget-boolean v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 43
    .line 44
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const-string v0, "The session %d has applied"

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 50
    .line 51
    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 67
    .line 68
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter v2

    .line 71
    :try_start_1
    iget-boolean v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 72
    .line 73
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v0

    .line 81
    :try_start_2
    const-string v1, "The session %d has failed with error: %s"

    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 84
    .line 85
    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 86
    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 92
    .line 93
    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 94
    .line 95
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    monitor-exit v0

    .line 104
    move-object v0, v1

    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    throw p0

    .line 109
    :cond_2
    const/4 v0, 0x0

    .line 110
    :goto_0
    if-eqz v0, :cond_3

    .line 111
    .line 112
    const-string v1, "PackageInstallerSession"

    .line 113
    .line 114
    const-string/jumbo v2, "verifySession error: "

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    const/16 v1, -0x6e

    .line 125
    .line 126
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 130
    .line 131
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->verify()V

    .line 138
    .line 139
    .line 140
    :goto_1
    return-void

    .line 141
    :catchall_1
    move-exception p0

    .line 142
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 143
    throw p0

    .line 144
    :catchall_2
    move-exception p0

    .line 145
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 146
    throw p0
.end method
