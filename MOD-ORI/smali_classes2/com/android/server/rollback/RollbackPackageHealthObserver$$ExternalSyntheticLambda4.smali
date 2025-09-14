.class public final synthetic Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-class v1, Landroid/content/rollback/RollbackManager;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "Scheduling "

    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-wide v3, v1, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    .line 40
    .line 41
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, " polls to check and mitigate native crashes"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "PackageWatchdog"

    .line 54
    .line 55
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    new-instance v2, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    const/4 v3, 0x5

    .line 61
    invoke-direct {v2, v1, v3}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/PackageWatchdog;I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v1, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 70
    .line 71
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->readStagedRollbackIds(Ljava/io/File;)Landroid/util/SparseArray;

    .line 75
    .line 76
    .line 77
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 81
    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    move v3, v2

    .line 85
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-ge v3, v4, :cond_9

    .line 90
    .line 91
    iget-object v4, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    const/4 v9, 0x0

    .line 124
    if-eqz v8, :cond_2

    .line 125
    .line 126
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    check-cast v8, Landroid/content/rollback/RollbackInfo;

    .line 131
    .line 132
    invoke-virtual {v8}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-ne v5, v10, :cond_1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    move-object v8, v9

    .line 140
    :goto_1
    const-string v7, "WatchdogRollbackLogger"

    .line 141
    .line 142
    if-nez v8, :cond_3

    .line 143
    .line 144
    const-string/jumbo v4, "rollback info not found for last staged rollback: "

    .line 145
    .line 146
    .line 147
    :goto_2
    invoke-static {v5, v4, v7}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-nez v5, :cond_5

    .line 156
    .line 157
    invoke-virtual {v8}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    if-eqz v10, :cond_5

    .line 170
    .line 171
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    check-cast v10, Landroid/content/rollback/PackageRollbackInfo;

    .line 176
    .line 177
    invoke-virtual {v10}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    if-eqz v11, :cond_4

    .line 186
    .line 187
    invoke-virtual {v10}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    :cond_5
    invoke-virtual {v8}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    if-nez v4, :cond_6

    .line 200
    .line 201
    const-string v4, "On boot completed, could not load session id "

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_6
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    const-string v6, ""

    .line 209
    .line 210
    if-eqz v5, :cond_7

    .line 211
    .line 212
    const/4 v4, 0x2

    .line 213
    invoke-static {v9, v4, v2, v6}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_7
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-eqz v4, :cond_8

    .line 222
    .line 223
    const/4 v4, 0x3

    .line 224
    invoke-static {v9, v4, v2, v6}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_9
    return-void

    .line 232
    :catchall_0
    move-exception v0

    .line 233
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    .line 234
    .line 235
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 236
    .line 237
    .line 238
    throw v0
.end method
