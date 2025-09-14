.class public final Lcom/android/server/notification/EventConditionProvider$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/EventConditionProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/EventConditionProvider$4;->this$0:Lcom/android/server/notification/EventConditionProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider$4;->this$0:Lcom/android/server/notification/EventConditionProvider;

    .line 4
    .line 5
    sget-boolean v1, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v2, "ConditionProviders.ECP"

    .line 13
    .line 14
    const-string v3, "evaluateSubscriptions"

    .line 15
    .line 16
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    if-eqz v1, :cond_f

    .line 24
    .line 25
    const-string v0, "ConditionProviders.ECP"

    .line 26
    .line 27
    const-string v1, "Skipping evaluate before boot complete"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto/16 :goto_9

    .line 33
    .line 34
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v4, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 44
    .line 45
    monitor-enter v4

    .line 46
    const/4 v5, 0x0

    .line 47
    move v6, v5

    .line 48
    :goto_0
    :try_start_0
    iget-object v7, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-ge v6, v7, :cond_3

    .line 55
    .line 56
    iget-object v7, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    check-cast v7, Lcom/android/server/notification/CalendarTracker;

    .line 63
    .line 64
    iget-object v9, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 65
    .line 66
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-eqz v9, :cond_2

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget-object v8, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackerCallback:Lcom/android/server/notification/EventConditionProvider$2;

    .line 75
    .line 76
    :goto_1
    invoke-virtual {v7, v8}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/EventConditionProvider$2;)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v6, v6, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto/16 :goto_a

    .line 84
    .line 85
    :cond_3
    iget-object v6, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 86
    .line 87
    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    const/4 v7, 0x1

    .line 92
    xor-int/2addr v6, v7

    .line 93
    invoke-virtual {v0, v6}, Lcom/android/server/notification/EventConditionProvider;->setRegistered(Z)V

    .line 94
    .line 95
    .line 96
    iget-object v6, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 97
    .line 98
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    const-wide/16 v11, 0x0

    .line 103
    .line 104
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    if-eqz v13, :cond_c

    .line 109
    .line 110
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    check-cast v13, Landroid/net/Uri;

    .line 115
    .line 116
    invoke-static {v13}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    if-nez v14, :cond_4

    .line 121
    .line 122
    invoke-static {v5, v13}, Lcom/android/server/notification/EventConditionProvider;->createCondition(ILandroid/net/Uri;)Landroid/service/notification/Condition;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-object/from16 v16, v6

    .line 130
    .line 131
    goto/16 :goto_5

    .line 132
    .line 133
    :cond_4
    iget-object v15, v14, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 134
    .line 135
    if-nez v15, :cond_7

    .line 136
    .line 137
    move v15, v5

    .line 138
    const/4 v8, 0x0

    .line 139
    :goto_3
    iget-object v7, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 140
    .line 141
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-ge v15, v7, :cond_6

    .line 146
    .line 147
    iget-object v7, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 148
    .line 149
    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Lcom/android/server/notification/CalendarTracker;

    .line 154
    .line 155
    invoke-virtual {v7, v14, v1, v2}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    if-nez v8, :cond_5

    .line 160
    .line 161
    move-object/from16 v16, v6

    .line 162
    .line 163
    move-object v8, v7

    .line 164
    goto :goto_4

    .line 165
    :cond_5
    iget-boolean v9, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .line 166
    .line 167
    iget-boolean v10, v7, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .line 168
    .line 169
    or-int/2addr v9, v10

    .line 170
    iput-boolean v9, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .line 171
    .line 172
    iget-wide v9, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 173
    .line 174
    move-object/from16 v16, v6

    .line 175
    .line 176
    iget-wide v5, v7, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 177
    .line 178
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 179
    .line 180
    .line 181
    move-result-wide v5

    .line 182
    iput-wide v5, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 183
    .line 184
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 185
    .line 186
    move-object/from16 v6, v16

    .line 187
    .line 188
    const/4 v5, 0x0

    .line 189
    goto :goto_3

    .line 190
    :cond_6
    move-object/from16 v16, v6

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_7
    move-object/from16 v16, v6

    .line 194
    .line 195
    iget v5, v14, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 196
    .line 197
    invoke-static {v5}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    iget-object v6, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 202
    .line 203
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    check-cast v6, Lcom/android/server/notification/CalendarTracker;

    .line 208
    .line 209
    if-nez v6, :cond_8

    .line 210
    .line 211
    const-string v6, "ConditionProviders.ECP"

    .line 212
    .line 213
    new-instance v7, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v8, "No calendar tracker found for user "

    .line 219
    .line 220
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    const/4 v5, 0x0

    .line 234
    invoke-static {v5, v13}, Lcom/android/server/notification/EventConditionProvider;->createCondition(ILandroid/net/Uri;)Landroid/service/notification/Condition;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    :goto_5
    move-object/from16 v6, v16

    .line 242
    .line 243
    const/4 v5, 0x0

    .line 244
    const/4 v7, 0x1

    .line 245
    goto/16 :goto_2

    .line 246
    .line 247
    :cond_8
    invoke-virtual {v6, v14, v1, v2}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    :goto_6
    iget-wide v5, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 252
    .line 253
    const-wide/16 v9, 0x0

    .line 254
    .line 255
    cmp-long v7, v5, v9

    .line 256
    .line 257
    if-eqz v7, :cond_a

    .line 258
    .line 259
    cmp-long v7, v11, v9

    .line 260
    .line 261
    if-eqz v7, :cond_9

    .line 262
    .line 263
    cmp-long v7, v5, v11

    .line 264
    .line 265
    if-gez v7, :cond_a

    .line 266
    .line 267
    :cond_9
    move-wide v11, v5

    .line 268
    :cond_a
    iget-boolean v5, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .line 269
    .line 270
    if-nez v5, :cond_b

    .line 271
    .line 272
    const/4 v5, 0x0

    .line 273
    invoke-static {v5, v13}, Lcom/android/server/notification/EventConditionProvider;->createCondition(ILandroid/net/Uri;)Landroid/service/notification/Condition;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    const/4 v6, 0x1

    .line 281
    goto :goto_7

    .line 282
    :cond_b
    const/4 v5, 0x0

    .line 283
    const/4 v6, 0x1

    .line 284
    invoke-static {v6, v13}, Lcom/android/server/notification/EventConditionProvider;->createCondition(ILandroid/net/Uri;)Landroid/service/notification/Condition;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    :goto_7
    move v7, v6

    .line 292
    move-object/from16 v6, v16

    .line 293
    .line 294
    goto/16 :goto_2

    .line 295
    .line 296
    :cond_c
    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/android/server/notification/EventConditionProvider;->rescheduleAlarm(JJ)V

    .line 297
    .line 298
    .line 299
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    :cond_d
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-eqz v4, :cond_e

    .line 309
    .line 310
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    check-cast v4, Landroid/service/notification/Condition;

    .line 315
    .line 316
    if-eqz v4, :cond_d

    .line 317
    .line 318
    invoke-virtual {v0, v4}, Landroid/service/notification/ConditionProviderService;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 319
    .line 320
    .line 321
    goto :goto_8

    .line 322
    :cond_e
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 323
    .line 324
    if-eqz v0, :cond_f

    .line 325
    .line 326
    const-string v0, "ConditionProviders.ECP"

    .line 327
    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string v4, "evaluateSubscriptions took "

    .line 331
    .line 332
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 336
    .line 337
    .line 338
    move-result-wide v4

    .line 339
    sub-long/2addr v4, v1

    .line 340
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    :cond_f
    :goto_9
    return-void

    .line 351
    :goto_a
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    throw v0
.end method
