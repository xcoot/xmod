.class public final Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 8
    .line 9
    const-string p2, "Unknown tagId="

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :pswitch_0
    new-instance v3, Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 20
    .line 21
    invoke-direct {v3}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0, v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->powerProfileModeledOnly()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 49
    .line 50
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Landroid/os/BatteryUsageStats;

    .line 65
    .line 66
    goto/16 :goto_7

    .line 67
    .line 68
    :pswitch_1
    const-string v3, "backstage_power"

    .line 69
    .line 70
    const-string/jumbo v4, "min_consumed_power_threshold"

    .line 71
    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    float-to-double v3, v3

    .line 79
    new-instance v5, Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 80
    .line 81
    invoke-direct {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v0, v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMinConsumedPowerThreshold(D)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 109
    .line 110
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    check-cast p0, Landroid/os/BatteryUsageStats;

    .line 125
    .line 126
    goto/16 :goto_7

    .line 127
    .line 128
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 129
    .line 130
    const-string v4, "Cannot load config file "

    .line 131
    .line 132
    iget-object v5, v3, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    .line 133
    .line 134
    monitor-enter v5

    .line 135
    :try_start_0
    new-instance v6, Ljava/util/Properties;

    .line 136
    .line 137
    invoke-direct {v6}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    .line 140
    :try_start_1
    iget-object v7, v3, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    .line 141
    .line 142
    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 143
    .line 144
    .line 145
    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    .line 148
    .line 149
    if-eqz v7, :cond_1

    .line 150
    .line 151
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :catchall_0
    move-exception p0

    .line 156
    goto/16 :goto_9

    .line 157
    .line 158
    :catch_0
    move-exception v7

    .line 159
    goto :goto_1

    .line 160
    :catchall_1
    move-exception v8

    .line 161
    if-eqz v7, :cond_0

    .line 162
    .line 163
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :catchall_2
    move-exception v7

    .line 168
    :try_start_5
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    :cond_0
    :goto_0
    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 172
    :goto_1
    :try_start_6
    const-string v8, "BatteryStatsService"

    .line 173
    .line 174
    new-instance v9, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    .line 180
    .line 181
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-static {v8, v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .line 190
    .line 191
    :cond_1
    :goto_2
    const-string v3, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    .line 192
    .line 193
    const-string v4, "0"

    .line 194
    .line 195
    invoke-virtual {v6, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 200
    .line 201
    .line 202
    move-result-wide v3

    .line 203
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 204
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 205
    .line 206
    iget-object v6, v5, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 207
    .line 208
    monitor-enter v6

    .line 209
    :try_start_7
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 210
    .line 211
    iget-object v5, v5, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 212
    .line 213
    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getStartClockTime()J

    .line 214
    .line 215
    .line 216
    move-result-wide v7

    .line 217
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 218
    new-instance v5, Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 219
    .line 220
    invoke-direct {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v0, v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 244
    .line 245
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v1, v0}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Landroid/os/BatteryUsageStats;

    .line 260
    .line 261
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 262
    .line 263
    const-string v1, "Cannot save config file "

    .line 264
    .line 265
    const-string v3, "Cannot load config file "

    .line 266
    .line 267
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    .line 268
    .line 269
    monitor-enter v4

    .line 270
    :try_start_8
    new-instance v5, Ljava/util/Properties;

    .line 271
    .line 272
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 273
    .line 274
    .line 275
    :try_start_9
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    .line 276
    .line 277
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 278
    .line 279
    .line 280
    move-result-object v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 281
    :try_start_a
    invoke-virtual {v5, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 282
    .line 283
    .line 284
    if-eqz v6, :cond_3

    .line 285
    .line 286
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 287
    .line 288
    .line 289
    goto :goto_5

    .line 290
    :catchall_3
    move-exception p0

    .line 291
    goto :goto_8

    .line 292
    :catch_1
    move-exception v6

    .line 293
    goto :goto_4

    .line 294
    :catchall_4
    move-exception v9

    .line 295
    if-eqz v6, :cond_2

    .line 296
    .line 297
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 298
    .line 299
    .line 300
    goto :goto_3

    .line 301
    :catchall_5
    move-exception v6

    .line 302
    :try_start_d
    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 303
    .line 304
    .line 305
    :cond_2
    :goto_3
    throw v9
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 306
    :goto_4
    :try_start_e
    const-string v9, "BatteryStatsService"

    .line 307
    .line 308
    new-instance v10, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    .line 314
    .line 315
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-static {v9, v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    .line 324
    .line 325
    :cond_3
    :goto_5
    const-string v3, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    .line 326
    .line 327
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    invoke-virtual {v5, v3, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 332
    .line 333
    .line 334
    const/4 v3, 0x0

    .line 335
    :try_start_f
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    .line 336
    .line 337
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    const-string v6, "Statsd atom pull timestamps"

    .line 342
    .line 343
    invoke-virtual {v5, v3, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    .line 347
    .line 348
    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 349
    .line 350
    .line 351
    goto :goto_6

    .line 352
    :catch_2
    move-exception v5

    .line 353
    :try_start_10
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    .line 354
    .line 355
    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 356
    .line 357
    .line 358
    const-string v3, "BatteryStatsService"

    .line 359
    .line 360
    new-instance v6, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    .line 366
    .line 367
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    invoke-static {v3, p0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    .line 376
    .line 377
    :goto_6
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 378
    move-object p0, v0

    .line 379
    :goto_7
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsProto()[B

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    return v2

    .line 391
    :goto_8
    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 392
    throw p0

    .line 393
    :catchall_6
    move-exception p0

    .line 394
    :try_start_12
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 395
    throw p0

    .line 396
    :goto_9
    :try_start_13
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 397
    throw p0

    .line 398
    nop

    .line 399
    :pswitch_data_0
    .packed-switch 0x277f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
