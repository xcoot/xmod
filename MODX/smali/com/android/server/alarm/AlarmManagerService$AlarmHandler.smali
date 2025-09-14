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

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

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

    .line 5
    const/16 v3, 0xb

    .line 7
    if-eq v2, v3, :cond_7

    .line 9
    const/16 v3, 0x15

    .line 11
    if-eq v2, v3, :cond_6

    .line 13
    const/4 v3, 0x0

    .line 14
    packed-switch v2, :pswitch_data_0

    .line 17
    packed-switch v2, :pswitch_data_1

    .line 20
    goto/16 :goto_8

    .line 22
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    check-cast p1, Ljava/lang/Integer;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result p1

    .line 30
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 32
    filled-new-array {p1}, [I

    .line 35
    move-result-object p1

    .line 36
    sget-object v1, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    .line 43
    invoke-direct {v2, v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 46
    const/4 p1, 0x6

    .line 47
    invoke-virtual {p0, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    .line 50
    monitor-exit v1

    .line 51
    goto/16 :goto_8

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

    .line 58
    check-cast v1, Ljava/lang/String;

    .line 60
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 62
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 64
    invoke-virtual {v2, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(ILjava/lang/String;)Z

    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_8

    .line 70
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 72
    invoke-virtual {v2, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(ILjava/lang/String;)Z

    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_8

    .line 78
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 80
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/alarm/AlarmManagerService;->removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V

    .line 83
    goto/16 :goto_8

    .line 85
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 87
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    check-cast p1, Ljava/lang/String;

    .line 91
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 93
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V

    .line 96
    goto/16 :goto_8

    .line 98
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    check-cast p1, Landroid/app/PendingIntent;

    .line 102
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 104
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 106
    monitor-enter v0

    .line 107
    :try_start_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 109
    const/4 v1, 0x4

    .line 110
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 113
    monitor-exit v0

    .line 114
    goto/16 :goto_8

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

    .line 121
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 123
    monitor-enter v0

    .line 124
    :try_start_2
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 126
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    check-cast p1, Ljava/lang/Boolean;

    .line 130
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    move-result p1

    .line 134
    iput-boolean p1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    .line 136
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 138
    invoke-virtual {p1, v3}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 146
    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 149
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

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

    .line 164
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 166
    monitor-enter v2

    .line 167
    :try_start_3
    new-instance v0, Landroid/util/ArraySet;

    .line 169
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 172
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 174
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    check-cast p1, Ljava/lang/String;

    .line 178
    invoke-static {v1, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 187
    invoke-virtual {p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 195
    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 198
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 200
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

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

    .line 213
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 215
    if-eqz p0, :cond_8

    .line 217
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 219
    if-eqz p1, :cond_2

    .line 221
    move v0, v1

    .line 222
    :cond_2
    invoke-interface {p0, v0}, Lcom/android/server/DeviceIdleInternal;->setAlarmsActive(Z)V

    .line 225
    goto/16 :goto_8

    .line 227
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 229
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    .line 231
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    check-cast p1, Landroid/os/IBinder;

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->alarmTimedOut(Landroid/os/IBinder;)V

    .line 238
    goto/16 :goto_8

    .line 240
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 242
    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$msendNextAlarmClockChanged(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 245
    goto/16 :goto_8

    .line 247
    :pswitch_9
    new-instance p1, Ljava/util/ArrayList;

    .line 249
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 254
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 256
    monitor-enter v2

    .line 257
    :try_start_4
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 259
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 261
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 267
    move-result-wide v4

    .line 268
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 270
    invoke-virtual {v6, v4, v5, p1}, Lcom/android/server/alarm/AlarmManagerService;->triggerAlarmsLocked(JLjava/util/ArrayList;)I

    .line 273
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 275
    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 278
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 279
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 282
    move-result v2

    .line 283
    if-ge v0, v2, :cond_8

    .line 285
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 288
    move-result-object v2

    .line 289
    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 291
    :try_start_5
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 293
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    iget-object v5, v2, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    .line 298
    if-eqz v5, :cond_3

    .line 300
    :goto_5
    move-object v13, v5

    .line 301
    goto :goto_6

    .line 302
    :cond_3
    iget-object v5, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 304
    invoke-virtual {v5}, Landroid/app/PendingIntent;->isActivity()Z

    .line 307
    move-result v5

    .line 308
    if-eqz v5, :cond_4

    .line 310
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    .line 312
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 315
    move-result-object v5

    .line 316
    goto :goto_5

    .line 317
    :cond_4
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    .line 319
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 322
    move-result-object v5

    .line 323
    goto :goto_5

    .line 324
    :goto_6
    iget-object v6, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

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

    .line 335
    goto :goto_7

    .line 336
    :catch_0
    iget-wide v4, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 338
    const-wide/16 v6, 0x0

    .line 340
    cmp-long v4, v4, v6

    .line 342
    if-lez v4, :cond_5

    .line 344
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 346
    iget-object v5, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 348
    invoke-virtual {v4, v5, v3}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 351
    :cond_5
    :goto_7
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 353
    iget v2, v2, Lcom/android/server/alarm/Alarm;->uid:I

    .line 355
    invoke-virtual {v4, v2}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(I)V

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

    .line 365
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 367
    monitor-enter p1

    .line 368
    :try_start_7
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 370
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

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

    .line 380
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->refreshExactAlarmCandidates()V

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

    .line 405
    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
