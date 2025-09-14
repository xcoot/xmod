.class public final Lcom/android/server/BatteryService$15;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/BatteryService$15;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    .line 1
    iput-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    .line 3
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    .line 5
    :pswitch_1
    iput-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    .line 7
    :pswitch_2
    iput-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    .line 9
    :pswitch_3
    iput-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 10
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    .line 11
    :pswitch_4
    iput-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 12
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    .line 13
    :pswitch_5
    iput-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    .line 15
    :pswitch_6
    iput-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    .line 17
    :pswitch_7
    iput-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 18
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    .line 19
    :pswitch_8
    iput-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 20
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    .line 21
    :pswitch_9
    iput-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 22
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
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

.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService$15;->$r8$classId:I

    .line 23
    iput-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/BatteryService$15;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 11
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 13
    new-instance v0, Lcom/android/server/BatteryService$31;

    .line 15
    const/16 v1, 0xb

    .line 17
    invoke-direct {v0, v1, p0}, Lcom/android/server/BatteryService$31;-><init>(ILjava/lang/Object;)V

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    return-void

    .line 24
    :pswitch_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 27
    iget-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 29
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/android/server/BatteryService$31;

    .line 33
    const/16 v1, 0xa

    .line 35
    invoke-direct {v0, v1, p0}, Lcom/android/server/BatteryService$31;-><init>(ILjava/lang/Object;)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void

    .line 42
    :pswitch_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 45
    iget-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 47
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/android/server/BatteryService$31;

    .line 51
    const/16 v1, 0x9

    .line 53
    invoke-direct {v0, v1, p0}, Lcom/android/server/BatteryService$31;-><init>(ILjava/lang/Object;)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void

    .line 60
    :pswitch_2
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 63
    iget-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 65
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/android/server/BatteryService$31;

    .line 69
    const/16 v1, 0x8

    .line 71
    invoke-direct {v0, v1, p0}, Lcom/android/server/BatteryService$31;-><init>(ILjava/lang/Object;)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void

    .line 78
    :pswitch_3
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 81
    iget-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 83
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/android/server/BatteryService$31;

    .line 87
    const/4 v1, 0x7

    .line 88
    invoke-direct {v0, v1, p0}, Lcom/android/server/BatteryService$31;-><init>(ILjava/lang/Object;)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void

    .line 95
    :pswitch_4
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 98
    iget-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 100
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/android/server/BatteryService$31;

    .line 104
    const/4 v1, 0x6

    .line 105
    invoke-direct {v0, v1, p0}, Lcom/android/server/BatteryService$31;-><init>(ILjava/lang/Object;)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void

    .line 112
    :pswitch_5
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 115
    iget-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 117
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/android/server/BatteryService$31;

    .line 121
    const/4 v1, 0x5

    .line 122
    invoke-direct {v0, v1, p0}, Lcom/android/server/BatteryService$31;-><init>(ILjava/lang/Object;)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void

    .line 129
    :pswitch_6
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 132
    iget-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 134
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/android/server/BatteryService$31;

    .line 138
    const/4 v1, 0x4

    .line 139
    invoke-direct {v0, v1, p0}, Lcom/android/server/BatteryService$31;-><init>(ILjava/lang/Object;)V

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void

    .line 146
    :pswitch_7
    const-string v0, "Led Low Battery Settings = "

    .line 148
    const-string v1, "Led Charging Settings = "

    .line 150
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 153
    iget-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 155
    iget-object v2, p1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 157
    monitor-enter v2

    .line 158
    :try_start_0
    iget-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 160
    iget-object p1, p1, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 165
    move-result-object p1

    .line 166
    iget-object v3, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 168
    const-string/jumbo v4, "led_indicator_charing"

    .line 171
    const/4 v5, -0x2

    .line 172
    const/4 v6, 0x1

    .line 173
    invoke-static {p1, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 176
    move-result v4

    .line 177
    const/4 v7, 0x0

    .line 178
    if-ne v4, v6, :cond_0

    .line 180
    move v4, v6

    .line 181
    goto :goto_0

    .line 182
    :cond_0
    move v4, v7

    .line 183
    :goto_0
    iput-boolean v4, v3, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 185
    iget-object v3, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 187
    const-string/jumbo v4, "led_indicator_low_battery"

    .line 190
    invoke-static {p1, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 193
    move-result p1

    .line 194
    if-ne p1, v6, :cond_1

    .line 196
    goto :goto_1

    .line 197
    :cond_1
    move v6, v7

    .line 198
    :goto_1
    iput-boolean v6, v3, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 200
    sget-object p1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 202
    const-string p1, "BatteryService"

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    .line 206
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 211
    iget-boolean v1, v1, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 213
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object v1

    .line 220
    invoke-static {p1, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string p1, "BatteryService"

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 232
    iget-boolean v0, v0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 234
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 246
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 248
    invoke-virtual {p0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 251
    monitor-exit v2

    .line 252
    return-void

    .line 253
    :catchall_0
    move-exception p0

    .line 254
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    throw p0

    .line 256
    :pswitch_8
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 259
    iget-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 261
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 263
    new-instance v0, Lcom/android/server/BatteryService$31;

    .line 265
    const/4 v1, 0x3

    .line 266
    invoke-direct {v0, v1, p0}, Lcom/android/server/BatteryService$31;-><init>(ILjava/lang/Object;)V

    .line 269
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void

    .line 273
    :pswitch_9
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 276
    iget-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 278
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 280
    new-instance v0, Lcom/android/server/BatteryService$31;

    .line 282
    const/4 v1, 0x2

    .line 283
    invoke-direct {v0, v1, p0}, Lcom/android/server/BatteryService$31;-><init>(ILjava/lang/Object;)V

    .line 286
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void

    .line 290
    :pswitch_a
    iget-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 292
    iget-object p1, p1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 294
    monitor-enter p1

    .line 295
    :try_start_1
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 297
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 300
    monitor-exit p1

    .line 301
    return-void

    .line 302
    :catchall_1
    move-exception p0

    .line 303
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 304
    throw p0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
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
