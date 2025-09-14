.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProvider$1;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$1:I

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {v1, p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties(IZ)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$1:I

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 39
    .line 40
    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$1:I

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 49
    .line 50
    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$1:I

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 59
    .line 60
    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$1:I

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance v1, Lcom/android/server/location/gnss/GnssPsdsDownloader;

    .line 66
    .line 67
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 70
    .line 71
    invoke-direct {v1, v2}, Lcom/android/server/location/gnss/GnssPsdsDownloader;-><init>(Ljava/util/Properties;)V

    .line 72
    .line 73
    .line 74
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 75
    .line 76
    sget-object v3, Landroid/location/LocationConstants$STATE_TYPE;->XTRA:Landroid/location/LocationConstants$STATE_TYPE;

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    const/4 v6, 0x0

    .line 84
    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->reportProviderStatus(Landroid/location/LocationConstants$STATE_TYPE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 85
    .line 86
    .line 87
    iget v2, v1, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 88
    .line 89
    iput v4, v1, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mFailReason:I

    .line 90
    .line 91
    iget-object v3, v1, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    const/4 v7, 0x3

    .line 95
    if-ne p0, v4, :cond_1

    .line 96
    .line 97
    if-nez v3, :cond_1

    .line 98
    .line 99
    :cond_0
    :goto_0
    move-object v8, v6

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    iget-object v8, v1, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    .line 102
    .line 103
    if-le p0, v4, :cond_2

    .line 104
    .line 105
    if-gt p0, v7, :cond_2

    .line 106
    .line 107
    aget-object v9, v8, p0

    .line 108
    .line 109
    if-nez v9, :cond_2

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    const/16 v9, -0xbc

    .line 113
    .line 114
    if-ne p0, v4, :cond_5

    .line 115
    .line 116
    move-object v8, v6

    .line 117
    :cond_3
    if-nez v8, :cond_6

    .line 118
    .line 119
    iget v8, v1, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 120
    .line 121
    aget-object v8, v3, v8

    .line 122
    .line 123
    invoke-static {v9}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    :try_start_0
    invoke-virtual {v1, v8}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->doDownload(Ljava/lang/String;)[B

    .line 128
    .line 129
    .line 130
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 132
    .line 133
    .line 134
    iget v10, v1, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 135
    .line 136
    add-int/2addr v10, v4

    .line 137
    iput v10, v1, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 138
    .line 139
    array-length v11, v3

    .line 140
    if-ne v10, v11, :cond_4

    .line 141
    .line 142
    iput v5, v1, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 143
    .line 144
    :cond_4
    iget v10, v1, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 145
    .line 146
    if-ne v10, v2, :cond_3

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catchall_0
    move-exception p0

    .line 150
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :cond_5
    if-le p0, v4, :cond_0

    .line 155
    .line 156
    if-gt p0, v7, :cond_0

    .line 157
    .line 158
    aget-object v2, v8, p0

    .line 159
    .line 160
    invoke-static {v9}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->doDownload(Ljava/lang/String;)[B

    .line 165
    .line 166
    .line 167
    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :catchall_1
    move-exception p0

    .line 173
    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :cond_6
    :goto_1
    if-eqz v8, :cond_8

    .line 178
    .line 179
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 180
    .line 181
    new-instance v3, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;

    .line 182
    .line 183
    invoke-direct {v3, v0, p0, v8}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I[B)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    .line 188
    .line 189
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    if-eqz v2, :cond_a

    .line 196
    .line 197
    const-string v3, "android.hardware.type.watch"

    .line 198
    .line 199
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_a

    .line 204
    .line 205
    if-ne p0, v4, :cond_a

    .line 206
    .line 207
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 208
    .line 209
    const-string v3, "ENABLE_PSDS_PERIODIC_DOWNLOAD"

    .line 210
    .line 211
    iget-object v2, v2, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-eqz v3, :cond_7

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_7
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    :goto_2
    if-eqz v5, :cond_a

    .line 229
    .line 230
    const-string v2, "GnssLocationProvider"

    .line 231
    .line 232
    const-string/jumbo v3, "scheduling next long term Psds download"

    .line 233
    .line 234
    .line 235
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 239
    .line 240
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    .line 241
    .line 242
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 246
    .line 247
    new-instance v3, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;

    .line 248
    .line 249
    const/4 v4, 0x2

    .line 250
    invoke-direct {v3, p0, v4, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    .line 254
    .line 255
    const-wide/32 v9, 0x5265c00

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v3, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 259
    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_8
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 263
    .line 264
    monitor-enter v2

    .line 265
    :try_start_2
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    .line 266
    .line 267
    iget-wide v4, v3, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    .line 268
    .line 269
    const-wide/32 v9, 0xdbba00

    .line 270
    .line 271
    .line 272
    cmp-long v11, v4, v9

    .line 273
    .line 274
    if-lez v11, :cond_9

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_9
    const-wide/16 v9, 0x2

    .line 278
    .line 279
    mul-long/2addr v9, v4

    .line 280
    iput-wide v9, v3, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    .line 281
    .line 282
    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 283
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 284
    .line 285
    new-instance v3, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;

    .line 286
    .line 287
    const/4 v4, 0x3

    .line 288
    invoke-direct {v3, p0, v4, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, v3, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    .line 293
    .line 294
    :cond_a
    :goto_4
    if-eqz v8, :cond_b

    .line 295
    .line 296
    const/4 v7, 0x2

    .line 297
    :cond_b
    if-eqz v8, :cond_c

    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_c
    iget v1, v1, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mFailReason:I

    .line 301
    .line 302
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    :goto_5
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 307
    .line 308
    sget-object v2, Landroid/location/LocationConstants$STATE_TYPE;->XTRA:Landroid/location/LocationConstants$STATE_TYPE;

    .line 309
    .line 310
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->reportProviderStatus(Landroid/location/LocationConstants$STATE_TYPE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 315
    .line 316
    .line 317
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 318
    .line 319
    monitor-enter v1

    .line 320
    :try_start_3
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 321
    .line 322
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_d

    .line 327
    .line 328
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 329
    .line 330
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 331
    .line 332
    .line 333
    const-string v2, "GnssLocationProvider"

    .line 334
    .line 335
    const-string v3, "WakeLock released by handleDownloadPsdsData()"

    .line 336
    .line 337
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    goto :goto_6

    .line 341
    :catchall_2
    move-exception p0

    .line 342
    goto :goto_7

    .line 343
    :cond_d
    const-string v2, "GnssLocationProvider"

    .line 344
    .line 345
    const-string v3, "WakeLock expired before release in handleDownloadPsdsData()"

    .line 346
    .line 347
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    :goto_6
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadInProgressPsdsTypes:Ljava/util/Set;

    .line 351
    .line 352
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    check-cast v0, Ljava/util/HashSet;

    .line 357
    .line 358
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    monitor-exit v1

    .line 362
    return-void

    .line 363
    :goto_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 364
    throw p0

    .line 365
    :catchall_3
    move-exception p0

    .line 366
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 367
    throw p0

    .line 368
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 371
    .line 372
    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$1:I

    .line 373
    .line 374
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    nop

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
