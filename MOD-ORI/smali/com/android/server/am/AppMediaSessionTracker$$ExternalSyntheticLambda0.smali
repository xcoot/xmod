.class public final synthetic Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppMediaSessionTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppMediaSessionTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppMediaSessionTracker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v7, v0, Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppMediaSessionTracker;

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const/4 v9, 0x1

    .line 7
    if-eqz p1, :cond_6

    .line 8
    .line 9
    iget-object v10, v7, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v10

    .line 12
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v11

    .line 16
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v13

    .line 20
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/media/session/MediaController;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/media/session/MediaSession$Token;->getUid()I

    .line 41
    .line 42
    .line 43
    move-result v15

    .line 44
    iget-object v0, v7, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 45
    .line 46
    invoke-virtual {v0, v15, v14}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    .line 51
    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    new-instance v0, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    .line 55
    .line 56
    iget-object v1, v7, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 59
    .line 60
    check-cast v1, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    .line 61
    .line 62
    invoke-direct {v0, v15, v14, v1}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v7, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 66
    .line 67
    invoke-virtual {v1, v14, v15, v0}, Lcom/android/server/am/UidProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_0
    :goto_1
    invoke-virtual {v0, v8}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_1

    .line 79
    .line 80
    new-instance v1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 81
    .line 82
    invoke-direct {v1, v11, v12}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v9, v1, v8}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    .line 86
    .line 87
    .line 88
    iget v1, v0, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    .line 89
    .line 90
    iget-object v5, v0, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    .line 91
    .line 92
    const/4 v6, 0x1

    .line 93
    const/4 v2, 0x1

    .line 94
    move-object v0, v7

    .line 95
    move-wide v3, v11

    .line 96
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object v0, v7, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    .line 100
    .line 101
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {v0, v14, v15, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, v7, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 108
    .line 109
    iget-object v13, v0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 110
    .line 111
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    sub-int/2addr v0, v9

    .line 116
    move v14, v0

    .line 117
    :goto_2
    if-ltz v14, :cond_5

    .line 118
    .line 119
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move-object v15, v0

    .line 124
    check-cast v15, Landroid/util/ArrayMap;

    .line 125
    .line 126
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    sub-int/2addr v0, v9

    .line 131
    move v6, v0

    .line 132
    :goto_3
    if-ltz v6, :cond_4

    .line 133
    .line 134
    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    .line 139
    .line 140
    invoke-virtual {v0, v8}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_3

    .line 145
    .line 146
    iget-object v1, v7, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    .line 147
    .line 148
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    .line 149
    .line 150
    iget v3, v0, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    .line 151
    .line 152
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    if-nez v1, :cond_3

    .line 157
    .line 158
    new-instance v1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 159
    .line 160
    invoke-direct {v1, v11, v12}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v8, v1, v8}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    .line 164
    .line 165
    .line 166
    iget v1, v0, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    .line 167
    .line 168
    iget-object v5, v0, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    .line 169
    .line 170
    const/16 v16, 0x0

    .line 171
    .line 172
    const/4 v2, 0x1

    .line 173
    move-object v0, v7

    .line 174
    move-wide v3, v11

    .line 175
    move/from16 v17, v6

    .line 176
    .line 177
    move/from16 v6, v16

    .line 178
    .line 179
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_3
    move/from16 v17, v6

    .line 184
    .line 185
    :goto_4
    add-int/lit8 v6, v17, -0x1

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_4
    add-int/lit8 v14, v14, -0x1

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_5
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v0, v7, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 195
    .line 196
    .line 197
    goto :goto_9

    .line 198
    :goto_5
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    throw v0

    .line 200
    :cond_6
    iget-object v10, v7, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 201
    .line 202
    monitor-enter v10

    .line 203
    :try_start_2
    iget-object v0, v7, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 204
    .line 205
    iget-object v11, v0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 206
    .line 207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 208
    .line 209
    .line 210
    move-result-wide v12

    .line 211
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    sub-int/2addr v0, v9

    .line 216
    move v14, v0

    .line 217
    :goto_6
    if-ltz v14, :cond_9

    .line 218
    .line 219
    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    move-object v15, v0

    .line 224
    check-cast v15, Landroid/util/ArrayMap;

    .line 225
    .line 226
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    sub-int/2addr v0, v9

    .line 231
    move v6, v0

    .line 232
    :goto_7
    if-ltz v6, :cond_8

    .line 233
    .line 234
    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    check-cast v0, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    .line 239
    .line 240
    invoke-virtual {v0, v8}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_7

    .line 245
    .line 246
    new-instance v1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 247
    .line 248
    invoke-direct {v1, v12, v13}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v8, v1, v8}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    .line 252
    .line 253
    .line 254
    iget v1, v0, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    .line 255
    .line 256
    iget-object v5, v0, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    .line 257
    .line 258
    const/16 v16, 0x0

    .line 259
    .line 260
    const/4 v2, 0x1

    .line 261
    move-object v0, v7

    .line 262
    move-wide v3, v12

    .line 263
    move/from16 v17, v6

    .line 264
    .line 265
    move/from16 v6, v16

    .line 266
    .line 267
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    .line 268
    .line 269
    .line 270
    goto :goto_8

    .line 271
    :catchall_1
    move-exception v0

    .line 272
    goto :goto_a

    .line 273
    :cond_7
    move/from16 v17, v6

    .line 274
    .line 275
    :goto_8
    add-int/lit8 v6, v17, -0x1

    .line 276
    .line 277
    goto :goto_7

    .line 278
    :cond_8
    add-int/lit8 v14, v14, -0x1

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_9
    monitor-exit v10

    .line 282
    :goto_9
    return-void

    .line 283
    :goto_a
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 284
    throw v0
.end method
