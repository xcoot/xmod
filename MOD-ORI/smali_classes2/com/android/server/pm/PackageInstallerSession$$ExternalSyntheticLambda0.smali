.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    const-string v0, "abandonStaged"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotLocked(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 9
    .line 10
    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 11
    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_7

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 30
    .line 31
    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    const-string v0, "StagingManager"

    .line 40
    .line 41
    const-string v1, "Cannot abort session in final state: "

    .line 42
    .line 43
    invoke-static {v2, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_0
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_6

    .line 55
    .line 56
    iget-object v3, v0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 57
    .line 58
    monitor-enter v3

    .line 59
    :try_start_0
    iget-object v4, v0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 66
    .line 67
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    const-string v0, "StagingManager"

    .line 71
    .line 72
    const-string v1, "Session "

    .line 73
    .line 74
    const-string v3, " has been abandoned already"

    .line 75
    .line 76
    invoke-static {v2, v1, v3, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionReady()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_2

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 94
    .line 95
    iget v3, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 96
    .line 97
    iget-object v4, v0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 98
    .line 99
    invoke-virtual {v4, v3}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_4

    .line 104
    .line 105
    iget-boolean v5, v3, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    .line 106
    .line 107
    if-nez v5, :cond_4

    .line 108
    .line 109
    iget-boolean v5, v3, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    .line 110
    .line 111
    if-nez v5, :cond_4

    .line 112
    .line 113
    iget-boolean v5, v3, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    .line 114
    .line 115
    if-nez v5, :cond_4

    .line 116
    .line 117
    iget-boolean v3, v3, Landroid/apex/ApexSessionInfo;->isReverted:Z

    .line 118
    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 123
    .line 124
    check-cast v4, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 125
    .line 126
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-interface {v3, v2}, Landroid/apex/IApexService;->abortStagedSession(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 135
    const-string v3, "ApexManager"

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .line 143
    .line 144
    const-string v2, "StagingManager"

    .line 145
    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v4, "Failed to abort apex session "

    .line 149
    .line 150
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 154
    .line 155
    iget v4, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 156
    .line 157
    invoke-static {v3, v4, v2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_5

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/android/server/pm/StagingManager;->notifyStagedApexObservers()V

    .line 167
    .line 168
    .line 169
    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/server/pm/StagingManager;->abortSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :catchall_0
    move-exception p0

    .line 174
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    throw p0

    .line 176
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    const-string v0, "Committed session must be destroyed before aborting it from StagingManager"

    .line 179
    .line 180
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    :cond_7
    :goto_1
    const-string v0, "Session was abandoned"

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->destroy(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v0, "Session was abandoned"

    .line 190
    .line 191
    const/16 v1, -0x73

    .line 192
    .line 193
    const/4 v2, 0x0

    .line 194
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 195
    .line 196
    .line 197
    const-string v0, "Session was abandoned because the parent session is abandoned"

    .line 198
    .line 199
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method
