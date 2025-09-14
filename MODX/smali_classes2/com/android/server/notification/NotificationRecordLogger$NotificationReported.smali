.class public final Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final age_in_minutes:I

.field public final alerting:I

.field public final assistant_hash:I

.field public final assistant_ranking_score:F

.field public final category:Ljava/lang/String;

.field public final channel_id_hash:I

.field public final event_id:I

.field public final fsi_state:I

.field public final group_id_hash:I

.field public final group_instance_id:I

.field public final importance:I

.field public final importance_asst:I

.field public final importance_initial:I

.field public final importance_initial_source:I

.field public final importance_source:I

.field public final instance_id:I

.field public final is_foreground_service:Z

.field public final is_group_summary:Z

.field public final is_locked:Z

.field public final is_non_dismissible:Z

.field public final is_ongoing:Z

.field public final notification_id_hash:I

.field public final num_people:I

.field public final package_name:Ljava/lang/String;

.field public final position:I

.field public post_duration_millis:J

.field public final style:I

.field public final timeout_millis:J

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->getId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->event_id:I

    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->uid:I

    .line 19
    .line 20
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->package_name:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    :goto_0
    iput v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->instance_id:I

    .line 50
    .line 51
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    xor-int/2addr v0, v2

    .line 68
    const/16 v2, 0x2000

    .line 69
    .line 70
    invoke-static {v0, v2}, Ljava/lang/Math;->floorMod(II)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->notification_id_hash:I

    .line 75
    .line 76
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-static {v0, v2}, Ljava/lang/Math;->floorMod(II)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->channel_id_hash:I

    .line 95
    .line 96
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-static {v0, v2}, Ljava/lang/Math;->floorMod(II)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iput v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_id_hash:I

    .line 111
    .line 112
    if-nez p5, :cond_1

    .line 113
    .line 114
    move p5, v1

    .line 115
    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {p5}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 117
    .line 118
    .line 119
    move-result p5

    .line 120
    :goto_1
    iput p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_instance_id:I

    .line 121
    .line 122
    iget-object p5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 123
    .line 124
    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 125
    .line 126
    .line 127
    move-result-object p5

    .line 128
    invoke-virtual {p5}, Landroid/app/Notification;->isGroupSummary()Z

    .line 129
    .line 130
    .line 131
    move-result p5

    .line 132
    iput-boolean p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_group_summary:Z

    .line 133
    .line 134
    iget-object p5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 135
    .line 136
    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 137
    .line 138
    .line 139
    move-result-object p5

    .line 140
    iget-object p5, p5, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 141
    .line 142
    iput-object p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->category:Ljava/lang/String;

    .line 143
    .line 144
    iget-object p5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 145
    .line 146
    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 147
    .line 148
    .line 149
    move-result-object p5

    .line 150
    iget-object p5, p5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 151
    .line 152
    if-eqz p5, :cond_2

    .line 153
    .line 154
    const-string v0, "android.template"

    .line 155
    .line 156
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p5

    .line 160
    if-eqz p5, :cond_2

    .line 161
    .line 162
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_2

    .line 167
    .line 168
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    .line 169
    .line 170
    .line 171
    move-result p5

    .line 172
    goto :goto_2

    .line 173
    :cond_2
    move p5, v1

    .line 174
    :goto_2
    iput p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->style:I

    .line 175
    .line 176
    iget-object p5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 177
    .line 178
    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 179
    .line 180
    .line 181
    move-result-object p5

    .line 182
    iget-object p5, p5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 183
    .line 184
    if-eqz p5, :cond_3

    .line 185
    .line 186
    const-string v0, "android.people.list"

    .line 187
    .line 188
    const-class v3, Landroid/app/Person;

    .line 189
    .line 190
    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    move-result-object p5

    .line 194
    if-eqz p5, :cond_3

    .line 195
    .line 196
    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_3

    .line 201
    .line 202
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result p5

    .line 206
    goto :goto_3

    .line 207
    :cond_3
    move p5, v1

    .line 208
    :goto_3
    iput p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->num_people:I

    .line 209
    .line 210
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->position:I

    .line 211
    .line 212
    iget p3, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 213
    .line 214
    iget-object p5, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 215
    .line 216
    if-nez p5, :cond_4

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_4
    invoke-static {p5, p3}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    .line 220
    .line 221
    .line 222
    move-result p3

    .line 223
    :goto_4
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance:I

    .line 224
    .line 225
    iput p4, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->alerting:I

    .line 226
    .line 227
    iget p3, p1, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 228
    .line 229
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_source:I

    .line 230
    .line 231
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 232
    .line 233
    iget p3, p3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    .line 234
    .line 235
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial:I

    .line 236
    .line 237
    iget p3, p1, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 238
    .line 239
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial_source:I

    .line 240
    .line 241
    iget p3, p1, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    .line 242
    .line 243
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_asst:I

    .line 244
    .line 245
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->mAdjustmentIssuer:Ljava/lang/String;

    .line 246
    .line 247
    if-nez p3, :cond_5

    .line 248
    .line 249
    move p3, v1

    .line 250
    goto :goto_5

    .line 251
    :cond_5
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 252
    .line 253
    .line 254
    move-result p3

    .line 255
    :goto_5
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_hash:I

    .line 256
    .line 257
    iget p3, p1, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    .line 258
    .line 259
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_ranking_score:F

    .line 260
    .line 261
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 262
    .line 263
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    .line 264
    .line 265
    .line 266
    move-result p3

    .line 267
    iput-boolean p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_ongoing:Z

    .line 268
    .line 269
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 270
    .line 271
    const/4 p4, 0x1

    .line 272
    if-eqz p3, :cond_7

    .line 273
    .line 274
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 275
    .line 276
    .line 277
    move-result-object p3

    .line 278
    if-nez p3, :cond_6

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_6
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 282
    .line 283
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 284
    .line 285
    .line 286
    move-result-object p3

    .line 287
    iget p3, p3, Landroid/app/Notification;->flags:I

    .line 288
    .line 289
    and-int/lit8 p3, p3, 0x40

    .line 290
    .line 291
    if-eqz p3, :cond_7

    .line 292
    .line 293
    move p3, p4

    .line 294
    goto :goto_7

    .line 295
    :cond_7
    :goto_6
    move p3, v1

    .line 296
    :goto_7
    iput-boolean p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_foreground_service:Z

    .line 297
    .line 298
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 299
    .line 300
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 301
    .line 302
    .line 303
    move-result-object p3

    .line 304
    invoke-virtual {p3}, Landroid/app/Notification;->getTimeoutAfter()J

    .line 305
    .line 306
    .line 307
    move-result-wide v3

    .line 308
    iput-wide v3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->timeout_millis:J

    .line 309
    .line 310
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 311
    .line 312
    if-eqz p3, :cond_9

    .line 313
    .line 314
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 315
    .line 316
    .line 317
    move-result-object p3

    .line 318
    if-nez p3, :cond_8

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :cond_8
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 322
    .line 323
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 324
    .line 325
    .line 326
    move-result-object p3

    .line 327
    iget p3, p3, Landroid/app/Notification;->flags:I

    .line 328
    .line 329
    and-int/2addr p3, v2

    .line 330
    if-eqz p3, :cond_9

    .line 331
    .line 332
    move p3, p4

    .line 333
    goto :goto_9

    .line 334
    :cond_9
    :goto_8
    move p3, v1

    .line 335
    :goto_9
    iput-boolean p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_non_dismissible:Z

    .line 336
    .line 337
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 338
    .line 339
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 340
    .line 341
    .line 342
    move-result-object p3

    .line 343
    iget-object p3, p3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 344
    .line 345
    if-eqz p3, :cond_a

    .line 346
    .line 347
    move p3, p4

    .line 348
    goto :goto_a

    .line 349
    :cond_a
    move p3, v1

    .line 350
    :goto_a
    iget-object p5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 351
    .line 352
    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 353
    .line 354
    .line 355
    move-result-object p5

    .line 356
    iget p5, p5, Landroid/app/Notification;->flags:I

    .line 357
    .line 358
    and-int/lit16 p5, p5, 0x4000

    .line 359
    .line 360
    if-eqz p5, :cond_b

    .line 361
    .line 362
    move p5, p4

    .line 363
    goto :goto_b

    .line 364
    :cond_b
    move p5, v1

    .line 365
    :goto_b
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_UPDATED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 366
    .line 367
    if-ne p2, v0, :cond_d

    .line 368
    .line 369
    :cond_c
    move p2, v1

    .line 370
    goto :goto_c

    .line 371
    :cond_d
    if-eqz p3, :cond_e

    .line 372
    .line 373
    move p2, p4

    .line 374
    goto :goto_c

    .line 375
    :cond_e
    if-eqz p5, :cond_c

    .line 376
    .line 377
    const/4 p2, 0x2

    .line 378
    :goto_c
    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->fsi_state:I

    .line 379
    .line 380
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 381
    .line 382
    if-nez p2, :cond_f

    .line 383
    .line 384
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    .line 385
    .line 386
    const-class p3, Landroid/app/KeyguardManager;

    .line 387
    .line 388
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object p2

    .line 392
    check-cast p2, Landroid/app/KeyguardManager;

    .line 393
    .line 394
    iput-object p2, p1, Lcom/android/server/notification/NotificationRecord;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 395
    .line 396
    :cond_f
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 397
    .line 398
    invoke-virtual {p2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 399
    .line 400
    .line 401
    move-result p2

    .line 402
    if-nez p2, :cond_10

    .line 403
    .line 404
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->mPowerManager:Landroid/os/PowerManager;

    .line 405
    .line 406
    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    .line 407
    .line 408
    .line 409
    move-result p2

    .line 410
    if-nez p2, :cond_11

    .line 411
    .line 412
    :cond_10
    move v1, p4

    .line 413
    :cond_11
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_locked:Z

    .line 414
    .line 415
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 416
    .line 417
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 418
    .line 419
    .line 420
    move-result-wide p2

    .line 421
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 422
    .line 423
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    invoke-virtual {p1}, Landroid/app/Notification;->getWhen()J

    .line 428
    .line 429
    .line 430
    move-result-wide p4

    .line 431
    sub-long/2addr p2, p4

    .line 432
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    invoke-virtual {p1}, Ljava/time/Duration;->toMinutes()J

    .line 437
    .line 438
    .line 439
    move-result-wide p1

    .line 440
    long-to-int p1, p1

    .line 441
    iput p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->age_in_minutes:I

    .line 442
    .line 443
    return-void
.end method
