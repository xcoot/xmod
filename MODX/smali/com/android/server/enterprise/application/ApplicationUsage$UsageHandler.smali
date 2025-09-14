.class public final Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationUsage;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationUsage;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v3, :cond_c

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v0, v3, :cond_a

    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq v0, v3, :cond_4

    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_1

    .line 17
    const/4 p1, 0x5

    .line 18
    if-eq v0, p1, :cond_0

    .line 20
    goto/16 :goto_7

    .line 22
    :cond_0
    const-string p1, "ApplicationUsage"

    .line 24
    const-string/jumbo v0, "handleMessage : MSG_UPDATE_USAGE_DB"

    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->_insertToAppControlDB()V

    .line 35
    goto/16 :goto_7

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    .line 39
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    check-cast p1, Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    .line 48
    monitor-enter v0

    .line 49
    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    .line 51
    if-nez p0, :cond_2

    .line 53
    monitor-exit v0

    .line 54
    goto/16 :goto_7

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move-object v1, p0

    .line 59
    check-cast v1, Ljava/util/HashMap;

    .line 61
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 67
    check-cast p0, Ljava/util/HashMap;

    .line 69
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    move-result-wide v1

    .line 79
    iput-wide v1, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    .line 81
    :cond_3
    monitor-exit v0

    .line 82
    goto/16 :goto_7

    .line 84
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0

    .line 86
    :cond_4
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    .line 88
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    check-cast p1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    if-eqz p1, :cond_f

    .line 97
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    .line 99
    if-nez p0, :cond_5

    .line 101
    goto/16 :goto_7

    .line 103
    :cond_5
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 105
    if-nez v0, :cond_6

    .line 107
    iget v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 109
    if-nez v0, :cond_6

    .line 111
    goto/16 :goto_7

    .line 113
    :cond_6
    iget v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 115
    and-int/lit8 v0, v0, 0x8

    .line 117
    if-eqz v0, :cond_7

    .line 119
    goto/16 :goto_7

    .line 121
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    iget-object v3, p1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 128
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v3, ":"

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget p1, p1, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 142
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 145
    move-result p1

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    .line 155
    monitor-enter v0

    .line 156
    :try_start_1
    move-object v3, p0

    .line 157
    check-cast v3, Ljava/util/HashMap;

    .line 159
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_9

    .line 165
    check-cast p0, Ljava/util/HashMap;

    .line 167
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object p0

    .line 171
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 173
    iget-wide v3, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 175
    cmp-long p1, v3, v1

    .line 177
    if-nez p1, :cond_8

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 182
    move-result-wide v3

    .line 183
    iput-wide v3, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 185
    goto :goto_1

    .line 186
    :catchall_1
    move-exception p0

    .line 187
    goto :goto_3

    .line 188
    :cond_8
    :goto_1
    iput-wide v1, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    .line 190
    goto :goto_2

    .line 191
    :cond_9
    new-instance v3, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 193
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-wide v1, v3, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 198
    iput-wide v1, v3, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 203
    move-result-wide v1

    .line 204
    iput-wide v1, v3, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 206
    check-cast p0, Ljava/util/HashMap;

    .line 208
    invoke-virtual {p0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :goto_2
    monitor-exit v0

    .line 212
    goto/16 :goto_7

    .line 214
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    throw p0

    .line 216
    :cond_a
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    .line 218
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    check-cast p1, Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    .line 227
    monitor-enter v0

    .line 228
    :try_start_2
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 230
    move-object v1, p0

    .line 231
    check-cast v1, Ljava/util/HashMap;

    .line 233
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_b

    .line 239
    check-cast p0, Ljava/util/HashMap;

    .line 241
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    move-result-object p0

    .line 245
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 250
    move-result-wide v1

    .line 251
    iput-wide v1, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    .line 253
    goto :goto_4

    .line 254
    :catchall_2
    move-exception p0

    .line 255
    goto :goto_5

    .line 256
    :cond_b
    :goto_4
    monitor-exit v0

    .line 257
    goto :goto_7

    .line 258
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 259
    throw p0

    .line 260
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    .line 262
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 264
    check-cast p1, Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    .line 271
    monitor-enter p0

    .line 272
    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 274
    if-nez v0, :cond_d

    .line 276
    monitor-exit p0

    .line 277
    goto :goto_7

    .line 278
    :catchall_3
    move-exception p1

    .line 279
    goto :goto_8

    .line 280
    :cond_d
    move-object v4, v0

    .line 281
    check-cast v4, Ljava/util/HashMap;

    .line 283
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 286
    move-result v4

    .line 287
    if-eqz v4, :cond_e

    .line 289
    check-cast v0, Ljava/util/HashMap;

    .line 291
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    move-result-object p1

    .line 295
    check-cast p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 297
    iget v0, p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 299
    add-int/2addr v0, v3

    .line 300
    iput v0, p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 305
    move-result-wide v3

    .line 306
    iput-wide v3, p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 308
    iput-wide v1, p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    .line 310
    goto :goto_6

    .line 311
    :cond_e
    new-instance v4, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 313
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-wide v1, v4, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 318
    iput-wide v1, v4, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    .line 320
    iput v3, v4, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 325
    move-result-wide v1

    .line 326
    iput-wide v1, v4, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 328
    check-cast v0, Ljava/util/HashMap;

    .line 330
    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :goto_6
    monitor-exit p0

    .line 334
    :cond_f
    :goto_7
    return-void

    .line 335
    :goto_8
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 336
    throw p1
.end method
