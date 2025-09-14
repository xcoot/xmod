.class public final Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mCallingPid:I

.field public final mCallingUid:I

.field public final mCancellationElapsedTimeMs:J

.field public final mCount:I

.field public final mId:I

.field public final mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final mMustHaveFlags:I

.field public final mMustNotHaveFlags:I

.field public final mPkg:Ljava/lang/String;

.field public final mRank:I

.field public final mReason:I

.field public final mSendDelete:Z

.field public final mTag:Ljava/lang/String;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;J)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move v1, p2

    .line 2
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    move v1, p3

    .line 3
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    move-object v1, p4

    .line 4
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    move-object v1, p5

    .line 5
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    move v1, p6

    .line 6
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    move v1, p7

    .line 7
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    move v1, p8

    .line 8
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    move v1, p9

    .line 9
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    move v1, p10

    .line 10
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    move v1, p11

    .line 11
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    move v1, p12

    .line 12
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    move/from16 v1, p13

    .line 13
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    move-object/from16 v1, p14

    .line 14
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-wide/from16 v1, p15

    .line 15
    iput-wide v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCancellationElapsedTimeMs:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string/jumbo v1, "updateCancelEvent key = "

    .line 4
    .line 5
    .line 6
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :goto_0
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 19
    .line 20
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    .line 21
    .line 22
    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    .line 23
    .line 24
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 25
    .line 26
    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    .line 27
    .line 28
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    .line 29
    .line 30
    iget v8, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 31
    .line 32
    iget v9, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    .line 33
    .line 34
    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    .line 35
    .line 36
    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    .line 37
    .line 38
    move-object v12, v2

    .line 39
    invoke-static/range {v3 .. v12}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v4, 0x0

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 50
    .line 51
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v3, v5}, Lcom/android/server/notification/NotificationManagerService;->getPackageImportanceWithIdentity(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v3, v4

    .line 59
    :goto_1
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 60
    .line 61
    iget-object v13, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v13

    .line 64
    :try_start_0
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 65
    .line 66
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    .line 69
    .line 70
    iget v8, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    .line 71
    .line 72
    iget v9, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 73
    .line 74
    invoke-virtual {v5, v8, v9, v6, v7}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(IILjava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    .line 75
    .line 76
    .line 77
    move-result-object v14

    .line 78
    if-eqz v14, :cond_b

    .line 79
    .line 80
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    .line 81
    .line 82
    const/4 v15, 0x1

    .line 83
    if-ne v5, v15, :cond_2

    .line 84
    .line 85
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 86
    .line 87
    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 88
    .line 89
    invoke-virtual {v5, v14}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto/16 :goto_4

    .line 95
    .line 96
    :cond_2
    :goto_2
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    .line 97
    .line 98
    const/16 v6, 0xa

    .line 99
    .line 100
    if-ne v5, v6, :cond_3

    .line 101
    .line 102
    iget-object v5, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 103
    .line 104
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v5}, Landroid/app/Notification;->isBubbleNotification()Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_4

    .line 113
    .line 114
    :cond_3
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    .line 115
    .line 116
    if-ne v5, v15, :cond_6

    .line 117
    .line 118
    iget-boolean v5, v14, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 119
    .line 120
    if-eqz v5, :cond_6

    .line 121
    .line 122
    iget-boolean v5, v14, Lcom/android/server/notification/NotificationRecord;->mFlagBubbleRemoved:Z

    .line 123
    .line 124
    if-eqz v5, :cond_6

    .line 125
    .line 126
    :cond_4
    iget-object v1, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-eqz v1, :cond_5

    .line 137
    .line 138
    iget-object v1, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    :cond_5
    or-int/lit8 v1, v4, 0x2

    .line 153
    .line 154
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 157
    .line 158
    iget-object v2, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 159
    .line 160
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 165
    .line 166
    invoke-virtual {v0, v2, v1}, Lcom/android/server/notification/NotificationManagerService$3;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    monitor-exit v13

    .line 170
    return-void

    .line 171
    :cond_6
    iget-object v5, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 172
    .line 173
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    iget v5, v5, Landroid/app/Notification;->flags:I

    .line 178
    .line 179
    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    .line 180
    .line 181
    and-int/2addr v5, v6

    .line 182
    if-eq v5, v6, :cond_7

    .line 183
    .line 184
    monitor-exit v13

    .line 185
    return-void

    .line 186
    :cond_7
    iget-object v5, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 187
    .line 188
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    iget v5, v5, Landroid/app/Notification;->flags:I

    .line 193
    .line 194
    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    .line 195
    .line 196
    and-int/2addr v5, v6

    .line 197
    if-eqz v5, :cond_9

    .line 198
    .line 199
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_8

    .line 204
    .line 205
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 206
    .line 207
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v1, v14, v0, v3}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifySystemUiListenerLifetimeExtendedLocked(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    .line 210
    .line 211
    .line 212
    :cond_8
    monitor-exit v13

    .line 213
    return-void

    .line 214
    :cond_9
    new-instance v11, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda5;

    .line 215
    .line 216
    invoke-direct {v11, v0}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 220
    .line 221
    iget-boolean v5, v3, Lcom/android/server/notification/NotificationManagerService;->mFoldState:Z

    .line 222
    .line 223
    if-nez v5, :cond_a

    .line 224
    .line 225
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 226
    .line 227
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 228
    .line 229
    iget-object v3, v3, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    .line 230
    .line 231
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_a

    .line 236
    .line 237
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 238
    .line 239
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 240
    .line 241
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    const/16 v5, 0x64

    .line 248
    .line 249
    if-ne v3, v5, :cond_a

    .line 250
    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 257
    .line 258
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string/jumbo v5, "|"

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string/jumbo v5, "|"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    .line 279
    .line 280
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string/jumbo v5, "|"

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string/jumbo v5, "|"

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    .line 301
    .line 302
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    const-string v5, "NotificationService"

    .line 310
    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 327
    .line 328
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    .line 329
    .line 330
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 331
    .line 332
    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/notification/NotificationHistoryManager;->updateCancelEvent(ILjava/lang/String;Z)V

    .line 333
    .line 334
    .line 335
    :cond_a
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 336
    .line 337
    invoke-virtual {v1, v14}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 342
    .line 343
    iget-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    .line 344
    .line 345
    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    .line 346
    .line 347
    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    .line 348
    .line 349
    iget v8, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    .line 350
    .line 351
    move-object v1, v11

    .line 352
    iget-wide v11, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCancellationElapsedTimeMs:J

    .line 353
    .line 354
    move-object v4, v14

    .line 355
    move-object v10, v2

    .line 356
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V

    .line 357
    .line 358
    .line 359
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 360
    .line 361
    iget-boolean v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    .line 362
    .line 363
    iget-wide v7, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCancellationElapsedTimeMs:J

    .line 364
    .line 365
    move-object v4, v14

    .line 366
    move-object v5, v2

    .line 367
    invoke-static/range {v3 .. v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelGroupSummaryLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ZJ)V

    .line 368
    .line 369
    .line 370
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 371
    .line 372
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    .line 373
    .line 374
    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    .line 375
    .line 376
    iget-boolean v8, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    .line 377
    .line 378
    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    .line 379
    .line 380
    iget-wide v11, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCancellationElapsedTimeMs:J

    .line 381
    .line 382
    move-object v4, v14

    .line 383
    move-object v7, v2

    .line 384
    move-object v9, v1

    .line 385
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V

    .line 386
    .line 387
    .line 388
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 389
    .line 390
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 391
    .line 392
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 393
    .line 394
    .line 395
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 396
    .line 397
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 398
    .line 399
    if-eqz v1, :cond_c

    .line 400
    .line 401
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 402
    .line 403
    invoke-virtual {v1, v14, v15, v0}, Lcom/android/server/notification/ShortcutHelper;->maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;ZLandroid/os/Handler;)V

    .line 404
    .line 405
    .line 406
    goto :goto_3

    .line 407
    :cond_b
    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    .line 408
    .line 409
    const/16 v2, 0x12

    .line 410
    .line 411
    if-eq v1, v2, :cond_c

    .line 412
    .line 413
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 414
    .line 415
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 416
    .line 417
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 418
    .line 419
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 420
    .line 421
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    .line 422
    .line 423
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    .line 424
    .line 425
    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->cancel(IILjava/lang/String;Ljava/lang/String;)Z

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    if-eqz v1, :cond_c

    .line 430
    .line 431
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 432
    .line 433
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 434
    .line 435
    .line 436
    :cond_c
    :goto_3
    monitor-exit v13

    .line 437
    return-void

    .line 438
    :goto_4
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    throw v0
.end method
