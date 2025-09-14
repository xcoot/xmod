.class public final Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final isAppForeground:Z

.field public final mTracker:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

.field public final r:Lcom/android/server/notification/NotificationRecord;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->isAppForeground:Z

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
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->mTracker:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final enqueueNotification()Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "EnqueueNotificationRunnable.run for: "

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6
    .line 7
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 10
    .line 11
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 18
    .line 19
    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 26
    .line 27
    iget-object v6, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 28
    .line 29
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 34
    .line 35
    iget-object v8, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 36
    .line 37
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    const/4 v10, 0x1

    .line 42
    const/4 v11, 0x0

    .line 43
    if-eqz v8, :cond_0

    .line 44
    .line 45
    move v8, v10

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v8, v11

    .line 48
    :goto_0
    const/4 v9, 0x1

    .line 49
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;ZZ)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    return v11

    .line 56
    :cond_1
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 62
    .line 63
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    sget-object v4, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroid/app/Notification;->overrideAllowlistToken(Landroid/os/IBinder;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 75
    .line 76
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 77
    .line 78
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 79
    .line 80
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 87
    .line 88
    .line 89
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 90
    .line 91
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 97
    .line 98
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 99
    .line 100
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v3, v4}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeTimeForUnpostedNotification(Ljava/lang/String;)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v5

    .line 116
    cmp-long v7, v3, v5

    .line 117
    .line 118
    if-lez v7, :cond_2

    .line 119
    .line 120
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;

    .line 121
    .line 122
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 123
    .line 124
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 125
    .line 126
    iget-object v7, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 127
    .line 128
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    sub-long v15, v3, v5

    .line 133
    .line 134
    const/16 v17, 0x0

    .line 135
    .line 136
    move-object v12, v1

    .line 137
    invoke-direct/range {v12 .. v17}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 143
    .line 144
    .line 145
    monitor-exit v2

    .line 146
    return v11

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    goto/16 :goto_7

    .line 149
    .line 150
    :cond_2
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 151
    .line 152
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 153
    .line 154
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 155
    .line 156
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 157
    .line 158
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 163
    .line 164
    .line 165
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 166
    .line 167
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 168
    .line 169
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 173
    .line 174
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 175
    .line 176
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v3, v4}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeContextForUnpostedNotification(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v17

    .line 184
    if-eqz v17, :cond_3

    .line 185
    .line 186
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;

    .line 187
    .line 188
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 189
    .line 190
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 191
    .line 192
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 193
    .line 194
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v14

    .line 198
    const-wide/16 v15, 0x0

    .line 199
    .line 200
    move-object v12, v1

    .line 201
    invoke-direct/range {v12 .. v17}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 205
    .line 206
    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 207
    .line 208
    .line 209
    monitor-exit v2

    .line 210
    return v11

    .line 211
    :cond_3
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 212
    .line 213
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 214
    .line 215
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 216
    .line 217
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    invoke-static {}, Lcom/android/server/notification/Flags;->allNotifsNeedTtl()Z

    .line 221
    .line 222
    .line 223
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 224
    .line 225
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 226
    .line 227
    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 228
    .line 229
    .line 230
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 231
    .line 232
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 233
    .line 234
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 235
    .line 236
    if-eqz v4, :cond_4

    .line 237
    .line 238
    const-string v4, "NotificationService"

    .line 239
    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    :cond_4
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 260
    .line 261
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 262
    .line 263
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 272
    .line 273
    if-eqz v1, :cond_5

    .line 274
    .line 275
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 276
    .line 277
    invoke-virtual {v4, v1}, Lcom/android/server/notification/NotificationRecord;->copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V

    .line 278
    .line 279
    .line 280
    :cond_5
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v14

    .line 296
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v16

    .line 304
    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 305
    .line 306
    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 307
    .line 308
    iget-boolean v12, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->isAppForeground:Z

    .line 309
    .line 310
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    iget-object v8, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 314
    .line 315
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    invoke-virtual {v8}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 320
    .line 321
    .line 322
    move-result-object v8

    .line 323
    if-nez v8, :cond_6

    .line 324
    .line 325
    goto :goto_1

    .line 326
    :cond_6
    if-nez v12, :cond_7

    .line 327
    .line 328
    invoke-virtual {v8}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    .line 329
    .line 330
    .line 331
    move-result v9

    .line 332
    and-int/lit8 v9, v9, -0x2

    .line 333
    .line 334
    invoke-virtual {v8, v9}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 335
    .line 336
    .line 337
    :cond_7
    invoke-virtual {v8}, Landroid/app/Notification$BubbleMetadata;->isBubbleSuppressable()Z

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    if-nez v9, :cond_8

    .line 342
    .line 343
    invoke-virtual {v8}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    .line 344
    .line 345
    .line 346
    move-result v9

    .line 347
    and-int/lit8 v9, v9, -0x9

    .line 348
    .line 349
    invoke-virtual {v8, v9}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 350
    .line 351
    .line 352
    :cond_8
    :goto_1
    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 353
    .line 354
    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 355
    .line 356
    invoke-static {v8, v9, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleGroupedNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 360
    .line 361
    .line 362
    move-result v8

    .line 363
    if-eqz v8, :cond_9

    .line 364
    .line 365
    invoke-virtual {v6}, Landroid/app/Notification;->isGroupChild()Z

    .line 366
    .line 367
    .line 368
    move-result v8

    .line 369
    if-eqz v8, :cond_9

    .line 370
    .line 371
    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 372
    .line 373
    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 374
    .line 375
    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 376
    .line 377
    iget-object v9, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 378
    .line 379
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 380
    .line 381
    .line 382
    move-result v9

    .line 383
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    invoke-virtual {v8, v9, v14, v3}, Lcom/android/server/notification/SnoozeHelper;->repostGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    :cond_9
    sget-boolean v3, Lcom/android/server/notification/NmRune;->NM_ETC_LOG_DEBUG:Z

    .line 391
    .line 392
    if-eqz v3, :cond_a

    .line 393
    .line 394
    goto :goto_2

    .line 395
    :cond_a
    const-string v3, "com.android.providers.downloads"

    .line 396
    .line 397
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    if-eqz v3, :cond_b

    .line 402
    .line 403
    const-string v3, "DownloadManager"

    .line 404
    .line 405
    const/4 v8, 0x2

    .line 406
    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    if-eqz v3, :cond_e

    .line 411
    .line 412
    :cond_b
    :goto_2
    if-eqz v1, :cond_c

    .line 413
    .line 414
    move v1, v10

    .line 415
    goto :goto_3

    .line 416
    :cond_c
    move v1, v11

    .line 417
    :goto_3
    iget-object v3, v6, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 418
    .line 419
    if-nez v3, :cond_d

    .line 420
    .line 421
    const-string v3, "NULL"

    .line 422
    .line 423
    :goto_4
    move-object/from16 v20, v3

    .line 424
    .line 425
    goto :goto_5

    .line 426
    :cond_d
    invoke-virtual {v3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    goto :goto_4

    .line 431
    :goto_5
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    .line 432
    .line 433
    invoke-virtual {v6}, Landroid/app/Notification;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v18

    .line 437
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    move-result-object v12

    .line 441
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    .line 443
    .line 444
    move-result-object v13

    .line 445
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object v15

    .line 449
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object v17

    .line 453
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    .line 455
    .line 456
    move-result-object v19

    .line 457
    filled-new-array/range {v12 .. v20}, [Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    const/16 v3, 0xabe

    .line 462
    .line 463
    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 464
    .line 465
    .line 466
    :cond_e
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 467
    .line 468
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 469
    .line 470
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    check-cast v1, Ljava/util/ArrayList;

    .line 475
    .line 476
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    xor-int/2addr v1, v10

    .line 481
    if-eqz v1, :cond_f

    .line 482
    .line 483
    invoke-virtual {v6}, Landroid/app/Notification;->isMediaNotification()Z

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    if-nez v1, :cond_f

    .line 488
    .line 489
    iget v1, v6, Landroid/app/Notification;->semFlags:I

    .line 490
    .line 491
    const v3, 0x8000

    .line 492
    .line 493
    .line 494
    and-int/2addr v1, v3

    .line 495
    if-nez v1, :cond_f

    .line 496
    .line 497
    iget-object v1, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 498
    .line 499
    const-string v3, "android.ongoingActivityNoti.style"

    .line 500
    .line 501
    invoke-virtual {v1, v3, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    if-gtz v1, :cond_f

    .line 506
    .line 507
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 508
    .line 509
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 510
    .line 511
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 512
    .line 513
    invoke-static {v1, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->-$$Nest$monNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/NotificationRecord;)V

    .line 514
    .line 515
    .line 516
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 517
    .line 518
    iget-object v1, v5, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 519
    .line 520
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    .line 521
    .line 522
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 523
    .line 524
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 525
    .line 526
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 531
    .line 532
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 533
    .line 534
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v7

    .line 538
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 539
    .line 540
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 541
    .line 542
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 543
    .line 544
    .line 545
    move-result v8

    .line 546
    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->mTracker:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 547
    .line 548
    move-object v4, v3

    .line 549
    invoke-direct/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    .line 550
    .line 551
    .line 552
    const-wide/16 v4, 0xc8

    .line 553
    .line 554
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 555
    .line 556
    .line 557
    goto :goto_6

    .line 558
    :cond_f
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 559
    .line 560
    iget-object v1, v4, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 561
    .line 562
    new-instance v9, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    .line 563
    .line 564
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 565
    .line 566
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 567
    .line 568
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v5

    .line 572
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 573
    .line 574
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 575
    .line 576
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v6

    .line 580
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 581
    .line 582
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 583
    .line 584
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 585
    .line 586
    .line 587
    move-result v7

    .line 588
    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->mTracker:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 589
    .line 590
    move-object v3, v9

    .line 591
    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    .line 596
    .line 597
    :goto_6
    monitor-exit v2

    .line 598
    return v10

    .line 599
    :goto_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    throw v0
.end method

.method public final run()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->enqueueNotification()Z

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->mTracker:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->cancel()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->mTracker:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->cancel()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method
