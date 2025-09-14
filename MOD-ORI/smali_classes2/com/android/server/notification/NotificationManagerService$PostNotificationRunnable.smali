.class public final Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final key:Ljava/lang/String;

.field public final mTracker:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

.field public final pkg:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->pkg:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->uid:I

    .line 11
    .line 12
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->mTracker:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final postNotification()Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "WARNING: In a future release this will crash the app: "

    .line 4
    .line 5
    const-string v2, "Not posting notification without small icon: "

    .line 6
    .line 7
    const-string v3, "MultiStar Ghost Floatiog on, List = "

    .line 8
    .line 9
    const-string/jumbo v4, "postNotification postAtFrontOfQueue key = "

    .line 10
    .line 11
    .line 12
    const-string v5, "There are not grouped notifications. groupKey:"

    .line 13
    .line 14
    const-string v6, "Suppressing notification from package "

    .line 15
    .line 16
    const-string v7, "Cannot find enqueued record for key: "

    .line 17
    .line 18
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 19
    .line 20
    iget v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->uid:I

    .line 21
    .line 22
    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 23
    .line 24
    invoke-virtual {v8, v9}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    const/4 v9, 0x1

    .line 29
    xor-int/2addr v8, v9

    .line 30
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 31
    .line 32
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->pkg:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v10, v11}, Lcom/android/server/notification/NotificationManagerService;->isCallNotification(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 39
    .line 40
    iget-object v11, v11, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v11

    .line 43
    const/4 v12, 0x0

    .line 44
    :try_start_0
    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 45
    .line 46
    iget-object v13, v13, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 47
    .line 48
    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v14, v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$smfindNotificationByListLocked(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/server/notification/NotificationRecord;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    if-nez v13, :cond_2

    .line 55
    .line 56
    const-string v0, "NotificationService"

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    .line 74
    .line 75
    :try_start_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    move v2, v12

    .line 84
    :goto_0
    if-ge v2, v0, :cond_1

    .line 85
    .line 86
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 87
    .line 88
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 95
    .line 96
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_0

    .line 107
    .line 108
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    goto/16 :goto_24

    .line 118
    .line 119
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    return v12

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    move v3, v12

    .line 126
    goto/16 :goto_22

    .line 127
    .line 128
    :cond_2
    :try_start_2
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 133
    .line 134
    .line 135
    move-result-object v14

    .line 136
    if-eqz v10, :cond_3

    .line 137
    .line 138
    const-class v10, Landroid/app/Notification$CallStyle;

    .line 139
    .line 140
    invoke-virtual {v14, v10}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    if-eqz v10, :cond_3

    .line 145
    .line 146
    move v10, v9

    .line 147
    goto :goto_2

    .line 148
    :cond_3
    move v10, v12

    .line 149
    :goto_2
    invoke-virtual {v14}, Landroid/app/Notification;->isMediaNotification()Z

    .line 150
    .line 151
    .line 152
    move-result v15

    .line 153
    if-nez v15, :cond_8

    .line 154
    .line 155
    if-nez v10, :cond_8

    .line 156
    .line 157
    if-nez v8, :cond_4

    .line 158
    .line 159
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 160
    .line 161
    invoke-virtual {v8, v13}, Lcom/android/server/notification/NotificationManagerService;->isRecordBlockedLocked(Lcom/android/server/notification/NotificationRecord;)Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-eqz v8, :cond_8

    .line 166
    .line 167
    :cond_4
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 170
    .line 171
    invoke-virtual {v0, v13}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 172
    .line 173
    .line 174
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 175
    .line 176
    if-eqz v0, :cond_5

    .line 177
    .line 178
    const-string v0, "NotificationService"

    .line 179
    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->pkg:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    .line 196
    .line 197
    :cond_5
    :try_start_3
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 198
    .line 199
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    move v2, v12

    .line 206
    :goto_3
    if-ge v2, v0, :cond_7

    .line 207
    .line 208
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 209
    .line 210
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 217
    .line 218
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_6

    .line 229
    .line 230
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 231
    .line 232
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_7
    :goto_4
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    return v12

    .line 243
    :cond_8
    :try_start_4
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-virtual {v14}, Landroid/app/Notification;->isGroupSummary()Z

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    if-eqz v8, :cond_b

    .line 252
    .line 253
    const-string/jumbo v8, "ranker_group"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v14}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-eqz v8, :cond_b

    .line 265
    .line 266
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 267
    .line 268
    iget-object v10, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 269
    .line 270
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 275
    .line 276
    .line 277
    move-result v15

    .line 278
    invoke-virtual {v8, v15, v6, v10}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationsLocked(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    check-cast v6, Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    if-eqz v6, :cond_b

    .line 289
    .line 290
    const-string v0, "NotificationService"

    .line 291
    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    iget-object v3, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 298
    .line 299
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 311
    .line 312
    .line 313
    :try_start_5
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 314
    .line 315
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    move v2, v12

    .line 322
    :goto_5
    if-ge v2, v0, :cond_a

    .line 323
    .line 324
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 325
    .line 326
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 333
    .line 334
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-eqz v3, :cond_9

    .line 345
    .line 346
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 347
    .line 348
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 349
    .line 350
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 355
    .line 356
    goto :goto_5

    .line 357
    :cond_a
    :goto_6
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 358
    return v12

    .line 359
    :cond_b
    :try_start_6
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 360
    .line 361
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    iget-object v8, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 370
    .line 371
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 372
    .line 373
    .line 374
    move-result v8

    .line 375
    invoke-virtual {v5, v8, v6}, Lcom/android/server/notification/NotificationManagerService;->isPackagePausedOrSuspended(ILjava/lang/String;)Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    iput-boolean v5, v13, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 380
    .line 381
    if-eqz v5, :cond_c

    .line 382
    .line 383
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 384
    .line 385
    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 386
    .line 387
    invoke-virtual {v5, v13}, Lcom/android/server/notification/NotificationUsageStats;->registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V

    .line 388
    .line 389
    .line 390
    :cond_c
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 391
    .line 392
    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 393
    .line 394
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 401
    .line 402
    if-eqz v5, :cond_e

    .line 403
    .line 404
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    if-nez v6, :cond_d

    .line 413
    .line 414
    goto :goto_7

    .line 415
    :cond_d
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    invoke-virtual {v7, v6}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    .line 424
    .line 425
    .line 426
    goto :goto_8

    .line 427
    :cond_e
    :goto_7
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 428
    .line 429
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationInstanceIdSequence(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/InstanceIdSequence;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    invoke-virtual {v6}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    invoke-virtual {v7, v6}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    .line 438
    .line 439
    .line 440
    :goto_8
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 441
    .line 442
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v8

    .line 446
    invoke-virtual {v6, v8}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 450
    if-gez v6, :cond_11

    .line 451
    .line 452
    :try_start_7
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 453
    .line 454
    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 460
    .line 461
    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 462
    .line 463
    invoke-virtual {v6, v13}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V

    .line 464
    .line 465
    .line 466
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 467
    .line 468
    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 469
    .line 470
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 471
    .line 472
    .line 473
    move-result-object v10

    .line 474
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v10

    .line 478
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 479
    .line 480
    .line 481
    move-result-object v15

    .line 482
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 483
    .line 484
    .line 485
    move-result-object v15

    .line 486
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->mTracker:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 487
    .line 488
    iget-wide v8, v12, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    .line 489
    .line 490
    invoke-virtual {v6, v10, v15, v8, v9}, Landroid/app/usage/UsageStatsManagerInternal;->reportNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;J)V

    .line 491
    .line 492
    .line 493
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 494
    .line 495
    const/4 v8, 0x0

    .line 496
    invoke-virtual {v6, v8, v13}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    .line 497
    .line 498
    .line 499
    move-result v6

    .line 500
    invoke-virtual {v13, v6}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 501
    .line 502
    .line 503
    iput-boolean v6, v13, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    .line 504
    .line 505
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 506
    .line 507
    invoke-static {v8, v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mpostedNotificationLog(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    .line 508
    .line 509
    .line 510
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 511
    .line 512
    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationReminder:Lcom/android/server/notification/NotificationReminder;

    .line 513
    .line 514
    if-eqz v8, :cond_f

    .line 515
    .line 516
    invoke-virtual {v8, v13}, Lcom/android/server/notification/NotificationReminder;->addNotificationRecord(Lcom/android/server/notification/NotificationRecord;)V

    .line 517
    .line 518
    .line 519
    goto :goto_9

    .line 520
    :catchall_2
    move-exception v0

    .line 521
    const/4 v3, 0x0

    .line 522
    goto/16 :goto_22

    .line 523
    .line 524
    :cond_f
    :goto_9
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 525
    .line 526
    const/4 v9, 0x0

    .line 527
    invoke-static {v8, v9, v13, v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNeedSaveHistory(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Z

    .line 528
    .line 529
    .line 530
    move-result v6

    .line 531
    if-eqz v6, :cond_10

    .line 532
    .line 533
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 534
    .line 535
    const/4 v8, 0x1

    .line 536
    iput-boolean v8, v6, Lcom/android/server/notification/NotificationManagerService;->mIsInterruptivePostNotif:Z

    .line 537
    .line 538
    :cond_10
    move-object v15, v2

    .line 539
    move-object/from16 v16, v3

    .line 540
    .line 541
    const/4 v8, 0x1

    .line 542
    goto/16 :goto_b

    .line 543
    .line 544
    :cond_11
    const/4 v9, 0x0

    .line 545
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 546
    .line 547
    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 548
    .line 549
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 554
    .line 555
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 556
    .line 557
    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 558
    .line 559
    invoke-virtual {v8, v6, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 563
    .line 564
    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 565
    .line 566
    invoke-virtual {v6, v13, v5}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 567
    .line 568
    .line 569
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 570
    .line 571
    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 572
    .line 573
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 574
    .line 575
    .line 576
    move-result-object v8

    .line 577
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v8

    .line 581
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 582
    .line 583
    .line 584
    move-result-object v10

    .line 585
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 586
    .line 587
    .line 588
    move-result-object v10

    .line 589
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->mTracker:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 590
    .line 591
    move-object v15, v2

    .line 592
    move-object/from16 v16, v3

    .line 593
    .line 594
    iget-wide v2, v12, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    .line 595
    .line 596
    invoke-virtual {v6, v8, v10, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportNotificationUpdated(Ljava/lang/String;Landroid/os/UserHandle;J)V

    .line 597
    .line 598
    .line 599
    iget v2, v14, Landroid/app/Notification;->flags:I

    .line 600
    .line 601
    iget-object v3, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 602
    .line 603
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    iget v3, v3, Landroid/app/Notification;->flags:I

    .line 608
    .line 609
    and-int/lit8 v3, v3, 0x40

    .line 610
    .line 611
    or-int/2addr v2, v3

    .line 612
    iput v2, v14, Landroid/app/Notification;->flags:I

    .line 613
    .line 614
    const/4 v2, 0x1

    .line 615
    iput-boolean v2, v13, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 616
    .line 617
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 618
    .line 619
    invoke-virtual {v2, v5, v13}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    .line 620
    .line 621
    .line 622
    move-result v2

    .line 623
    iput-boolean v2, v13, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    .line 624
    .line 625
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    .line 626
    .line 627
    .line 628
    move-result v3

    .line 629
    if-eqz v3, :cond_12

    .line 630
    .line 631
    if-eqz v2, :cond_12

    .line 632
    .line 633
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->resetRankingTime()V

    .line 634
    .line 635
    .line 636
    :cond_12
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 637
    .line 638
    invoke-static {v3, v5, v13, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNeedSaveHistory(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Z

    .line 639
    .line 640
    .line 641
    move-result v2

    .line 642
    if-eqz v2, :cond_13

    .line 643
    .line 644
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 645
    .line 646
    const/4 v8, 0x1

    .line 647
    iput-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService;->mIsInterruptivePostNotif:Z

    .line 648
    .line 649
    goto :goto_a

    .line 650
    :cond_13
    const/4 v8, 0x1

    .line 651
    :goto_a
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 652
    .line 653
    invoke-static {v2, v5, v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNeedDeletePrevHistory(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    .line 654
    .line 655
    .line 656
    move-result v2

    .line 657
    if-eqz v2, :cond_14

    .line 658
    .line 659
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 660
    .line 661
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmNeedDeletePrevHistory(Lcom/android/server/notification/NotificationManagerService;)V

    .line 662
    .line 663
    .line 664
    :cond_14
    :goto_b
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 665
    .line 666
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 667
    .line 668
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v3

    .line 672
    invoke-virtual {v2, v3, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 676
    .line 677
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmIsMaxNotiLimitEnabled(Lcom/android/server/notification/NotificationManagerService;)Z

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    if-eqz v2, :cond_15

    .line 682
    .line 683
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 684
    .line 685
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 686
    .line 687
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 688
    .line 689
    .line 690
    move-result v2

    .line 691
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 692
    .line 693
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmMaxNotiLimitCount(Lcom/android/server/notification/NotificationManagerService;)I

    .line 694
    .line 695
    .line 696
    move-result v3

    .line 697
    if-lt v2, v3, :cond_15

    .line 698
    .line 699
    const-string v3, "NotificationService"

    .line 700
    .line 701
    new-instance v6, Ljava/lang/StringBuilder;

    .line 702
    .line 703
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v4

    .line 710
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    const-string v4, ", count = "

    .line 714
    .line 715
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    .line 727
    .line 728
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 729
    .line 730
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 731
    .line 732
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;

    .line 733
    .line 734
    const/4 v4, 0x1

    .line 735
    invoke-direct {v3, v4, v1}, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 739
    .line 740
    .line 741
    :cond_15
    iget v2, v14, Landroid/app/Notification;->flags:I

    .line 742
    .line 743
    and-int/lit8 v3, v2, 0x40

    .line 744
    .line 745
    if-eqz v3, :cond_16

    .line 746
    .line 747
    or-int/lit8 v2, v2, 0x20

    .line 748
    .line 749
    iput v2, v14, Landroid/app/Notification;->flags:I

    .line 750
    .line 751
    :cond_16
    invoke-static {}, Landroid/app/Flags;->checkAutogroupBeforePost()Z

    .line 752
    .line 753
    .line 754
    move-result v2

    .line 755
    const/4 v3, 0x2

    .line 756
    if-eqz v2, :cond_1c

    .line 757
    .line 758
    invoke-virtual {v14}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    if-eqz v2, :cond_1c

    .line 763
    .line 764
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 765
    .line 766
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 767
    .line 768
    .line 769
    iget v2, v13, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    .line 770
    .line 771
    if-ge v2, v3, :cond_17

    .line 772
    .line 773
    goto :goto_10

    .line 774
    :cond_17
    if-eqz v5, :cond_18

    .line 775
    .line 776
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 777
    .line 778
    .line 779
    move-result-object v2

    .line 780
    goto :goto_c

    .line 781
    :cond_18
    move-object v2, v9

    .line 782
    :goto_c
    if-eqz v2, :cond_19

    .line 783
    .line 784
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v4

    .line 788
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v6

    .line 792
    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    move-result v4

    .line 796
    if-eqz v4, :cond_19

    .line 797
    .line 798
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    iget v2, v2, Landroid/app/Notification;->flags:I

    .line 803
    .line 804
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 805
    .line 806
    .line 807
    move-result-object v4

    .line 808
    iget v4, v4, Landroid/app/Notification;->flags:I

    .line 809
    .line 810
    if-eq v2, v4, :cond_1c

    .line 811
    .line 812
    :cond_19
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 813
    .line 814
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 815
    .line 816
    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 817
    :try_start_8
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 818
    .line 819
    iget-object v6, v4, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 820
    .line 821
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 822
    .line 823
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 824
    .line 825
    .line 826
    move-result v10

    .line 827
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 828
    .line 829
    .line 830
    move-result-object v10

    .line 831
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v4

    .line 835
    check-cast v4, Landroid/util/ArrayMap;

    .line 836
    .line 837
    if-eqz v4, :cond_1a

    .line 838
    .line 839
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v10

    .line 843
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v4

    .line 847
    if-eqz v4, :cond_1a

    .line 848
    .line 849
    move v4, v8

    .line 850
    goto :goto_d

    .line 851
    :cond_1a
    const/4 v4, 0x0

    .line 852
    :goto_d
    invoke-virtual {v6, v7, v4}, Lcom/android/server/notification/GroupHelper;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Z)Z

    .line 853
    .line 854
    .line 855
    move-result v4

    .line 856
    if-eqz v4, :cond_1b

    .line 857
    .line 858
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 859
    .line 860
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 861
    .line 862
    const/4 v10, 0x0

    .line 863
    invoke-virtual {v4, v6, v10}, Lcom/android/server/notification/NotificationManagerService;->addAutogroupKeyLocked(Ljava/lang/String;Z)V

    .line 864
    .line 865
    .line 866
    goto :goto_e

    .line 867
    :catchall_3
    move-exception v0

    .line 868
    goto :goto_f

    .line 869
    :cond_1b
    :goto_e
    monitor-exit v2

    .line 870
    goto :goto_10

    .line 871
    :goto_f
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 872
    :try_start_9
    throw v0

    .line 873
    :cond_1c
    :goto_10
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 874
    .line 875
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 876
    .line 877
    invoke-virtual {v2, v13}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 878
    .line 879
    .line 880
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 881
    .line 882
    iget-object v4, v2, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 883
    .line 884
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 885
    .line 886
    invoke-virtual {v4, v2}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 887
    .line 888
    .line 889
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 890
    .line 891
    iget-object v4, v2, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 892
    .line 893
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 894
    .line 895
    iget-object v4, v4, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    .line 896
    .line 897
    invoke-static {v2, v13, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 898
    .line 899
    .line 900
    move-result v2

    .line 901
    invoke-virtual {v14}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 902
    .line 903
    .line 904
    move-result-object v4

    .line 905
    const/4 v6, 0x4

    .line 906
    if-eqz v4, :cond_31

    .line 907
    .line 908
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 909
    .line 910
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 911
    .line 912
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    .line 913
    .line 914
    .line 915
    move-result v0

    .line 916
    if-eqz v0, :cond_1d

    .line 917
    .line 918
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 919
    .line 920
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mIsDisableHunByCall:Z

    .line 921
    .line 922
    if-eqz v0, :cond_1d

    .line 923
    .line 924
    const-string v0, "NotificationService"

    .line 925
    .line 926
    const-string v4, "Disable HeadsUp by Call"

    .line 927
    .line 928
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    .line 930
    .line 931
    iget v0, v14, Landroid/app/Notification;->semFlags:I

    .line 932
    .line 933
    or-int/lit8 v0, v0, 0x8

    .line 934
    .line 935
    iput v0, v14, Landroid/app/Notification;->semFlags:I

    .line 936
    .line 937
    move v0, v8

    .line 938
    goto :goto_11

    .line 939
    :cond_1d
    const/4 v0, 0x0

    .line 940
    :goto_11
    if-nez v0, :cond_1f

    .line 941
    .line 942
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 943
    .line 944
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmSmartPopupEnable(Lcom/android/server/notification/NotificationManagerService;)Z

    .line 945
    .line 946
    .line 947
    move-result v4

    .line 948
    if-eqz v4, :cond_1f

    .line 949
    .line 950
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 951
    .line 952
    iget-boolean v10, v4, Lcom/android/server/notification/NotificationManagerService;->mMultiStarEnable:Z

    .line 953
    .line 954
    if-eqz v10, :cond_1f

    .line 955
    .line 956
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    .line 957
    .line 958
    if-eqz v4, :cond_1f

    .line 959
    .line 960
    const-string v4, "NotificationService"

    .line 961
    .line 962
    new-instance v10, Ljava/lang/StringBuilder;

    .line 963
    .line 964
    move-object/from16 v12, v16

    .line 965
    .line 966
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 970
    .line 971
    iget-object v12, v12, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    .line 972
    .line 973
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v10

    .line 980
    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    .line 982
    .line 983
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 984
    .line 985
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    .line 986
    .line 987
    const-string v10, "all"

    .line 988
    .line 989
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    move-result v4

    .line 993
    if-nez v4, :cond_1e

    .line 994
    .line 995
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 996
    .line 997
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    .line 998
    .line 999
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v10

    .line 1003
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v10

    .line 1007
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result v4

    .line 1011
    if-eqz v4, :cond_1f

    .line 1012
    .line 1013
    :cond_1e
    const-string v4, "call"

    .line 1014
    .line 1015
    invoke-virtual {v13, v4}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v4

    .line 1019
    if-nez v4, :cond_1f

    .line 1020
    .line 1021
    const-class v4, Landroid/app/Notification$CallStyle;

    .line 1022
    .line 1023
    invoke-virtual {v14, v4}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v4

    .line 1027
    if-nez v4, :cond_1f

    .line 1028
    .line 1029
    iget v4, v14, Landroid/app/Notification;->semFlags:I

    .line 1030
    .line 1031
    or-int/lit8 v4, v4, 0x8

    .line 1032
    .line 1033
    iput v4, v14, Landroid/app/Notification;->semFlags:I

    .line 1034
    .line 1035
    :cond_1f
    if-nez v0, :cond_29

    .line 1036
    .line 1037
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1038
    .line 1039
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 1040
    .line 1041
    if-eqz v0, :cond_29

    .line 1042
    .line 1043
    new-instance v0, Landroid/os/Bundle;

    .line 1044
    .line 1045
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1046
    .line 1047
    .line 1048
    const-string v4, "isHeadUp"

    .line 1049
    .line 1050
    iget v10, v13, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 1051
    .line 1052
    if-lt v10, v6, :cond_20

    .line 1053
    .line 1054
    move v10, v8

    .line 1055
    goto :goto_12

    .line 1056
    :cond_20
    const/4 v10, 0x0

    .line 1057
    :goto_12
    invoke-virtual {v0, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1058
    .line 1059
    .line 1060
    const-string v4, "isUpdate"

    .line 1061
    .line 1062
    iget-boolean v10, v13, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 1063
    .line 1064
    invoke-virtual {v0, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1065
    .line 1066
    .line 1067
    const-string v4, "isInterrupt"

    .line 1068
    .line 1069
    iget-boolean v10, v13, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 1070
    .line 1071
    if-eqz v10, :cond_21

    .line 1072
    .line 1073
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1074
    .line 1075
    iget-object v10, v10, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1076
    .line 1077
    invoke-virtual {v10}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v10

    .line 1081
    if-eqz v10, :cond_21

    .line 1082
    .line 1083
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1084
    .line 1085
    iget-object v10, v10, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1086
    .line 1087
    invoke-virtual {v10}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v10

    .line 1091
    iget v10, v10, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1092
    .line 1093
    and-int/lit8 v10, v10, 0x10

    .line 1094
    .line 1095
    if-eqz v10, :cond_21

    .line 1096
    .line 1097
    move v10, v8

    .line 1098
    goto :goto_13

    .line 1099
    :cond_21
    const/4 v10, 0x0

    .line 1100
    :goto_13
    invoke-virtual {v0, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1101
    .line 1102
    .line 1103
    const-string/jumbo v4, "visibility"

    .line 1104
    .line 1105
    .line 1106
    iget-object v10, v13, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 1107
    .line 1108
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    .line 1109
    .line 1110
    .line 1111
    move-result v10

    .line 1112
    invoke-virtual {v0, v4, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1113
    .line 1114
    .line 1115
    const-string/jumbo v4, "sound"

    .line 1116
    .line 1117
    .line 1118
    iget-object v10, v13, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    .line 1119
    .line 1120
    invoke-virtual {v0, v4, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1121
    .line 1122
    .line 1123
    const-string/jumbo v4, "vibrate"

    .line 1124
    .line 1125
    .line 1126
    iget-object v10, v13, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    .line 1127
    .line 1128
    invoke-virtual {v0, v4, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1129
    .line 1130
    .line 1131
    sget-boolean v4, Lcom/android/server/notification/NmRune;->NM_SUPPORT_SUB_DISPLAY_EDGE_LIGHTING:Z

    .line 1132
    .line 1133
    if-eqz v4, :cond_23

    .line 1134
    .line 1135
    iget-boolean v4, v13, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 1136
    .line 1137
    if-eqz v4, :cond_22

    .line 1138
    .line 1139
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1140
    .line 1141
    iget-boolean v10, v10, Lcom/android/server/notification/NotificationManagerService;->mFoldState:Z

    .line 1142
    .line 1143
    if-eqz v10, :cond_22

    .line 1144
    .line 1145
    const-string v4, "NotificationService"

    .line 1146
    .line 1147
    const-string v10, "Support sub display edge lighting and folded so edge lighting working"

    .line 1148
    .line 1149
    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    .line 1151
    .line 1152
    const/4 v4, 0x0

    .line 1153
    :cond_22
    const-string v10, "bubble"

    .line 1154
    .line 1155
    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1156
    .line 1157
    .line 1158
    goto :goto_14

    .line 1159
    :cond_23
    const-string v4, "bubble"

    .line 1160
    .line 1161
    iget-boolean v10, v13, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 1162
    .line 1163
    invoke-virtual {v0, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1164
    .line 1165
    .line 1166
    :goto_14
    const-string/jumbo v4, "smartPopup"

    .line 1167
    .line 1168
    .line 1169
    const/4 v10, 0x0

    .line 1170
    invoke-virtual {v0, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1171
    .line 1172
    .line 1173
    const-string v4, "canBypassDnd"

    .line 1174
    .line 1175
    iget-object v10, v13, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 1176
    .line 1177
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 1178
    .line 1179
    .line 1180
    move-result v10

    .line 1181
    invoke-virtual {v0, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1182
    .line 1183
    .line 1184
    iget v4, v13, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 1185
    .line 1186
    if-lt v4, v6, :cond_29

    .line 1187
    .line 1188
    const-string v4, "call"

    .line 1189
    .line 1190
    invoke-virtual {v13, v4}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    .line 1191
    .line 1192
    .line 1193
    move-result v4

    .line 1194
    if-nez v4, :cond_28

    .line 1195
    .line 1196
    iget-object v4, v14, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1197
    .line 1198
    if-eqz v4, :cond_24

    .line 1199
    .line 1200
    goto/16 :goto_17

    .line 1201
    .line 1202
    :cond_24
    iget-boolean v4, v13, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 1203
    .line 1204
    if-nez v4, :cond_25

    .line 1205
    .line 1206
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1207
    .line 1208
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 1209
    .line 1210
    invoke-virtual {v4, v7, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z

    .line 1211
    .line 1212
    .line 1213
    move-result v0

    .line 1214
    if-eqz v0, :cond_25

    .line 1215
    .line 1216
    const-string v0, "NotificationService"

    .line 1217
    .line 1218
    const-string v4, "Changed notification by edgelighting."

    .line 1219
    .line 1220
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    .line 1222
    .line 1223
    iget v0, v14, Landroid/app/Notification;->semFlags:I

    .line 1224
    .line 1225
    or-int/lit16 v0, v0, 0x2008

    .line 1226
    .line 1227
    iput v0, v14, Landroid/app/Notification;->semFlags:I

    .line 1228
    .line 1229
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1230
    .line 1231
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v4

    .line 1235
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v4

    .line 1239
    invoke-static {v0, v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mreceiveFollowedNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 1240
    .line 1241
    .line 1242
    goto :goto_18

    .line 1243
    :cond_25
    sget-boolean v0, Lcom/android/server/notification/NmRune;->NM_SUPPORT_CLEAR_COVER_NOTI_LIST:Z

    .line 1244
    .line 1245
    if-eqz v0, :cond_29

    .line 1246
    .line 1247
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1248
    .line 1249
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 1250
    .line 1251
    if-eqz v0, :cond_29

    .line 1252
    .line 1253
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    if-eqz v0, :cond_29

    .line 1258
    .line 1259
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1260
    .line 1261
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 1262
    .line 1263
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v0

    .line 1267
    if-eqz v0, :cond_26

    .line 1268
    .line 1269
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 1270
    .line 1271
    .line 1272
    move-result v4

    .line 1273
    if-nez v4, :cond_26

    .line 1274
    .line 1275
    move v4, v8

    .line 1276
    goto :goto_15

    .line 1277
    :cond_26
    const/4 v4, 0x0

    .line 1278
    :goto_15
    if-eqz v0, :cond_27

    .line 1279
    .line 1280
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 1281
    .line 1282
    .line 1283
    move-result v0

    .line 1284
    goto :goto_16

    .line 1285
    :cond_27
    move v0, v3

    .line 1286
    :goto_16
    if-eqz v4, :cond_29

    .line 1287
    .line 1288
    const/16 v4, 0x11

    .line 1289
    .line 1290
    if-ne v0, v4, :cond_29

    .line 1291
    .line 1292
    const-string v0, "NotificationService"

    .line 1293
    .line 1294
    const-string v4, "clear view cover is closed, so cancel delayed wakelock"

    .line 1295
    .line 1296
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    .line 1298
    .line 1299
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1300
    .line 1301
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v4

    .line 1305
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v4

    .line 1309
    invoke-static {v0, v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mreceiveFollowedNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 1310
    .line 1311
    .line 1312
    goto :goto_18

    .line 1313
    :cond_28
    :goto_17
    const-string v0, "NotificationService"

    .line 1314
    .line 1315
    const-string v4, "Category call notification, so make not work edgelighting"

    .line 1316
    .line 1317
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    .line 1319
    .line 1320
    iget v0, v14, Landroid/app/Notification;->semFlags:I

    .line 1321
    .line 1322
    or-int/lit16 v0, v0, 0x1000

    .line 1323
    .line 1324
    iput v0, v14, Landroid/app/Notification;->semFlags:I

    .line 1325
    .line 1326
    :cond_29
    :goto_18
    iget-boolean v0, v13, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 1327
    .line 1328
    if-nez v0, :cond_2a

    .line 1329
    .line 1330
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1331
    .line 1332
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 1333
    .line 1334
    new-instance v6, Lcom/android/server/notification/NotificationAttentionHelper$Signals;

    .line 1335
    .line 1336
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 1337
    .line 1338
    iget-object v10, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1339
    .line 1340
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 1341
    .line 1342
    .line 1343
    move-result v10

    .line 1344
    invoke-virtual {v0, v10}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    .line 1345
    .line 1346
    .line 1347
    move-result v0

    .line 1348
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1349
    .line 1350
    iget v10, v10, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 1351
    .line 1352
    invoke-direct {v6, v10, v0}, Lcom/android/server/notification/NotificationAttentionHelper$Signals;-><init>(IZ)V

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v4, v13, v6}, Lcom/android/server/notification/NotificationAttentionHelper;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I

    .line 1356
    .line 1357
    .line 1358
    move-result v10

    .line 1359
    goto :goto_19

    .line 1360
    :cond_2a
    const/4 v10, 0x0

    .line 1361
    :goto_19
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1362
    .line 1363
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 1364
    .line 1365
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v6

    .line 1369
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v6

    .line 1373
    if-nez v6, :cond_2b

    .line 1374
    .line 1375
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1376
    .line 1377
    .line 1378
    :goto_1a
    move-object v0, v9

    .line 1379
    goto :goto_1b

    .line 1380
    :cond_2b
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 1381
    .line 1382
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v0

    .line 1386
    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 1387
    .line 1388
    if-nez v0, :cond_2c

    .line 1389
    .line 1390
    goto :goto_1a

    .line 1391
    :cond_2c
    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1392
    .line 1393
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v0

    .line 1397
    :goto_1b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1398
    .line 1399
    .line 1400
    invoke-static {v13, v5, v2, v10, v0}, Lcom/android/server/notification/NotificationRecordLogger;->prepareToLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v0

    .line 1404
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1405
    .line 1406
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->mTracker:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 1407
    .line 1408
    invoke-static {v2, v13, v5, v4, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mnotifyListenersPostedAndLogLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    .line 1409
    .line 1410
    .line 1411
    invoke-static {}, Landroid/app/Flags;->checkAutogroupBeforePost()Z

    .line 1412
    .line 1413
    .line 1414
    move-result v0

    .line 1415
    if-nez v0, :cond_30

    .line 1416
    .line 1417
    if-eqz v5, :cond_2d

    .line 1418
    .line 1419
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v0

    .line 1423
    goto :goto_1c

    .line 1424
    :cond_2d
    move-object v0, v9

    .line 1425
    :goto_1c
    if-eqz v0, :cond_2e

    .line 1426
    .line 1427
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v2

    .line 1431
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v4

    .line 1435
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1436
    .line 1437
    .line 1438
    move-result v2

    .line 1439
    if-eqz v2, :cond_2e

    .line 1440
    .line 1441
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v0

    .line 1445
    iget v0, v0, Landroid/app/Notification;->flags:I

    .line 1446
    .line 1447
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v2

    .line 1451
    iget v2, v2, Landroid/app/Notification;->flags:I

    .line 1452
    .line 1453
    if-eq v0, v2, :cond_30

    .line 1454
    .line 1455
    :cond_2e
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1456
    .line 1457
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1458
    .line 1459
    .line 1460
    iget v0, v13, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    .line 1461
    .line 1462
    if-ge v0, v3, :cond_2f

    .line 1463
    .line 1464
    goto :goto_1d

    .line 1465
    :cond_2f
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1466
    .line 1467
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1468
    .line 1469
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;

    .line 1470
    .line 1471
    const/4 v3, 0x4

    .line 1472
    invoke-direct {v2, v3, v1, v7}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1476
    .line 1477
    .line 1478
    :cond_30
    :goto_1d
    move v9, v8

    .line 1479
    goto :goto_1e

    .line 1480
    :cond_31
    const-string v2, "NotificationService"

    .line 1481
    .line 1482
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1483
    .line 1484
    move-object v4, v15

    .line 1485
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1486
    .line 1487
    .line 1488
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1489
    .line 1490
    .line 1491
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v3

    .line 1495
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    .line 1497
    .line 1498
    if-eqz v5, :cond_32

    .line 1499
    .line 1500
    iget-boolean v2, v5, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 1501
    .line 1502
    if-nez v2, :cond_32

    .line 1503
    .line 1504
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1505
    .line 1506
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1507
    .line 1508
    iget-object v3, v13, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 1509
    .line 1510
    invoke-virtual {v2, v13, v6, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 1511
    .line 1512
    .line 1513
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1514
    .line 1515
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1516
    .line 1517
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$23;

    .line 1518
    .line 1519
    const/4 v4, 0x1

    .line 1520
    invoke-direct {v3, v4, v1, v7}, Lcom/android/server/notification/NotificationManagerService$23;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1521
    .line 1522
    .line 1523
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1524
    .line 1525
    .line 1526
    :cond_32
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->callstyleCallbackApi()Z

    .line 1527
    .line 1528
    .line 1529
    move-result v2

    .line 1530
    if-eqz v2, :cond_33

    .line 1531
    .line 1532
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1533
    .line 1534
    invoke-virtual {v2, v13}, Lcom/android/server/notification/NotificationManagerService;->notifyCallNotificationEventListenerOnRemoved(Lcom/android/server/notification/NotificationRecord;)V

    .line 1535
    .line 1536
    .line 1537
    :cond_33
    const-string v2, "NotificationService"

    .line 1538
    .line 1539
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v0

    .line 1548
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    .line 1550
    .line 1551
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v0

    .line 1555
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    .line 1557
    .line 1558
    const/4 v9, 0x0

    .line 1559
    :goto_1e
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1560
    .line 1561
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 1562
    .line 1563
    if-eqz v2, :cond_34

    .line 1564
    .line 1565
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1566
    .line 1567
    const/4 v3, 0x0

    .line 1568
    :try_start_a
    invoke-virtual {v2, v13, v3, v0}, Lcom/android/server/notification/ShortcutHelper;->maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;ZLandroid/os/Handler;)V

    .line 1569
    .line 1570
    .line 1571
    goto :goto_1f

    .line 1572
    :catchall_4
    move-exception v0

    .line 1573
    goto :goto_22

    .line 1574
    :cond_34
    const/4 v3, 0x0

    .line 1575
    :goto_1f
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1576
    .line 1577
    invoke-virtual {v0, v13}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 1578
    .line 1579
    .line 1580
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1581
    .line 1582
    invoke-virtual {v0, v13}, Lcom/android/server/notification/NotificationManagerService;->maybeRegisterMessageSent(Lcom/android/server/notification/NotificationRecord;)V

    .line 1583
    .line 1584
    .line 1585
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1586
    .line 1587
    invoke-virtual {v0, v13}, Lcom/android/server/notification/NotificationManagerService;->maybeReportForegroundServiceUpdate(Lcom/android/server/notification/NotificationRecord;)V

    .line 1588
    .line 1589
    .line 1590
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1591
    .line 1592
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mSmartAlertController:Lcom/android/server/notification/SmartAlertController;

    .line 1593
    .line 1594
    if-eqz v2, :cond_35

    .line 1595
    .line 1596
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 1597
    .line 1598
    iget-object v4, v2, Lcom/android/server/notification/SmartAlertController;->mHandler:Landroid/os/Handler;

    .line 1599
    .line 1600
    new-instance v5, Lcom/android/server/notification/SmartAlertController$2;

    .line 1601
    .line 1602
    invoke-direct {v5, v2, v0}, Lcom/android/server/notification/SmartAlertController$2;-><init>(Lcom/android/server/notification/SmartAlertController;Ljava/util/ArrayList;)V

    .line 1603
    .line 1604
    .line 1605
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1606
    .line 1607
    .line 1608
    :cond_35
    :try_start_b
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1609
    .line 1610
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 1611
    .line 1612
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1613
    .line 1614
    .line 1615
    move-result v0

    .line 1616
    move v12, v3

    .line 1617
    :goto_20
    if-ge v12, v0, :cond_37

    .line 1618
    .line 1619
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1620
    .line 1621
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 1622
    .line 1623
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v2

    .line 1627
    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 1628
    .line 1629
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 1630
    .line 1631
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v2

    .line 1635
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1636
    .line 1637
    .line 1638
    move-result v2

    .line 1639
    if-eqz v2, :cond_36

    .line 1640
    .line 1641
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1642
    .line 1643
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 1644
    .line 1645
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1646
    .line 1647
    .line 1648
    goto :goto_21

    .line 1649
    :cond_36
    add-int/lit8 v12, v12, 0x1

    .line 1650
    .line 1651
    goto :goto_20

    .line 1652
    :cond_37
    :goto_21
    monitor-exit v11

    .line 1653
    return v9

    .line 1654
    :goto_22
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1655
    .line 1656
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 1657
    .line 1658
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1659
    .line 1660
    .line 1661
    move-result v2

    .line 1662
    move v12, v3

    .line 1663
    :goto_23
    if-ge v12, v2, :cond_39

    .line 1664
    .line 1665
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1666
    .line 1667
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 1668
    .line 1669
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v3

    .line 1673
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 1674
    .line 1675
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 1676
    .line 1677
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v3

    .line 1681
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1682
    .line 1683
    .line 1684
    move-result v3

    .line 1685
    if-nez v3, :cond_38

    .line 1686
    .line 1687
    add-int/lit8 v12, v12, 0x1

    .line 1688
    .line 1689
    goto :goto_23

    .line 1690
    :cond_38
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1691
    .line 1692
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 1693
    .line 1694
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1695
    .line 1696
    .line 1697
    :cond_39
    throw v0

    .line 1698
    :goto_24
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1699
    throw v0
.end method

.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->postNotification()Z

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->mTracker:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->cancel()V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_2

    .line 15
    :catch_0
    move-exception v0

    .line 16
    :try_start_1
    const-string v1, "NotificationService"

    .line 17
    .line 18
    const-string v2, "Error posting"

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :goto_1
    return-void

    .line 25
    :goto_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->mTracker:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->cancel()V

    .line 28
    .line 29
    .line 30
    throw v0
.end method
