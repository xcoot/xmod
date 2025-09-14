.class public final Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/psitracker/PSITracker;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/psitracker/PSITracker;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

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
    .locals 11

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mCollector:Lcom/android/server/chimera/psitracker/PSITrackerCollector;

    .line 14
    .line 15
    if-eqz p0, :cond_9

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    .line 18
    .line 19
    monitor-enter p1

    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    .line 22
    .line 23
    check-cast v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ge v0, v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    .line 32
    .line 33
    check-cast v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->saveAvailableMemRecord2db(Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    .line 50
    .line 51
    check-cast p0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 54
    .line 55
    .line 56
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    sget-boolean p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->DEBUG:Z

    .line 58
    .line 59
    if-eqz p0, :cond_9

    .line 60
    .line 61
    const-string p0, "PSITrackerCollector"

    .line 62
    .line 63
    const-string/jumbo p1, "finish save PSIAvailableMemRecords successfully!"

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto/16 :goto_6

    .line 70
    .line 71
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p0

    .line 73
    :cond_2
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 81
    .line 82
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mActivityManager:Landroid/app/ActivityManager;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 88
    .line 89
    .line 90
    const-wide/16 v2, 0x0

    .line 91
    .line 92
    :try_start_2
    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    move-wide v4, v2

    .line 105
    :cond_3
    :goto_2
    :try_start_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_7

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    check-cast v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 116
    .line 117
    iget v7, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->importance:I

    .line 118
    .line 119
    const/16 v8, 0x190

    .line 120
    .line 121
    if-lt v7, v8, :cond_4

    .line 122
    .line 123
    iget-object v7, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 124
    .line 125
    iget v6, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 126
    .line 127
    invoke-virtual {v7, v6}, Lcom/android/server/chimera/SystemRepository;->getMemmoryOfPid(I)J

    .line 128
    .line 129
    .line 130
    move-result-wide v6

    .line 131
    add-long/2addr v2, v6

    .line 132
    goto :goto_2

    .line 133
    :catch_0
    move-exception p1

    .line 134
    goto :goto_4

    .line 135
    :cond_4
    iget v7, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 136
    .line 137
    const/16 v8, 0x2710

    .line 138
    .line 139
    if-ge v7, v8, :cond_6

    .line 140
    .line 141
    const/16 v8, 0x1388

    .line 142
    .line 143
    if-lt v7, v8, :cond_5

    .line 144
    .line 145
    const/16 v8, 0x176f

    .line 146
    .line 147
    if-le v7, v8, :cond_6

    .line 148
    .line 149
    :cond_5
    const/16 v8, 0x4b0

    .line 150
    .line 151
    if-eq v7, v8, :cond_6

    .line 152
    .line 153
    const/16 v8, 0x4b1

    .line 154
    .line 155
    if-ne v7, v8, :cond_3

    .line 156
    .line 157
    :cond_6
    iget-object v7, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 158
    .line 159
    iget v6, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 160
    .line 161
    invoke-virtual {v7, v6}, Lcom/android/server/chimera/SystemRepository;->getMemmoryOfPid(I)J

    .line 162
    .line 163
    .line 164
    move-result-wide v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 165
    add-long/2addr v4, v6

    .line 166
    goto :goto_2

    .line 167
    :goto_3
    move-wide v4, v2

    .line 168
    goto :goto_4

    .line 169
    :catch_1
    move-exception p1

    .line 170
    goto :goto_3

    .line 171
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    .line 173
    .line 174
    :cond_7
    iget-wide v6, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 175
    .line 176
    const-wide/16 v8, 0x400

    .line 177
    .line 178
    div-long/2addr v6, v8

    .line 179
    const-string p1, "PSITracker"

    .line 180
    .line 181
    new-instance v8, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v9, " getAvailable memInfo.totalMem = "

    .line 184
    .line 185
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-wide v9, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 189
    .line 190
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v0, "  available = "

    .line 194
    .line 195
    const-string v9, " runningSize = "

    .line 196
    .line 197
    invoke-static {v8, v0, v6, v7, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v0, " cachedSize = "

    .line 204
    .line 205
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 219
    .line 220
    .line 221
    move-result-wide v8

    .line 222
    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mCollector:Lcom/android/server/chimera/psitracker/PSITrackerCollector;

    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    new-instance p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;

    .line 228
    .line 229
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 230
    .line 231
    .line 232
    iput-wide v6, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->availMem:J

    .line 233
    .line 234
    iput-wide v4, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->running:J

    .line 235
    .line 236
    iput-wide v2, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->cached:J

    .line 237
    .line 238
    iput-wide v8, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->checkTime:J

    .line 239
    .line 240
    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mCollector:Lcom/android/server/chimera/psitracker/PSITrackerCollector;

    .line 241
    .line 242
    const-string/jumbo v2, "save PSIAvailableMemRecord...\n ("

    .line 243
    .line 244
    .line 245
    iget-object v3, v0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    .line 246
    .line 247
    monitor-enter v3

    .line 248
    :try_start_4
    sget-boolean v4, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->DEBUG:Z

    .line 249
    .line 250
    if-eqz v4, :cond_8

    .line 251
    .line 252
    const-string v4, "PSITrackerCollector"

    .line 253
    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v2, ")"

    .line 267
    .line 268
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :catchall_1
    move-exception p0

    .line 280
    goto :goto_7

    .line 281
    :cond_8
    :goto_5
    iget-object v0, v0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    .line 282
    .line 283
    check-cast v0, Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 289
    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mCollector:Lcom/android/server/chimera/psitracker/PSITrackerCollector;

    .line 290
    .line 291
    iget-object p1, p1, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    .line 292
    .line 293
    if-eqz p1, :cond_9

    .line 294
    .line 295
    check-cast p1, Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    if-lez p1, :cond_9

    .line 302
    .line 303
    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mHandler:Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;

    .line 304
    .line 305
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mHandler:Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;

    .line 310
    .line 311
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    .line 313
    .line 314
    :cond_9
    :goto_6
    return-void

    .line 315
    :goto_7
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 316
    throw p0
.end method
