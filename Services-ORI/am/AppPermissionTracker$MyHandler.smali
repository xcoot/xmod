.class public final Lcom/android/server/am/AppPermissionTracker$MyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mTracker:Lcom/android/server/am/AppPermissionTracker;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    .line 18
    .line 19
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 20
    .line 21
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 22
    .line 23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 30
    .line 31
    check-cast p1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    .line 34
    .line 35
    if-eqz p1, :cond_b

    .line 36
    .line 37
    array-length v3, p1

    .line 38
    if-lez v3, :cond_b

    .line 39
    .line 40
    :goto_0
    array-length v3, p1

    .line 41
    if-ge v2, v3, :cond_b

    .line 42
    .line 43
    aget-object v3, p1, v2

    .line 44
    .line 45
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eq v4, v0, :cond_1

    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance p1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    .line 59
    .line 60
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {p1, p0, v1, v2, v0}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter v0

    .line 70
    :try_start_0
    filled-new-array {p1}, [Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V

    .line 75
    .line 76
    .line 77
    monitor-exit v0

    .line 78
    goto/16 :goto_7

    .line 79
    .line 80
    :catchall_0
    move-exception p0

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0

    .line 83
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    .line 84
    .line 85
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 90
    .line 91
    check-cast v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    .line 94
    .line 95
    if-eqz v0, :cond_b

    .line 96
    .line 97
    array-length v1, v0

    .line 98
    if-lez v1, :cond_b

    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    array-length v1, v0

    .line 106
    new-array v1, v1, [Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    .line 107
    .line 108
    :goto_1
    array-length v3, v0

    .line 109
    if-ge v2, v3, :cond_3

    .line 110
    .line 111
    aget-object v3, v0, v2

    .line 112
    .line 113
    new-instance v4, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    .line 114
    .line 115
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v5, Ljava/lang/String;

    .line 118
    .line 119
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v3, Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-direct {v4, p0, p1, v5, v3}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    aput-object v4, v1, v2

    .line 131
    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 136
    .line 137
    monitor-enter v0

    .line 138
    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V

    .line 139
    .line 140
    .line 141
    monitor-exit v0

    .line 142
    goto/16 :goto_7

    .line 143
    .line 144
    :catchall_1
    move-exception p0

    .line 145
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    throw p0

    .line 147
    :cond_4
    iget-object p1, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    .line 148
    .line 149
    iget-object v0, p1, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 150
    .line 151
    monitor-enter v0

    .line 152
    :try_start_2
    iget-object v8, p1, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 153
    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 155
    .line 156
    .line 157
    move-result-wide v9

    .line 158
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    move v12, v2

    .line 163
    :goto_2
    if-ge v12, v11, :cond_6

    .line 164
    .line 165
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    check-cast v1, Landroid/util/ArraySet;

    .line 174
    .line 175
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-lez v1, :cond_5

    .line 180
    .line 181
    const-string v6, ""

    .line 182
    .line 183
    const/4 v7, 0x0

    .line 184
    const/16 v3, 0x10

    .line 185
    .line 186
    move-object v1, p1

    .line 187
    move-wide v4, v9

    .line 188
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :catchall_2
    move-exception p0

    .line 193
    goto :goto_4

    .line 194
    :cond_5
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_6
    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 198
    .line 199
    .line 200
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 201
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker;->stopWatchingMode()V

    .line 204
    .line 205
    .line 206
    goto :goto_7

    .line 207
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 208
    throw p0

    .line 209
    :cond_7
    iget-object p1, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .line 218
    .line 219
    iget-object v3, p1, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 220
    .line 221
    iget-object v3, v3, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 222
    .line 223
    check-cast v3, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    .line 224
    .line 225
    iget-object v3, v3, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    .line 226
    .line 227
    move v4, v2

    .line 228
    :goto_5
    array-length v5, v3

    .line 229
    if-ge v4, v5, :cond_9

    .line 230
    .line 231
    aget-object v5, v3, v4

    .line 232
    .line 233
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v6, Ljava/lang/Integer;

    .line 236
    .line 237
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    const/4 v7, -0x1

    .line 242
    if-eq v6, v7, :cond_8

    .line 243
    .line 244
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v5, Ljava/lang/Integer;

    .line 247
    .line 248
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    new-array v3, v3, [Ljava/lang/Integer;

    .line 259
    .line 260
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, [Ljava/lang/Integer;

    .line 265
    .line 266
    iget-object v3, p1, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    .line 267
    .line 268
    monitor-enter v3

    .line 269
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/am/AppPermissionTracker;->stopWatchingMode()V

    .line 270
    .line 271
    .line 272
    iget-object v4, p1, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 273
    .line 274
    iget-object v4, v4, Lcom/android/server/am/BaseAppStateTracker$Injector;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 275
    .line 276
    :try_start_5
    array-length v5, v0

    .line 277
    :goto_6
    if-ge v2, v5, :cond_a

    .line 278
    .line 279
    aget-object v6, v0, v2

    .line 280
    .line 281
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    new-instance v7, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;

    .line 286
    .line 287
    invoke-direct {v7, p1}, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;-><init>(Lcom/android/server/am/AppPermissionTracker;)V

    .line 288
    .line 289
    .line 290
    iget-object v8, p1, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    .line 291
    .line 292
    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    const/4 v8, 0x0

    .line 296
    invoke-interface {v4, v6, v8, v1, v7}, Lcom/android/internal/app/IAppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 297
    .line 298
    .line 299
    add-int/lit8 v2, v2, 0x1

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :catchall_3
    move-exception p0

    .line 303
    goto :goto_8

    .line 304
    :catch_0
    :cond_a
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 305
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    .line 306
    .line 307
    invoke-static {p0}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$mhandlePermissionsInit(Lcom/android/server/am/AppPermissionTracker;)V

    .line 308
    .line 309
    .line 310
    :cond_b
    :goto_7
    return-void

    .line 311
    :goto_8
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 312
    throw p0
.end method
