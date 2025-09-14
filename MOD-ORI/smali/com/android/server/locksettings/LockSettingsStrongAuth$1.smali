.class public final Lcom/android/server/locksettings/LockSettingsStrongAuth$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

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
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget v1, v0, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const-string/jumbo v3, "test-keys"

    .line 7
    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const-string/jumbo v5, "ro.build.tags"

    .line 12
    .line 13
    .line 14
    const-wide/16 v6, 0x0

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    const-string v9, "LockSettingsStrongAuth"

    .line 18
    .line 19
    const/4 v10, 0x1

    .line 20
    move-object/from16 v11, p0

    .line 21
    .line 22
    iget-object v11, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 23
    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_d

    .line 28
    .line 29
    :pswitch_0
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 30
    .line 31
    iget-object v1, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    .line 42
    .line 43
    if-eqz v1, :cond_14

    .line 44
    .line 45
    iget-wide v1, v1, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->mLatestStrongAuthTime:J

    .line 46
    .line 47
    invoke-virtual {v11, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->rescheduleStrongAuthTimeoutAlarm(IJ)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_d

    .line 51
    .line 52
    :pswitch_1
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 53
    .line 54
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 55
    .line 56
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    const-string/jumbo v2, "handleScheduleNonStrongBiometricIdleTimeout for userId="

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v2, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    const-string/jumbo v2, "persist.lock.non_strong_biometric_idle_timeout"

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v12

    .line 76
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    cmp-long v2, v12, v6

    .line 87
    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const-wide/32 v12, 0xdbba00

    .line 92
    .line 93
    .line 94
    :goto_0
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    .line 95
    .line 96
    invoke-virtual {v2, v12, v13}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getNextAlarmTimeMs(J)J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    iget-object v4, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;

    .line 111
    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    const-string v5, "Cancel existing alarm for non-strong biometric idle timeout"

    .line 117
    .line 118
    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_2
    iget-object v5, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 122
    .line 123
    invoke-virtual {v5, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 124
    .line 125
    .line 126
    :goto_1
    move-object/from16 v19, v4

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    new-instance v4, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;

    .line 130
    .line 131
    invoke-direct {v4, v11, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 132
    .line 133
    .line 134
    iget-object v5, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 135
    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :goto_2
    if-eqz v1, :cond_4

    .line 145
    .line 146
    const-string v1, "Schedule a new alarm for non-strong biometric idle timeout"

    .line 147
    .line 148
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :cond_4
    const-string/jumbo v1, "lockscreen.non_strong_bio_idle_timeout"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->updateStrongAuthTimeoutInfo(ILjava/lang/String;J)V

    .line 155
    .line 156
    .line 157
    iget-object v14, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 158
    .line 159
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 160
    .line 161
    const/4 v15, 0x2

    .line 162
    const-string v18, "LockSettingsPrimaryAuth.nonStrongBiometricIdleTimeoutForUser"

    .line 163
    .line 164
    move-wide/from16 v16, v2

    .line 165
    .line 166
    move-object/from16 v20, v0

    .line 167
    .line 168
    invoke-virtual/range {v14 .. v20}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_d

    .line 172
    .line 173
    :pswitch_2
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 174
    .line 175
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 176
    .line 177
    if-eqz v1, :cond_5

    .line 178
    .line 179
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string/jumbo v2, "handleStrongBiometricUnlock for userId="

    .line 185
    .line 186
    .line 187
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    :cond_5
    invoke-virtual {v11, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricAlarmListener(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v11, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v11, v10, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowed(ZI)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_d

    .line 210
    .line 211
    :pswitch_3
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 212
    .line 213
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 214
    .line 215
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 219
    .line 220
    if-eqz v1, :cond_6

    .line 221
    .line 222
    const-string/jumbo v2, "handleScheduleNonStrongBiometricTimeout for userId="

    .line 223
    .line 224
    .line 225
    invoke-static {v0, v2, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_6
    const-string/jumbo v2, "persist.lock.non_strong_biometric_timeout"

    .line 229
    .line 230
    .line 231
    invoke-static {v2, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 232
    .line 233
    .line 234
    move-result-wide v12

    .line 235
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_7

    .line 244
    .line 245
    cmp-long v2, v12, v6

    .line 246
    .line 247
    if-eqz v2, :cond_7

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_7
    const-wide/32 v12, 0x5265c00

    .line 251
    .line 252
    .line 253
    :goto_3
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    .line 254
    .line 255
    invoke-virtual {v2, v12, v13}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getNextAlarmTimeMs(J)J

    .line 256
    .line 257
    .line 258
    move-result-wide v2

    .line 259
    iget-object v4, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 260
    .line 261
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    check-cast v4, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;

    .line 270
    .line 271
    if-eqz v4, :cond_8

    .line 272
    .line 273
    if-eqz v1, :cond_a

    .line 274
    .line 275
    const-string v1, "There is an existing alarm for non-strong biometric fallback timeout, so do not re-schedule"

    .line 276
    .line 277
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_8
    if-eqz v1, :cond_9

    .line 282
    .line 283
    const-string v1, "Schedule a new alarm for non-strong biometric fallback timeout"

    .line 284
    .line 285
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    :cond_9
    new-instance v1, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;

    .line 289
    .line 290
    invoke-direct {v1, v11, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 291
    .line 292
    .line 293
    iget-object v4, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 294
    .line 295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    const-string/jumbo v4, "lockscreen.non_strong_bio_timeout"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v11, v0, v4, v2, v3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->updateStrongAuthTimeoutInfo(ILjava/lang/String;J)V

    .line 306
    .line 307
    .line 308
    iget-object v14, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 309
    .line 310
    iget-object v4, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 311
    .line 312
    const/4 v15, 0x2

    .line 313
    const-string v18, "LockSettingsPrimaryAuth.nonStrongBiometricTimeoutForUser"

    .line 314
    .line 315
    move-wide/from16 v16, v2

    .line 316
    .line 317
    move-object/from16 v19, v1

    .line 318
    .line 319
    move-object/from16 v20, v4

    .line 320
    .line 321
    invoke-virtual/range {v14 .. v20}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 322
    .line 323
    .line 324
    :cond_a
    :goto_4
    invoke-virtual {v11, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_d

    .line 328
    .line 329
    :pswitch_4
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 330
    .line 331
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 332
    .line 333
    if-ne v0, v2, :cond_c

    .line 334
    .line 335
    :goto_5
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 336
    .line 337
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-ge v8, v0, :cond_14

    .line 342
    .line 343
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 344
    .line 345
    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 350
    .line 351
    iget v3, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 352
    .line 353
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    not-int v3, v1

    .line 358
    and-int/2addr v3, v2

    .line 359
    if-eq v2, v3, :cond_b

    .line 360
    .line 361
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 362
    .line 363
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v11, v3, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 367
    .line 368
    .line 369
    :cond_b
    add-int/2addr v8, v10

    .line 370
    goto :goto_5

    .line 371
    :cond_c
    sget-boolean v2, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 372
    .line 373
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 374
    .line 375
    iget v3, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 376
    .line 377
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    not-int v1, v1

    .line 382
    and-int/2addr v1, v2

    .line 383
    if-eq v2, v1, :cond_14

    .line 384
    .line 385
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 386
    .line 387
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v11, v1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_d

    .line 394
    .line 395
    :pswitch_5
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 396
    .line 397
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 398
    .line 399
    if-eqz v1, :cond_d

    .line 400
    .line 401
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    const-string/jumbo v2, "handleScheduleStrongAuthTimeout for userId="

    .line 407
    .line 408
    .line 409
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    :cond_d
    iget-object v1, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    .line 423
    .line 424
    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getElapsedRealtimeMs()J

    .line 425
    .line 426
    .line 427
    move-result-wide v1

    .line 428
    invoke-virtual {v11, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->rescheduleStrongAuthTimeoutAlarm(IJ)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v11, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricAlarmListener(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v11, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v11, v10, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowed(ZI)V

    .line 438
    .line 439
    .line 440
    goto/16 :goto_d

    .line 441
    .line 442
    :pswitch_6
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 443
    .line 444
    iget-object v1, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 445
    .line 446
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-ltz v1, :cond_e

    .line 451
    .line 452
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 453
    .line 454
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 455
    .line 456
    .line 457
    iget v1, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 458
    .line 459
    invoke-virtual {v11, v1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 460
    .line 461
    .line 462
    :cond_e
    iget-object v1, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 463
    .line 464
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    if-ltz v1, :cond_14

    .line 469
    .line 470
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 471
    .line 472
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v11, v0, v10}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackersForIsNonStrongBiometricAllowed(IZ)V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_d

    .line 479
    .line 480
    :pswitch_7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v0, Landroid/app/trust/IStrongAuthTracker;

    .line 483
    .line 484
    iget-object v1, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 485
    .line 486
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 487
    .line 488
    .line 489
    goto/16 :goto_d

    .line 490
    .line 491
    :pswitch_8
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 492
    .line 493
    move-object v1, v0

    .line 494
    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    .line 495
    .line 496
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 497
    .line 498
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 499
    .line 500
    .line 501
    move v2, v8

    .line 502
    :goto_6
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 503
    .line 504
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    if-ge v2, v0, :cond_f

    .line 509
    .line 510
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 511
    .line 512
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    iget-object v3, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 517
    .line 518
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    :try_start_0
    invoke-interface {v1, v3, v0}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .line 524
    .line 525
    goto :goto_7

    .line 526
    :catch_0
    move-exception v0

    .line 527
    move-object v3, v0

    .line 528
    const-string v0, "Exception while adding StrongAuthTracker."

    .line 529
    .line 530
    invoke-static {v9, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    .line 532
    .line 533
    :goto_7
    add-int/2addr v2, v10

    .line 534
    goto :goto_6

    .line 535
    :cond_f
    :goto_8
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 536
    .line 537
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-ge v8, v0, :cond_14

    .line 542
    .line 543
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 544
    .line 545
    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 550
    .line 551
    invoke-virtual {v2, v8}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    :try_start_1
    invoke-interface {v1, v2, v0}, Landroid/app/trust/IStrongAuthTracker;->onIsNonStrongBiometricAllowedChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 556
    .line 557
    .line 558
    goto :goto_9

    .line 559
    :catch_1
    move-exception v0

    .line 560
    move-object v2, v0

    .line 561
    const-string v0, "Exception while adding StrongAuthTracker: IsNonStrongBiometricAllowedChanged."

    .line 562
    .line 563
    invoke-static {v9, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    .line 565
    .line 566
    :goto_9
    add-int/2addr v8, v10

    .line 567
    goto :goto_8

    .line 568
    :pswitch_9
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 569
    .line 570
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 571
    .line 572
    if-ne v0, v2, :cond_12

    .line 573
    .line 574
    move v0, v8

    .line 575
    :goto_a
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 576
    .line 577
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    if-ge v0, v2, :cond_14

    .line 582
    .line 583
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 584
    .line 585
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    iget-object v3, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 590
    .line 591
    iget v4, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 592
    .line 593
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    if-nez v1, :cond_10

    .line 598
    .line 599
    move v4, v8

    .line 600
    goto :goto_b

    .line 601
    :cond_10
    or-int v4, v3, v1

    .line 602
    .line 603
    :goto_b
    if-eq v3, v4, :cond_11

    .line 604
    .line 605
    iget-object v3, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 606
    .line 607
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v11, v4, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 611
    .line 612
    .line 613
    :cond_11
    add-int/2addr v0, v10

    .line 614
    goto :goto_a

    .line 615
    :cond_12
    sget-boolean v2, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 616
    .line 617
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 618
    .line 619
    iget v3, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 620
    .line 621
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 622
    .line 623
    .line 624
    move-result v2

    .line 625
    if-nez v1, :cond_13

    .line 626
    .line 627
    goto :goto_c

    .line 628
    :cond_13
    or-int v8, v2, v1

    .line 629
    .line 630
    :goto_c
    if-eq v2, v8, :cond_14

    .line 631
    .line 632
    iget-object v1, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 633
    .line 634
    invoke-virtual {v1, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v11, v8, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 638
    .line 639
    .line 640
    :cond_14
    :goto_d
    return-void

    .line 641
    :pswitch_data_0
    .packed-switch 0x1
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
