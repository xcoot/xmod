.class public final Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public final mCasResources:Ljava/util/Map;

.field public final mCiCamResources:Ljava/util/Map;

.field public final mClientProfiles:Ljava/util/Map;

.field public final mDemuxResources:Ljava/util/Map;

.field public final mFrontendExistingNums:Landroid/util/SparseIntArray;

.field public final mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

.field public final mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

.field public final mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

.field public final mFrontendResources:Ljava/util/Map;

.field public final mFrontendResourcesBackup:Ljava/util/Map;

.field public final mFrontendUsedNums:Landroid/util/SparseIntArray;

.field public final mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

.field public final mListeners:Ljava/util/Map;

.field public final mLnbResources:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public final mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mMediaResourceManager:Landroid/media/IResourceManagerService;

.field public mNextUnusedClientId:I

.field public final mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

.field public mResourceRequestCount:I

.field public mTunerApiLockHolder:I

.field public mTunerApiLockHolderThreadId:J

.field public mTunerApiLockNestedCount:I

.field public final mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

.field public mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method public static -$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/util/Map$Entry;

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, " : "

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p1, "\n"

    .line 64
    .line 65
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method public static -$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-ge p0, p2, :cond_0

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, " : "

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string p2, ", "

    .line 51
    .line 52
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 p0, p0, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public static -$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "TunerResourceManagerService: "

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "android.permission.TUNER_RESOURCE_ACCESS"

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static -$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "TunerResourceManagerService: "

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "android.permission.ACCESS_TV_TUNER"

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static -$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IZZ)Z
    .locals 9

    .line 1
    const-string v0, ", 500) - called while someone else:"

    .line 2
    .line 3
    const-string v1, ", 500) - called while there is no current holder"

    .line 4
    .line 5
    const-string v2, "SUCCESS:releaseLockInternal("

    .line 6
    .line 7
    const-string/jumbo v3, "releaseLockInternal()"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->lockForTunerApiLock(ILjava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x0

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    :try_start_0
    iget v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    const/4 v5, -0x1

    .line 22
    const-string v6, "TunerResourceManagerService"

    .line 23
    .line 24
    const-string/jumbo v7, "releaseLockInternal("

    .line 25
    .line 26
    .line 27
    if-ne v3, p1, :cond_6

    .line 28
    .line 29
    :try_start_1
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    sub-int/2addr v0, v1

    .line 33
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    const-string v3, ", 500, "

    .line 36
    .line 37
    const-string v8, ", "

    .line 38
    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    if-gtz v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :try_start_2
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, ") - NOT signaling because nested count is not zero ("

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, ")"

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, ") - signaling!"

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_3
    iput v5, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 131
    .line 132
    const-wide/16 p1, -0x1

    .line 133
    .line 134
    iput-wide p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    .line 135
    .line 136
    iput v4, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 137
    .line 138
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    .line 139
    .line 140
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    .line 142
    .line 143
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_5

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    .line 155
    .line 156
    :cond_5
    move v4, v1

    .line 157
    goto :goto_3

    .line 158
    :cond_6
    if-ne v3, v5, :cond_8

    .line 159
    .line 160
    if-nez p3, :cond_7

    .line 161
    .line 162
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {v6, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    .line 179
    .line 180
    :cond_7
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_a

    .line 187
    .line 188
    :goto_2
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 189
    .line 190
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_8
    if-nez p3, :cond_9

    .line 195
    .line 196
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 208
    .line 209
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string p1, "is the current holder"

    .line 213
    .line 214
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-static {v6, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    .line 223
    .line 224
    :cond_9
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-eqz p1, :cond_a

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_a
    :goto_3
    return v4

    .line 234
    :goto_4
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 235
    .line 236
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 237
    .line 238
    .line 239
    move-result p2

    .line 240
    if-eqz p2, :cond_b

    .line 241
    .line 242
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 243
    .line 244
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 245
    .line 246
    .line 247
    :cond_b
    throw p1
.end method

.method public static -$$Nest$mvalidateResourceHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, -0x1

    .line 5
    if-eq p2, p0, :cond_1

    .line 6
    .line 7
    const/high16 p0, -0x1000000

    .line 8
    .line 9
    and-int/2addr p0, p2

    .line 10
    shr-int/lit8 p0, p0, 0x18

    .line 11
    .line 12
    if-eq p0, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    :goto_1
    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "TunerResourceManagerService"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    .line 20
    .line 21
    new-instance v0, Landroid/util/SparseIntArray;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    .line 27
    .line 28
    new-instance v0, Landroid/util/SparseIntArray;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    .line 34
    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    .line 41
    .line 42
    new-instance v0, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    .line 48
    .line 49
    new-instance v0, Landroid/util/SparseIntArray;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    .line 55
    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    .line 57
    .line 58
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    .line 62
    .line 63
    new-instance v0, Landroid/util/SparseIntArray;

    .line 64
    .line 65
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    .line 69
    .line 70
    new-instance v0, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    .line 76
    .line 77
    new-instance v0, Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    .line 83
    .line 84
    new-instance v0, Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    .line 90
    .line 91
    new-instance v0, Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    .line 97
    .line 98
    new-instance v0, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    .line 104
    .line 105
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    new-instance v1, Landroid/util/SparseArray;

    .line 111
    .line 112
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v1, v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 116
    .line 117
    new-instance v1, Ljava/util/HashSet;

    .line 118
    .line 119
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v1, v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    .line 123
    .line 124
    const/16 v1, 0x96

    .line 125
    .line 126
    iput v1, v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    .line 127
    .line 128
    const/16 v1, 0x32

    .line 129
    .line 130
    iput v1, v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    .line 131
    .line 132
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    .line 133
    .line 134
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    .line 135
    .line 136
    new-instance v0, Ljava/lang/Object;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 142
    .line 143
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    .line 155
    .line 156
    const/4 v0, -0x1

    .line 157
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 158
    .line 159
    const-wide/16 v0, -0x1

    .line 160
    .line 161
    iput-wide v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    .line 162
    .line 163
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 164
    .line 165
    return-void
.end method

.method public static replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public static replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "TunerResourceManagerService"

    .line 6
    .line 7
    const-string v1, "Native media resource manager service has died"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_0
    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

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

.method public checkClientExists(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public checkIsForeground(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 29
    .line 30
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 31
    .line 32
    if-ne v2, p1, :cond_2

    .line 33
    .line 34
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 35
    .line 36
    const/16 v2, 0x64

    .line 37
    .line 38
    if-ne v1, v2, :cond_2

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_3
    return v0
.end method

.method public final clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    .line 5
    .line 6
    check-cast v0, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, -0x1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-boolean v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 35
    .line 36
    iput v3, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 40
    .line 41
    iget v1, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    .line 42
    .line 43
    if-eq v0, v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 53
    .line 54
    if-eq v0, v3, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingDemuxHandles:Ljava/util/Set;

    .line 64
    .line 65
    check-cast v0, Ljava/util/HashSet;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(I)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iput-boolean v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 92
    .line 93
    iput v3, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 100
    .line 101
    check-cast p0, Ljava/util/HashSet;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 104
    .line 105
    .line 106
    iget-object p0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 107
    .line 108
    check-cast p0, Ljava/util/HashSet;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 111
    .line 112
    .line 113
    iput v3, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 114
    .line 115
    iget-object p0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    .line 116
    .line 117
    check-cast p0, Ljava/util/HashSet;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 120
    .line 121
    .line 122
    iput v3, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 123
    .line 124
    iput v3, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 125
    .line 126
    return-void
.end method

.method public final clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 5
    .line 6
    check-cast v0, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, -0x1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v3, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 34
    .line 35
    iget v4, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    .line 36
    .line 37
    if-ne v3, v4, :cond_2

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    iput-boolean v3, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 41
    .line 42
    iput v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 52
    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v1, Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 64
    .line 65
    if-eq v0, v2, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    .line 74
    .line 75
    iget v0, v0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    .line 76
    .line 77
    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eq v1, v2, :cond_4

    .line 82
    .line 83
    add-int/lit8 v1, v1, -0x1

    .line 84
    .line 85
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-object p0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 89
    .line 90
    check-cast p0, Ljava/util/HashSet;

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 93
    .line 94
    .line 95
    iget-object p0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 96
    .line 97
    check-cast p0, Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    iput-object p0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareeFeClientId:Ljava/lang/Integer;

    .line 107
    .line 108
    iput v2, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 109
    .line 110
    return-void
.end method

.method public clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mIsPriorityOverwritten:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-gez p0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iput p0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final generateResourceHandle(II)I
    .locals 1

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x18

    .line 4
    .line 5
    shl-int/lit8 p2, p2, 0x10

    .line 6
    .line 7
    or-int/2addr p1, p2

    .line 8
    iget p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    .line 9
    .line 10
    add-int/lit8 v0, p2, 0x1

    .line 11
    .line 12
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    .line 13
    .line 14
    const p0, 0xffff

    .line 15
    .line 16
    .line 17
    and-int/2addr p0, p2

    .line 18
    or-int/2addr p0, p1

    .line 19
    return p0
.end method

.method public getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    .line 14
    .line 15
    return-object p0
.end method

.method public getCasResources()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    .line 14
    .line 15
    return-object p0
.end method

.method public getCiCamResources()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public getClientPriority(IZ)I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getClientPriority useCase="

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", isForeground="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ")"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "TunerResourceManagerService"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 v0, 0x2

    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, [I

    .line 57
    .line 58
    array-length p2, p2

    .line 59
    if-ne p2, v0, :cond_1

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, [I

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    aget p0, p0, p1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    .line 74
    .line 75
    :goto_0
    return p0

    .line 76
    :cond_2
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    .line 77
    .line 78
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-eqz p2, :cond_3

    .line 85
    .line 86
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    check-cast p2, [I

    .line 93
    .line 94
    array-length p2, p2

    .line 95
    if-ne p2, v0, :cond_3

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    check-cast p0, [I

    .line 104
    .line 105
    const/4 p1, 0x1

    .line 106
    aget p0, p0, p1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    .line 110
    .line 111
    :goto_1
    return p0
.end method

.method public getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 14
    .line 15
    return-object p0
.end method

.method public getDemuxResource(I)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    .line 14
    .line 15
    return-object p0
.end method

.method public getDemuxResources()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 14
    .line 15
    return-object p0
.end method

.method public getFrontendResources()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 14
    .line 15
    return-object p0
.end method

.method public getLnbResources()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public getResourceIdFromHandle(I)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return p1

    .line 5
    :cond_0
    const/high16 p0, 0xff0000

    .line 6
    .line 7
    and-int/2addr p0, p1

    .line 8
    shr-int/lit8 p0, p0, 0x10

    .line 9
    .line 10
    return p0
.end method

.method public isHigherPriorityInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "TunerResourceManagerService"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "isHigherPriority(challengerProfile="

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ", holderProfile="

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ")"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    const-string p0, "TvInputManager is null. Can\'t compare the priority."

    .line 43
    .line 44
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return v2

    .line 48
    :cond_1
    iget-object v1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    :goto_0
    iget-object v1, p2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 62
    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 71
    .line 72
    invoke-virtual {v3, v1}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    :goto_1
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iget p2, p2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {p0, p2, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-le p1, p0, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    const/4 v2, 0x0

    .line 100
    :goto_2
    return v2
.end method

.method public final lockForTunerApiLock(ILjava/lang/String;)Z
    .locals 8

    .line 1
    const-string v0, ", timeoutMS:500, mTunerApiLockHolder:"

    .line 2
    .line 3
    const-string v1, "TunerResourceManagerService"

    .line 4
    .line 5
    const-string v2, "FAILED to lock mLockForTRMSLock in "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    .line 10
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    const-wide/16 v6, 0x1f4

    .line 13
    .line 14
    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ", clientId:"

    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 42
    .line 43
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    return v3

    .line 54
    :catch_0
    move-exception p1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "exception thrown in "

    .line 58
    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p2, ":"

    .line 66
    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 91
    .line 92
    .line 93
    :cond_1
    return v3
.end method

.method public final onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->onStart(Z)V

    return-void
.end method

.method public onStart(Z)V
    .locals 5

    if-nez p1, :cond_0

    .line 2
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)V

    const-string/jumbo v1, "tv_tuner_resource_mgr"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tv_input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 4
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 5
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Ljava/io/File;

    const-string v2, "/vendor/etc/tunerResourceManagerUseCaseConfig.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "UseCasePriorityHints"

    if-eqz v2, :cond_1

    .line 8
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 9
    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->parseInternal(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 10
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unable to parse vendor file: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 11
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error reading vendor file: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 12
    :cond_1
    sget-boolean v1, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 13
    const-string/jumbo v1, "no vendor priority configuration available. Using default priority"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v1, 0xb4

    const/16 v2, 0x64

    .line 14
    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v1, 0x1c2

    const/16 v2, 0xc8

    .line 15
    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v1, 0x1e0

    const/16 v2, 0x12c

    .line 16
    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v1, 0x1ea

    const/16 v2, 0x190

    .line 17
    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v1, 0x258

    const/16 v2, 0x1f4

    .line 18
    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    :goto_2
    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 19
    const-string/jumbo p1, "ro.tuner.lazyhal"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 20
    const-string/jumbo p1, "tuner.server.enable"

    const-string/jumbo v1, "true"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-nez p1, :cond_5

    .line 22
    const-string/jumbo p1, "media.resource_manager"

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 23
    const-string v1, "TunerResourceManagerService"

    if-nez p1, :cond_4

    .line 24
    const-string p0, "Resource Manager Service not available."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 25
    :cond_4
    :try_start_1
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 26
    invoke-static {p1}, Landroid/media/IResourceManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    goto :goto_3

    .line 27
    :catch_2
    const-string p0, "Could not link to death of native resource manager service."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
.end method

.method public reclaimResource(II)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    iget-object v2, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 13
    .line 14
    check-cast v2, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x0

    .line 25
    const-string v5, "Failed to reclaim resources on client "

    .line 26
    .line 27
    const-string v6, "TunerResourceManagerService"

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    :try_start_0
    iget-object v8, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    .line 42
    .line 43
    check-cast v8, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    .line 52
    .line 53
    invoke-interface {v3}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->onReclaimResources()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v6, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    return v4

    .line 81
    :cond_1
    sget-boolean v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 82
    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    const-string v2, "Reclaiming resources because higher priority client request resource type "

    .line 86
    .line 87
    const-string v3, ", clientId:"

    .line 88
    .line 89
    invoke-static {p2, p1, v2, v3, v6}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    .line 93
    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast p2, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    .line 105
    .line 106
    iget-object p2, p2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    .line 107
    .line 108
    invoke-interface {p2}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->onReclaimResources()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 112
    .line 113
    .line 114
    return v1

    .line 115
    :catch_1
    move-exception p0

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {v6, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .line 130
    .line 131
    return v4
.end method

.method public registerClientProfileInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "TunerResourceManagerService"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "registerClientProfile(clientProfile="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ")"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    const/4 v2, -0x1

    .line 32
    aput v2, p3, v0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    const-string p0, "TvInputManager is null. Can\'t register client profile."

    .line 39
    .line 40
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    .line 45
    .line 46
    add-int/lit8 v4, v3, 0x1

    .line 47
    .line 48
    iput v4, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    .line 49
    .line 50
    aput v3, p3, v0

    .line 51
    .line 52
    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 53
    .line 54
    if-nez v3, :cond_2

    .line 55
    .line 56
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v2, v3}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    :goto_0
    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-interface {v3, v4, v2}, Landroid/media/IResourceManagerService;->overridePid(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v3

    .line 82
    const-string v4, "Could not overridePid in resourceManagerSercice, remote exception: "

    .line 83
    .line 84
    invoke-static {v4, v3, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_1
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    .line 88
    .line 89
    aget v4, p3, v0

    .line 90
    .line 91
    invoke-direct {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;-><init>(I)V

    .line 92
    .line 93
    .line 94
    iget-object v4, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v4, v3, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mTvInputSessionId:Ljava/lang/String;

    .line 97
    .line 98
    iget v4, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 99
    .line 100
    iput v4, v3, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mUseCase:I

    .line 101
    .line 102
    iput v2, v3, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mProcessId:I

    .line 103
    .line 104
    new-instance v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 105
    .line 106
    invoke-direct {v4, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;-><init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)V

    .line 107
    .line 108
    .line 109
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 110
    .line 111
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {p0, p1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-gez p1, :cond_4

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    iput p1, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    .line 123
    .line 124
    :goto_2
    aget p1, p3, v0

    .line 125
    .line 126
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    .line 127
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast p3, Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-virtual {p3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    if-nez p2, :cond_5

    .line 138
    .line 139
    sget-boolean p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 140
    .line 141
    if-eqz p0, :cond_6

    .line 142
    .line 143
    const-string p0, "Listener is null when client "

    .line 144
    .line 145
    const-string p2, " registered!"

    .line 146
    .line 147
    invoke-static {p1, p0, p2, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_5
    new-instance p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    .line 152
    .line 153
    invoke-direct {p3, p0, p2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;I)V

    .line 154
    .line 155
    .line 156
    :try_start_1
    invoke-interface {p2}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->asBinder()Landroid/os/IBinder;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-interface {p2, p3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    .line 164
    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p0, Ljava/util/HashMap;

    .line 170
    .line 171
    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :catch_1
    const-string p0, "Listener already died."

    .line 176
    .line 177
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    :cond_6
    :goto_3
    return-void
.end method

.method public releaseCasSessionInternal(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "releaseCasSession(sessionResourceId="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    .line 14
    .line 15
    const-string v2, ")"

    .line 16
    .line 17
    const-string v3, "TunerResourceManagerService"

    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, -0x1

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v0, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-lez v0, :cond_1

    .line 56
    .line 57
    iget-object v2, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    .line 58
    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    add-int/2addr v0, v1

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v2, Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    iput v0, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    .line 78
    .line 79
    :cond_1
    iget-object v0, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    .line 80
    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v0, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-lez v0, :cond_2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 105
    .line 106
    .line 107
    iput v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 108
    .line 109
    :goto_0
    return-void
.end method

.method public releaseCiCamInternal(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "releaseCiCamInternal(ciCamId="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    .line 14
    .line 15
    const-string v2, ")"

    .line 16
    .line 17
    const-string v3, "TunerResourceManagerService"

    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 31
    .line 32
    return-void
.end method

.method public releaseDemuxInternal(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "releaseDemux(DemuxHandle="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 14
    .line 15
    const-string v2, ")"

    .line 16
    .line 17
    const-string v3, "TunerResourceManagerService"

    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    iput v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingDemuxHandles:Ljava/util/Set;

    .line 35
    .line 36
    iget p1, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p0, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public releaseFrontendInternal(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "releaseFrontend(id="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 14
    .line 15
    const-string v2, ", clientId="

    .line 16
    .line 17
    const-string v3, " )"

    .line 18
    .line 19
    invoke-static {v1, p2, v2, v3, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "TunerResourceManagerService"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    iget p1, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 29
    .line 30
    if-ne p2, p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 39
    .line 40
    check-cast p1, Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "releaseLnb(lnbHandle="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 14
    .line 15
    const-string v2, ")"

    .line 16
    .line 17
    const-string v3, "TunerResourceManagerService"

    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    iput v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    .line 35
    .line 36
    iget p1, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p0, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final removeClientProfile(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 6
    .line 7
    check-cast v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v0, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v0

    .line 58
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p0, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    .line 71
    .line 72
    if-eqz p0, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    .line 75
    .line 76
    invoke-interface {p1}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->asBinder()Landroid/os/IBinder;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    :goto_1
    monitor-exit v0

    .line 88
    return-void

    .line 89
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0
.end method

.method public requestCasSessionInternal(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z
    .locals 12

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "requestCasSession(request="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ")"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "TunerResourceManagerService"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget v0, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    .line 39
    .line 40
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(I)V

    .line 43
    .line 44
    .line 45
    const v1, 0x7fffffff

    .line 46
    .line 47
    .line 48
    iput v1, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    .line 49
    .line 50
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    .line 56
    .line 57
    iget v2, v1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v0, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-object v0, v1

    .line 69
    :cond_1
    const/4 v1, 0x0

    .line 70
    const/4 v2, -0x1

    .line 71
    aput v2, p2, v1

    .line 72
    .line 73
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    .line 74
    .line 75
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 80
    .line 81
    .line 82
    iget v4, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    if-nez v4, :cond_2

    .line 86
    .line 87
    move v4, v5

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move v4, v1

    .line 90
    :goto_0
    const/4 v6, 0x4

    .line 91
    iget v7, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    .line 92
    .line 93
    if-nez v4, :cond_3

    .line 94
    .line 95
    invoke-virtual {p0, v6, v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    aput v0, p2, v1

    .line 100
    .line 101
    iget p2, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    .line 102
    .line 103
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    .line 104
    .line 105
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 114
    .line 115
    .line 116
    iput p2, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 117
    .line 118
    return v5

    .line 119
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const/16 v4, 0x3e9

    .line 128
    .line 129
    move v9, v1

    .line 130
    move v8, v2

    .line 131
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_6

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    check-cast v10, Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    invoke-virtual {p0, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-le v4, v11, :cond_4

    .line 152
    .line 153
    iget v4, v3, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 154
    .line 155
    invoke-virtual {p0, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    iget v8, v8, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 160
    .line 161
    if-ne v4, v8, :cond_5

    .line 162
    .line 163
    move v9, v5

    .line 164
    goto :goto_2

    .line 165
    :cond_5
    move v9, v1

    .line 166
    :goto_2
    move v8, v10

    .line 167
    move v4, v11

    .line 168
    goto :goto_1

    .line 169
    :cond_6
    if-le v8, v2, :cond_9

    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-gt v0, v4, :cond_7

    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-ne v0, v4, :cond_9

    .line 182
    .line 183
    if-eqz v9, :cond_9

    .line 184
    .line 185
    :cond_7
    invoke-virtual {p0, v8, v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_8

    .line 190
    .line 191
    return v1

    .line 192
    :cond_8
    invoke-virtual {p0, v6, v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    aput v0, p2, v1

    .line 197
    .line 198
    iget p2, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    .line 199
    .line 200
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    .line 201
    .line 202
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 211
    .line 212
    .line 213
    iput p2, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 214
    .line 215
    return v5

    .line 216
    :cond_9
    return v1
.end method

.method public requestCiCamInternal(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[I)Z
    .locals 12

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "requestCiCamInternal(TunerCiCamRequest="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ")"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "TunerResourceManagerService"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget v0, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    .line 39
    .line 40
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(I)V

    .line 43
    .line 44
    .line 45
    const v1, 0x7fffffff

    .line 46
    .line 47
    .line 48
    iput v1, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    .line 49
    .line 50
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    .line 56
    .line 57
    iget v2, v1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v0, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-object v0, v1

    .line 69
    :cond_1
    const/4 v1, 0x0

    .line 70
    const/4 v2, -0x1

    .line 71
    aput v2, p2, v1

    .line 72
    .line 73
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    .line 74
    .line 75
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 80
    .line 81
    .line 82
    iget v4, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    if-nez v4, :cond_2

    .line 86
    .line 87
    move v4, v5

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move v4, v1

    .line 90
    :goto_0
    const/4 v6, 0x5

    .line 91
    iget v7, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    .line 92
    .line 93
    if-nez v4, :cond_3

    .line 94
    .line 95
    invoke-virtual {p0, v6, v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    aput v0, p2, v1

    .line 100
    .line 101
    iget p2, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    .line 102
    .line 103
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    .line 104
    .line 105
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 114
    .line 115
    .line 116
    iput p2, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 117
    .line 118
    return v5

    .line 119
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const/16 v4, 0x3e9

    .line 128
    .line 129
    move v9, v1

    .line 130
    move v8, v2

    .line 131
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_6

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    check-cast v10, Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    invoke-virtual {p0, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-le v4, v11, :cond_4

    .line 152
    .line 153
    iget v4, v3, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 154
    .line 155
    invoke-virtual {p0, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    iget v8, v8, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 160
    .line 161
    if-ne v4, v8, :cond_5

    .line 162
    .line 163
    move v9, v5

    .line 164
    goto :goto_2

    .line 165
    :cond_5
    move v9, v1

    .line 166
    :goto_2
    move v8, v10

    .line 167
    move v4, v11

    .line 168
    goto :goto_1

    .line 169
    :cond_6
    if-le v8, v2, :cond_9

    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-gt v0, v4, :cond_7

    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-ne v0, v4, :cond_9

    .line 182
    .line 183
    if-eqz v9, :cond_9

    .line 184
    .line 185
    :cond_7
    invoke-virtual {p0, v8, v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_8

    .line 190
    .line 191
    return v1

    .line 192
    :cond_8
    invoke-virtual {p0, v6, v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    aput v0, p2, v1

    .line 197
    .line 198
    iget p2, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    .line 199
    .line 200
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    .line 201
    .line 202
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 211
    .line 212
    .line 213
    iput p2, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 214
    .line 215
    return v5

    .line 216
    :cond_9
    return v1
.end method

.method public requestDemuxInternal(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v3, "requestDemux(request="

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, ")"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "TunerResourceManagerService"

    .line 30
    .line 31
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v2, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    .line 35
    .line 36
    check-cast v2, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x1

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v4, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    aput v0, p2, v3

    .line 51
    .line 52
    return v4

    .line 53
    :cond_1
    const/4 v2, -0x1

    .line 54
    aput v2, p2, v3

    .line 55
    .line 56
    iget v5, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    .line 57
    .line 58
    invoke-virtual {v0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    if-nez v5, :cond_2

    .line 63
    .line 64
    return v3

    .line 65
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 66
    .line 67
    .line 68
    iget v6, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->desiredFilterTypes:I

    .line 69
    .line 70
    if-eqz v6, :cond_3

    .line 71
    .line 72
    move v6, v4

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move v6, v3

    .line 75
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResources()Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    const/16 v8, 0x21

    .line 88
    .line 89
    const/16 v9, 0x3e9

    .line 90
    .line 91
    move v11, v2

    .line 92
    move v12, v11

    .line 93
    move v13, v3

    .line 94
    move v10, v9

    .line 95
    move v9, v8

    .line 96
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    if-eqz v14, :cond_f

    .line 101
    .line 102
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    check-cast v14, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    .line 107
    .line 108
    if-eqz v6, :cond_4

    .line 109
    .line 110
    iget v15, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->desiredFilterTypes:I

    .line 111
    .line 112
    iget v4, v14, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->mFilterTypes:I

    .line 113
    .line 114
    and-int/2addr v4, v15

    .line 115
    if-ne v15, v4, :cond_7

    .line 116
    .line 117
    :cond_4
    iget-boolean v4, v14, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 118
    .line 119
    const/16 v15, 0x20

    .line 120
    .line 121
    iget v3, v14, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->mFilterTypes:I

    .line 122
    .line 123
    iget v2, v14, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 124
    .line 125
    if-nez v4, :cond_8

    .line 126
    .line 127
    move/from16 v16, v2

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    const/4 v4, 0x1

    .line 131
    const/4 v14, 0x0

    .line 132
    :goto_2
    if-ge v14, v15, :cond_6

    .line 133
    .line 134
    and-int v15, v3, v4

    .line 135
    .line 136
    if-ne v15, v4, :cond_5

    .line 137
    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 139
    .line 140
    :cond_5
    shl-int/lit8 v4, v4, 0x1

    .line 141
    .line 142
    add-int/lit8 v14, v14, 0x1

    .line 143
    .line 144
    const/16 v15, 0x20

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    if-le v8, v2, :cond_7

    .line 148
    .line 149
    move v8, v2

    .line 150
    move/from16 v11, v16

    .line 151
    .line 152
    :cond_7
    move/from16 v17, v6

    .line 153
    .line 154
    move-object/from16 v18, v7

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_8
    move/from16 v16, v2

    .line 158
    .line 159
    const/4 v2, -0x1

    .line 160
    if-ne v11, v2, :cond_7

    .line 161
    .line 162
    iget v2, v14, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-lt v10, v2, :cond_7

    .line 169
    .line 170
    move/from16 v17, v6

    .line 171
    .line 172
    move-object/from16 v18, v7

    .line 173
    .line 174
    const/4 v4, 0x1

    .line 175
    const/4 v6, 0x0

    .line 176
    const/16 v7, 0x20

    .line 177
    .line 178
    const/4 v15, 0x0

    .line 179
    :goto_3
    if-ge v15, v7, :cond_a

    .line 180
    .line 181
    and-int v7, v3, v4

    .line 182
    .line 183
    if-ne v7, v4, :cond_9

    .line 184
    .line 185
    add-int/lit8 v6, v6, 0x1

    .line 186
    .line 187
    :cond_9
    shl-int/lit8 v4, v4, 0x1

    .line 188
    .line 189
    add-int/lit8 v15, v15, 0x1

    .line 190
    .line 191
    const/16 v7, 0x20

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_a
    if-le v10, v2, :cond_c

    .line 195
    .line 196
    iget v3, v14, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 197
    .line 198
    invoke-virtual {v0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    iget v3, v3, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 203
    .line 204
    iget v4, v5, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 205
    .line 206
    if-ne v4, v3, :cond_b

    .line 207
    .line 208
    const/4 v13, 0x1

    .line 209
    goto :goto_4

    .line 210
    :cond_b
    const/4 v13, 0x0

    .line 211
    :goto_4
    move v10, v2

    .line 212
    :goto_5
    move v9, v6

    .line 213
    const/4 v2, 0x1

    .line 214
    goto :goto_6

    .line 215
    :cond_c
    if-le v9, v6, :cond_d

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_d
    const/4 v2, 0x0

    .line 219
    :goto_6
    if-eqz v2, :cond_e

    .line 220
    .line 221
    move/from16 v12, v16

    .line 222
    .line 223
    :cond_e
    :goto_7
    move/from16 v6, v17

    .line 224
    .line 225
    move-object/from16 v7, v18

    .line 226
    .line 227
    const/4 v2, -0x1

    .line 228
    const/4 v3, 0x0

    .line 229
    const/4 v4, 0x1

    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    :cond_f
    if-eq v11, v2, :cond_11

    .line 233
    .line 234
    const/4 v2, 0x0

    .line 235
    aput v11, p2, v2

    .line 236
    .line 237
    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    .line 238
    .line 239
    invoke-virtual {v0, v11}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(I)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    if-eqz v2, :cond_10

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 250
    .line 251
    .line 252
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingDemuxHandles:Ljava/util/Set;

    .line 253
    .line 254
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    check-cast v0, Ljava/util/HashSet;

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    :cond_10
    const/4 v0, 0x1

    .line 264
    return v0

    .line 265
    :cond_11
    if-eq v12, v2, :cond_12

    .line 266
    .line 267
    invoke-virtual {v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-gt v2, v10, :cond_13

    .line 272
    .line 273
    invoke-virtual {v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-ne v2, v10, :cond_12

    .line 278
    .line 279
    if-eqz v13, :cond_12

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_12
    const/4 v0, 0x0

    .line 283
    goto :goto_9

    .line 284
    :cond_13
    :goto_8
    invoke-virtual {v0, v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(I)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    iget v2, v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 289
    .line 290
    const/4 v3, 0x1

    .line 291
    invoke-virtual {v0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-nez v2, :cond_14

    .line 296
    .line 297
    const/4 v2, 0x0

    .line 298
    return v2

    .line 299
    :cond_14
    const/4 v2, 0x0

    .line 300
    aput v12, p2, v2

    .line 301
    .line 302
    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    .line 303
    .line 304
    invoke-virtual {v0, v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(I)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    if-eqz v2, :cond_15

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 315
    .line 316
    .line 317
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingDemuxHandles:Ljava/util/Set;

    .line 318
    .line 319
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    check-cast v0, Ljava/util/HashSet;

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    :cond_15
    const/4 v0, 0x1

    .line 329
    :goto_9
    return v0
.end method

.method public requestDescramblerInternal(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "requestDescrambler(request="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ")"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "TunerResourceManagerService"

    .line 26
    .line 27
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p1, 0x2

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    aput p0, p2, v0

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0
.end method

.method public requestFrontendInternal(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v3, "requestFrontend(request="

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, ")"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "TunerResourceManagerService"

    .line 30
    .line 31
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 35
    const/4 v3, -0x1

    .line 36
    aput v3, p2, v2

    .line 37
    .line 38
    iget v4, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    .line 39
    .line 40
    invoke-virtual {v0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    return v2

    .line 47
    :cond_1
    invoke-virtual {v0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 48
    .line 49
    .line 50
    iget v5, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->desiredId:I

    .line 51
    .line 52
    if-eq v5, v3, :cond_2

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v5, v2

    .line 57
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const/16 v8, 0x3e9

    .line 70
    .line 71
    move v11, v2

    .line 72
    move v9, v3

    .line 73
    move v10, v9

    .line 74
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-eqz v12, :cond_11

    .line 79
    .line 80
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    check-cast v12, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 85
    .line 86
    iget v13, v12, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 87
    .line 88
    invoke-virtual {v0, v13}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getResourceIdFromHandle(I)I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    iget v14, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    .line 93
    .line 94
    iget v15, v12, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    .line 95
    .line 96
    if-ne v15, v14, :cond_e

    .line 97
    .line 98
    if-eqz v5, :cond_3

    .line 99
    .line 100
    iget v6, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->desiredId:I

    .line 101
    .line 102
    if-ne v13, v6, :cond_e

    .line 103
    .line 104
    :cond_3
    iget-boolean v6, v12, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 105
    .line 106
    iget v13, v12, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 107
    .line 108
    if-nez v6, :cond_8

    .line 109
    .line 110
    iget-object v6, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    .line 111
    .line 112
    invoke-virtual {v6, v14, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-ne v6, v3, :cond_4

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    iget-object v15, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    .line 120
    .line 121
    invoke-virtual {v15, v14, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    if-ne v14, v3, :cond_5

    .line 126
    .line 127
    move v14, v2

    .line 128
    :cond_5
    if-lt v14, v6, :cond_6

    .line 129
    .line 130
    goto/16 :goto_5

    .line 131
    .line 132
    :cond_6
    :goto_2
    iget-object v6, v12, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    .line 133
    .line 134
    check-cast v6, Ljava/util/HashSet;

    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-eqz v6, :cond_7

    .line 141
    .line 142
    move v9, v13

    .line 143
    goto/16 :goto_8

    .line 144
    .line 145
    :cond_7
    if-ne v9, v3, :cond_e

    .line 146
    .line 147
    move v9, v13

    .line 148
    goto :goto_5

    .line 149
    :cond_8
    if-ne v9, v3, :cond_e

    .line 150
    .line 151
    iget v6, v12, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 152
    .line 153
    invoke-virtual {v0, v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    if-nez v14, :cond_9

    .line 158
    .line 159
    move v6, v2

    .line 160
    goto :goto_4

    .line 161
    :cond_9
    invoke-virtual {v0, v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    iget-object v14, v14, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 166
    .line 167
    check-cast v14, Ljava/util/HashSet;

    .line 168
    .line 169
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v16

    .line 177
    if-eqz v16, :cond_b

    .line 178
    .line 179
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v16

    .line 183
    check-cast v16, Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-le v2, v6, :cond_a

    .line 194
    .line 195
    move v6, v2

    .line 196
    :cond_a
    const/4 v2, 0x0

    .line 197
    goto :goto_3

    .line 198
    :cond_b
    :goto_4
    if-le v8, v6, :cond_e

    .line 199
    .line 200
    iget v2, v12, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 201
    .line 202
    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    iget v2, v2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    iget v2, v2, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    .line 213
    .line 214
    if-eq v15, v2, :cond_f

    .line 215
    .line 216
    iget-object v2, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    .line 217
    .line 218
    invoke-virtual {v2, v15, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-ne v2, v3, :cond_c

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_c
    iget-object v14, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    .line 226
    .line 227
    invoke-virtual {v14, v15, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    if-ne v14, v3, :cond_d

    .line 232
    .line 233
    const/4 v14, 0x0

    .line 234
    :cond_d
    if-lt v14, v2, :cond_f

    .line 235
    .line 236
    :cond_e
    :goto_5
    const/4 v2, 0x0

    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :cond_f
    :goto_6
    iget v2, v12, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 240
    .line 241
    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    iget v2, v2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 246
    .line 247
    iget v8, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 248
    .line 249
    if-ne v8, v2, :cond_10

    .line 250
    .line 251
    const/4 v2, 0x1

    .line 252
    goto :goto_7

    .line 253
    :cond_10
    const/4 v2, 0x0

    .line 254
    :goto_7
    move v11, v2

    .line 255
    move v8, v6

    .line 256
    move v10, v13

    .line 257
    goto :goto_5

    .line 258
    :cond_11
    :goto_8
    if-eq v9, v3, :cond_12

    .line 259
    .line 260
    const/4 v2, 0x0

    .line 261
    aput v9, p2, v2

    .line 262
    .line 263
    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    .line 264
    .line 265
    invoke-virtual {v0, v9, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnNewGrant(II)V

    .line 266
    .line 267
    .line 268
    :goto_9
    const/4 v0, 0x1

    .line 269
    return v0

    .line 270
    :cond_12
    if-eq v10, v3, :cond_13

    .line 271
    .line 272
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-gt v2, v8, :cond_14

    .line 277
    .line 278
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-ne v2, v8, :cond_13

    .line 283
    .line 284
    if-eqz v11, :cond_13

    .line 285
    .line 286
    goto :goto_a

    .line 287
    :cond_13
    const/4 v3, 0x0

    .line 288
    goto :goto_b

    .line 289
    :cond_14
    :goto_a
    invoke-virtual {v0, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    iget v2, v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 294
    .line 295
    const/4 v3, 0x0

    .line 296
    invoke-virtual {v0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-nez v2, :cond_15

    .line 301
    .line 302
    return v3

    .line 303
    :cond_15
    aput v10, p2, v3

    .line 304
    .line 305
    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    .line 306
    .line 307
    invoke-virtual {v0, v10, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnNewGrant(II)V

    .line 308
    .line 309
    .line 310
    goto :goto_9

    .line 311
    :goto_b
    return v3
.end method

.method public requestLnbInternal(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "requestLnb(request="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ")"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "TunerResourceManagerService"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    const/4 v1, -0x1

    .line 32
    aput v1, p2, v0

    .line 33
    .line 34
    iget v2, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResources()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/16 v4, 0x3e9

    .line 56
    .line 57
    move v6, v0

    .line 58
    move v5, v1

    .line 59
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const/4 v8, 0x1

    .line 64
    if-eqz v7, :cond_4

    .line 65
    .line 66
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 71
    .line 72
    iget-boolean v9, v7, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 73
    .line 74
    iget v10, v7, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 75
    .line 76
    if-nez v9, :cond_2

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    iget v9, v7, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 80
    .line 81
    invoke-virtual {p0, v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-le v4, v9, :cond_1

    .line 86
    .line 87
    iget v4, v2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 88
    .line 89
    iget v5, v7, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 90
    .line 91
    invoke-virtual {p0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    iget v5, v5, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 96
    .line 97
    if-ne v4, v5, :cond_3

    .line 98
    .line 99
    move v6, v8

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move v6, v0

    .line 102
    :goto_1
    move v4, v9

    .line 103
    move v5, v10

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    move v10, v1

    .line 106
    :goto_2
    if-le v10, v1, :cond_5

    .line 107
    .line 108
    aput v10, p2, v0

    .line 109
    .line 110
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    .line 111
    .line 112
    invoke-virtual {p0, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 121
    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    .line 124
    .line 125
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p0, Ljava/util/HashSet;

    .line 130
    .line 131
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    return v8

    .line 135
    :cond_5
    if-le v5, v1, :cond_8

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-gt v1, v4, :cond_6

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-ne v1, v4, :cond_8

    .line 148
    .line 149
    if-eqz v6, :cond_8

    .line 150
    .line 151
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iget v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 156
    .line 157
    const/4 v2, 0x3

    .line 158
    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_7

    .line 163
    .line 164
    return v0

    .line 165
    :cond_7
    aput v5, p2, v0

    .line 166
    .line 167
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    .line 168
    .line 169
    invoke-virtual {p0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 178
    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    .line 181
    .line 182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p0, Ljava/util/HashSet;

    .line 187
    .line 188
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    return v8

    .line 192
    :cond_8
    return v0
.end method

.method public setDemuxInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "TunerResourceManagerService"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string/jumbo v0, "updateDemuxInfo:"

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move v0, v1

    .line 15
    :goto_0
    array-length v3, p1

    .line 16
    if-ge v0, v3, :cond_0

    .line 17
    .line 18
    aget-object v3, p1, v0

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResources()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    array-length v3, p1

    .line 44
    if-ge v1, v3, :cond_3

    .line 45
    .line 46
    aget-object v3, p1, v1

    .line 47
    .line 48
    iget v3, v3, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:I

    .line 49
    .line 50
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(I)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 57
    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v4, "Demux handle="

    .line 63
    .line 64
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    aget-object v4, p1, v1

    .line 68
    .line 69
    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:I

    .line 70
    .line 71
    const-string v5, "exists."

    .line 72
    .line 73
    invoke-static {v3, v4, v5, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    aget-object v3, p1, v1

    .line 77
    .line 78
    iget v3, v3, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:I

    .line 79
    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;

    .line 89
    .line 90
    aget-object v4, p1, v1

    .line 91
    .line 92
    iget v5, v4, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:I

    .line 93
    .line 94
    invoke-direct {v3, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;-><init>(I)V

    .line 95
    .line 96
    .line 97
    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->filterTypes:I

    .line 98
    .line 99
    iput v4, v3, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;->mFilterTypes:I

    .line 100
    .line 101
    new-instance v4, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    .line 102
    .line 103
    invoke-direct {v4, v3}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;)V

    .line 104
    .line 105
    .line 106
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    .line 107
    .line 108
    iget v5, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 109
    .line 110
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v3, Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_6

    .line 131
    .line 132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(I)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-nez v1, :cond_4

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_4
    iget-boolean v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 150
    .line 151
    if-eqz v2, :cond_5

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseDemuxInternal(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    .line 157
    .line 158
    check-cast v1, Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    return-void
.end method

.method public setFrontendInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "TunerResourceManagerService"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string/jumbo v0, "updateFrontendInfo:"

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move v0, v1

    .line 15
    :goto_0
    array-length v3, p1

    .line 16
    if-ge v0, v3, :cond_0

    .line 17
    .line 18
    aget-object v3, p1, v0

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    array-length v3, p1

    .line 44
    const/4 v4, -0x1

    .line 45
    if-ge v1, v3, :cond_7

    .line 46
    .line 47
    aget-object v3, p1, v1

    .line 48
    .line 49
    iget v3, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:I

    .line 50
    .line 51
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v4, "Frontend handle="

    .line 64
    .line 65
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    aget-object v4, p1, v1

    .line 69
    .line 70
    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:I

    .line 71
    .line 72
    const-string v5, "exists."

    .line 73
    .line 74
    invoke-static {v3, v4, v5, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    aget-object v3, p1, v1

    .line 78
    .line 79
    iget v3, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:I

    .line 80
    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_2
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    .line 91
    .line 92
    aget-object v5, p1, v1

    .line 93
    .line 94
    iget v6, v5, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:I

    .line 95
    .line 96
    invoke-direct {v3, v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;-><init>(I)V

    .line 97
    .line 98
    .line 99
    iget v6, v5, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->type:I

    .line 100
    .line 101
    iput v6, v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->mType:I

    .line 102
    .line 103
    iget v5, v5, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->exclusiveGroupId:I

    .line 104
    .line 105
    iput v5, v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->mExclusiveGroupId:I

    .line 106
    .line 107
    new-instance v5, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 108
    .line 109
    invoke-direct {v5, v3}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    iget v7, v5, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 129
    .line 130
    if-eqz v6, :cond_5

    .line 131
    .line 132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    check-cast v6, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 137
    .line 138
    iget v8, v6, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupId:I

    .line 139
    .line 140
    iget v9, v5, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupId:I

    .line 141
    .line 142
    if-ne v8, v9, :cond_3

    .line 143
    .line 144
    iget-object v3, v5, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    .line 145
    .line 146
    iget v8, v6, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 147
    .line 148
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    check-cast v3, Ljava/util/HashSet;

    .line 153
    .line 154
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    iget-object v3, v6, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    .line 158
    .line 159
    iget-object v8, v5, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    .line 160
    .line 161
    invoke-interface {v8, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 162
    .line 163
    .line 164
    iget-object v3, v6, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    .line 165
    .line 166
    check-cast v3, Ljava/util/HashSet;

    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-eqz v8, :cond_4

    .line 177
    .line 178
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    check-cast v8, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    invoke-virtual {p0, v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    iget-object v8, v8, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    .line 193
    .line 194
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    check-cast v8, Ljava/util/HashSet;

    .line 199
    .line 200
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_4
    iget-object v3, v6, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    .line 205
    .line 206
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    check-cast v3, Ljava/util/HashSet;

    .line 211
    .line 212
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    :cond_5
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    .line 216
    .line 217
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    check-cast v3, Ljava/util/HashMap;

    .line 222
    .line 223
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    .line 227
    .line 228
    iget v5, v5, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    .line 229
    .line 230
    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-ne v6, v4, :cond_6

    .line 235
    .line 236
    const/4 v4, 0x1

    .line 237
    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 242
    .line 243
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 244
    .line 245
    .line 246
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 247
    .line 248
    goto/16 :goto_1

    .line 249
    .line 250
    :cond_7
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_d

    .line 259
    .line 260
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Ljava/lang/Integer;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    if-nez v1, :cond_8

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_8
    iget-boolean v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 278
    .line 279
    if-eqz v2, :cond_a

    .line 280
    .line 281
    iget v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 282
    .line 283
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    iget-object v3, v2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 288
    .line 289
    check-cast v3, Ljava/util/HashSet;

    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    if-eqz v5, :cond_9

    .line 300
    .line 301
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    check-cast v5, Ljava/lang/Integer;

    .line 306
    .line 307
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    invoke-virtual {p0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-virtual {p0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 316
    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 320
    .line 321
    .line 322
    :cond_a
    iget-object v2, v1, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    .line 323
    .line 324
    check-cast v2, Ljava/util/HashSet;

    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    if-eqz v3, :cond_b

    .line 335
    .line 336
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    check-cast v3, Ljava/lang/Integer;

    .line 341
    .line 342
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    iget-object v3, v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    .line 351
    .line 352
    iget v5, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 353
    .line 354
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    check-cast v3, Ljava/util/HashSet;

    .line 359
    .line 360
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    goto :goto_6

    .line 364
    :cond_b
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    .line 365
    .line 366
    iget v1, v1, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    .line 367
    .line 368
    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-eq v3, v4, :cond_c

    .line 373
    .line 374
    add-int/lit8 v3, v3, -0x1

    .line 375
    .line 376
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 377
    .line 378
    .line 379
    :cond_c
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    .line 380
    .line 381
    check-cast v1, Ljava/util/HashMap;

    .line 382
    .line 383
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    goto/16 :goto_4

    .line 387
    .line 388
    :cond_d
    return-void
.end method

.method public setLnbInfoListInternal([I)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "TunerResourceManagerService"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    :goto_0
    array-length v3, p1

    .line 10
    if-ge v0, v3, :cond_0

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v4, "updateLnbInfo(lnbHanle="

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    aget v4, p1, v0

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, ")"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResources()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    array-length v3, p1

    .line 54
    if-ge v2, v3, :cond_3

    .line 55
    .line 56
    aget v3, p1, v2

    .line 57
    .line 58
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 65
    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v4, "Lnb handle="

    .line 71
    .line 72
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    aget v4, p1, v2

    .line 76
    .line 77
    const-string v5, "exists."

    .line 78
    .line 79
    invoke-static {v3, v4, v5, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    aget v3, p1, v2

    .line 83
    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;

    .line 93
    .line 94
    aget v4, p1, v2

    .line 95
    .line 96
    invoke-direct {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;-><init>(I)V

    .line 97
    .line 98
    .line 99
    new-instance v4, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 100
    .line 101
    invoke-direct {v4, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    .line 105
    .line 106
    iget v5, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    .line 107
    .line 108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v3, Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-nez v1, :cond_4

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_4
    iget-boolean v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 148
    .line 149
    if-eqz v2, :cond_5

    .line 150
    .line 151
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    .line 152
    .line 153
    .line 154
    :cond_5
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    .line 155
    .line 156
    check-cast v1, Ljava/util/HashMap;

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    return-void
.end method

.method public shareFrontendInternal(II)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "shareFrontend from "

    .line 6
    .line 7
    .line 8
    const-string v1, " with "

    .line 9
    .line 10
    const-string v2, "TunerResourceManagerService"

    .line 11
    .line 12
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareeFeClientId:Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, -0x1

    .line 26
    if-eq v1, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v0, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 52
    .line 53
    check-cast v1, Ljava/util/HashSet;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 59
    .line 60
    check-cast v1, Ljava/util/HashSet;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareeFeClientId:Ljava/lang/Integer;

    .line 70
    .line 71
    iput v2, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 72
    .line 73
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 78
    .line 79
    check-cast v0, Ljava/util/HashSet;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iget-object v2, v2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 105
    .line 106
    check-cast v2, Ljava/util/HashSet;

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iput-object v1, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareeFeClientId:Ljava/lang/Integer;

    .line 121
    .line 122
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 127
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p0, Ljava/util/HashSet;

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public transferOwnerInternal(III)Z
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "TunerResourceManagerService"

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    if-eq p1, v4, :cond_1

    .line 10
    .line 11
    const/4 v4, 0x5

    .line 12
    if-eq p1, v4, :cond_0

    .line 13
    .line 14
    const-string/jumbo p0, "transferOwnerInternal. unsupported resourceType: "

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iget v1, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 30
    .line 31
    iput v1, p2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 38
    .line 39
    .line 40
    iput v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 41
    .line 42
    return v3

    .line 43
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-instance v0, Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    .line 57
    .line 58
    check-cast v1, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object v4, p2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    .line 80
    .line 81
    check-cast v4, Ljava/util/HashSet;

    .line 82
    .line 83
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object p3, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    .line 121
    .line 122
    check-cast p3, Ljava/util/HashSet;

    .line 123
    .line 124
    invoke-virtual {p3, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    return v3

    .line 129
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    iget-object v5, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 138
    .line 139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    check-cast v5, Ljava/util/HashSet;

    .line 144
    .line 145
    invoke-virtual {v5, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    iget-object p2, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 149
    .line 150
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    check-cast p2, Ljava/util/HashSet;

    .line 155
    .line 156
    invoke-virtual {p2, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    iput-object p2, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareeFeClientId:Ljava/lang/Integer;

    .line 164
    .line 165
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    iput-object p2, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareeFeClientId:Ljava/lang/Integer;

    .line 170
    .line 171
    iget-object p2, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 172
    .line 173
    check-cast p2, Ljava/util/HashSet;

    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-eqz v5, :cond_5

    .line 184
    .line 185
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    check-cast v5, Ljava/lang/Integer;

    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    invoke-virtual {p0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v5, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_5
    iget p2, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 204
    .line 205
    iput p2, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 206
    .line 207
    iput v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 208
    .line 209
    iget-object p1, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 210
    .line 211
    check-cast p1, Ljava/util/HashSet;

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    if-eqz p2, :cond_7

    .line 222
    .line 223
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    check-cast p2, Ljava/lang/Integer;

    .line 228
    .line 229
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iget v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 238
    .line 239
    if-eq v0, p3, :cond_6

    .line 240
    .line 241
    const-string/jumbo p0, "something is wrong in transferFeOwner:"

    .line 242
    .line 243
    .line 244
    const-string p1, ", "

    .line 245
    .line 246
    invoke-static {p2, v0, p0, p1, p1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-static {p0, p3, v2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_7
    move v1, v3

    .line 255
    :goto_3
    return v1
.end method

.method public unregisterClientProfileInternal(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "TunerResourceManagerService"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "unregisterClientProfile(clientId="

    .line 8
    .line 9
    .line 10
    const-string v2, ")"

    .line 11
    .line 12
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeClientProfile(I)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v0, -0x1

    .line 27
    invoke-interface {p0, p1, v0}, Landroid/media/IResourceManagerService;->overridePid(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string p1, "Could not overridePid in resourceManagerSercice when unregister, remote exception: "

    .line 33
    .line 34
    invoke-static {p1, p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateAndGetOwnerClientPriority(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public updateCasInfoInternal(II)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "updateCasInfo(casSystemId="

    .line 6
    .line 7
    .line 8
    const-string v1, ", maxSessionNum="

    .line 9
    .line 10
    const-string v2, ")"

    .line 11
    .line 12
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "TunerResourceManagerService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    if-nez p2, :cond_5

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v0, -0x1

    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput v0, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast p2, Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iput v0, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    .line 112
    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p0, Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :goto_3
    return-void

    .line 123
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    iget p0, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    .line 134
    .line 135
    iget p1, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    .line 136
    .line 137
    sub-int p1, p2, p1

    .line 138
    .line 139
    add-int/2addr p1, p0

    .line 140
    const/4 p0, 0x0

    .line 141
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iput p1, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    .line 146
    .line 147
    iput p2, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    .line 148
    .line 149
    if-eqz v1, :cond_6

    .line 150
    .line 151
    iget p1, v1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    .line 152
    .line 153
    iget v0, v1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    .line 154
    .line 155
    sub-int v0, p2, v0

    .line 156
    .line 157
    add-int/2addr v0, p1

    .line 158
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    iput p0, v1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    .line 163
    .line 164
    iput p2, v1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    .line 165
    .line 166
    :cond_6
    return-void

    .line 167
    :cond_7
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    .line 168
    .line 169
    invoke-direct {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(I)V

    .line 170
    .line 171
    .line 172
    iput p2, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    .line 173
    .line 174
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    .line 175
    .line 176
    invoke-direct {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V

    .line 177
    .line 178
    .line 179
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    .line 180
    .line 181
    invoke-direct {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(I)V

    .line 182
    .line 183
    .line 184
    iput p2, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    .line 185
    .line 186
    new-instance p1, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    .line 187
    .line 188
    invoke-direct {p1, v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V

    .line 189
    .line 190
    .line 191
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    .line 192
    .line 193
    iget v0, v1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    .line 194
    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast p2, Ljava/util/HashMap;

    .line 200
    .line 201
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    .line 205
    .line 206
    iget p2, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    .line 207
    .line 208
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    check-cast p0, Ljava/util/HashMap;

    .line 213
    .line 214
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method public updateClientPriorityInternal(III)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "TunerResourceManagerService"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "updateClientPriority(clientId="

    .line 8
    .line 9
    .line 10
    const-string v2, ", priority="

    .line 11
    .line 12
    const-string v3, ", niceValue="

    .line 13
    .line 14
    invoke-static {p1, p2, v0, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, ")"

    .line 19
    .line 20
    invoke-static {v0, p3, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    const-string p0, "Can not find client profile with id "

    .line 30
    .line 31
    const-string p2, " when trying to update the client priority."

    .line 32
    .line 33
    invoke-static {p1, p0, p2, v1}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    :cond_1
    const/4 p1, 0x1

    .line 39
    if-gez p2, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mIsPriorityOverwritten:Z

    .line 43
    .line 44
    iput p2, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    .line 45
    .line 46
    :goto_0
    iput p3, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mNiceValue:I

    .line 47
    .line 48
    return p1
.end method

.method public final updateFrontendClientMappingOnNewGrant(II)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    iget v3, v0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    .line 15
    .line 16
    const/4 v4, -0x1

    .line 17
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v6, 0x1

    .line 22
    if-ne v5, v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    add-int/2addr v5, v6

    .line 29
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v2, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v2, Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    .line 44
    .line 45
    check-cast v0, Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 72
    .line 73
    .line 74
    iget-object v3, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 75
    .line 76
    check-cast v3, Ljava/util/HashSet;

    .line 77
    .line 78
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iput p1, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 83
    .line 84
    return-void
.end method
