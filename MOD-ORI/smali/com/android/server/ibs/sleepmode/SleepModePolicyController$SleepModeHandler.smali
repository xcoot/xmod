.class public final Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string p1, "SleepModePolicyController"

    .line 16
    .line 17
    const-string/jumbo v0, "handleBootCompleteEvent"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter p1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 33
    .line 34
    const-string/jumbo v3, "recoverSleepMode"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance v3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    invoke-direct {v3, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const-string/jumbo v3, "pref_sleep_mode_activated_key"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v3, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    const-string/jumbo v1, "pref_sleep_mode_cancel_time_key"

    .line 62
    .line 63
    .line 64
    sget-boolean v3, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->DEBUG:Z

    .line 65
    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    invoke-static {v0, v1, v3, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 75
    .line 76
    .line 77
    monitor-exit p1

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0

    .line 82
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    const-string/jumbo v0, "pref_sleep_mode_enabled_key"

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iput-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 92
    .line 93
    if-eqz p1, :cond_a

    .line 94
    .line 95
    const-string p1, "SleepModePolicyController"

    .line 96
    .line 97
    const-string/jumbo v0, "sleep mode enabled!"

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    const-string/jumbo v0, "pref_sleep_mode_start_time_key"

    .line 106
    .line 107
    .line 108
    const-wide/16 v3, 0x0

    .line 109
    .line 110
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    cmp-long p1, v0, v3

    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    if-eqz p1, :cond_1

    .line 118
    .line 119
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    move-object p1, v5

    .line 125
    :goto_1
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    const-string/jumbo v0, "pref_sleep_mode_end_time_key"

    .line 130
    .line 131
    .line 132
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    .line 133
    .line 134
    .line 135
    move-result-wide v0

    .line 136
    cmp-long p1, v0, v3

    .line 137
    .line 138
    if-eqz p1, :cond_2

    .line 139
    .line 140
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    :cond_2
    iput-object v5, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 145
    .line 146
    iput-boolean v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 147
    .line 148
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_2

    .line 155
    .line 156
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    const-string p1, "SleepModePolicyController"

    .line 162
    .line 163
    const-string/jumbo v0, "handleWakeupEvent"

    .line 164
    .line 165
    .line 166
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_a

    .line 174
    .line 175
    const-string/jumbo p1, "reason_wakeup"

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_2

    .line 182
    .line 183
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    const-string p1, "SleepModePolicyController"

    .line 189
    .line 190
    const-string/jumbo v0, "handleProbablyAsleepEvent"

    .line 191
    .line 192
    .line 193
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_a

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-nez p1, :cond_a

    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->enterSleepMode()V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_2

    .line 212
    .line 213
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    const-string p0, "SleepModePolicyController"

    .line 219
    .line 220
    const-string/jumbo p1, "handleBeforeBedtimeEvent"

    .line 221
    .line 222
    .line 223
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    goto/16 :goto_2

    .line 227
    .line 228
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 229
    .line 230
    iget-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 231
    .line 232
    if-eqz p1, :cond_3

    .line 233
    .line 234
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    .line 235
    .line 236
    .line 237
    iput-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 238
    .line 239
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-eqz p1, :cond_4

    .line 244
    .line 245
    const-string/jumbo p1, "reason_package_removed"

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    .line 252
    .line 253
    .line 254
    iput-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 255
    .line 256
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 257
    .line 258
    const-string/jumbo p1, "sleep_mode_pref"

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 270
    .line 271
    .line 272
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_2

    .line 276
    .line 277
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 278
    .line 279
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast p1, Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    const-string v0, "SleepModePolicyController"

    .line 287
    .line 288
    const-string/jumbo v1, "handleSleepModeExitEvent"

    .line 289
    .line 290
    .line 291
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_a

    .line 299
    .line 300
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_2

    .line 304
    .line 305
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 306
    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    const-string p1, "SleepModePolicyController"

    .line 311
    .line 312
    const-string/jumbo v0, "handleTimeChangedEvent"

    .line 313
    .line 314
    .line 315
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 324
    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    const-string v0, "SleepModePolicyController"

    .line 329
    .line 330
    const-string/jumbo v1, "handleSetTimeEvent"

    .line 331
    .line 332
    .line 333
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast p1, Landroid/util/ArrayMap;

    .line 339
    .line 340
    const-string/jumbo v0, "start_time"

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    check-cast v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 348
    .line 349
    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 350
    .line 351
    const-string/jumbo v0, "end_time"

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    check-cast p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 359
    .line 360
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 361
    .line 362
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_2

    .line 366
    .line 367
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 368
    .line 369
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast p1, Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    const-string v0, "SleepModePolicyController"

    .line 377
    .line 378
    const-string/jumbo v1, "handleStatusCheckEvent"

    .line 379
    .line 380
    .line 381
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-eqz v0, :cond_a

    .line 389
    .line 390
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-nez v0, :cond_a

    .line 395
    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_2

    .line 400
    .line 401
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 402
    .line 403
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    const-string p1, "SleepModePolicyController"

    .line 407
    .line 408
    const-string/jumbo v0, "handleIdleChangedEvent"

    .line 409
    .line 410
    .line 411
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-eqz v3, :cond_6

    .line 423
    .line 424
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 425
    .line 426
    if-eqz v2, :cond_5

    .line 427
    .line 428
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 429
    .line 430
    if-eqz v2, :cond_5

    .line 431
    .line 432
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 437
    .line 438
    invoke-virtual {v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 443
    .line 444
    iget-object v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 445
    .line 446
    invoke-virtual {v4, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    invoke-virtual {v3, v2, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    :cond_5
    const-string/jumbo v2, "isDuringUserSetupTime: isInSetupTime = "

    .line 459
    .line 460
    .line 461
    invoke-static {v2, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 462
    .line 463
    .line 464
    if-eqz v1, :cond_a

    .line 465
    .line 466
    if-nez v0, :cond_a

    .line 467
    .line 468
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->enterSleepMode()V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_2

    .line 472
    .line 473
    :cond_6
    if-eqz v0, :cond_a

    .line 474
    .line 475
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 476
    .line 477
    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isDeviceIdleMode(Landroid/content/Context;)Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    if-nez v0, :cond_8

    .line 482
    .line 483
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 484
    .line 485
    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isScreenOn(Landroid/content/Context;)Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-nez v0, :cond_7

    .line 490
    .line 491
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 492
    .line 493
    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isPowerConnected(Landroid/content/Context;)Z

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    if-eqz v0, :cond_8

    .line 498
    .line 499
    :cond_7
    move v1, v2

    .line 500
    :cond_8
    const-string/jumbo v0, "revort state is "

    .line 501
    .line 502
    .line 503
    invoke-static {v0, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 504
    .line 505
    .line 506
    if-eqz v1, :cond_a

    .line 507
    .line 508
    const-string/jumbo p1, "reason_idle_change"

    .line 509
    .line 510
    .line 511
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    goto :goto_2

    .line 515
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 516
    .line 517
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    const-string p1, "SleepModePolicyController"

    .line 521
    .line 522
    const-string/jumbo v0, "handleAlarmEndEvent"

    .line 523
    .line 524
    .line 525
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .line 527
    .line 528
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 529
    .line 530
    .line 531
    move-result p1

    .line 532
    if-eqz p1, :cond_a

    .line 533
    .line 534
    const-string/jumbo p1, "reason_alarm_end"

    .line 535
    .line 536
    .line 537
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    goto :goto_2

    .line 541
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 542
    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    const-string p1, "SleepModePolicyController"

    .line 547
    .line 548
    const-string/jumbo v0, "handleAlarmStartEvent"

    .line 549
    .line 550
    .line 551
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .line 553
    .line 554
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    .line 555
    .line 556
    .line 557
    move-result p1

    .line 558
    if-nez p1, :cond_a

    .line 559
    .line 560
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    .line 561
    .line 562
    .line 563
    move-result p1

    .line 564
    if-eqz p1, :cond_a

    .line 565
    .line 566
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->enterSleepMode()V

    .line 567
    .line 568
    .line 569
    goto :goto_2

    .line 570
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 571
    .line 572
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    const-string p1, "SleepModePolicyController"

    .line 576
    .line 577
    const-string/jumbo v0, "handleSleepModeStopEvent"

    .line 578
    .line 579
    .line 580
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .line 582
    .line 583
    iget-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 584
    .line 585
    if-eqz p1, :cond_9

    .line 586
    .line 587
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    .line 588
    .line 589
    .line 590
    iput-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 591
    .line 592
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    .line 593
    .line 594
    .line 595
    goto :goto_2

    .line 596
    :pswitch_d
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 597
    .line 598
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 599
    .line 600
    .line 601
    const-string p1, "SleepModePolicyController"

    .line 602
    .line 603
    const-string/jumbo v0, "handleSleepModeStartEvent"

    .line 604
    .line 605
    .line 606
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .line 608
    .line 609
    iget-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 610
    .line 611
    if-nez p1, :cond_a

    .line 612
    .line 613
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    .line 614
    .line 615
    .line 616
    iput-boolean v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 617
    .line 618
    :cond_a
    :goto_2
    return-void

    .line 619
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
