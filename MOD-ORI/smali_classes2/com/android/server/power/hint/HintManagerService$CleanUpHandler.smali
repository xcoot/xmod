.class public final Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cleanUpSession(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Landroid/util/SparseIntArray;[I)I
    .locals 12

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-wide v0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 16
    if-nez v0, :cond_c

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_1
    iget-boolean v0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    .line 20
    .line 21
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto/16 :goto_8

    .line 25
    .line 26
    :cond_1
    iget v0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPid:I

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTidsInternal()[I

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    array-length v4, p3

    .line 33
    if-ne v4, v1, :cond_2

    .line 34
    .line 35
    aget v4, p3, v2

    .line 36
    .line 37
    array-length v5, v3

    .line 38
    add-int/2addr v4, v5

    .line 39
    aput v4, p3, v2

    .line 40
    .line 41
    :cond_2
    new-instance p3, Landroid/util/IntArray;

    .line 42
    .line 43
    array-length v4, v3

    .line 44
    invoke-direct {p3, v4}, Landroid/util/IntArray;-><init>(I)V

    .line 45
    .line 46
    .line 47
    move v4, v2

    .line 48
    :goto_1
    array-length v5, v3

    .line 49
    if-ge v4, v5, :cond_6

    .line 50
    .line 51
    aget v5, v3, v4

    .line 52
    .line 53
    invoke-virtual {p2, v5, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-ne v6, v1, :cond_5

    .line 64
    .line 65
    invoke-virtual {p3, v5}, Landroid/util/IntArray;->add(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_3
    iget-object v6, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 70
    .line 71
    iget-object v6, v6, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter v6

    .line 74
    :try_start_2
    iget-object v7, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 75
    .line 76
    iget-object v7, v7, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    .line 77
    .line 78
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    check-cast v7, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    if-eqz v7, :cond_4

    .line 90
    .line 91
    :try_start_3
    invoke-static {v0, v5}, Landroid/os/Process;->checkTid(II)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catch_0
    move-exception v6

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    invoke-static {v5}, Landroid/os/Process;->checkPid(I)V

    .line 98
    .line 99
    .line 100
    :goto_2
    invoke-virtual {p2, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, v5}, Landroid/util/IntArray;->add(I)V
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :goto_3
    const-string v8, "HintManagerService"

    .line 108
    .line 109
    const-string v9, "Unexpected exception when checking TID "

    .line 110
    .line 111
    const-string v10, " under PID "

    .line 112
    .line 113
    const-string v11, "(isolated: "

    .line 114
    .line 115
    invoke-static {v5, v0, v9, v10, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    xor-int/lit8 v7, v7, 0x1

    .line 120
    .line 121
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v7, ")"

    .line 125
    .line 126
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-static {v8, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, v5}, Landroid/util/IntArray;->add(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :catch_1
    const/4 v6, 0x2

    .line 141
    invoke-virtual {p2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    .line 143
    .line 144
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    throw p0

    .line 150
    :cond_6
    array-length p0, v3

    .line 151
    invoke-virtual {p3}, Landroid/util/IntArray;->size()I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    sub-int/2addr p0, p2

    .line 156
    if-lez p0, :cond_b

    .line 157
    .line 158
    monitor-enter p1

    .line 159
    :try_start_5
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTidsInternal()[I

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    array-length v0, p2

    .line 164
    array-length v4, v3

    .line 165
    if-eq v0, v4, :cond_7

    .line 166
    .line 167
    const-string p2, "HintManagerService"

    .line 168
    .line 169
    const-string p3, "Skipped cleaning up the session as new tids are added"

    .line 170
    .line 171
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    monitor-exit p1

    .line 175
    return p0

    .line 176
    :catchall_1
    move-exception p0

    .line 177
    goto :goto_6

    .line 178
    :cond_7
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    .line 179
    .line 180
    .line 181
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 182
    .line 183
    .line 184
    invoke-static {p2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-nez p2, :cond_8

    .line 189
    .line 190
    const-string p2, "HintManagerService"

    .line 191
    .line 192
    const-string p3, "Skipped cleaning up the session as new tids are updated"

    .line 193
    .line 194
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    monitor-exit p1

    .line 198
    return p0

    .line 199
    :cond_8
    const-string p2, "HintManagerService"

    .line 200
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v4, "Cleaned up "

    .line 207
    .line 208
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v4, " invalid tids for session "

    .line 215
    .line 216
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget-wide v4, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 220
    .line 221
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v4, " with UID "

    .line 225
    .line 226
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget v4, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 230
    .line 231
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v4, "\n\tbefore: "

    .line 235
    .line 236
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v3, "\n\tafter: "

    .line 247
    .line 248
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    invoke-virtual {p3}, Landroid/util/IntArray;->toArray()[I

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    array-length p3, p2

    .line 266
    if-nez p3, :cond_9

    .line 267
    .line 268
    iput-boolean v1, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    .line 269
    .line 270
    iget-boolean p2, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    .line 271
    .line 272
    if-eqz p2, :cond_a

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->pause()V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_9
    invoke-virtual {p1, p2, v2}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->setThreadsInternal([IZ)V

    .line 279
    .line 280
    .line 281
    :cond_a
    :goto_5
    monitor-exit p1

    .line 282
    goto :goto_7

    .line 283
    :goto_6
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 284
    throw p0

    .line 285
    :cond_b
    :goto_7
    return p0

    .line 286
    :catchall_2
    move-exception p0

    .line 287
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 288
    throw p0

    .line 289
    :cond_c
    :goto_8
    return v2

    .line 290
    :catchall_3
    move-exception p0

    .line 291
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 292
    throw p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    if-ne v2, v3, :cond_8

    .line 9
    .line 10
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget v2, v1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget v2, v1, Landroid/os/Message;->what:I

    .line 26
    .line 27
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-wide/16 v3, 0x3e8

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 36
    .line 37
    .line 38
    const-string v0, "HintManagerService"

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "Duplicate messages for "

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    const-string v2, "HintManagerService"

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v4, "Starts cleaning for "

    .line 65
    .line 66
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 90
    .line 91
    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    .line 92
    .line 93
    invoke-virtual {v2, v11}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->isUidForeground(I)Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 98
    .line 99
    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    .line 100
    .line 101
    monitor-enter v2

    .line 102
    :try_start_0
    iget-object v3, v0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 103
    .line 104
    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 105
    .line 106
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Landroid/util/ArrayMap;

    .line 111
    .line 112
    if-eqz v1, :cond_7

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_1

    .line 119
    .line 120
    goto/16 :goto_6

    .line 121
    .line 122
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    const/4 v5, 0x1

    .line 136
    sub-int/2addr v4, v5

    .line 137
    :goto_0
    if-ltz v4, :cond_3

    .line 138
    .line 139
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    check-cast v6, Landroid/util/ArraySet;

    .line 144
    .line 145
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    sub-int/2addr v7, v5

    .line 150
    :goto_1
    if-ltz v7, :cond_2

    .line 151
    .line 152
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    check-cast v8, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 157
    .line 158
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    add-int/lit8 v7, v7, -0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    goto/16 :goto_7

    .line 166
    .line 167
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    new-array v2, v1, [J

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    new-array v6, v4, [I

    .line 182
    .line 183
    new-instance v7, Landroid/util/SparseIntArray;

    .line 184
    .line 185
    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 186
    .line 187
    .line 188
    new-array v8, v5, [I

    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    sub-int/2addr v9, v5

    .line 195
    :goto_2
    if-ltz v9, :cond_4

    .line 196
    .line 197
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    check-cast v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 202
    .line 203
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 204
    .line 205
    .line 206
    move-result-wide v13

    .line 207
    :try_start_1
    invoke-virtual {v0, v5, v7, v8}, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->cleanUpSession(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Landroid/util/SparseIntArray;[I)I

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 212
    .line 213
    .line 214
    move-result-wide v15

    .line 215
    sub-long/2addr v15, v13

    .line 216
    aput v10, v6, v9

    .line 217
    .line 218
    aput-wide v15, v2, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :catch_0
    const-string v10, "HintManagerService"

    .line 222
    .line 223
    new-instance v13, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v14, "Failed to clean up session "

    .line 226
    .line 227
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-wide v14, v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 231
    .line 232
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v14, " for UID "

    .line 236
    .line 237
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget v5, v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 241
    .line 242
    invoke-static {v13, v5, v10}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    :goto_3
    add-int/lit8 v9, v9, -0x1

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    const/4 v3, 0x0

    .line 253
    aget v13, v8, v3

    .line 254
    .line 255
    const/high16 v5, -0x80000000

    .line 256
    .line 257
    move v15, v3

    .line 258
    move v14, v5

    .line 259
    move v5, v15

    .line 260
    :goto_4
    if-ge v5, v4, :cond_5

    .line 261
    .line 262
    aget v7, v6, v5

    .line 263
    .line 264
    add-int/2addr v15, v7

    .line 265
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    .line 266
    .line 267
    .line 268
    move-result v14

    .line 269
    add-int/lit8 v5, v5, 0x1

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_5
    if-lez v15, :cond_8

    .line 273
    .line 274
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 275
    .line 276
    .line 277
    const-wide/16 v4, 0x0

    .line 278
    .line 279
    move v6, v3

    .line 280
    :goto_5
    if-ge v6, v1, :cond_6

    .line 281
    .line 282
    aget-wide v7, v2, v6

    .line 283
    .line 284
    add-long/2addr v4, v7

    .line 285
    add-int/lit8 v6, v6, 0x1

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_6
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 289
    .line 290
    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 291
    .line 292
    .line 293
    move-result-wide v7

    .line 294
    long-to-int v10, v7

    .line 295
    add-int/lit8 v7, v1, -0x1

    .line 296
    .line 297
    aget-wide v7, v2, v7

    .line 298
    .line 299
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 300
    .line 301
    .line 302
    move-result-wide v7

    .line 303
    long-to-int v9, v7

    .line 304
    aget-wide v7, v2, v3

    .line 305
    .line 306
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 307
    .line 308
    .line 309
    move-result-wide v7

    .line 310
    long-to-int v8, v7

    .line 311
    move/from16 v16, v8

    .line 312
    .line 313
    int-to-long v7, v1

    .line 314
    div-long/2addr v4, v7

    .line 315
    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 316
    .line 317
    .line 318
    move-result-wide v3

    .line 319
    long-to-int v8, v3

    .line 320
    int-to-double v3, v1

    .line 321
    const-wide v17, 0x3feccccccccccccdL    # 0.9

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    mul-double v3, v3, v17

    .line 327
    .line 328
    double-to-int v1, v3

    .line 329
    aget-wide v1, v2, v1

    .line 330
    .line 331
    invoke-virtual {v6, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 332
    .line 333
    .line 334
    move-result-wide v1

    .line 335
    long-to-int v1, v1

    .line 336
    const/16 v2, 0x347

    .line 337
    .line 338
    move v3, v11

    .line 339
    move v4, v10

    .line 340
    move v5, v9

    .line 341
    move v6, v13

    .line 342
    move v7, v15

    .line 343
    move/from16 v20, v8

    .line 344
    .line 345
    move/from16 v19, v16

    .line 346
    .line 347
    move v8, v14

    .line 348
    move/from16 v21, v9

    .line 349
    .line 350
    move v9, v0

    .line 351
    move/from16 v16, v1

    .line 352
    .line 353
    move v1, v10

    .line 354
    move v10, v12

    .line 355
    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIZ)V

    .line 356
    .line 357
    .line 358
    const-string v2, "Invalid tid found for UID"

    .line 359
    .line 360
    const-string v3, " in "

    .line 361
    .line 362
    const-string/jumbo v4, "us:\n\tcount( session: "

    .line 363
    .line 364
    .line 365
    invoke-static {v11, v1, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    const-string v2, " totalTid: "

    .line 370
    .line 371
    const-string v3, " maxInvalidTid: "

    .line 372
    .line 373
    invoke-static {v0, v13, v2, v3, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 374
    .line 375
    .line 376
    const-string v0, " totalInvalidTid: "

    .line 377
    .line 378
    const-string v2, ")\n\ttime per session( min: "

    .line 379
    .line 380
    invoke-static {v14, v15, v0, v2, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 381
    .line 382
    .line 383
    const-string/jumbo v0, "us max: "

    .line 384
    .line 385
    .line 386
    const-string/jumbo v2, "us avg: "

    .line 387
    .line 388
    .line 389
    move/from16 v4, v19

    .line 390
    .line 391
    move/from16 v3, v21

    .line 392
    .line 393
    invoke-static {v4, v3, v0, v2, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 394
    .line 395
    .line 396
    const-string/jumbo v0, "us 90%: "

    .line 397
    .line 398
    .line 399
    const-string/jumbo v2, "us)\n\tisForeground: "

    .line 400
    .line 401
    .line 402
    move/from16 v4, v16

    .line 403
    .line 404
    move/from16 v3, v20

    .line 405
    .line 406
    invoke-static {v3, v4, v0, v2, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    const-string v1, "HintManagerService"

    .line 417
    .line 418
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    goto :goto_8

    .line 422
    :cond_7
    :goto_6
    :try_start_2
    monitor-exit v2

    .line 423
    return-void

    .line 424
    :goto_7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    throw v0

    .line 426
    :cond_8
    :goto_8
    return-void
.end method
