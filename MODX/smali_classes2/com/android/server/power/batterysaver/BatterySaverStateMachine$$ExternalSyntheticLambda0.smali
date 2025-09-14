.class public final synthetic Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "low_power"

    .line 15
    .line 16
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 24
    .line 25
    .line 26
    const-string v1, "low_power_sticky"

    .line 27
    .line 28
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 35
    .line 36
    .line 37
    const-string v1, "low_power_trigger_level"

    .line 38
    .line 39
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 46
    .line 47
    .line 48
    const-string v1, "automatic_power_save_mode"

    .line 49
    .line 50
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 57
    .line 58
    .line 59
    const-string v1, "dynamic_power_savings_enabled"

    .line 60
    .line 61
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    .line 66
    .line 67
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 68
    .line 69
    .line 70
    const-string v1, "dynamic_power_savings_disable_threshold"

    .line 71
    .line 72
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    .line 77
    .line 78
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 79
    .line 80
    .line 81
    const-string v1, "low_power_sticky_auto_disable_enabled"

    .line 82
    .line 83
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    .line 88
    .line 89
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    .line 91
    .line 92
    const-string v1, "low_power_sticky_auto_disable_level"

    .line 93
    .line 94
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    .line 99
    .line 100
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 101
    .line 102
    .line 103
    const-string v1, "emergency_mode"

    .line 104
    .line 105
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    .line 110
    .line 111
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 112
    .line 113
    .line 114
    const-string/jumbo v1, "ultra_powersaving_mode"

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    .line 122
    .line 123
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 127
    .line 128
    monitor-enter v0

    .line 129
    :try_start_0
    const-string v1, "low_power_sticky"

    .line 130
    .line 131
    invoke-virtual {p0, v1, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_0

    .line 136
    .line 137
    const/4 v1, 0x5

    .line 138
    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    goto :goto_1

    .line 143
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 144
    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->refreshSettingsLocked()V

    .line 147
    .line 148
    .line 149
    monitor-exit v0

    .line 150
    return-void

    .line 151
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    throw p0

    .line 153
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 154
    .line 155
    iget-object p0, v1, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    const-class v0, Landroid/app/NotificationManager;

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    check-cast p0, Landroid/app/NotificationManager;

    .line 164
    .line 165
    const-string v0, "dynamic_mode_notification"

    .line 166
    .line 167
    const v2, 0x10404bd

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, p0, v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    const v2, 0x10404c0

    .line 174
    .line 175
    .line 176
    const v3, 0x10404be

    .line 177
    .line 178
    .line 179
    const-string v6, "dynamic_mode_notification"

    .line 180
    .line 181
    const-wide/16 v4, 0x0

    .line 182
    .line 183
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->buildNotification(IIJLjava/lang/String;)Landroid/app/Notification;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 188
    .line 189
    const-string v2, "BatterySaverStateMachine"

    .line 190
    .line 191
    const/16 v3, 0x7c8

    .line 192
    .line 193
    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 198
    .line 199
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    .line 200
    .line 201
    const/16 v0, 0x6b00

    .line 202
    .line 203
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 208
    .line 209
    iget-object p0, v1, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 210
    .line 211
    const-class v0, Landroid/app/NotificationManager;

    .line 212
    .line 213
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    check-cast p0, Landroid/app/NotificationManager;

    .line 218
    .line 219
    const-string v0, "battery_saver_channel"

    .line 220
    .line 221
    const v2, 0x1040230

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, p0, v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 225
    .line 226
    .line 227
    sget-wide v4, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->STICKY_DISABLED_NOTIFY_TIMEOUT_MS:J

    .line 228
    .line 229
    const v2, 0x1040231

    .line 230
    .line 231
    .line 232
    const v3, 0x104022d

    .line 233
    .line 234
    .line 235
    const-string v6, "battery_saver_channel"

    .line 236
    .line 237
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->buildNotification(IIJLjava/lang/String;)Landroid/app/Notification;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 242
    .line 243
    const-string v2, "BatterySaverStateMachine"

    .line 244
    .line 245
    const/16 v3, 0x7c9

    .line 246
    .line 247
    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 252
    .line 253
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 254
    .line 255
    const-class v1, Landroid/app/NotificationManager;

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Landroid/app/NotificationManager;

    .line 262
    .line 263
    const v1, 0x10404bd

    .line 264
    .line 265
    .line 266
    const-string v2, "dynamic_mode_notification"

    .line 267
    .line 268
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    new-instance v1, Landroid/os/Bundle;

    .line 272
    .line 273
    const/4 v3, 0x1

    .line 274
    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 275
    .line 276
    .line 277
    const-string v4, ":settings:fragment_args_key"

    .line 278
    .line 279
    const-string v5, "battery_saver_schedule"

    .line 280
    .line 281
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 285
    .line 286
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    new-instance v5, Landroid/content/Intent;

    .line 291
    .line 292
    const-string v6, "android.settings.BATTERY_SAVER_SETTINGS"

    .line 293
    .line 294
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const v6, 0x10008000

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    const-string v6, ":settings:show_fragment_args"

    .line 305
    .line 306
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 311
    .line 312
    const/4 v6, 0x0

    .line 313
    const/high16 v7, 0xc000000

    .line 314
    .line 315
    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    const v5, 0x10404c1

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    const v6, 0x10404bf

    .line 327
    .line 328
    .line 329
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    new-instance v6, Landroid/app/Notification$Builder;

    .line 334
    .line 335
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 336
    .line 337
    invoke-direct {v6, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    const p0, 0x10803aa

    .line 341
    .line 342
    .line 343
    invoke-virtual {v6, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    invoke-virtual {p0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    .line 360
    .line 361
    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 373
    .line 374
    .line 375
    move-result-object p0

    .line 376
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 377
    .line 378
    .line 379
    move-result-object p0

    .line 380
    const-wide/16 v1, 0x0

    .line 381
    .line 382
    invoke-virtual {p0, v1, v2}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 391
    .line 392
    const-string v2, "BatterySaverStateMachine"

    .line 393
    .line 394
    const/16 v3, 0x7c8

    .line 395
    .line 396
    invoke-virtual {v0, v2, v3, p0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    nop

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
