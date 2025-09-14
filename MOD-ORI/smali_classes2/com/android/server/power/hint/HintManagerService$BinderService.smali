.class final Lcom/android/server/power/hint/HintManagerService$BinderService;
.super Landroid/os/IHintManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IHintManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final closeSessionChannel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->adpfUseFmqChannel()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/hint/HintManagerService;->removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final createHintSessionWithConfig(Landroid/os/IBinder;[IJILandroid/hardware/power/SessionConfig;)Landroid/os/IHintSession;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v10, p6

    .line 8
    .line 9
    const-string v12, "createHintSession unsupported: "

    .line 10
    .line 11
    const-string v13, "createHintSession failed: "

    .line 12
    .line 13
    const-string v14, "createHintSessionWithConfig failed: "

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 16
    .line 17
    iget-wide v1, v1, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    .line 18
    .line 19
    const-wide/16 v3, -0x1

    .line 20
    .line 21
    cmp-long v1, v1, v3

    .line 22
    .line 23
    if-eqz v1, :cond_b

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    array-length v1, v9

    .line 32
    const/4 v15, 0x0

    .line 33
    const/4 v8, 0x1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    move v1, v8

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v1, v15

    .line 39
    :goto_0
    const-string/jumbo v2, "tids should not be empty."

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Landroid/os/Process;->getThreadGroupLeader(I)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 58
    .line 59
    .line 60
    move-result-wide v24

    .line 61
    :try_start_0
    invoke-static {}, Lcom/android/server/power/hint/Flags;->powerhintThreadCleanup()Z

    .line 62
    .line 63
    .line 64
    new-instance v6, Landroid/util/IntArray;

    .line 65
    .line 66
    array-length v1, v9

    .line 67
    invoke-direct {v6, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 71
    .line 72
    invoke-static {v1, v7, v5, v9, v6}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/util/IntArray;)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-nez v1, :cond_a

    .line 77
    .line 78
    invoke-static {}, Lcom/android/server/power/hint/Flags;->adpfSessionTag()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x4

    .line 82
    move/from16 v2, p5

    .line 83
    .line 84
    if-ne v2, v1, :cond_3

    .line 85
    .line 86
    const/4 v2, -0x1

    .line 87
    :try_start_1
    iget-object v3, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 88
    .line 89
    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 90
    .line 91
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-object v4, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 96
    .line 97
    iget-object v4, v4, Lcom/android/server/power/hint/HintManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 98
    .line 99
    const/high16 v1, 0x20000

    .line 100
    .line 101
    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move v1, v2

    .line 109
    :goto_1
    if-eq v1, v2, :cond_1

    .line 110
    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    :cond_1
    const/16 v23, 0x4

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    const/4 v1, 0x3

    .line 117
    move/from16 v23, v1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move/from16 v23, v2

    .line 121
    .line 122
    :goto_2
    :try_start_2
    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 123
    .line 124
    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 127
    .line 128
    .line 129
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    :try_start_3
    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    .line 136
    move v2, v5

    .line 137
    move v3, v7

    .line 138
    move-object/from16 v4, p2

    .line 139
    .line 140
    move/from16 v26, v5

    .line 141
    .line 142
    move-object/from16 p5, v6

    .line 143
    .line 144
    move-wide/from16 v5, p3

    .line 145
    .line 146
    move/from16 v27, v7

    .line 147
    .line 148
    move/from16 v7, v23

    .line 149
    .line 150
    move-object/from16 v8, p6

    .line 151
    .line 152
    :try_start_4
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCreateHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)J

    .line 153
    .line 154
    .line 155
    move-result-wide v1

    .line 156
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 157
    .line 158
    .line 159
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    goto :goto_6

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    goto/16 :goto_10

    .line 163
    .line 164
    :catch_1
    move-exception v0

    .line 165
    goto :goto_3

    .line 166
    :catch_2
    move/from16 v26, v5

    .line 167
    .line 168
    move-object/from16 p5, v6

    .line 169
    .line 170
    move/from16 v27, v7

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :goto_3
    :try_start_5
    const-string v1, "createHintSessionWithConfig failed: "

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 183
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v1

    .line 204
    :catch_3
    :goto_4
    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 205
    .line 206
    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 207
    .line 208
    invoke-virtual {v1, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_4
    move/from16 v26, v5

    .line 213
    .line 214
    move-object/from16 p5, v6

    .line 215
    .line 216
    move/from16 v27, v7

    .line 217
    .line 218
    :goto_5
    const/4 v1, 0x0

    .line 219
    :goto_6
    if-nez v1, :cond_5

    .line 220
    .line 221
    :try_start_6
    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 222
    .line 223
    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 224
    .line 225
    move/from16 v2, v26

    .line 226
    .line 227
    move/from16 v3, v27

    .line 228
    .line 229
    move-object/from16 v4, p2

    .line 230
    .line 231
    move-wide/from16 v5, p3

    .line 232
    .line 233
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCreateHintSession(II[IJ)J

    .line 234
    .line 235
    .line 236
    move-result-wide v1

    .line 237
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 238
    .line 239
    .line 240
    move-result-object v1
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 241
    goto :goto_9

    .line 242
    :catch_4
    move-exception v0

    .line 243
    goto :goto_7

    .line 244
    :catch_5
    move-exception v0

    .line 245
    goto :goto_8

    .line 246
    :goto_7
    :try_start_7
    const-string v1, "createHintSession failed: "

    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 256
    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v1

    .line 277
    :goto_8
    const-string v1, "createHintSession unsupported: "

    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 287
    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v1

    .line 308
    :cond_5
    :goto_9
    invoke-static {}, Lcom/android/server/power/hint/Flags;->powerhintThreadCleanup()Z

    .line 309
    .line 310
    .line 311
    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 312
    .line 313
    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    .line 314
    .line 315
    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 316
    :try_start_8
    invoke-virtual/range {p5 .. p5}, Landroid/util/IntArray;->size()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    const/4 v12, 0x1

    .line 321
    sub-int/2addr v3, v12

    .line 322
    :goto_a
    if-ltz v3, :cond_6

    .line 323
    .line 324
    iget-object v4, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 325
    .line 326
    iget-object v4, v4, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    .line 327
    .line 328
    move-object/from16 v5, p5

    .line 329
    .line 330
    invoke-virtual {v5, v3}, Landroid/util/IntArray;->get(I)I

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    new-instance v7, Landroid/util/ArraySet;

    .line 339
    .line 340
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 341
    .line 342
    .line 343
    check-cast v4, Ljava/util/HashMap;

    .line 344
    .line 345
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    iget-object v4, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 349
    .line 350
    iget-object v4, v4, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    .line 351
    .line 352
    invoke-virtual {v5, v3}, Landroid/util/IntArray;->get(I)I

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    check-cast v4, Ljava/util/HashMap;

    .line 361
    .line 362
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    check-cast v4, Ljava/util/Set;

    .line 367
    .line 368
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    add-int/lit8 v3, v3, -0x1

    .line 372
    .line 373
    move-object/from16 p5, v5

    .line 374
    .line 375
    goto :goto_a

    .line 376
    :catchall_1
    move-exception v0

    .line 377
    goto/16 :goto_f

    .line 378
    .line 379
    :cond_6
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 380
    if-eqz v10, :cond_7

    .line 381
    .line 382
    :try_start_9
    iget-wide v2, v10, Landroid/hardware/power/SessionConfig;->id:J

    .line 383
    .line 384
    :goto_b
    move-wide/from16 v18, v2

    .line 385
    .line 386
    goto :goto_c

    .line 387
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 388
    .line 389
    .line 390
    move-result-wide v2

    .line 391
    goto :goto_b

    .line 392
    :goto_c
    array-length v2, v9

    .line 393
    const/16 v16, 0x23e

    .line 394
    .line 395
    move/from16 v17, v27

    .line 396
    .line 397
    move-wide/from16 v20, p3

    .line 398
    .line 399
    move/from16 v22, v2

    .line 400
    .line 401
    invoke-static/range {v16 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJII)V

    .line 402
    .line 403
    .line 404
    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 405
    .line 406
    iget-object v13, v2, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    .line 407
    .line 408
    monitor-enter v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 409
    :try_start_a
    new-instance v14, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 410
    .line 411
    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 412
    .line 413
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 414
    .line 415
    .line 416
    move-result-wide v7

    .line 417
    move-object v1, v14

    .line 418
    move/from16 v3, v27

    .line 419
    .line 420
    move/from16 v4, v26

    .line 421
    .line 422
    move-object/from16 v5, p2

    .line 423
    .line 424
    move-object/from16 v6, p1

    .line 425
    .line 426
    move-wide/from16 v9, p3

    .line 427
    .line 428
    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;-><init>(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/os/IBinder;JJ)V

    .line 429
    .line 430
    .line 431
    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 432
    .line 433
    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 434
    .line 435
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    check-cast v1, Landroid/util/ArrayMap;

    .line 444
    .line 445
    if-nez v1, :cond_8

    .line 446
    .line 447
    new-instance v1, Landroid/util/ArrayMap;

    .line 448
    .line 449
    invoke-direct {v1, v12}, Landroid/util/ArrayMap;-><init>(I)V

    .line 450
    .line 451
    .line 452
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 453
    .line 454
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 455
    .line 456
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    goto :goto_d

    .line 464
    :catchall_2
    move-exception v0

    .line 465
    goto :goto_e

    .line 466
    :cond_8
    :goto_d
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    check-cast v0, Landroid/util/ArraySet;

    .line 471
    .line 472
    if-nez v0, :cond_9

    .line 473
    .line 474
    new-instance v0, Landroid/util/ArraySet;

    .line 475
    .line 476
    invoke-direct {v0, v12}, Landroid/util/ArraySet;-><init>(I)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v11, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    :cond_9
    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 486
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    .line 488
    .line 489
    return-object v14

    .line 490
    :goto_e
    :try_start_b
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 491
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 492
    :goto_f
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 493
    :try_start_e
    throw v0

    .line 494
    :cond_a
    move/from16 v27, v7

    .line 495
    .line 496
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 497
    .line 498
    move/from16 v2, v27

    .line 499
    .line 500
    invoke-static {v0, v2, v9, v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mformatTidCheckErrMsg(Lcom/android/server/power/hint/HintManagerService;I[ILjava/lang/Integer;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    const-string v1, "HintManagerService"

    .line 505
    .line 506
    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    new-instance v1, Ljava/lang/SecurityException;

    .line 510
    .line 511
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 515
    :goto_10
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    .line 517
    .line 518
    throw v0

    .line 519
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 520
    .line 521
    const-string v1, "PowerHAL is not supported!"

    .line 522
    .line 523
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    throw v0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p3, "HintManagerService"

    .line 8
    .line 9
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p3, "HintSessionPreferredRate: "

    .line 19
    .line 20
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 24
    .line 25
    iget-wide v0, p3, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    .line 26
    .line 27
    const-string p3, "HAL Support: "

    .line 28
    .line 29
    invoke-static {p1, v0, v1, p2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 34
    .line 35
    iget-wide v0, p3, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    .line 36
    .line 37
    const-wide/16 v2, -0x1

    .line 38
    .line 39
    cmp-long p3, v0, v2

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    const/4 p3, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move p3, v0

    .line 47
    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "Active Sessions:"

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter p1

    .line 67
    move p3, v0

    .line 68
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-ge p3, v1, :cond_4

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v2, "Uid "

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 89
    .line 90
    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 91
    .line 92
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, ":"

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 118
    .line 119
    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 120
    .line 121
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Landroid/util/ArrayMap;

    .line 126
    .line 127
    move v2, v0

    .line 128
    :goto_2
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-ge v2, v3, :cond_3

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Landroid/util/ArraySet;

    .line 139
    .line 140
    move v4, v0

    .line 141
    :goto_3
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-ge v4, v5, :cond_2

    .line 146
    .line 147
    const-string v5, "  Session:"

    .line 148
    .line 149
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 157
    .line 158
    invoke-static {v5, p2}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->-$$Nest$mdump(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Ljava/io/PrintWriter;)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v4, v4, 0x1

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :catchall_0
    move-exception p0

    .line 165
    goto :goto_4

    .line 166
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    monitor-exit p1

    .line 173
    return-void

    .line 174
    :goto_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    throw p0
.end method

.method public final getHintSessionPreferredRate()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public final getHintSessionThreadIds(Landroid/os/IHintSession;)[I
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    .line 5
    .line 6
    array-length v0, p0

    .line 7
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    monitor-exit p1

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final getSessionChannel(Landroid/os/IBinder;)Landroid/hardware/power/ChannelConfig;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    if-lt v0, v1, :cond_3

    .line 7
    .line 8
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->adpfUseFmqChannel()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v2

    .line 35
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    new-instance v5, Ljava/util/TreeMap;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/util/TreeMap;

    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-nez v4, :cond_2

    .line 85
    .line 86
    new-instance v4, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    .line 87
    .line 88
    invoke-direct {v4, p0, v0, v1, p1}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;-><init>(Lcom/android/server/power/hint/HintManagerService;IILandroid/os/IBinder;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->openChannel()V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {v3, p0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v3, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    check-cast p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    .line 110
    .line 111
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    .line 113
    .line 114
    return-object p0

    .line 115
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    throw p0

    .line 117
    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 118
    return-object p0
.end method

.method public final setHintSessionThreads(Landroid/os/IHintSession;[I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    invoke-virtual {p1, p2, p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->setThreadsInternal([IZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
