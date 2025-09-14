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
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v3, :cond_c

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v0, v3, :cond_a

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq v0, v3, :cond_4

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x5

    .line 18
    if-eq v0, p1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_7

    .line 21
    .line 22
    :cond_0
    const-string p1, "ApplicationUsage"

    .line 23
    .line 24
    const-string/jumbo v0, "handleMessage : MSG_UPDATE_USAGE_DB"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->_insertToAppControlDB()V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_7

    .line 36
    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    .line 38
    .line 39
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v0

    .line 49
    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    .line 50
    .line 51
    if-nez p0, :cond_2

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    goto/16 :goto_7

    .line 55
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

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    check-cast p0, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    iput-wide v1, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    .line 80
    .line 81
    :cond_3
    monitor-exit v0

    .line 82
    goto/16 :goto_7

    .line 83
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

    .line 87
    .line 88
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    if-eqz p1, :cond_f

    .line 96
    .line 97
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    .line 98
    .line 99
    if-nez p0, :cond_5

    .line 100
    .line 101
    goto/16 :goto_7

    .line 102
    .line 103
    :cond_5
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 104
    .line 105
    if-nez v0, :cond_6

    .line 106
    .line 107
    iget v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 108
    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    goto/16 :goto_7

    .line 112
    .line 113
    :cond_6
    iget v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 114
    .line 115
    and-int/lit8 v0, v0, 0x8

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    goto/16 :goto_7

    .line 120
    .line 121
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    iget-object v3, p1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 127
    .line 128
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v3, ":"

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget p1, p1, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 141
    .line 142
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    .line 154
    .line 155
    monitor-enter v0

    .line 156
    :try_start_1
    move-object v3, p0

    .line 157
    check-cast v3, Ljava/util/HashMap;

    .line 158
    .line 159
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_9

    .line 164
    .line 165
    check-cast p0, Ljava/util/HashMap;

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 172
    .line 173
    iget-wide v3, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 174
    .line 175
    cmp-long p1, v3, v1

    .line 176
    .line 177
    if-nez p1, :cond_8

    .line 178
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 180
    .line 181
    .line 182
    move-result-wide v3

    .line 183
    iput-wide v3, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 184
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

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_9
    new-instance v3, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 192
    .line 193
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-wide v1, v3, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 197
    .line 198
    iput-wide v1, v3, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    .line 199
    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 201
    .line 202
    .line 203
    move-result-wide v1

    .line 204
    iput-wide v1, v3, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 205
    .line 206
    check-cast p0, Ljava/util/HashMap;

    .line 207
    .line 208
    invoke-virtual {p0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    :goto_2
    monitor-exit v0

    .line 212
    goto/16 :goto_7

    .line 213
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

    .line 217
    .line 218
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast p1, Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    .line 226
    .line 227
    monitor-enter v0

    .line 228
    :try_start_2
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 229
    .line 230
    move-object v1, p0

    .line 231
    check-cast v1, Ljava/util/HashMap;

    .line 232
    .line 233
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_b

    .line 238
    .line 239
    check-cast p0, Ljava/util/HashMap;

    .line 240
    .line 241
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 246
    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 248
    .line 249
    .line 250
    move-result-wide v1

    .line 251
    iput-wide v1, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    .line 252
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

    .line 261
    .line 262
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast p1, Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    .line 270
    .line 271
    monitor-enter p0

    .line 272
    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 273
    .line 274
    if-nez v0, :cond_d

    .line 275
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

    .line 282
    .line 283
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-eqz v4, :cond_e

    .line 288
    .line 289
    check-cast v0, Ljava/util/HashMap;

    .line 290
    .line 291
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    check-cast p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 296
    .line 297
    iget v0, p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 298
    .line 299
    add-int/2addr v0, v3

    .line 300
    iput v0, p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 301
    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 303
    .line 304
    .line 305
    move-result-wide v3

    .line 306
    iput-wide v3, p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 307
    .line 308
    iput-wide v1, p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    .line 309
    .line 310
    goto :goto_6

    .line 311
    :cond_e
    new-instance v4, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 312
    .line 313
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 314
    .line 315
    .line 316
    iput-wide v1, v4, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 317
    .line 318
    iput-wide v1, v4, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    .line 319
    .line 320
    iput v3, v4, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 321
    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 323
    .line 324
    .line 325
    move-result-wide v1

    .line 326
    iput-wide v1, v4, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 327
    .line 328
    check-cast v0, Ljava/util/HashMap;

    .line 329
    .line 330
    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
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
