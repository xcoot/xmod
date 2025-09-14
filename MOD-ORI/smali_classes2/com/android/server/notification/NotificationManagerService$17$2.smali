.class public final Lcom/android/server/notification/NotificationManagerService$17$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$17;

.field public final synthetic val$conditions:[Landroid/service/notification/Condition;

.field public final synthetic val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService$17;Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$17$2;->this$1:Lcom/android/server/notification/NotificationManagerService$17;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$17$2;->val$pkg:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$17$2;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$17$2;->val$conditions:[Landroid/service/notification/Condition;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$17$2;->this$1:Lcom/android/server/notification/NotificationManagerService$17;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$17$2;->val$pkg:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$17$2;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$17$2;->val$conditions:[Landroid/service/notification/Condition;

    .line 12
    .line 13
    const-string/jumbo v3, "notifyConditions pkg="

    .line 14
    .line 15
    .line 16
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v4

    .line 19
    :try_start_0
    iget-boolean v5, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    iget-object v5, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, " info="

    .line 34
    .line 35
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, " conditions="

    .line 42
    .line 43
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    if-nez p0, :cond_0

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto/16 :goto_e

    .line 67
    .line 68
    :cond_1
    :goto_1
    invoke-virtual {v0, v1, p0}, Lcom/android/server/notification/ConditionProviders;->getValidConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-eqz p0, :cond_17

    .line 73
    .line 74
    array-length v1, p0

    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    goto/16 :goto_d

    .line 78
    .line 79
    :cond_2
    array-length v1, p0

    .line 80
    const/4 v3, 0x0

    .line 81
    move v5, v3

    .line 82
    :goto_2
    const/4 v6, 0x1

    .line 83
    if-ge v5, v1, :cond_6

    .line 84
    .line 85
    aget-object v7, p0, v5

    .line 86
    .line 87
    iget-object v8, v7, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 88
    .line 89
    iget-object v9, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 90
    .line 91
    invoke-virtual {v0, v8, v9, v6}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    iput-object v2, v8, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 96
    .line 97
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_4

    .line 102
    .line 103
    iget-object v9, v8, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    .line 104
    .line 105
    if-eqz v9, :cond_3

    .line 106
    .line 107
    iget v10, v9, Landroid/service/notification/Condition;->source:I

    .line 108
    .line 109
    const/4 v11, 0x3

    .line 110
    if-ne v10, v11, :cond_3

    .line 111
    .line 112
    iget v9, v9, Landroid/service/notification/Condition;->state:I

    .line 113
    .line 114
    if-ne v9, v6, :cond_5

    .line 115
    .line 116
    iget v9, v7, Landroid/service/notification/Condition;->state:I

    .line 117
    .line 118
    if-ne v9, v6, :cond_5

    .line 119
    .line 120
    iput-object v7, v8, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_3
    iput-object v7, v8, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    iput-object v7, v8, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    .line 127
    .line 128
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    array-length v1, p0

    .line 133
    :goto_4
    if-ge v3, v1, :cond_18

    .line 134
    .line 135
    aget-object v10, p0, v3

    .line 136
    .line 137
    iget-object v2, v0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    .line 138
    .line 139
    if-eqz v2, :cond_16

    .line 140
    .line 141
    iget-object v4, v10, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 142
    .line 143
    check-cast v2, Lcom/android/server/notification/ZenModeConditions;

    .line 144
    .line 145
    sget-boolean v5, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    .line 146
    .line 147
    if-eqz v5, :cond_7

    .line 148
    .line 149
    const-string v5, "ZenModeHelper"

    .line 150
    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string/jumbo v8, "onConditionChanged "

    .line 154
    .line 155
    .line 156
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v8, " "

    .line 163
    .line 164
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    :cond_7
    iget-object v5, v2, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 178
    .line 179
    invoke-virtual {v5}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    if-nez v5, :cond_8

    .line 184
    .line 185
    goto/16 :goto_c

    .line 186
    .line 187
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 188
    .line 189
    .line 190
    move-result v12

    .line 191
    iget-object v7, v2, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 192
    .line 193
    const/16 v2, 0x3e8

    .line 194
    .line 195
    if-ne v12, v2, :cond_9

    .line 196
    .line 197
    const/4 v2, 0x5

    .line 198
    :goto_5
    move v11, v2

    .line 199
    goto :goto_6

    .line 200
    :cond_9
    const/4 v2, 0x4

    .line 201
    goto :goto_5

    .line 202
    :goto_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    const-string/jumbo v2, "setAutomaticZenRuleState"

    .line 206
    .line 207
    .line 208
    invoke-static {v11, v2}, Lcom/android/server/notification/ZenModeHelper;->requirePublicOrigin(ILjava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v2, v7, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 212
    .line 213
    monitor-enter v2

    .line 214
    :try_start_1
    iget-object v5, v7, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 215
    .line 216
    if-nez v5, :cond_a

    .line 217
    .line 218
    monitor-exit v2

    .line 219
    goto/16 :goto_c

    .line 220
    .line 221
    :catchall_1
    move-exception p0

    .line 222
    goto/16 :goto_b

    .line 223
    .line 224
    :cond_a
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    new-instance v9, Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .line 232
    .line 233
    iget-object v5, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 234
    .line 235
    if-eqz v4, :cond_e

    .line 236
    .line 237
    if-eqz v5, :cond_e

    .line 238
    .line 239
    iget-object v13, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 240
    .line 241
    if-nez v13, :cond_b

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_b
    invoke-virtual {v13, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    if-nez v13, :cond_c

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_c
    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 252
    .line 253
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_d

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_d
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 261
    .line 262
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    goto :goto_9

    .line 266
    :cond_e
    :goto_7
    iget-object v5, v8, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 267
    .line 268
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    :cond_f
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 277
    .line 278
    .line 279
    move-result v13

    .line 280
    if-eqz v13, :cond_13

    .line 281
    .line 282
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v13

    .line 286
    check-cast v13, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 287
    .line 288
    if-eqz v4, :cond_f

    .line 289
    .line 290
    if-eqz v13, :cond_f

    .line 291
    .line 292
    iget-object v14, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 293
    .line 294
    if-nez v14, :cond_10

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_10
    invoke-virtual {v14, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v14

    .line 301
    if-nez v14, :cond_11

    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_11
    iget-object v14, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 305
    .line 306
    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    if-eqz v14, :cond_12

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_12
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_13
    :goto_9
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    if-eqz v4, :cond_15

    .line 322
    .line 323
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    sub-int/2addr v4, v6

    .line 328
    :goto_a
    if-ltz v4, :cond_15

    .line 329
    .line 330
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 335
    .line 336
    invoke-virtual {v7, v5}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    if-nez v5, :cond_14

    .line 341
    .line 342
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    :cond_14
    add-int/lit8 v4, v4, -0x1

    .line 346
    .line 347
    goto :goto_a

    .line 348
    :cond_15
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;II)V

    .line 349
    .line 350
    .line 351
    monitor-exit v2

    .line 352
    goto :goto_c

    .line 353
    :goto_b
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 354
    throw p0

    .line 355
    :cond_16
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 356
    .line 357
    goto/16 :goto_4

    .line 358
    .line 359
    :cond_17
    :goto_d
    :try_start_2
    monitor-exit v4

    .line 360
    :cond_18
    return-void

    .line 361
    :goto_e
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    throw p0
.end method
