.class public final Lcom/android/server/notification/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onReceive$com$android$server$notification$NotificationManagerService$10(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.USER_STOPPED"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string p1, "android.intent.extra.user_handle"

    .line 15
    .line 16
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v9

    .line 20
    if-ltz v9, :cond_1c

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 23
    .line 24
    sget v4, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 25
    .line 26
    sget v5, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v10, 0x6

    .line 32
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_c

    .line 36
    .line 37
    :cond_0
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->privateSpaceFlagsEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const-string v1, "android.intent.action.PROFILE_UNAVAILABLE"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    :goto_0
    const/4 v3, 0x1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    const-string p1, "android.intent.extra.user_handle"

    .line 60
    .line 61
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-ltz p1, :cond_1c

    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 68
    .line 69
    sget v5, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 70
    .line 71
    sget v6, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v9, 0x0

    .line 75
    const/4 v7, 0x0

    .line 76
    const/16 v11, 0xf

    .line 77
    .line 78
    move v10, p1

    .line 79
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 85
    .line 86
    iget-object p2, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter p2

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    sub-int/2addr v0, v3

    .line 96
    :goto_1
    if-ltz v0, :cond_3

    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 105
    .line 106
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-ne v2, p1, :cond_2

    .line 113
    .line 114
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 115
    .line 116
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v2}, Lcom/android/server/notification/SnoozeHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    .line 130
    .line 131
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    .line 135
    .line 136
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 140
    .line 141
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {p0, v2}, Lcom/android/server/notification/SnoozeHelper;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    .line 150
    .line 151
    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const/16 v2, 0x33f

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const/4 v2, 0x5

    .line 165
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catchall_0
    move-exception p0

    .line 174
    goto :goto_3

    .line 175
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_3
    monitor-exit p2

    .line 179
    goto/16 :goto_c

    .line 180
    .line 181
    :goto_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    throw p0

    .line 183
    :cond_4
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    const/4 v2, 0x0

    .line 190
    const/4 v4, 0x0

    .line 191
    const/16 v5, -0x2710

    .line 192
    .line 193
    if-eqz v1, :cond_b

    .line 194
    .line 195
    const-string v0, "NotificationService"

    .line 196
    .line 197
    const-string v1, "Receiving  ACTION_USER_SWITCHED"

    .line 198
    .line 199
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lcom/android/server/notification/Flags;->useSsmUserSwitchSignal()Z

    .line 203
    .line 204
    .line 205
    const-string v0, "android.intent.extra.user_handle"

    .line 206
    .line 207
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 212
    .line 213
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 214
    .line 215
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 219
    .line 220
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 221
    .line 222
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isProfileUser(Landroid/content/Context;I)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-nez p1, :cond_5

    .line 227
    .line 228
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 229
    .line 230
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 231
    .line 232
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 233
    .line 234
    .line 235
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 236
    .line 237
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 238
    .line 239
    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 243
    .line 244
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 245
    .line 246
    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 250
    .line 251
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 252
    .line 253
    const-string/jumbo v0, "onUserSwitched"

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p2, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 260
    .line 261
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 262
    .line 263
    invoke-virtual {p1}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd()V

    .line 264
    .line 265
    .line 266
    :cond_5
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 267
    .line 268
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 269
    .line 270
    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 274
    .line 275
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 276
    .line 277
    iput p2, p1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    .line 278
    .line 279
    iget-object v0, p1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string/jumbo v2, "onSwitchUser : "

    .line 287
    .line 288
    .line 289
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    const-string v2, "EdgeLightingClientManager"

    .line 300
    .line 301
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    sget-object v1, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->createEdgeLightingService(Landroid/os/UserHandle;)V

    .line 307
    .line 308
    .line 309
    iget-object v0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingSettingObserver:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    .line 310
    .line 311
    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 312
    .line 313
    iget-object v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 314
    .line 315
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    iget v2, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    .line 320
    .line 321
    const-string v5, "edge_lighting"

    .line 322
    .line 323
    const/4 v6, -0x2

    .line 324
    invoke-static {v1, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-ne v1, v3, :cond_6

    .line 329
    .line 330
    move v1, v3

    .line 331
    goto :goto_4

    .line 332
    :cond_6
    move v1, v4

    .line 333
    :goto_4
    iput-boolean v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 334
    .line 335
    iget-object v0, p1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 336
    .line 337
    iput p2, v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUserId:I

    .line 338
    .line 339
    invoke-virtual {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->updateCurrentProfilesCache()V

    .line 340
    .line 341
    .line 342
    const-string p1, "NotificationService"

    .line 343
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string v1, "ACTION_USER_SWITCHED: "

    .line 347
    .line 348
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 362
    .line 363
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationHighlightCore:Lcom/android/server/notification/NotificationHighlightCore;

    .line 364
    .line 365
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 369
    .line 370
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 375
    .line 376
    .line 377
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 378
    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    const-string/jumbo v0, "noti_intelligence_priority_conversation"

    .line 384
    .line 385
    .line 386
    invoke-static {p1, v0, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 387
    .line 388
    .line 389
    move-result p1

    .line 390
    if-ne p1, v3, :cond_7

    .line 391
    .line 392
    move p1, v3

    .line 393
    goto :goto_5

    .line 394
    :cond_7
    move p1, v4

    .line 395
    :goto_5
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationHighlightCore;->mPrivacyConverstionEnabled:Z

    .line 396
    .line 397
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 398
    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    iget-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mSettingsObserver:Lcom/android/server/notification/NotificationHighlightCore$2;

    .line 404
    .line 405
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 406
    .line 407
    .line 408
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 409
    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    iget-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->PRIVACY_CONVERSATION_URI:Landroid/net/Uri;

    .line 415
    .line 416
    iget-object v1, p0, Lcom/android/server/notification/NotificationHighlightCore;->mSettingsObserver:Lcom/android/server/notification/NotificationHighlightCore$2;

    .line 417
    .line 418
    invoke-virtual {p1, v0, v3, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 419
    .line 420
    .line 421
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 422
    .line 423
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    iget-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->AUTO_GROUPING_URI:Landroid/net/Uri;

    .line 428
    .line 429
    iget-object v1, p0, Lcom/android/server/notification/NotificationHighlightCore;->mSettingsObserver:Lcom/android/server/notification/NotificationHighlightCore$2;

    .line 430
    .line 431
    invoke-virtual {p1, v0, v3, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 432
    .line 433
    .line 434
    const-string/jumbo p1, "onSwitchUser:"

    .line 435
    .line 436
    .line 437
    const-string v0, " mPrivacyConverstionEnabled="

    .line 438
    .line 439
    invoke-static {p2, p1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationHighlightCore;->mPrivacyConverstionEnabled:Z

    .line 444
    .line 445
    const-string v2, "NotificationHighlightCore"

    .line 446
    .line 447
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 448
    .line 449
    .line 450
    iget-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 451
    .line 452
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    const-string/jumbo v1, "noti_filter_promotion_notification"

    .line 457
    .line 458
    .line 459
    invoke-static {v0, v1, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    if-ne v0, v3, :cond_8

    .line 464
    .line 465
    move v0, v3

    .line 466
    goto :goto_6

    .line 467
    :cond_8
    move v0, v4

    .line 468
    :goto_6
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mPromotionsEnabled:Z

    .line 469
    .line 470
    iget-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 471
    .line 472
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    const-string/jumbo v1, "noti_filter_background_notification"

    .line 477
    .line 478
    .line 479
    invoke-static {v0, v1, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-ne v0, v3, :cond_9

    .line 484
    .line 485
    move v0, v3

    .line 486
    goto :goto_7

    .line 487
    :cond_9
    move v0, v4

    .line 488
    :goto_7
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mBgActivitiesEnabled:Z

    .line 489
    .line 490
    iget-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 491
    .line 492
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    const-string/jumbo v1, "noti_filter_low_importance_notification"

    .line 497
    .line 498
    .line 499
    invoke-static {v0, v1, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    if-ne v0, v3, :cond_a

    .line 504
    .line 505
    move v4, v3

    .line 506
    :cond_a
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationHighlightCore;->mMinimizedNotiEnabled:Z

    .line 507
    .line 508
    iget-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 509
    .line 510
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/android/server/notification/NotificationHighlightCore;->PROMOTION_URI:Landroid/net/Uri;

    .line 515
    .line 516
    iget-object v4, p0, Lcom/android/server/notification/NotificationHighlightCore;->mSettingsObserver:Lcom/android/server/notification/NotificationHighlightCore$2;

    .line 517
    .line 518
    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 519
    .line 520
    .line 521
    iget-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 522
    .line 523
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    iget-object v1, p0, Lcom/android/server/notification/NotificationHighlightCore;->BG_ACTIVITIES_URI:Landroid/net/Uri;

    .line 528
    .line 529
    iget-object v4, p0, Lcom/android/server/notification/NotificationHighlightCore;->mSettingsObserver:Lcom/android/server/notification/NotificationHighlightCore$2;

    .line 530
    .line 531
    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 532
    .line 533
    .line 534
    iget-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 535
    .line 536
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    iget-object v1, p0, Lcom/android/server/notification/NotificationHighlightCore;->MINIMIZED_NOTIFICATIONS_URI:Landroid/net/Uri;

    .line 541
    .line 542
    iget-object v4, p0, Lcom/android/server/notification/NotificationHighlightCore;->mSettingsObserver:Lcom/android/server/notification/NotificationHighlightCore$2;

    .line 543
    .line 544
    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 545
    .line 546
    .line 547
    const-string v0, " mPromotionsEnabled="

    .line 548
    .line 549
    invoke-static {p2, p1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    iget-boolean p2, p0, Lcom/android/server/notification/NotificationHighlightCore;->mPromotionsEnabled:Z

    .line 554
    .line 555
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    const-string p2, " mBgActivitiesEnabled="

    .line 559
    .line 560
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    iget-boolean p2, p0, Lcom/android/server/notification/NotificationHighlightCore;->mBgActivitiesEnabled:Z

    .line 564
    .line 565
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    const-string p2, " mMinimizedNotiEnabled="

    .line 569
    .line 570
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mMinimizedNotiEnabled:Z

    .line 574
    .line 575
    invoke-static {v2, p1, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_c

    .line 579
    .line 580
    :cond_b
    const-string v1, "android.intent.action.USER_ADDED"

    .line 581
    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v1

    .line 586
    if-eqz v1, :cond_e

    .line 587
    .line 588
    const-string v0, "android.intent.extra.user_handle"

    .line 589
    .line 590
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 591
    .line 592
    .line 593
    move-result p2

    .line 594
    if-eq p2, v5, :cond_d

    .line 595
    .line 596
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 597
    .line 598
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 599
    .line 600
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 601
    .line 602
    .line 603
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 604
    .line 605
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 606
    .line 607
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isProfileUser(Landroid/content/Context;I)Z

    .line 608
    .line 609
    .line 610
    move-result p1

    .line 611
    if-nez p1, :cond_c

    .line 612
    .line 613
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 614
    .line 615
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationManagerService;->allowDefaultApprovedServices(I)V

    .line 616
    .line 617
    .line 618
    :cond_c
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 619
    .line 620
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    .line 621
    .line 622
    iget-object p1, p1, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    .line 623
    .line 624
    invoke-virtual {p1, p2, v2}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->update(ILandroid/net/Uri;)V

    .line 625
    .line 626
    .line 627
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 628
    .line 629
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 630
    .line 631
    invoke-virtual {p1, p2, v3}, Lcom/android/server/notification/NotificationManagerService$Archive;->updateHistoryEnabled(IZ)V

    .line 632
    .line 633
    .line 634
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 635
    .line 636
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    .line 637
    .line 638
    iget-object p1, p1, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    .line 639
    .line 640
    invoke-virtual {p1, p2, v2}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->update(ILandroid/net/Uri;)V

    .line 641
    .line 642
    .line 643
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 644
    .line 645
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 646
    .line 647
    invoke-virtual {p1, p2, v2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(ILandroid/net/Uri;)V

    .line 648
    .line 649
    .line 650
    :cond_d
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 651
    .line 652
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 653
    .line 654
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->updateCurrentProfilesCache()V

    .line 655
    .line 656
    .line 657
    goto/16 :goto_c

    .line 658
    .line 659
    :cond_e
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 660
    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result v1

    .line 665
    if-eqz v1, :cond_13

    .line 666
    .line 667
    const-string v0, "android.intent.extra.user_handle"

    .line 668
    .line 669
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 670
    .line 671
    .line 672
    move-result p2

    .line 673
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 674
    .line 675
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 676
    .line 677
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 678
    .line 679
    .line 680
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 681
    .line 682
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 683
    .line 684
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    if-gez p2, :cond_f

    .line 688
    .line 689
    goto :goto_8

    .line 690
    :cond_f
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 691
    .line 692
    if-eqz v0, :cond_10

    .line 693
    .line 694
    const-string v0, "ZenModeHelper"

    .line 695
    .line 696
    const-string/jumbo v1, "onUserRemoved u="

    .line 697
    .line 698
    .line 699
    invoke-static {p2, v1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    :cond_10
    iget-object v1, p1, Lcom/android/server/notification/ZenModeHelper;->mConfigsArrayLock:Ljava/lang/Object;

    .line 703
    .line 704
    monitor-enter v1

    .line 705
    :try_start_1
    iget-object p1, p1, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 706
    .line 707
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 708
    .line 709
    .line 710
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 711
    :goto_8
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 712
    .line 713
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 714
    .line 715
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 716
    .line 717
    monitor-enter v0

    .line 718
    :try_start_2
    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 719
    .line 720
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 721
    .line 722
    .line 723
    move-result v1

    .line 724
    sub-int/2addr v1, v3

    .line 725
    :goto_9
    if-ltz v1, :cond_12

    .line 726
    .line 727
    iget-object v2, p1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 728
    .line 729
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v2

    .line 733
    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 734
    .line 735
    iget v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 736
    .line 737
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 738
    .line 739
    .line 740
    move-result v2

    .line 741
    if-ne v2, p2, :cond_11

    .line 742
    .line 743
    iget-object v2, p1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 744
    .line 745
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    goto :goto_a

    .line 749
    :catchall_1
    move-exception p0

    .line 750
    goto :goto_b

    .line 751
    :cond_11
    :goto_a
    add-int/lit8 v1, v1, -0x1

    .line 752
    .line 753
    goto :goto_9

    .line 754
    :cond_12
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 755
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 756
    .line 757
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 758
    .line 759
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserRemoved(I)V

    .line 760
    .line 761
    .line 762
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 763
    .line 764
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 765
    .line 766
    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices;->onUserRemoved(I)V

    .line 767
    .line 768
    .line 769
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 770
    .line 771
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 772
    .line 773
    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices;->onUserRemoved(I)V

    .line 774
    .line 775
    .line 776
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 777
    .line 778
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    .line 779
    .line 780
    iget-object v1, p1, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 781
    .line 782
    monitor-enter v1

    .line 783
    :try_start_3
    iget-object v0, p1, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    .line 784
    .line 785
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 786
    .line 787
    .line 788
    iget-object v0, p1, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    .line 789
    .line 790
    invoke-virtual {v0, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 791
    .line 792
    .line 793
    iget-object v0, p1, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    .line 794
    .line 795
    invoke-virtual {v0, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationHistoryManager;->onUserStopped(I)V

    .line 799
    .line 800
    .line 801
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 802
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 803
    .line 804
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 805
    .line 806
    invoke-virtual {p1}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd()V

    .line 807
    .line 808
    .line 809
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 810
    .line 811
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 812
    .line 813
    .line 814
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 815
    .line 816
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 817
    .line 818
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->updateCurrentProfilesCache()V

    .line 819
    .line 820
    .line 821
    goto/16 :goto_c

    .line 822
    .line 823
    :catchall_2
    move-exception p0

    .line 824
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 825
    throw p0

    .line 826
    :goto_b
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 827
    throw p0

    .line 828
    :catchall_3
    move-exception p0

    .line 829
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 830
    throw p0

    .line 831
    :cond_13
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 832
    .line 833
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 834
    .line 835
    .line 836
    move-result v1

    .line 837
    if-eqz v1, :cond_17

    .line 838
    .line 839
    const-string v0, "android.intent.extra.user_handle"

    .line 840
    .line 841
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 842
    .line 843
    .line 844
    move-result p2

    .line 845
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 846
    .line 847
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 848
    .line 849
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 850
    .line 851
    .line 852
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 853
    .line 854
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 855
    .line 856
    iget-boolean v1, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 857
    .line 858
    if-eqz v1, :cond_14

    .line 859
    .line 860
    const-string/jumbo v1, "onUserUnlocked u="

    .line 861
    .line 862
    .line 863
    invoke-static {p2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 868
    .line 869
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    .line 871
    .line 872
    :cond_14
    const/4 v1, 0x1

    .line 873
    invoke-virtual {v0, p2, v1}, Lcom/android/server/notification/ManagedServices;->rebindServices(IZ)V

    .line 874
    .line 875
    .line 876
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 877
    .line 878
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 879
    .line 880
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isProfileUser(Landroid/content/Context;I)Z

    .line 881
    .line 882
    .line 883
    move-result p1

    .line 884
    if-nez p1, :cond_1c

    .line 885
    .line 886
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 887
    .line 888
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 889
    .line 890
    iget-boolean v0, p1, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 891
    .line 892
    if-eqz v0, :cond_15

    .line 893
    .line 894
    const-string/jumbo v0, "onUserUnlocked u="

    .line 895
    .line 896
    .line 897
    invoke-static {p2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 902
    .line 903
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    .line 905
    .line 906
    :cond_15
    invoke-virtual {p1, p2, v4}, Lcom/android/server/notification/ManagedServices;->rebindServices(IZ)V

    .line 907
    .line 908
    .line 909
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 910
    .line 911
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 912
    .line 913
    iget-boolean v0, p1, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 914
    .line 915
    if-eqz v0, :cond_16

    .line 916
    .line 917
    const-string/jumbo v0, "onUserUnlocked u="

    .line 918
    .line 919
    .line 920
    invoke-static {p2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 925
    .line 926
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .line 928
    .line 929
    :cond_16
    invoke-virtual {p1, p2, v4}, Lcom/android/server/notification/ManagedServices;->rebindServices(IZ)V

    .line 930
    .line 931
    .line 932
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 933
    .line 934
    .line 935
    move-result p1

    .line 936
    if-nez p1, :cond_1c

    .line 937
    .line 938
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 939
    .line 940
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 941
    .line 942
    const-string/jumbo p1, "onUserUnlocked"

    .line 943
    .line 944
    .line 945
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    .line 946
    .line 947
    .line 948
    goto/16 :goto_c

    .line 949
    .line 950
    :cond_17
    const-string p1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 951
    .line 952
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 953
    .line 954
    .line 955
    move-result p1

    .line 956
    if-eqz p1, :cond_19

    .line 957
    .line 958
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 959
    .line 960
    iget-object p2, p1, Lcom/android/server/notification/NotificationManagerService;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 961
    .line 962
    if-nez p2, :cond_18

    .line 963
    .line 964
    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 965
    .line 966
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 967
    .line 968
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    const-string v1, "AccessibilityManagerService"

    .line 973
    .line 974
    const-string/jumbo v2, "toast"

    .line 975
    .line 976
    .line 977
    filled-new-array {v2}, [Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v2

    .line 981
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 982
    .line 983
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchStateListener:Lcom/android/server/notification/NotificationManagerService$27;

    .line 984
    .line 985
    invoke-direct {p2, v0, v1, v2, v3}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    .line 986
    .line 987
    .line 988
    iput-object p2, p1, Lcom/android/server/notification/NotificationManagerService;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 989
    .line 990
    const-string p1, "NotificationService"

    .line 991
    .line 992
    const-string p2, "SemGoodCatchManager is created"

    .line 993
    .line 994
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    .line 996
    .line 997
    :cond_18
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 998
    .line 999
    iget-object p2, p1, Lcom/android/server/notification/NotificationManagerService;->mNotiSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 1000
    .line 1001
    if-nez p2, :cond_1c

    .line 1002
    .line 1003
    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 1004
    .line 1005
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1006
    .line 1007
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v0

    .line 1011
    const-string v1, "NotificationManagerService"

    .line 1012
    .line 1013
    const-string/jumbo v2, "noti_blocked"

    .line 1014
    .line 1015
    .line 1016
    filled-new-array {v2}, [Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v2

    .line 1020
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1021
    .line 1022
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotiGoodCatchStateListener:Lcom/android/server/notification/NotificationManagerService$27;

    .line 1023
    .line 1024
    invoke-direct {p2, v0, v1, v2, p0}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    .line 1025
    .line 1026
    .line 1027
    iput-object p2, p1, Lcom/android/server/notification/NotificationManagerService;->mNotiSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 1028
    .line 1029
    const-string p0, "NotificationService"

    .line 1030
    .line 1031
    const-string/jumbo p1, "mNotiSemGoodCatchManager is created"

    .line 1032
    .line 1033
    .line 1034
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    .line 1036
    .line 1037
    goto :goto_c

    .line 1038
    :cond_19
    const-string/jumbo p1, "samsung.intent.action.PHONE_STATE"

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result p1

    .line 1045
    if-eqz p1, :cond_1a

    .line 1046
    .line 1047
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 1048
    .line 1049
    const-string/jumbo v0, "state"

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object p2

    .line 1056
    if-eq p1, p2, :cond_1c

    .line 1057
    .line 1058
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1059
    .line 1060
    iput-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mCMCinCallState:Z

    .line 1061
    .line 1062
    goto :goto_c

    .line 1063
    :cond_1a
    const-string p1, "android.intent.action.DATE_CHANGED"

    .line 1064
    .line 1065
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result p1

    .line 1069
    if-eqz p1, :cond_1b

    .line 1070
    .line 1071
    const-string p1, "NotificationService"

    .line 1072
    .line 1073
    const-string p2, "ACTION_DATE_CHANGED"

    .line 1074
    .line 1075
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .line 1077
    .line 1078
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1079
    .line 1080
    iget-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mOldNotiEnabled:Z

    .line 1081
    .line 1082
    if-eqz p1, :cond_1c

    .line 1083
    .line 1084
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1085
    .line 1086
    new-instance p2, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda1;

    .line 1087
    .line 1088
    const/4 v0, 0x1

    .line 1089
    invoke-direct {p2, p0, v0}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1093
    .line 1094
    .line 1095
    goto :goto_c

    .line 1096
    :cond_1b
    const-string p1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 1097
    .line 1098
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1099
    .line 1100
    .line 1101
    move-result p1

    .line 1102
    if-eqz p1, :cond_1c

    .line 1103
    .line 1104
    const-string p1, "NotificationService"

    .line 1105
    .line 1106
    const-string p2, "ACTION_SOFT_RESET"

    .line 1107
    .line 1108
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .line 1110
    .line 1111
    :try_start_7
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1112
    .line 1113
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    .line 1114
    .line 1115
    .line 1116
    move-result-object p0

    .line 1117
    invoke-interface {p0}, Landroid/app/INotificationManager;->resetDefaultAllowOngoingActivity()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1118
    .line 1119
    .line 1120
    goto :goto_c

    .line 1121
    :catch_0
    move-exception p0

    .line 1122
    const-string p1, "NotificationService"

    .line 1123
    .line 1124
    const-string p2, "ACTION_SOFT_RESET - getBinderService exception"

    .line 1125
    .line 1126
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1130
    .line 1131
    .line 1132
    :cond_1c
    :goto_c
    return-void
.end method

.method private final onReceive$com$android$server$notification$NotificationManagerService$6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_9

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 17
    .line 18
    iget-object v0, p2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultConfigAutomaticRules()V

    .line 21
    .line 22
    .line 23
    iget-object p2, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p2

    .line 26
    :try_start_0
    iget-object v1, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    monitor-exit p2

    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, v0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 42
    .line 43
    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    move v3, v7

    .line 54
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 65
    .line 66
    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 67
    .line 68
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 75
    .line 76
    if-eqz v5, :cond_1

    .line 77
    .line 78
    iget-boolean v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    .line 79
    .line 80
    if-nez v6, :cond_1

    .line 81
    .line 82
    iget v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 83
    .line 84
    const/4 v8, 0x1

    .line 85
    and-int/2addr v6, v8

    .line 86
    if-nez v6, :cond_1

    .line 87
    .line 88
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v9, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-nez v6, :cond_1

    .line 97
    .line 98
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 99
    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    const-string v3, "ZenModeHelper"

    .line 103
    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v9, "Locale change - updating default zen rule name from "

    .line 110
    .line 111
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v9, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v9, " to "

    .line 120
    .line 121
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v9, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :cond_2
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 137
    .line 138
    iput-object v3, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 139
    .line 140
    move v3, v8

    .line 141
    goto :goto_0

    .line 142
    :cond_3
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_5

    .line 147
    .line 148
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_5

    .line 153
    .line 154
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 155
    .line 156
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_5

    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 175
    .line 176
    invoke-static {v4}, Landroid/service/notification/SystemZenRules;->isSystemOwnedRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_4

    .line 181
    .line 182
    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    invoke-static {v5, v4}, Landroid/service/notification/SystemZenRules;->updateTriggerDescription(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    or-int/2addr v3, v4

    .line 189
    goto :goto_1

    .line 190
    :cond_5
    if-eqz v3, :cond_6

    .line 191
    .line 192
    const-string/jumbo v3, "updateZenRulesOnLocaleChange"

    .line 193
    .line 194
    .line 195
    const/4 v2, 0x5

    .line 196
    const/16 v6, 0x3e8

    .line 197
    .line 198
    const/4 v5, 0x1

    .line 199
    const/4 v4, 0x0

    .line 200
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 201
    .line 202
    .line 203
    :cond_6
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 205
    .line 206
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 207
    .line 208
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 213
    .line 214
    monitor-enter v0

    .line 215
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 216
    .line 217
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    :goto_3
    if-ge v7, v1, :cond_8

    .line 222
    .line 223
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 224
    .line 225
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 230
    .line 231
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 232
    .line 233
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-ne v3, p2, :cond_7

    .line 238
    .line 239
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 240
    .line 241
    const-string/jumbo v4, "miscellaneous"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_7

    .line 249
    .line 250
    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 251
    .line 252
    const-string/jumbo v3, "miscellaneous"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    check-cast v2, Landroid/app/NotificationChannel;

    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    const v4, 0x104044b

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :catchall_1
    move-exception p0

    .line 277
    goto :goto_5

    .line 278
    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_8
    monitor-exit v0

    .line 282
    goto :goto_7

    .line 283
    :goto_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 284
    throw p0

    .line 285
    :goto_6
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    throw p0

    .line 287
    :cond_9
    :goto_7
    return-void
.end method

.method private final onReceive$com$android$server$notification$NotificationManagerService$9(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string v5, "android.intent.action.PACKAGE_RESTARTED"

    .line 30
    .line 31
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    .line 38
    .line 39
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 46
    .line 47
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-nez v6, :cond_3

    .line 52
    .line 53
    const-string v6, "android.intent.action.PACKAGES_SUSPENDED"

    .line 54
    .line 55
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-nez v6, :cond_3

    .line 60
    .line 61
    const-string v6, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 62
    .line 63
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-nez v6, :cond_3

    .line 68
    .line 69
    const-string v6, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    .line 70
    .line 71
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_28

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move v5, v4

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move v0, v4

    .line 81
    move v5, v0

    .line 82
    :cond_3
    :goto_0
    const-string v6, "android.intent.extra.user_handle"

    .line 83
    .line 84
    const/4 v7, -0x1

    .line 85
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    const/4 v15, 0x1

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    const-string v0, "android.intent.extra.REPLACING"

    .line 93
    .line 94
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_4

    .line 99
    .line 100
    move v14, v15

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    move v14, v4

    .line 103
    :goto_1
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 104
    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    const-string v0, "NotificationService"

    .line 108
    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v9, "action="

    .line 112
    .line 113
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v9, " removing="

    .line 120
    .line 121
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_5
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 135
    .line 136
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_6

    .line 141
    .line 142
    const-string v0, "android.intent.extra.changed_package_list"

    .line 143
    .line 144
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const-string v5, "android.intent.extra.changed_uid_list"

    .line 149
    .line 150
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    move v8, v4

    .line 155
    move v9, v8

    .line 156
    move-object v13, v5

    .line 157
    move-object v5, v0

    .line 158
    move v0, v15

    .line 159
    goto/16 :goto_5

    .line 160
    .line 161
    :cond_6
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    .line 162
    .line 163
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_7

    .line 168
    .line 169
    const-string v0, "android.intent.extra.changed_package_list"

    .line 170
    .line 171
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-string v5, "android.intent.extra.changed_uid_list"

    .line 176
    .line 177
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    move v9, v4

    .line 182
    move-object v13, v5

    .line 183
    move v8, v15

    .line 184
    move-object v5, v0

    .line 185
    move v0, v9

    .line 186
    goto/16 :goto_5

    .line 187
    .line 188
    :cond_7
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 189
    .line 190
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_8

    .line 195
    .line 196
    const-string v0, "android.intent.extra.changed_package_list"

    .line 197
    .line 198
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v5, "android.intent.extra.changed_uid_list"

    .line 203
    .line 204
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    move v8, v4

    .line 209
    move-object v13, v5

    .line 210
    move v9, v15

    .line 211
    move-object v5, v0

    .line 212
    move v0, v8

    .line 213
    goto/16 :goto_5

    .line 214
    .line 215
    :cond_8
    const-string v0, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    .line 216
    .line 217
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_a

    .line 222
    .line 223
    const-string v0, "android.intent.extra.distraction_restrictions"

    .line 224
    .line 225
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    and-int/lit8 v0, v0, 0x2

    .line 230
    .line 231
    if-eqz v0, :cond_9

    .line 232
    .line 233
    const-string v0, "android.intent.extra.changed_package_list"

    .line 234
    .line 235
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    const-string v5, "android.intent.extra.changed_uid_list"

    .line 240
    .line 241
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    move v9, v4

    .line 246
    move v8, v15

    .line 247
    goto :goto_2

    .line 248
    :cond_9
    const-string v0, "android.intent.extra.changed_package_list"

    .line 249
    .line 250
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const-string v5, "android.intent.extra.changed_uid_list"

    .line 255
    .line 256
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    move v8, v4

    .line 261
    move v9, v15

    .line 262
    :goto_2
    move-object v13, v5

    .line 263
    move-object v5, v0

    .line 264
    move v0, v4

    .line 265
    goto :goto_5

    .line 266
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    if-nez v0, :cond_b

    .line 271
    .line 272
    return-void

    .line 273
    :cond_b
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    if-nez v8, :cond_c

    .line 278
    .line 279
    return-void

    .line 280
    :cond_c
    if-eqz v5, :cond_f

    .line 281
    .line 282
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 283
    .line 284
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 285
    .line 286
    if-eq v6, v7, :cond_d

    .line 287
    .line 288
    move v5, v6

    .line 289
    goto :goto_3

    .line 290
    :cond_d
    move v5, v4

    .line 291
    :goto_3
    invoke-interface {v0, v8, v5}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 292
    .line 293
    .line 294
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 295
    if-eq v0, v15, :cond_e

    .line 296
    .line 297
    if-nez v0, :cond_f

    .line 298
    .line 299
    :cond_e
    move v0, v4

    .line 300
    goto :goto_4

    .line 301
    :catch_0
    move-exception v0

    .line 302
    sget-boolean v5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 303
    .line 304
    if-eqz v5, :cond_f

    .line 305
    .line 306
    const-string v5, "NotificationService"

    .line 307
    .line 308
    const-string v9, "Exception trying to look up app enabled setting"

    .line 309
    .line 310
    invoke-static {v5, v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .line 312
    .line 313
    :catch_1
    :cond_f
    move v0, v15

    .line 314
    :goto_4
    new-array v5, v15, [Ljava/lang/String;

    .line 315
    .line 316
    aput-object v8, v5, v4

    .line 317
    .line 318
    new-array v8, v15, [I

    .line 319
    .line 320
    const-string v9, "android.intent.extra.UID"

    .line 321
    .line 322
    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    aput v9, v8, v4

    .line 327
    .line 328
    move v9, v4

    .line 329
    move-object v13, v8

    .line 330
    move v8, v9

    .line 331
    :goto_5
    if-eqz v5, :cond_10

    .line 332
    .line 333
    array-length v10, v5

    .line 334
    if-lez v10, :cond_10

    .line 335
    .line 336
    if-eqz v0, :cond_11

    .line 337
    .line 338
    array-length v0, v5

    .line 339
    move v12, v4

    .line 340
    :goto_6
    if-ge v12, v0, :cond_10

    .line 341
    .line 342
    aget-object v16, v5, v12

    .line 343
    .line 344
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 345
    .line 346
    sget v9, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 347
    .line 348
    sget v10, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 349
    .line 350
    const/16 v17, 0x0

    .line 351
    .line 352
    const/16 v18, 0x5

    .line 353
    .line 354
    const/4 v11, 0x0

    .line 355
    move/from16 v19, v12

    .line 356
    .line 357
    move-object/from16 v12, v16

    .line 358
    .line 359
    move-object v7, v13

    .line 360
    move-object/from16 v13, v17

    .line 361
    .line 362
    move/from16 v16, v14

    .line 363
    .line 364
    move v14, v6

    .line 365
    move v4, v15

    .line 366
    move/from16 v15, v18

    .line 367
    .line 368
    invoke-virtual/range {v8 .. v15}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 369
    .line 370
    .line 371
    add-int/lit8 v12, v19, 0x1

    .line 372
    .line 373
    move v15, v4

    .line 374
    move-object v13, v7

    .line 375
    move/from16 v14, v16

    .line 376
    .line 377
    const/4 v4, 0x0

    .line 378
    const/4 v7, -0x1

    .line 379
    goto :goto_6

    .line 380
    :cond_10
    move-object v7, v13

    .line 381
    move/from16 v16, v14

    .line 382
    .line 383
    move v4, v15

    .line 384
    goto/16 :goto_11

    .line 385
    .line 386
    :cond_11
    move-object v7, v13

    .line 387
    move/from16 v16, v14

    .line 388
    .line 389
    move v4, v15

    .line 390
    if-eqz v8, :cond_16

    .line 391
    .line 392
    if-eqz v7, :cond_16

    .line 393
    .line 394
    array-length v0, v7

    .line 395
    if-lez v0, :cond_16

    .line 396
    .line 397
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 398
    .line 399
    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 400
    .line 401
    monitor-enter v8

    .line 402
    :try_start_1
    invoke-static {v7}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 403
    .line 404
    .line 405
    move-result-object v9

    .line 406
    invoke-interface {v9}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    .line 407
    .line 408
    .line 409
    move-result-object v9

    .line 410
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 411
    .line 412
    .line 413
    move-result-object v10

    .line 414
    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v9

    .line 418
    check-cast v9, Ljava/util/Set;

    .line 419
    .line 420
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 421
    .line 422
    .line 423
    move-result-object v10

    .line 424
    new-instance v11, Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .line 428
    .line 429
    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 432
    .line 433
    .line 434
    move-result v12

    .line 435
    const/4 v13, 0x0

    .line 436
    :goto_7
    if-ge v13, v12, :cond_13

    .line 437
    .line 438
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v14

    .line 444
    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 445
    .line 446
    iget-object v15, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 447
    .line 448
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v15

    .line 452
    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v15

    .line 456
    if-eqz v15, :cond_12

    .line 457
    .line 458
    iget-object v15, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 459
    .line 460
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 461
    .line 462
    .line 463
    move-result v15

    .line 464
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 465
    .line 466
    .line 467
    move-result-object v15

    .line 468
    invoke-interface {v9, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v15

    .line 472
    if-eqz v15, :cond_12

    .line 473
    .line 474
    iput-boolean v4, v14, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 475
    .line 476
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    goto :goto_8

    .line 480
    :catchall_0
    move-exception v0

    .line 481
    goto :goto_b

    .line 482
    :cond_12
    :goto_8
    add-int/lit8 v13, v13, 0x1

    .line 483
    .line 484
    goto :goto_7

    .line 485
    :cond_13
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 486
    .line 487
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 491
    .line 492
    .line 493
    move-result v9

    .line 494
    if-nez v9, :cond_14

    .line 495
    .line 496
    goto :goto_a

    .line 497
    :cond_14
    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 501
    .line 502
    .line 503
    move-result v9

    .line 504
    const/4 v10, 0x0

    .line 505
    :goto_9
    if-ge v10, v9, :cond_15

    .line 506
    .line 507
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v12

    .line 511
    check-cast v12, Lcom/android/server/notification/NotificationRecord;

    .line 512
    .line 513
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 514
    .line 515
    iget-object v13, v13, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 516
    .line 517
    iget-object v14, v12, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 518
    .line 519
    const/16 v15, 0xe

    .line 520
    .line 521
    invoke-virtual {v13, v12, v15, v14}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 522
    .line 523
    .line 524
    add-int/lit8 v10, v10, 0x1

    .line 525
    .line 526
    goto :goto_9

    .line 527
    :cond_15
    :goto_a
    monitor-exit v8

    .line 528
    goto/16 :goto_11

    .line 529
    .line 530
    :goto_b
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    throw v0

    .line 532
    :cond_16
    if-eqz v9, :cond_1b

    .line 533
    .line 534
    if-eqz v7, :cond_1b

    .line 535
    .line 536
    array-length v0, v7

    .line 537
    if-lez v0, :cond_1b

    .line 538
    .line 539
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 540
    .line 541
    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 542
    .line 543
    monitor-enter v8

    .line 544
    :try_start_2
    invoke-static {v7}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    invoke-interface {v9}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    .line 549
    .line 550
    .line 551
    move-result-object v9

    .line 552
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 553
    .line 554
    .line 555
    move-result-object v10

    .line 556
    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v9

    .line 560
    check-cast v9, Ljava/util/Set;

    .line 561
    .line 562
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 563
    .line 564
    .line 565
    move-result-object v10

    .line 566
    new-instance v11, Ljava/util/ArrayList;

    .line 567
    .line 568
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .line 570
    .line 571
    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 572
    .line 573
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 574
    .line 575
    .line 576
    move-result v12

    .line 577
    const/4 v13, 0x0

    .line 578
    :goto_c
    if-ge v13, v12, :cond_18

    .line 579
    .line 580
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 581
    .line 582
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v14

    .line 586
    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 587
    .line 588
    iget-object v15, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 589
    .line 590
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v15

    .line 594
    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v15

    .line 598
    if-eqz v15, :cond_17

    .line 599
    .line 600
    iget-object v15, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 601
    .line 602
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 603
    .line 604
    .line 605
    move-result v15

    .line 606
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 607
    .line 608
    .line 609
    move-result-object v15

    .line 610
    invoke-interface {v9, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v15

    .line 614
    if-eqz v15, :cond_17

    .line 615
    .line 616
    const/4 v15, 0x0

    .line 617
    iput-boolean v15, v14, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 618
    .line 619
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    goto :goto_d

    .line 623
    :catchall_1
    move-exception v0

    .line 624
    goto :goto_10

    .line 625
    :cond_17
    :goto_d
    add-int/lit8 v13, v13, 0x1

    .line 626
    .line 627
    goto :goto_c

    .line 628
    :cond_18
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 629
    .line 630
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 634
    .line 635
    .line 636
    move-result v9

    .line 637
    if-nez v9, :cond_19

    .line 638
    .line 639
    goto :goto_f

    .line 640
    :cond_19
    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 644
    .line 645
    .line 646
    move-result v9

    .line 647
    const/4 v15, 0x0

    .line 648
    :goto_e
    if-ge v15, v9, :cond_1a

    .line 649
    .line 650
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v10

    .line 654
    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    .line 655
    .line 656
    const/4 v12, 0x0

    .line 657
    invoke-virtual {v0, v10, v10, v12}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V

    .line 658
    .line 659
    .line 660
    add-int/lit8 v15, v15, 0x1

    .line 661
    .line 662
    goto :goto_e

    .line 663
    :cond_1a
    :goto_f
    monitor-exit v8

    .line 664
    goto :goto_11

    .line 665
    :goto_10
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 666
    throw v0

    .line 667
    :cond_1b
    :goto_11
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 668
    .line 669
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v0

    .line 673
    const/4 v8, 0x0

    .line 674
    if-nez v0, :cond_1c

    .line 675
    .line 676
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 677
    .line 678
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    if-eqz v0, :cond_1f

    .line 683
    .line 684
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    if-eqz v0, :cond_1d

    .line 689
    .line 690
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    :goto_12
    const/4 v9, -0x1

    .line 695
    goto :goto_13

    .line 696
    :cond_1d
    move-object v0, v8

    .line 697
    goto :goto_12

    .line 698
    :goto_13
    if-eq v6, v9, :cond_1e

    .line 699
    .line 700
    move v15, v6

    .line 701
    goto :goto_14

    .line 702
    :cond_1e
    const/4 v15, 0x0

    .line 703
    :goto_14
    if-eqz v0, :cond_1f

    .line 704
    .line 705
    :try_start_3
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 706
    .line 707
    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 708
    .line 709
    const-wide/16 v10, 0x80

    .line 710
    .line 711
    invoke-interface {v9, v0, v10, v11, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 712
    .line 713
    .line 714
    move-result-object v9

    .line 715
    if-eqz v9, :cond_1f

    .line 716
    .line 717
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 718
    .line 719
    if-eqz v9, :cond_1f

    .line 720
    .line 721
    const-string/jumbo v10, "user"

    .line 722
    .line 723
    .line 724
    const-string v11, "com.samsung.android.notification.listener.autobind"

    .line 725
    .line 726
    const-string v12, "default"

    .line 727
    .line 728
    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v9

    .line 732
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result v9

    .line 736
    if-eqz v9, :cond_1f

    .line 737
    .line 738
    const-string v9, "NotificationService"

    .line 739
    .line 740
    new-instance v10, Ljava/lang/StringBuilder;

    .line 741
    .line 742
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    .line 744
    .line 745
    const-string v11, "Notification listener autobind, pkg = "

    .line 746
    .line 747
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v10

    .line 757
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .line 759
    .line 760
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 761
    .line 762
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 763
    .line 764
    .line 765
    :try_start_4
    invoke-virtual {v9}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 766
    .line 767
    .line 768
    move-result-object v9

    .line 769
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 770
    .line 771
    .line 772
    move-result-object v9

    .line 773
    invoke-virtual {v9, v0, v15}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 774
    .line 775
    .line 776
    move-result v9

    .line 777
    const-string v10, "com.samsung.android.permission.SEM_AUTO_BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 778
    .line 779
    const/4 v11, -0x1

    .line 780
    invoke-static {v10, v9, v11, v4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    .line 781
    .line 782
    .line 783
    move-result v9
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 784
    if-nez v9, :cond_1f

    .line 785
    .line 786
    :try_start_5
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 787
    .line 788
    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 789
    .line 790
    const/high16 v10, 0xc0000

    .line 791
    .line 792
    invoke-virtual {v9, v10, v15, v0}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(IILjava/lang/String;)Landroid/util/ArraySet;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 797
    .line 798
    .line 799
    move-result-object v9

    .line 800
    :goto_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 801
    .line 802
    .line 803
    move-result v0

    .line 804
    if-eqz v0, :cond_1f

    .line 805
    .line 806
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    check-cast v0, Landroid/content/ComponentName;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 811
    .line 812
    :try_start_6
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 813
    .line 814
    const-string v11, "PACKAGE_CHANGED"

    .line 815
    .line 816
    iput-object v11, v10, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerFrom:Ljava/lang/String;

    .line 817
    .line 818
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    .line 819
    .line 820
    .line 821
    move-result-object v10

    .line 822
    invoke-interface {v10, v0, v15, v4, v4}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 823
    .line 824
    .line 825
    goto :goto_15

    .line 826
    :catch_2
    move-exception v0

    .line 827
    :try_start_7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 828
    .line 829
    .line 830
    goto :goto_15

    .line 831
    :catch_3
    move-exception v0

    .line 832
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 833
    .line 834
    .line 835
    :catch_4
    :cond_1f
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 836
    .line 837
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result v0

    .line 841
    if-nez v0, :cond_20

    .line 842
    .line 843
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 844
    .line 845
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    move-result v0

    .line 849
    if-nez v0, :cond_20

    .line 850
    .line 851
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 852
    .line 853
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    move-result v0

    .line 857
    if-eqz v0, :cond_27

    .line 858
    .line 859
    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    if-eqz v0, :cond_21

    .line 864
    .line 865
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    goto :goto_16

    .line 870
    :cond_21
    move-object v0, v8

    .line 871
    :goto_16
    if-eqz v0, :cond_27

    .line 872
    .line 873
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 874
    .line 875
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    .line 876
    .line 877
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 878
    .line 879
    .line 880
    move-result v2

    .line 881
    if-eqz v2, :cond_27

    .line 882
    .line 883
    const/4 v2, -0x1

    .line 884
    if-eq v6, v2, :cond_22

    .line 885
    .line 886
    move v15, v6

    .line 887
    goto :goto_17

    .line 888
    :cond_22
    const/4 v15, 0x0

    .line 889
    :goto_17
    const-string v2, "NotificationService"

    .line 890
    .line 891
    const-string v9, "Ongoing activity package intent receive - action = "

    .line 892
    .line 893
    const-string v10, " pkg = "

    .line 894
    .line 895
    const-string v11, " userId = "

    .line 896
    .line 897
    invoke-static {v9, v3, v10, v0, v11}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    move-result-object v9

    .line 901
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 902
    .line 903
    .line 904
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v9

    .line 908
    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    .line 910
    .line 911
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 912
    .line 913
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 914
    .line 915
    .line 916
    move-result v2

    .line 917
    if-eqz v2, :cond_23

    .line 918
    .line 919
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 920
    .line 921
    const/4 v3, 0x0

    .line 922
    const/4 v9, -0x1

    .line 923
    invoke-virtual {v2, v9, v15, v0, v3}, Lcom/android/server/notification/NotificationManagerService;->updateOngoingActivityCurrentSupportAppList(IILjava/lang/String;Z)V

    .line 924
    .line 925
    .line 926
    goto :goto_1a

    .line 927
    :cond_23
    const/4 v3, 0x0

    .line 928
    const/4 v9, -0x1

    .line 929
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 930
    .line 931
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    .line 932
    .line 933
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 934
    .line 935
    .line 936
    move-result v2

    .line 937
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 938
    .line 939
    iget-object v10, v10, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityCurrentSupportAppList:Ljava/util/List;

    .line 940
    .line 941
    check-cast v10, Ljava/util/ArrayList;

    .line 942
    .line 943
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 944
    .line 945
    .line 946
    move-result-object v10

    .line 947
    :goto_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 948
    .line 949
    .line 950
    move-result v11

    .line 951
    if-eqz v11, :cond_25

    .line 952
    .line 953
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v11

    .line 957
    check-cast v11, Ljava/lang/String;

    .line 958
    .line 959
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 960
    .line 961
    iget-object v12, v12, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    .line 962
    .line 963
    invoke-interface {v12, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 964
    .line 965
    .line 966
    move-result v11

    .line 967
    if-ge v2, v11, :cond_24

    .line 968
    .line 969
    goto :goto_19

    .line 970
    :cond_24
    add-int/lit8 v3, v3, 0x1

    .line 971
    .line 972
    goto :goto_18

    .line 973
    :cond_25
    :goto_19
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 974
    .line 975
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityCurrentSupportAppList:Ljava/util/List;

    .line 976
    .line 977
    check-cast v2, Ljava/util/ArrayList;

    .line 978
    .line 979
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 980
    .line 981
    .line 982
    move-result v2

    .line 983
    if-ne v3, v2, :cond_26

    .line 984
    .line 985
    move v3, v9

    .line 986
    :cond_26
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 987
    .line 988
    invoke-virtual {v2, v3, v15, v0, v4}, Lcom/android/server/notification/NotificationManagerService;->updateOngoingActivityCurrentSupportAppList(IILjava/lang/String;Z)V

    .line 989
    .line 990
    .line 991
    :goto_1a
    new-instance v0, Landroid/content/Intent;

    .line 992
    .line 993
    const-string v2, "com.samsung.intent.action.ONGOING_ACTIVITY_LIST_CHANGED"

    .line 994
    .line 995
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 999
    .line 1000
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v2

    .line 1004
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1005
    .line 1006
    invoke-virtual {v2, v0, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    const-string v0, "NotificationService"

    .line 1010
    .line 1011
    const-string v2, "Package is changed - Send broadcast ACTION_ONGOING_ACTIVITY_LIST_CHANGED"

    .line 1012
    .line 1013
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    .line 1015
    .line 1016
    :cond_27
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1017
    .line 1018
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1019
    .line 1020
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1021
    .line 1022
    .line 1023
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v1

    .line 1027
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v2

    .line 1031
    iput-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1032
    .line 1033
    iput v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1034
    .line 1035
    iput-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1036
    .line 1037
    iput-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1038
    .line 1039
    const/16 v2, 0x8

    .line 1040
    .line 1041
    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v1

    .line 1045
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1046
    .line 1047
    .line 1048
    :cond_28
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v2

    .line 31
    :try_start_0
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 32
    .line 33
    const-string v4, "key"

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    const v9, 0x18040

    .line 91
    .line 92
    .line 93
    const/4 v10, 0x1

    .line 94
    const/16 v12, 0x13

    .line 95
    .line 96
    const/4 v13, 0x0

    .line 97
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 102
    .line 103
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    .line 112
    .line 113
    .line 114
    move-result v16

    .line 115
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v17

    .line 121
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v18

    .line 127
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 130
    .line 131
    .line 132
    move-result v19

    .line 133
    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 136
    .line 137
    .line 138
    move-result v22

    .line 139
    const v20, 0x8040

    .line 140
    .line 141
    .line 142
    const/16 v21, 0x1

    .line 143
    .line 144
    const/16 v23, 0x13

    .line 145
    .line 146
    const/16 v24, 0x0

    .line 147
    .line 148
    invoke-virtual/range {v14 .. v24}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    throw v0

    .line 155
    :cond_2
    :goto_0
    return-void

    .line 156
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    const-string v3, "android.os.action.SETTING_RESTORED"

    .line 161
    .line 162
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_3

    .line 167
    .line 168
    :try_start_2
    const-string/jumbo v2, "setting_name"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    const-string/jumbo v3, "new_value"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    const-string/jumbo v4, "restored_from_sdk_int"

    .line 183
    .line 184
    .line 185
    const/4 v5, 0x0

    .line 186
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 191
    .line 192
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 193
    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    invoke-virtual {v4, v0, v5, v2, v3}, Lcom/android/server/notification/ManagedServices;->onSettingRestored(IILjava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 202
    .line 203
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 204
    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/notification/ManagedServices;->onSettingRestored(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const-string v1, "NotificationService"

    .line 215
    .line 216
    const-string v2, "Cannot restore managed services from settings"

    .line 217
    .line 218
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .line 220
    .line 221
    :cond_3
    :goto_1
    return-void

    .line 222
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    const-string v3, "com.samsung.notification.REQUEST_REBIND_LISTENER"

    .line 227
    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_4

    .line 233
    .line 234
    const-string v2, "android.intent.extra.user_handle"

    .line 235
    .line 236
    const/4 v3, -0x2

    .line 237
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    const-string/jumbo v3, "packageName"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    const-string v4, "className"

    .line 249
    .line 250
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    new-instance v4, Landroid/content/ComponentName;

    .line 255
    .line 256
    invoke-direct {v4, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string v3, " component:"

    .line 267
    .line 268
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v3, " user:"

    .line 275
    .line 276
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    const-string v3, "NotificationService"

    .line 287
    .line 288
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    :try_start_3
    const-string v1, "REBIND_LISTENER"

    .line 292
    .line 293
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerFrom:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    const/4 v1, 0x1

    .line 300
    invoke-interface {v0, v4, v2, v1, v1}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 301
    .line 302
    .line 303
    goto :goto_2

    .line 304
    :catch_1
    move-exception v0

    .line 305
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 306
    .line 307
    .line 308
    :cond_4
    :goto_2
    return-void

    .line 309
    :pswitch_2
    invoke-direct/range {p0 .. p2}, Lcom/android/server/notification/NotificationManagerService$2;->onReceive$com$android$server$notification$NotificationManagerService$9(Landroid/content/Context;Landroid/content/Intent;)V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :pswitch_3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/notification/NotificationManagerService$2;->onReceive$com$android$server$notification$NotificationManagerService$6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    const-string v2, "com.samsung.android.scpm.policy.UPDATE.NSF_CONVERSATION_APPS"

    .line 322
    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    const-string v3, "filterId"

    .line 328
    .line 329
    const-string v5, ", "

    .line 330
    .line 331
    const-string/jumbo v6, "rmsg"

    .line 332
    .line 333
    .line 334
    const-string/jumbo v7, "rcode"

    .line 335
    .line 336
    .line 337
    const-string/jumbo v9, "r"

    .line 338
    .line 339
    .line 340
    const-string v10, ""

    .line 341
    .line 342
    const-string v11, "ConversationAppPloicyToken"

    .line 343
    .line 344
    const/4 v12, 0x0

    .line 345
    const-string v13, "conversation_app_ploicy_pref"

    .line 346
    .line 347
    const-string v15, "content://com.samsung.android.scpm.policy/"

    .line 348
    .line 349
    const-string v14, "NotificationService"

    .line 350
    .line 351
    if-eqz v2, :cond_8

    .line 352
    .line 353
    const-string v0, "Receiving SCPM update intent - conversation"

    .line 354
    .line 355
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    const-string/jumbo v1, "policy filterId : "

    .line 364
    .line 365
    .line 366
    const-string v2, "getConversationAppPolicyScpmData - cannot get new policy : "

    .line 367
    .line 368
    const-string v4, "/NSF_CONVERSATION_APPS"

    .line 369
    .line 370
    const-string v8, "getConversationAppPolicyScpmData"

    .line 371
    .line 372
    invoke-static {v14, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isScpmAvailable()Z

    .line 376
    .line 377
    .line 378
    move-result v8

    .line 379
    if-eqz v8, :cond_11

    .line 380
    .line 381
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 382
    .line 383
    .line 384
    move-result-object v8

    .line 385
    invoke-virtual {v8, v13, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    invoke-interface {v8, v11, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    new-instance v10, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 413
    .line 414
    .line 415
    move-result-object v10

    .line 416
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    invoke-virtual {v10, v4, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 421
    .line 422
    .line 423
    move-result-object v9
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 424
    if-nez v9, :cond_5

    .line 425
    .line 426
    const/4 v10, 0x1

    .line 427
    :try_start_5
    invoke-virtual {v0, v8, v4, v10}, Lcom/android/server/notification/NotificationManagerService;->getScpmBundle(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    if-eqz v0, :cond_6

    .line 432
    .line 433
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    .line 442
    .line 443
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    goto :goto_4

    .line 463
    :catchall_1
    move-exception v0

    .line 464
    :goto_3
    const/4 v14, 0x0

    .line 465
    goto/16 :goto_9

    .line 466
    .line 467
    :catch_2
    move-exception v0

    .line 468
    const/4 v1, 0x0

    .line 469
    goto :goto_7

    .line 470
    :catch_3
    move-exception v0

    .line 471
    const/4 v1, 0x0

    .line 472
    goto :goto_8

    .line 473
    :cond_5
    const/4 v2, 0x2

    .line 474
    invoke-virtual {v0, v8, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->getScpmBundle(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    if-eqz v2, :cond_6

    .line 479
    .line 480
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    .line 485
    .line 486
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    new-instance v1, Ljava/io/FileInputStream;

    .line 500
    .line 501
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 506
    .line 507
    .line 508
    const/4 v2, 0x1

    .line 509
    :try_start_6
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->readConversationAppPolicyJson(Ljava/io/FileInputStream;Z)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 510
    .line 511
    .line 512
    move-object v14, v1

    .line 513
    goto :goto_5

    .line 514
    :catchall_2
    move-exception v0

    .line 515
    move-object v14, v1

    .line 516
    goto :goto_9

    .line 517
    :catch_4
    move-exception v0

    .line 518
    goto :goto_7

    .line 519
    :catch_5
    move-exception v0

    .line 520
    goto :goto_8

    .line 521
    :cond_6
    :goto_4
    const/4 v14, 0x0

    .line 522
    :goto_5
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 523
    .line 524
    .line 525
    if-eqz v9, :cond_11

    .line 526
    .line 527
    :goto_6
    :try_start_7
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_17

    .line 528
    .line 529
    .line 530
    goto/16 :goto_18

    .line 531
    .line 532
    :catchall_3
    move-exception v0

    .line 533
    const/4 v9, 0x0

    .line 534
    goto :goto_3

    .line 535
    :catch_6
    move-exception v0

    .line 536
    const/4 v1, 0x0

    .line 537
    const/4 v9, 0x0

    .line 538
    goto :goto_7

    .line 539
    :catch_7
    move-exception v0

    .line 540
    const/4 v1, 0x0

    .line 541
    const/4 v9, 0x0

    .line 542
    goto :goto_8

    .line 543
    :goto_7
    :try_start_8
    const-string v2, "getConversationAppPolicyScpmData - File open fail"

    .line 544
    .line 545
    invoke-static {v14, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 549
    .line 550
    .line 551
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 552
    .line 553
    .line 554
    if-eqz v9, :cond_11

    .line 555
    .line 556
    goto :goto_6

    .line 557
    :goto_8
    :try_start_9
    const-string v2, "getConversationAppPolicyScpmData - File not found"

    .line 558
    .line 559
    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 563
    .line 564
    .line 565
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 566
    .line 567
    .line 568
    if-eqz v9, :cond_11

    .line 569
    .line 570
    goto :goto_6

    .line 571
    :goto_9
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 572
    .line 573
    .line 574
    if-eqz v9, :cond_7

    .line 575
    .line 576
    :try_start_a
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 577
    .line 578
    .line 579
    :catch_8
    :cond_7
    throw v0

    .line 580
    :cond_8
    const-string v2, "com.samsung.android.scpm.policy.UPDATE.nsf-ongoing-dismiss-exception-keys"

    .line 581
    .line 582
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    if-eqz v2, :cond_c

    .line 587
    .line 588
    const-string v0, "Receiving SCPM update intent - ongoing dismiss exception"

    .line 589
    .line 590
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .line 592
    .line 593
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 594
    .line 595
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    const-string v1, "OngoingDismissException policy filterId : "

    .line 599
    .line 600
    const-string v2, "getOngoingDismissExceptionPolicyScpmData - cannot get new policy : "

    .line 601
    .line 602
    const-string v4, "/nsf-ongoing-dismiss-exception-keys"

    .line 603
    .line 604
    const-string v8, "getOngoingDismissExceptionPolicyScpmData"

    .line 605
    .line 606
    invoke-static {v14, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isScpmAvailable()Z

    .line 610
    .line 611
    .line 612
    move-result v8

    .line 613
    if-eqz v8, :cond_11

    .line 614
    .line 615
    :try_start_b
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 616
    .line 617
    .line 618
    move-result-object v8

    .line 619
    invoke-virtual {v8, v13, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 620
    .line 621
    .line 622
    move-result-object v8

    .line 623
    invoke-interface {v8, v11, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v8

    .line 627
    new-instance v10, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v4

    .line 642
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 647
    .line 648
    .line 649
    move-result-object v10

    .line 650
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 651
    .line 652
    .line 653
    move-result-object v10

    .line 654
    invoke-virtual {v10, v4, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 655
    .line 656
    .line 657
    move-result-object v9
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 658
    if-nez v9, :cond_9

    .line 659
    .line 660
    const/4 v10, 0x1

    .line 661
    :try_start_c
    invoke-virtual {v0, v8, v4, v10}, Lcom/android/server/notification/NotificationManagerService;->getScpmBundle(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    if-eqz v0, :cond_a

    .line 666
    .line 667
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 668
    .line 669
    .line 670
    move-result v1

    .line 671
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .line 695
    .line 696
    goto :goto_b

    .line 697
    :catchall_4
    move-exception v0

    .line 698
    :goto_a
    const/4 v14, 0x0

    .line 699
    goto/16 :goto_10

    .line 700
    .line 701
    :catch_9
    move-exception v0

    .line 702
    const/4 v1, 0x0

    .line 703
    goto :goto_e

    .line 704
    :catch_a
    move-exception v0

    .line 705
    const/4 v1, 0x0

    .line 706
    goto :goto_f

    .line 707
    :cond_9
    const/4 v2, 0x2

    .line 708
    invoke-virtual {v0, v8, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->getScpmBundle(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    if-eqz v2, :cond_a

    .line 713
    .line 714
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v2

    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    .line 719
    .line 720
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .line 732
    .line 733
    new-instance v1, Ljava/io/FileInputStream;

    .line 734
    .line 735
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 740
    .line 741
    .line 742
    const/4 v2, 0x1

    .line 743
    :try_start_d
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->readOngoingDismissExceptionPolicyJson(Ljava/io/FileInputStream;Z)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 744
    .line 745
    .line 746
    move-object v14, v1

    .line 747
    goto :goto_c

    .line 748
    :catchall_5
    move-exception v0

    .line 749
    move-object v14, v1

    .line 750
    goto :goto_10

    .line 751
    :catch_b
    move-exception v0

    .line 752
    goto :goto_e

    .line 753
    :catch_c
    move-exception v0

    .line 754
    goto :goto_f

    .line 755
    :cond_a
    :goto_b
    const/4 v14, 0x0

    .line 756
    :goto_c
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 757
    .line 758
    .line 759
    if-eqz v9, :cond_11

    .line 760
    .line 761
    :goto_d
    :try_start_e
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_17

    .line 762
    .line 763
    .line 764
    goto/16 :goto_18

    .line 765
    .line 766
    :catchall_6
    move-exception v0

    .line 767
    const/4 v9, 0x0

    .line 768
    goto :goto_a

    .line 769
    :catch_d
    move-exception v0

    .line 770
    const/4 v1, 0x0

    .line 771
    const/4 v9, 0x0

    .line 772
    goto :goto_e

    .line 773
    :catch_e
    move-exception v0

    .line 774
    const/4 v1, 0x0

    .line 775
    const/4 v9, 0x0

    .line 776
    goto :goto_f

    .line 777
    :goto_e
    :try_start_f
    const-string v2, "getOngoingDismissExceptionPolicyScpmData - File open fail"

    .line 778
    .line 779
    invoke-static {v14, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    .line 781
    .line 782
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 783
    .line 784
    .line 785
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 786
    .line 787
    .line 788
    if-eqz v9, :cond_11

    .line 789
    .line 790
    goto :goto_d

    .line 791
    :goto_f
    :try_start_10
    const-string v2, "getOngoingDismissExceptionPolicyScpmData - File not found"

    .line 792
    .line 793
    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    .line 795
    .line 796
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 797
    .line 798
    .line 799
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 800
    .line 801
    .line 802
    if-eqz v9, :cond_11

    .line 803
    .line 804
    goto :goto_d

    .line 805
    :goto_10
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 806
    .line 807
    .line 808
    if-eqz v9, :cond_b

    .line 809
    .line 810
    :try_start_11
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 811
    .line 812
    .line 813
    :catch_f
    :cond_b
    throw v0

    .line 814
    :cond_c
    const-string v2, "com.samsung.android.scpm.policy.UPDATE.nsf-notification-scpm-policies-6941"

    .line 815
    .line 816
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v2

    .line 820
    if-eqz v2, :cond_10

    .line 821
    .line 822
    const-string v0, "Receiving SCPM update intent - notification scpm policies"

    .line 823
    .line 824
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    .line 826
    .line 827
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 828
    .line 829
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    .line 831
    .line 832
    const-string v1, "ScpmNotification policy filterId : "

    .line 833
    .line 834
    const-string v2, "getNotificationPoliciesScpmData - cannot get new policy : "

    .line 835
    .line 836
    const-string v4, "/nsf-notification-scpm-policies-6941"

    .line 837
    .line 838
    const-string v8, "getNotificationPoliciesScpmData"

    .line 839
    .line 840
    invoke-static {v14, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    .line 842
    .line 843
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isScpmAvailable()Z

    .line 844
    .line 845
    .line 846
    move-result v8

    .line 847
    if-eqz v8, :cond_11

    .line 848
    .line 849
    :try_start_12
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 850
    .line 851
    .line 852
    move-result-object v8

    .line 853
    invoke-virtual {v8, v13, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 854
    .line 855
    .line 856
    move-result-object v8

    .line 857
    invoke-interface {v8, v11, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v8

    .line 861
    new-instance v10, Ljava/lang/StringBuilder;

    .line 862
    .line 863
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v4

    .line 876
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 877
    .line 878
    .line 879
    move-result-object v4

    .line 880
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 881
    .line 882
    .line 883
    move-result-object v10

    .line 884
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 885
    .line 886
    .line 887
    move-result-object v10

    .line 888
    invoke-virtual {v10, v4, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 889
    .line 890
    .line 891
    move-result-object v9
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_14
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 892
    if-nez v9, :cond_d

    .line 893
    .line 894
    const/4 v10, 0x1

    .line 895
    :try_start_13
    invoke-virtual {v0, v8, v4, v10}, Lcom/android/server/notification/NotificationManagerService;->getScpmBundle(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    if-eqz v0, :cond_e

    .line 900
    .line 901
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 902
    .line 903
    .line 904
    move-result v1

    .line 905
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    .line 910
    .line 911
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .line 929
    .line 930
    goto :goto_12

    .line 931
    :catchall_7
    move-exception v0

    .line 932
    :goto_11
    const/4 v14, 0x0

    .line 933
    goto/16 :goto_17

    .line 934
    .line 935
    :catch_10
    move-exception v0

    .line 936
    const/4 v1, 0x0

    .line 937
    goto :goto_15

    .line 938
    :catch_11
    move-exception v0

    .line 939
    const/4 v1, 0x0

    .line 940
    goto :goto_16

    .line 941
    :cond_d
    const/4 v2, 0x2

    .line 942
    invoke-virtual {v0, v8, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->getScpmBundle(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    .line 943
    .line 944
    .line 945
    move-result-object v2

    .line 946
    if-eqz v2, :cond_e

    .line 947
    .line 948
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v2

    .line 952
    new-instance v3, Ljava/lang/StringBuilder;

    .line 953
    .line 954
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    .line 966
    .line 967
    new-instance v1, Ljava/io/FileInputStream;

    .line 968
    .line 969
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 970
    .line 971
    .line 972
    move-result-object v2

    .line 973
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 974
    .line 975
    .line 976
    const/4 v2, 0x1

    .line 977
    :try_start_14
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->readScpmNotificationPoliciesJson(Ljava/io/FileInputStream;Z)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_13
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_12
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 978
    .line 979
    .line 980
    move-object v14, v1

    .line 981
    goto :goto_13

    .line 982
    :catchall_8
    move-exception v0

    .line 983
    move-object v14, v1

    .line 984
    goto :goto_17

    .line 985
    :catch_12
    move-exception v0

    .line 986
    goto :goto_15

    .line 987
    :catch_13
    move-exception v0

    .line 988
    goto :goto_16

    .line 989
    :cond_e
    :goto_12
    const/4 v14, 0x0

    .line 990
    :goto_13
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 991
    .line 992
    .line 993
    if-eqz v9, :cond_11

    .line 994
    .line 995
    :goto_14
    :try_start_15
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_17

    .line 996
    .line 997
    .line 998
    goto :goto_18

    .line 999
    :catchall_9
    move-exception v0

    .line 1000
    const/4 v9, 0x0

    .line 1001
    goto :goto_11

    .line 1002
    :catch_14
    move-exception v0

    .line 1003
    const/4 v1, 0x0

    .line 1004
    const/4 v9, 0x0

    .line 1005
    goto :goto_15

    .line 1006
    :catch_15
    move-exception v0

    .line 1007
    const/4 v1, 0x0

    .line 1008
    const/4 v9, 0x0

    .line 1009
    goto :goto_16

    .line 1010
    :goto_15
    :try_start_16
    const-string v2, "getNotificationPoliciesScpmData - File open fail"

    .line 1011
    .line 1012
    invoke-static {v14, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 1016
    .line 1017
    .line 1018
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1019
    .line 1020
    .line 1021
    if-eqz v9, :cond_11

    .line 1022
    .line 1023
    goto :goto_14

    .line 1024
    :goto_16
    :try_start_17
    const-string v2, "getNotificationPoliciesScpmData - File not found"

    .line 1025
    .line 1026
    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 1030
    .line 1031
    .line 1032
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1033
    .line 1034
    .line 1035
    if-eqz v9, :cond_11

    .line 1036
    .line 1037
    goto :goto_14

    .line 1038
    :goto_17
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1039
    .line 1040
    .line 1041
    if-eqz v9, :cond_f

    .line 1042
    .line 1043
    :try_start_18
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_16

    .line 1044
    .line 1045
    .line 1046
    :catch_16
    :cond_f
    throw v0

    .line 1047
    :cond_10
    const-string v2, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 1048
    .line 1049
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1050
    .line 1051
    .line 1052
    move-result v0

    .line 1053
    if-eqz v0, :cond_11

    .line 1054
    .line 1055
    const-string v0, "Receiving SCPM clear data intent"

    .line 1056
    .line 1057
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    .line 1059
    .line 1060
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1061
    .line 1062
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1063
    .line 1064
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;

    .line 1065
    .line 1066
    const/4 v3, 0x0

    .line 1067
    invoke-direct {v2, v3, v1}, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1068
    .line 1069
    .line 1070
    const-wide/32 v3, 0xea60

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1074
    .line 1075
    .line 1076
    :catch_17
    :cond_11
    :goto_18
    return-void

    .line 1077
    :pswitch_5
    invoke-direct/range {p0 .. p2}, Lcom/android/server/notification/NotificationManagerService$2;->onReceive$com$android$server$notification$NotificationManagerService$10(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1078
    .line 1079
    .line 1080
    return-void

    .line 1081
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v2

    .line 1085
    const-string v3, "com.samsung.intent.action.ONGOING_ACTIVITY_PACKAGE_ADD"

    .line 1086
    .line 1087
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1088
    .line 1089
    .line 1090
    move-result v3

    .line 1091
    const/4 v4, 0x3

    .line 1092
    const/4 v5, 0x2

    .line 1093
    const/4 v6, 0x1

    .line 1094
    const-string v7, "NotificationService"

    .line 1095
    .line 1096
    const/4 v8, 0x0

    .line 1097
    if-eqz v3, :cond_12

    .line 1098
    .line 1099
    const-string v2, "Receiving Ongoing Activity package add"

    .line 1100
    .line 1101
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    .line 1103
    .line 1104
    move v2, v6

    .line 1105
    goto :goto_19

    .line 1106
    :cond_12
    const-string v3, "com.samsung.intent.action.ONGOING_ACTIVITY_PACKAGE_REMOVE"

    .line 1107
    .line 1108
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1109
    .line 1110
    .line 1111
    move-result v3

    .line 1112
    if-eqz v3, :cond_13

    .line 1113
    .line 1114
    const-string v2, "Receiving Ongoing Activity package remove"

    .line 1115
    .line 1116
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    .line 1118
    .line 1119
    move v2, v5

    .line 1120
    goto :goto_19

    .line 1121
    :cond_13
    const-string v3, "com.samsung.intent.action.ONGOING_ACTIVITY_PACKAGE_RESET"

    .line 1122
    .line 1123
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v2

    .line 1127
    if-eqz v2, :cond_14

    .line 1128
    .line 1129
    const-string v2, "Receiving Ongoing Activity package reset"

    .line 1130
    .line 1131
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    .line 1133
    .line 1134
    move v2, v4

    .line 1135
    goto :goto_19

    .line 1136
    :cond_14
    move v2, v8

    .line 1137
    :goto_19
    const-wide/16 v9, 0x0

    .line 1138
    .line 1139
    const-string v3, ""

    .line 1140
    .line 1141
    if-eq v2, v6, :cond_19

    .line 1142
    .line 1143
    if-ne v2, v5, :cond_15

    .line 1144
    .line 1145
    goto/16 :goto_1e

    .line 1146
    .line 1147
    :cond_15
    if-ne v2, v4, :cond_1f

    .line 1148
    .line 1149
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1150
    .line 1151
    const-wide/16 v2, 0x1

    .line 1152
    .line 1153
    iput-wide v2, v0, Lcom/android/server/notification/NotificationManagerService;->mScpmNotificationPoliciesVersion:J

    .line 1154
    .line 1155
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->loadDefaultOngoingActivitySupportAppList()V

    .line 1156
    .line 1157
    .line 1158
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1159
    .line 1160
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 1161
    .line 1162
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    .line 1163
    .line 1164
    invoke-virtual {v2, v0}, Lcom/android/server/notification/PreferencesHelper;->setOngoingActivityAppList(Ljava/util/List;)V

    .line 1165
    .line 1166
    .line 1167
    :try_start_19
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1168
    .line 1169
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v0

    .line 1173
    invoke-interface {v0}, Landroid/app/INotificationManager;->resetDefaultAllowOngoingActivity()V

    .line 1174
    .line 1175
    .line 1176
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1177
    .line 1178
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivitySettingValue:Landroid/util/ArrayMap;

    .line 1179
    .line 1180
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1181
    .line 1182
    .line 1183
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1184
    .line 1185
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    .line 1186
    .line 1187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0

    .line 1191
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1192
    .line 1193
    .line 1194
    move-result v2

    .line 1195
    if-eqz v2, :cond_18

    .line 1196
    .line 1197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v2

    .line 1201
    check-cast v2, Ljava/lang/String;

    .line 1202
    .line 1203
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1204
    .line 1205
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1206
    .line 1207
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1208
    .line 1209
    .line 1210
    move-result v4

    .line 1211
    invoke-virtual {v3, v2, v9, v10, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 1212
    .line 1213
    .line 1214
    move-result v3

    .line 1215
    if-lez v3, :cond_17

    .line 1216
    .line 1217
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1218
    .line 1219
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 1220
    .line 1221
    invoke-virtual {v4, v3, v2}, Lcom/android/server/notification/PreferencesHelper;->getOngoingActivityAllowedState(ILjava/lang/String;)I

    .line 1222
    .line 1223
    .line 1224
    move-result v3

    .line 1225
    if-lez v3, :cond_16

    .line 1226
    .line 1227
    move v3, v6

    .line 1228
    goto :goto_1b

    .line 1229
    :cond_16
    move v3, v8

    .line 1230
    :goto_1b
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1231
    .line 1232
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivitySettingValue:Landroid/util/ArrayMap;

    .line 1233
    .line 1234
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v5

    .line 1238
    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1242
    .line 1243
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1244
    .line 1245
    .line 1246
    const-string v5, "Receiving Ongoing Activity package reset - installed pkg = "

    .line 1247
    .line 1248
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    const-string v2, " isOn = "

    .line 1255
    .line 1256
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v2

    .line 1266
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    .line 1268
    .line 1269
    goto :goto_1a

    .line 1270
    :catch_18
    move-exception v0

    .line 1271
    goto :goto_1c

    .line 1272
    :cond_17
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1273
    .line 1274
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivitySettingValue:Landroid/util/ArrayMap;

    .line 1275
    .line 1276
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1277
    .line 1278
    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1282
    .line 1283
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1284
    .line 1285
    .line 1286
    const-string v4, "Receiving Ongoing Activity package reset - not installed pkg = "

    .line 1287
    .line 1288
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v2

    .line 1298
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    .line 1300
    .line 1301
    goto :goto_1a

    .line 1302
    :cond_18
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1303
    .line 1304
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSaveScpmNotificationPoliciesFile()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_18

    .line 1305
    .line 1306
    .line 1307
    goto :goto_1d

    .line 1308
    :goto_1c
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1309
    .line 1310
    .line 1311
    :goto_1d
    const-string v3, "Reset Ongoing Activity list to default"

    .line 1312
    .line 1313
    goto/16 :goto_21

    .line 1314
    .line 1315
    :cond_19
    :goto_1e
    const-string/jumbo v4, "ongoingActivityPackage"

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v0

    .line 1322
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1323
    .line 1324
    if-eqz v0, :cond_1f

    .line 1325
    .line 1326
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1327
    .line 1328
    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1329
    .line 1330
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1331
    .line 1332
    .line 1333
    move-result v11

    .line 1334
    invoke-virtual {v7, v0, v9, v10, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 1335
    .line 1336
    .line 1337
    move-result v7

    .line 1338
    if-lez v7, :cond_1e

    .line 1339
    .line 1340
    const-wide/16 v9, 0x2

    .line 1341
    .line 1342
    if-eq v2, v6, :cond_1c

    .line 1343
    .line 1344
    if-eq v2, v5, :cond_1a

    .line 1345
    .line 1346
    :goto_1f
    move-object v2, v4

    .line 1347
    goto :goto_20

    .line 1348
    :cond_1a
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1349
    .line 1350
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    .line 1351
    .line 1352
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1353
    .line 1354
    .line 1355
    move-result v2

    .line 1356
    if-eqz v2, :cond_1b

    .line 1357
    .line 1358
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1359
    .line 1360
    iput-wide v9, v2, Lcom/android/server/notification/NotificationManagerService;->mScpmNotificationPoliciesVersion:J

    .line 1361
    .line 1362
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    .line 1363
    .line 1364
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1365
    .line 1366
    .line 1367
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1368
    .line 1369
    const-string v3, " is removed"

    .line 1370
    .line 1371
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v3

    .line 1375
    move-object/from16 v25, v4

    .line 1376
    .line 1377
    move-object v4, v2

    .line 1378
    move-object/from16 v2, v25

    .line 1379
    .line 1380
    goto :goto_20

    .line 1381
    :cond_1b
    const-string v2, " is already removed"

    .line 1382
    .line 1383
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v3

    .line 1387
    goto :goto_1f

    .line 1388
    :cond_1c
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1389
    .line 1390
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    .line 1391
    .line 1392
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1393
    .line 1394
    .line 1395
    move-result v2

    .line 1396
    if-nez v2, :cond_1d

    .line 1397
    .line 1398
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1399
    .line 1400
    iput-wide v9, v2, Lcom/android/server/notification/NotificationManagerService;->mScpmNotificationPoliciesVersion:J

    .line 1401
    .line 1402
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    .line 1403
    .line 1404
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1405
    .line 1406
    .line 1407
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1408
    .line 1409
    const-string v2, " is added"

    .line 1410
    .line 1411
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v3

    .line 1415
    goto :goto_1f

    .line 1416
    :cond_1d
    const-string v2, " is already added"

    .line 1417
    .line 1418
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v3

    .line 1422
    goto :goto_1f

    .line 1423
    :goto_20
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1424
    .line 1425
    .line 1426
    move-result v4

    .line 1427
    if-eqz v4, :cond_1f

    .line 1428
    .line 1429
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1430
    .line 1431
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 1432
    .line 1433
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    .line 1434
    .line 1435
    invoke-virtual {v5, v4}, Lcom/android/server/notification/PreferencesHelper;->setOngoingActivityAppList(Ljava/util/List;)V

    .line 1436
    .line 1437
    .line 1438
    :try_start_1a
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1439
    .line 1440
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v4

    .line 1444
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1445
    .line 1446
    .line 1447
    move-result v2

    .line 1448
    invoke-interface {v4, v0, v7, v2}, Landroid/app/INotificationManager;->setAllowOngoingActivity(Ljava/lang/String;IZ)V

    .line 1449
    .line 1450
    .line 1451
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1452
    .line 1453
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSaveScpmNotificationPoliciesFile()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_19

    .line 1454
    .line 1455
    .line 1456
    goto :goto_21

    .line 1457
    :catch_19
    move-exception v0

    .line 1458
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1459
    .line 1460
    .line 1461
    goto :goto_21

    .line 1462
    :cond_1e
    const-string v2, "Unistalled pkg : "

    .line 1463
    .line 1464
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v3

    .line 1468
    :cond_1f
    :goto_21
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1469
    .line 1470
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1471
    .line 1472
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v0

    .line 1476
    move-object/from16 v1, p1

    .line 1477
    .line 1478
    invoke-static {v1, v0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v0

    .line 1482
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1483
    .line 1484
    .line 1485
    return-void

    .line 1486
    nop

    .line 1487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
