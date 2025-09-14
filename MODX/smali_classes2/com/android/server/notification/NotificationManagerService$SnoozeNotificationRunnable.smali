.class public final Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mDuration:J

.field public final mKey:Ljava/lang/String;

.field public final mSnoozeCriterionId:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mKey:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mDuration:J

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mKey:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 17
    .line 18
    iget-object v3, v1, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    iget-object v1, v1, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 28
    .line 29
    monitor-exit v3

    .line 30
    move-object v3, v1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    throw p0

    .line 35
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    :goto_1
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    throw p0
.end method

.method public final snoozeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 17
    .line 18
    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 25
    .line 26
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 31
    .line 32
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 37
    .line 38
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v8, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v9, v7, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v9

    .line 49
    move v10, v3

    .line 50
    :goto_0
    :try_start_0
    iget-object v11, v7, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    if-ge v10, v11, :cond_1

    .line 57
    .line 58
    iget-object v11, v7, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    check-cast v11, Lcom/android/server/notification/NotificationRecord;

    .line 65
    .line 66
    iget-object v12, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 67
    .line 68
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    if-eqz v12, :cond_0

    .line 77
    .line 78
    iget-object v12, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 79
    .line 80
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    if-ne v12, v6, :cond_0

    .line 85
    .line 86
    iget-object v12, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 87
    .line 88
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    invoke-static {v12, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    if-eqz v12, :cond_0

    .line 97
    .line 98
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto/16 :goto_4

    .line 104
    .line 105
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v1, v6, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationsLocked(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    .line 115
    .line 116
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    move v1, v3

    .line 129
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-ge v1, v4, :cond_5

    .line 134
    .line 135
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mKey:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 142
    .line 143
    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 144
    .line 145
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-nez v4, :cond_2

    .line 154
    .line 155
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 160
    .line 161
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 168
    .line 169
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 170
    .line 171
    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 172
    .line 173
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_5

    .line 182
    .line 183
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-ne v1, v2, :cond_5

    .line 188
    .line 189
    move v1, v3

    .line 190
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-ge v1, v4, :cond_5

    .line 195
    .line 196
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mKey:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 203
    .line 204
    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 205
    .line 206
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-nez v4, :cond_4

    .line 215
    .line 216
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 221
    .line 222
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :goto_4
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    throw p0

    .line 230
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 234
    .line 235
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    iget-object v5, v1, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    .line 242
    .line 243
    monitor-enter v5

    .line 244
    :try_start_2
    iget-object v6, v1, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 245
    .line 246
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    add-int/2addr v6, v4

    .line 251
    const/16 v7, 0x1f4

    .line 252
    .line 253
    if-gt v6, v7, :cond_c

    .line 254
    .line 255
    iget-object v6, v1, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    .line 256
    .line 257
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    iget-object v1, v1, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    .line 262
    .line 263
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    add-int/2addr v6, v1

    .line 268
    add-int/2addr v6, v4

    .line 269
    if-le v6, v7, :cond_6

    .line 270
    .line 271
    goto/16 :goto_9

    .line 272
    .line 273
    :cond_6
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 274
    move p1, v3

    .line 275
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-ge p1, v1, :cond_d

    .line 280
    .line 281
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 286
    .line 287
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    const/16 v5, 0x33f

    .line 292
    .line 293
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-virtual {v4, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    iget-wide v5, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mDuration:J

    .line 302
    .line 303
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    const/16 v6, 0x473

    .line 308
    .line 309
    invoke-virtual {v4, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    .line 314
    .line 315
    if-nez v5, :cond_7

    .line 316
    .line 317
    move v5, v3

    .line 318
    goto :goto_6

    .line 319
    :cond_7
    const/4 v5, 0x1

    .line 320
    :goto_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    const/16 v6, 0x340

    .line 325
    .line 326
    invoke-virtual {v4, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 331
    .line 332
    .line 333
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 334
    .line 335
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 336
    .line 337
    sget-object v5, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 338
    .line 339
    check-cast v4, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    .line 340
    .line 341
    invoke-virtual {v4, v5, v1}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 342
    .line 343
    .line 344
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 345
    .line 346
    invoke-virtual {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 347
    .line 348
    .line 349
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 350
    .line 351
    invoke-virtual {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    .line 352
    .line 353
    .line 354
    move-result v10

    .line 355
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 356
    .line 357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 358
    .line 359
    .line 360
    move-result-wide v12

    .line 361
    const/4 v6, 0x0

    .line 362
    const/4 v11, 0x0

    .line 363
    const/16 v7, 0x12

    .line 364
    .line 365
    const/4 v8, -0x1

    .line 366
    const/4 v9, -0x1

    .line 367
    move-object v5, v1

    .line 368
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V

    .line 369
    .line 370
    .line 371
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 372
    .line 373
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 374
    .line 375
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 376
    .line 377
    .line 378
    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 379
    .line 380
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    iget v5, v4, Landroid/app/Notification;->semFlags:I

    .line 385
    .line 386
    or-int/lit16 v5, v5, 0x80

    .line 387
    .line 388
    iput v5, v4, Landroid/app/Notification;->semFlags:I

    .line 389
    .line 390
    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 391
    .line 392
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    if-eqz v4, :cond_8

    .line 401
    .line 402
    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 403
    .line 404
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    const-string/jumbo v5, "ranker_group"

    .line 413
    .line 414
    .line 415
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    if-nez v4, :cond_b

    .line 420
    .line 421
    :cond_8
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    .line 422
    .line 423
    if-eqz v4, :cond_a

    .line 424
    .line 425
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 426
    .line 427
    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 428
    .line 429
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    iget-object v6, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 433
    .line 434
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 435
    .line 436
    .line 437
    move-result v7

    .line 438
    new-instance v8, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;

    .line 439
    .line 440
    const/4 v9, 0x1

    .line 441
    invoke-direct {v8, v5, v4, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;I)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ILjava/util/function/BiConsumer;)V

    .line 445
    .line 446
    .line 447
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 448
    .line 449
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 450
    .line 451
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    .line 452
    .line 453
    if-eqz v5, :cond_9

    .line 454
    .line 455
    iget-object v6, v4, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    .line 456
    .line 457
    monitor-enter v6

    .line 458
    :try_start_3
    iget-object v7, v4, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    .line 459
    .line 460
    iget-object v8, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 461
    .line 462
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    invoke-static {v8}, Lcom/android/server/notification/SnoozeHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v8

    .line 470
    invoke-static {v5}, Lcom/android/server/notification/SnoozeHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-virtual {v7, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    monitor-exit v6

    .line 478
    goto :goto_7

    .line 479
    :catchall_1
    move-exception p0

    .line 480
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 481
    throw p0

    .line 482
    :cond_9
    :goto_7
    invoke-virtual {v4, v1}, Lcom/android/server/notification/SnoozeHelper;->snooze(Lcom/android/server/notification/NotificationRecord;)V

    .line 483
    .line 484
    .line 485
    goto :goto_8

    .line 486
    :cond_a
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 487
    .line 488
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 489
    .line 490
    iget-wide v5, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mDuration:J

    .line 491
    .line 492
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    iget-object v7, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 496
    .line 497
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v7

    .line 501
    invoke-virtual {v4, v1}, Lcom/android/server/notification/SnoozeHelper;->snooze(Lcom/android/server/notification/NotificationRecord;)V

    .line 502
    .line 503
    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 505
    .line 506
    .line 507
    move-result-wide v8

    .line 508
    add-long/2addr v8, v5

    .line 509
    new-instance v10, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;

    .line 510
    .line 511
    invoke-direct {v10, v4, v7, v8, v9}, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/SnoozeHelper;Ljava/lang/String;J)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v10}, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;->run()V

    .line 515
    .line 516
    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 518
    .line 519
    .line 520
    move-result-wide v8

    .line 521
    add-long/2addr v8, v5

    .line 522
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    iget-object v6, v4, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    .line 527
    .line 528
    monitor-enter v6

    .line 529
    :try_start_4
    iget-object v4, v4, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    .line 530
    .line 531
    invoke-static {v7}, Lcom/android/server/notification/SnoozeHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v7

    .line 535
    invoke-virtual {v4, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 539
    :goto_8
    iget-object v1, v1, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 540
    .line 541
    invoke-virtual {v1}, Landroid/service/notification/NotificationStats;->setSnoozed()V

    .line 542
    .line 543
    .line 544
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 545
    .line 546
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 547
    .line 548
    .line 549
    :cond_b
    add-int/lit8 p1, p1, 0x1

    .line 550
    .line 551
    goto/16 :goto_5

    .line 552
    .line 553
    :catchall_2
    move-exception p0

    .line 554
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 555
    throw p0

    .line 556
    :catchall_3
    move-exception p0

    .line 557
    goto :goto_a

    .line 558
    :cond_c
    :goto_9
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 559
    const-string p0, "NotificationService"

    .line 560
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    const-string v1, "Cannot snooze "

    .line 564
    .line 565
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 569
    .line 570
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const-string p1, ": too many snoozed notifications"

    .line 578
    .line 579
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .line 588
    .line 589
    :cond_d
    return-void

    .line 590
    :goto_a
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 591
    throw p0
.end method
