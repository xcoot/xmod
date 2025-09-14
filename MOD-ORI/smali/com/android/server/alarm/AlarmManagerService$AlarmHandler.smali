.class Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/16 v3, 0xb

    .line 6
    .line 7
    if-eq v2, v3, :cond_7

    .line 8
    .line 9
    const/16 v3, 0x15

    .line 10
    .line 11
    if-eq v2, v3, :cond_6

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    packed-switch v2, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    packed-switch v2, :pswitch_data_1

    .line 18
    .line 19
    .line 20
    goto/16 :goto_8

    .line 21
    .line 22
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 31
    .line 32
    filled-new-array {p1}, [I

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v1, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    .line 42
    .line 43
    invoke-direct {v2, v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x6

    .line 47
    invoke-virtual {p0, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    .line 48
    .line 49
    .line 50
    monitor-exit v1

    .line 51
    goto/16 :goto_8

    .line 52
    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0

    .line 56
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Ljava/lang/String;

    .line 59
    .line 60
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 63
    .line 64
    invoke-virtual {v2, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(ILjava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_8

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 71
    .line 72
    invoke-virtual {v2, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(ILjava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_8

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 79
    .line 80
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/alarm/AlarmManagerService;->removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_8

    .line 84
    .line 85
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 86
    .line 87
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, Ljava/lang/String;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 92
    .line 93
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_8

    .line 97
    .line 98
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p1, Landroid/app/PendingIntent;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 105
    .line 106
    monitor-enter v0

    .line 107
    :try_start_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 108
    .line 109
    const/4 v1, 0x4

    .line 110
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 111
    .line 112
    .line 113
    monitor-exit v0

    .line 114
    goto/16 :goto_8

    .line 115
    .line 116
    :catchall_1
    move-exception p0

    .line 117
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    throw p0

    .line 119
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 122
    .line 123
    monitor-enter v0

    .line 124
    :try_start_2
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 125
    .line 126
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p1, Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iput-boolean p1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 137
    .line 138
    invoke-virtual {p1, v3}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_0

    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 147
    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :catchall_2
    move-exception p0

    .line 156
    goto :goto_1

    .line 157
    :cond_0
    :goto_0
    monitor-exit v0

    .line 158
    goto/16 :goto_8

    .line 159
    .line 160
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 161
    throw p0

    .line 162
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 163
    .line 164
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 165
    .line 166
    monitor-enter v2

    .line 167
    :try_start_3
    new-instance v0, Landroid/util/ArraySet;

    .line 168
    .line 169
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 170
    .line 171
    .line 172
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 173
    .line 174
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast p1, Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v1, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 186
    .line 187
    invoke-virtual {p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_1

    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 196
    .line 197
    .line 198
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :catchall_3
    move-exception p0

    .line 205
    goto :goto_3

    .line 206
    :cond_1
    :goto_2
    monitor-exit v2

    .line 207
    goto/16 :goto_8

    .line 208
    .line 209
    :goto_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 210
    throw p0

    .line 211
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 212
    .line 213
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 214
    .line 215
    if-eqz p0, :cond_8

    .line 216
    .line 217
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 218
    .line 219
    if-eqz p1, :cond_2

    .line 220
    .line 221
    move v0, v1

    .line 222
    :cond_2
    invoke-interface {p0, v0}, Lcom/android/server/DeviceIdleInternal;->setAlarmsActive(Z)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_8

    .line 226
    .line 227
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 228
    .line 229
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    .line 230
    .line 231
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast p1, Landroid/os/IBinder;

    .line 234
    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->alarmTimedOut(Landroid/os/IBinder;)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_8

    .line 239
    .line 240
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 241
    .line 242
    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$msendNextAlarmClockChanged(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_8

    .line 246
    .line 247
    :pswitch_9
    new-instance p1, Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .line 251
    .line 252
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 253
    .line 254
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 255
    .line 256
    monitor-enter v2

    .line 257
    :try_start_4
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 258
    .line 259
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 260
    .line 261
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 265
    .line 266
    .line 267
    move-result-wide v4

    .line 268
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 269
    .line 270
    invoke-virtual {v6, v4, v5, p1}, Lcom/android/server/alarm/AlarmManagerService;->triggerAlarmsLocked(JLjava/util/ArrayList;)I

    .line 271
    .line 272
    .line 273
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 274
    .line 275
    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 276
    .line 277
    .line 278
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 279
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-ge v0, v2, :cond_8

    .line 284
    .line 285
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 290
    .line 291
    :try_start_5
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 292
    .line 293
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    iget-object v5, v2, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    .line 297
    .line 298
    if-eqz v5, :cond_3

    .line 299
    .line 300
    :goto_5
    move-object v13, v5

    .line 301
    goto :goto_6

    .line 302
    :cond_3
    iget-object v5, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 303
    .line 304
    invoke-virtual {v5}, Landroid/app/PendingIntent;->isActivity()Z

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-eqz v5, :cond_4

    .line 309
    .line 310
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    .line 311
    .line 312
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    goto :goto_5

    .line 317
    :cond_4
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    .line 318
    .line 319
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    goto :goto_5

    .line 324
    :goto_6
    iget-object v6, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 325
    .line 326
    const/4 v9, 0x0

    .line 327
    const/4 v10, 0x0

    .line 328
    const/4 v11, 0x0

    .line 329
    const/4 v12, 0x0

    .line 330
    const/4 v7, 0x0

    .line 331
    const/4 v8, 0x0

    .line 332
    invoke-virtual/range {v6 .. v13}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_0

    .line 333
    .line 334
    .line 335
    goto :goto_7

    .line 336
    :catch_0
    iget-wide v4, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 337
    .line 338
    const-wide/16 v6, 0x0

    .line 339
    .line 340
    cmp-long v4, v4, v6

    .line 341
    .line 342
    if-lez v4, :cond_5

    .line 343
    .line 344
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 345
    .line 346
    iget-object v5, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 347
    .line 348
    invoke-virtual {v4, v5, v3}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 349
    .line 350
    .line 351
    :cond_5
    :goto_7
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 352
    .line 353
    iget v2, v2, Lcom/android/server/alarm/Alarm;->uid:I

    .line 354
    .line 355
    invoke-virtual {v4, v2}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(I)V

    .line 356
    .line 357
    .line 358
    add-int/2addr v0, v1

    .line 359
    goto :goto_4

    .line 360
    :catchall_4
    move-exception p0

    .line 361
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 362
    throw p0

    .line 363
    :cond_6
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 364
    .line 365
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 366
    .line 367
    monitor-enter p1

    .line 368
    :try_start_7
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 369
    .line 370
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 371
    .line 372
    .line 373
    monitor-exit p1

    .line 374
    goto :goto_8

    .line 375
    :catchall_5
    move-exception p0

    .line 376
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 377
    throw p0

    .line 378
    :cond_7
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 379
    .line 380
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->refreshExactAlarmCandidates()V

    .line 381
    .line 382
    .line 383
    :cond_8
    :goto_8
    return-void

    .line 384
    nop

    .line 385
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
    .end packed-switch

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
