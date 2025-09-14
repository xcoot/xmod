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

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 3
    iget v1, v0, Landroid/os/Message;->what:I

    .line 5
    const/4 v2, -0x1

    .line 6
    const-string/jumbo v3, "test-keys"

    .line 9
    const-string v4, ""

    .line 11
    const-string/jumbo v5, "ro.build.tags"

    .line 14
    const-wide/16 v6, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const-string v9, "LockSettingsStrongAuth"

    .line 19
    const/4 v10, 0x1

    .line 20
    move-object/from16 v11, p0

    .line 22
    iget-object v11, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 24
    packed-switch v1, :pswitch_data_0

    .line 27
    goto/16 :goto_d

    .line 29
    :pswitch_0
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 31
    iget-object v1, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    .line 43
    if-eqz v1, :cond_14

    .line 45
    iget-wide v1, v1, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->mLatestStrongAuthTime:J

    .line 47
    invoke-virtual {v11, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->rescheduleStrongAuthTimeoutAlarm(IJ)V

    .line 50
    goto/16 :goto_d

    .line 52
    :pswitch_1
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 54
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 56
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 61
    if-eqz v1, :cond_0

    .line 63
    const-string/jumbo v2, "handleScheduleNonStrongBiometricIdleTimeout for userId="

    .line 66
    invoke-static {v0, v2, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    const-string/jumbo v2, "persist.lock.non_strong_biometric_idle_timeout"

    .line 72
    invoke-static {v2, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 75
    move-result-wide v12

    .line 76
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 86
    cmp-long v2, v12, v6

    .line 88
    if-eqz v2, :cond_1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const-wide/32 v12, 0xdbba00

    .line 94
    :goto_0
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    .line 96
    invoke-virtual {v2, v12, v13}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getNextAlarmTimeMs(J)J

    .line 99
    move-result-wide v2

    .line 100
    iget-object v4, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;

    .line 112
    if-eqz v4, :cond_3

    .line 114
    if-eqz v1, :cond_2

    .line 116
    const-string v5, "Cancel existing alarm for non-strong biometric idle timeout"

    .line 118
    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    iget-object v5, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 123
    invoke-virtual {v5, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 126
    :goto_1
    move-object/from16 v19, v4

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    new-instance v4, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;

    .line 131
    invoke-direct {v4, v11, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 134
    iget-object v5, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    goto :goto_1

    .line 144
    :goto_2
    if-eqz v1, :cond_4

    .line 146
    const-string v1, "Schedule a new alarm for non-strong biometric idle timeout"

    .line 148
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_4
    const-string/jumbo v1, "lockscreen.non_strong_bio_idle_timeout"

    .line 154
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->updateStrongAuthTimeoutInfo(ILjava/lang/String;J)V

    .line 157
    iget-object v14, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 159
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 161
    const/4 v15, 0x2

    .line 162
    const-string v18, "LockSettingsPrimaryAuth.nonStrongBiometricIdleTimeoutForUser"

    .line 164
    move-wide/from16 v16, v2

    .line 166
    move-object/from16 v20, v0

    .line 168
    invoke-virtual/range {v14 .. v20}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 171
    goto/16 :goto_d

    .line 173
    :pswitch_2
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 175
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 177
    if-eqz v1, :cond_5

    .line 179
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v2, "handleStrongBiometricUnlock for userId="

    .line 187
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object v1

    .line 197
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_5
    invoke-virtual {v11, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricAlarmListener(I)V

    .line 203
    invoke-virtual {v11, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    .line 206
    invoke-virtual {v11, v10, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowed(ZI)V

    .line 209
    goto/16 :goto_d

    .line 211
    :pswitch_3
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 213
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 215
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 220
    if-eqz v1, :cond_6

    .line 222
    const-string/jumbo v2, "handleScheduleNonStrongBiometricTimeout for userId="

    .line 225
    invoke-static {v0, v2, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_6
    const-string/jumbo v2, "persist.lock.non_strong_biometric_timeout"

    .line 231
    invoke-static {v2, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 234
    move-result-wide v12

    .line 235
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_7

    .line 245
    cmp-long v2, v12, v6

    .line 247
    if-eqz v2, :cond_7

    .line 249
    goto :goto_3

    .line 250
    :cond_7
    const-wide/32 v12, 0x5265c00

    .line 253
    :goto_3
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    .line 255
    invoke-virtual {v2, v12, v13}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getNextAlarmTimeMs(J)J

    .line 258
    move-result-wide v2

    .line 259
    iget-object v4, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 261
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    move-result-object v5

    .line 265
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    move-result-object v4

    .line 269
    check-cast v4, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;

    .line 271
    if-eqz v4, :cond_8

    .line 273
    if-eqz v1, :cond_a

    .line 275
    const-string v1, "There is an existing alarm for non-strong biometric fallback timeout, so do not re-schedule"

    .line 277
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    goto :goto_4

    .line 281
    :cond_8
    if-eqz v1, :cond_9

    .line 283
    const-string v1, "Schedule a new alarm for non-strong biometric fallback timeout"

    .line 285
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_9
    new-instance v1, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;

    .line 290
    invoke-direct {v1, v11, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 293
    iget-object v4, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    move-result-object v5

    .line 299
    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string/jumbo v4, "lockscreen.non_strong_bio_timeout"

    .line 305
    invoke-virtual {v11, v0, v4, v2, v3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->updateStrongAuthTimeoutInfo(ILjava/lang/String;J)V

    .line 308
    iget-object v14, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 310
    iget-object v4, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 312
    const/4 v15, 0x2

    .line 313
    const-string v18, "LockSettingsPrimaryAuth.nonStrongBiometricTimeoutForUser"

    .line 315
    move-wide/from16 v16, v2

    .line 317
    move-object/from16 v19, v1

    .line 319
    move-object/from16 v20, v4

    .line 321
    invoke-virtual/range {v14 .. v20}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 324
    :cond_a
    :goto_4
    invoke-virtual {v11, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    .line 327
    goto/16 :goto_d

    .line 329
    :pswitch_4
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 331
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 333
    if-ne v0, v2, :cond_c

    .line 335
    :goto_5
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 337
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 340
    move-result v0

    .line 341
    if-ge v8, v0, :cond_14

    .line 343
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 345
    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 348
    move-result v0

    .line 349
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 351
    iget v3, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 353
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 356
    move-result v2

    .line 357
    not-int v3, v1

    .line 358
    and-int/2addr v3, v2

    .line 359
    if-eq v2, v3, :cond_b

    .line 361
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 363
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 366
    invoke-virtual {v11, v3, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 369
    :cond_b
    add-int/2addr v8, v10

    .line 370
    goto :goto_5

    .line 371
    :cond_c
    sget-boolean v2, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 373
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 375
    iget v3, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 377
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 380
    move-result v2

    .line 381
    not-int v1, v1

    .line 382
    and-int/2addr v1, v2

    .line 383
    if-eq v2, v1, :cond_14

    .line 385
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 387
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 390
    invoke-virtual {v11, v1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 393
    goto/16 :goto_d

    .line 395
    :pswitch_5
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 397
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 399
    if-eqz v1, :cond_d

    .line 401
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    .line 406
    const-string/jumbo v2, "handleScheduleStrongAuthTimeout for userId="

    .line 409
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    move-result-object v1

    .line 419
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_d
    iget-object v1, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    .line 424
    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getElapsedRealtimeMs()J

    .line 427
    move-result-wide v1

    .line 428
    invoke-virtual {v11, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->rescheduleStrongAuthTimeoutAlarm(IJ)V

    .line 431
    invoke-virtual {v11, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricAlarmListener(I)V

    .line 434
    invoke-virtual {v11, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    .line 437
    invoke-virtual {v11, v10, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowed(ZI)V

    .line 440
    goto/16 :goto_d

    .line 442
    :pswitch_6
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 444
    iget-object v1, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 446
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 449
    move-result v1

    .line 450
    if-ltz v1, :cond_e

    .line 452
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 454
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 457
    iget v1, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 459
    invoke-virtual {v11, v1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 462
    :cond_e
    iget-object v1, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 464
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 467
    move-result v1

    .line 468
    if-ltz v1, :cond_14

    .line 470
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 472
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 475
    invoke-virtual {v11, v0, v10}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackersForIsNonStrongBiometricAllowed(IZ)V

    .line 478
    goto/16 :goto_d

    .line 480
    :pswitch_7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 482
    check-cast v0, Landroid/app/trust/IStrongAuthTracker;

    .line 484
    iget-object v1, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 486
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 489
    goto/16 :goto_d

    .line 491
    :pswitch_8
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 493
    move-object v1, v0

    .line 494
    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    .line 496
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 498
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 501
    move v2, v8

    .line 502
    :goto_6
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 504
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 507
    move-result v0

    .line 508
    if-ge v2, v0, :cond_f

    .line 510
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 512
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 515
    move-result v0

    .line 516
    iget-object v3, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 518
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 521
    move-result v3

    .line 522
    :try_start_0
    invoke-interface {v1, v3, v0}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    goto :goto_7

    .line 526
    :catch_0
    move-exception v0

    .line 527
    move-object v3, v0

    .line 528
    const-string v0, "Exception while adding StrongAuthTracker."

    .line 530
    invoke-static {v9, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    :goto_7
    add-int/2addr v2, v10

    .line 534
    goto :goto_6

    .line 535
    :cond_f
    :goto_8
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 537
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 540
    move-result v0

    .line 541
    if-ge v8, v0, :cond_14

    .line 543
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 545
    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 548
    move-result v0

    .line 549
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 551
    invoke-virtual {v2, v8}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 554
    move-result v2

    .line 555
    :try_start_1
    invoke-interface {v1, v2, v0}, Landroid/app/trust/IStrongAuthTracker;->onIsNonStrongBiometricAllowedChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 558
    goto :goto_9

    .line 559
    :catch_1
    move-exception v0

    .line 560
    move-object v2, v0

    .line 561
    const-string v0, "Exception while adding StrongAuthTracker: IsNonStrongBiometricAllowedChanged."

    .line 563
    invoke-static {v9, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    :goto_9
    add-int/2addr v8, v10

    .line 567
    goto :goto_8

    .line 568
    :pswitch_9
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 570
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 572
    if-ne v0, v2, :cond_12

    .line 574
    move v0, v8

    .line 575
    :goto_a
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 577
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 580
    move-result v2

    .line 581
    if-ge v0, v2, :cond_14

    .line 583
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 585
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 588
    move-result v2

    .line 589
    iget-object v3, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 591
    iget v4, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 593
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 596
    move-result v3

    .line 597
    if-nez v1, :cond_10

    .line 599
    move v4, v8

    .line 600
    goto :goto_b

    .line 601
    :cond_10
    or-int v4, v3, v1

    .line 603
    :goto_b
    if-eq v3, v4, :cond_11

    .line 605
    iget-object v3, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 607
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 610
    invoke-virtual {v11, v4, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 613
    :cond_11
    add-int/2addr v0, v10

    .line 614
    goto :goto_a

    .line 615
    :cond_12
    sget-boolean v2, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 617
    iget-object v2, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 619
    iget v3, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 621
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 624
    move-result v2

    .line 625
    if-nez v1, :cond_13

    .line 627
    goto :goto_c

    .line 628
    :cond_13
    or-int v8, v2, v1

    .line 630
    :goto_c
    if-eq v2, v8, :cond_14

    .line 632
    iget-object v1, v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 634
    invoke-virtual {v1, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 637
    invoke-virtual {v11, v8, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

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
