.class public final Lcom/android/server/usage/UsageStatsService$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    const-string v0, "Attempted to unlock stopped or removed user "

    .line 2
    .line 3
    const-string/jumbo v1, "usageStatsHandleUserUnlocked("

    .line 4
    .line 5
    .line 6
    iget v2, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 20
    .line 21
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 22
    .line 23
    invoke-interface {p0, p1}, Lcom/android/server/usage/AppStandbyInternal;->postCheckIdleStates(I)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_7

    .line 27
    .line 28
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 31
    .line 32
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sub-int/2addr v1, v3

    .line 44
    :goto_0
    if-ltz v1, :cond_0

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/android/server/usage/UserBroadcastEvents;

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Lcom/android/server/usage/UserBroadcastEvents;->clear(I)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v1, v1, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 65
    .line 66
    .line 67
    monitor-exit v0

    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0

    .line 72
    :pswitch_3
    const/16 p1, 0x9

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    .line 76
    .line 77
    new-instance p1, Landroid/util/ArraySet;

    .line 78
    .line 79
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 85
    .line 86
    monitor-enter v0

    .line 87
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 96
    sub-int/2addr v1, v3

    .line 97
    :goto_2
    if-ltz v1, :cond_4

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 105
    .line 106
    monitor-enter v0

    .line 107
    :try_start_2
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 108
    .line 109
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 116
    .line 117
    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 118
    .line 119
    invoke-virtual {v4, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 124
    .line 125
    .line 126
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 127
    .line 128
    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 129
    .line 130
    invoke-virtual {v4, v2}, Landroid/util/SparseSetArray;->remove(I)V

    .line 131
    .line 132
    .line 133
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    sub-int/2addr v0, v3

    .line 139
    :goto_3
    if-ltz v0, :cond_2

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Ljava/lang/String;

    .line 146
    .line 147
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 148
    .line 149
    invoke-virtual {v5, v2, v4}, Lcom/android/server/usage/UsageStatsService;->getEstimatedPackageLaunchTime(ILjava/lang/String;)J

    .line 150
    .line 151
    .line 152
    move-result-wide v5

    .line 153
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 154
    .line 155
    iget-object v7, v7, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 156
    .line 157
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-eqz v8, :cond_1

    .line 166
    .line 167
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    check-cast v8, Lcom/android/server/job/controllers/PrefetchController$1;

    .line 172
    .line 173
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    iput-object v4, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 181
    .line 182
    iput v2, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 183
    .line 184
    iput-wide v5, v9, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 185
    .line 186
    iget-object v8, v8, Lcom/android/server/job/controllers/PrefetchController$1;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 187
    .line 188
    iget-object v8, v8, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    .line 189
    .line 190
    invoke-virtual {v8, v3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :catchall_1
    move-exception p0

    .line 205
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    throw p0

    .line 207
    :catchall_2
    move-exception p0

    .line 208
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 209
    throw p0

    .line 210
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 211
    .line 212
    iget-object v0, p1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 213
    .line 214
    monitor-enter v0

    .line 215
    :try_start_5
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 216
    .line 217
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mloadGlobalComponentUsageLocked(Lcom/android/server/usage/UsageStatsService;)V

    .line 218
    .line 219
    .line 220
    monitor-exit v0

    .line 221
    goto/16 :goto_7

    .line 222
    .line 223
    :catchall_3
    move-exception p0

    .line 224
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 225
    throw p0

    .line 226
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 227
    .line 228
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 229
    .line 230
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast p1, Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {p0, v0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$monPackageRemoved(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_7

    .line 238
    :pswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 239
    .line 240
    const-wide/32 v3, 0x80000

    .line 241
    .line 242
    .line 243
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v1, ")"

    .line 252
    .line 253
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 264
    .line 265
    invoke-static {v1, v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$monUserUnlocked(Lcom/android/server/usage/UsageStatsService;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 266
    .line 267
    .line 268
    :goto_5
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 269
    .line 270
    .line 271
    goto :goto_7

    .line 272
    :catchall_4
    move-exception p0

    .line 273
    goto :goto_6

    .line 274
    :catch_0
    move-exception v1

    .line 275
    :try_start_7
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 276
    .line 277
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    .line 278
    .line 279
    invoke-virtual {p0, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    if-nez p0, :cond_3

    .line 284
    .line 285
    const-string p0, "UsageStatsService"

    .line 286
    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 293
    .line 294
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_3
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 306
    :goto_6
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 307
    .line 308
    .line 309
    throw p0

    .line 310
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 311
    .line 312
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    .line 315
    .line 316
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 317
    .line 318
    .line 319
    goto :goto_7

    .line 320
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 321
    .line 322
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 323
    .line 324
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->onUserRemoved(I)V

    .line 325
    .line 326
    .line 327
    goto :goto_7

    .line 328
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 329
    .line 330
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDisk()V

    .line 331
    .line 332
    .line 333
    goto :goto_7

    .line 334
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 335
    .line 336
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    .line 339
    .line 340
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 341
    .line 342
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UsageStatsService;->reportEvent(ILandroid/app/usage/UsageEvents$Event;)V

    .line 343
    .line 344
    .line 345
    :cond_4
    :goto_7
    return-void

    .line 346
    nop

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
