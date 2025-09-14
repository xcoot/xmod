.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;ZLandroid/location/Location;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$2:Landroid/location/Location;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$1:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$2:Landroid/location/Location;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v2, "GnssLocationProvider"

    .line 11
    .line 12
    const-string/jumbo v3, "reportLocation"

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    .line 23
    .line 24
    monitor-enter v4

    .line 25
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    .line 26
    .line 27
    iget-object v6, v4, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {p0, v5}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mVSFilter:Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;

    .line 48
    .line 49
    invoke-virtual {v4, p0}, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->getFilteredLocation(Landroid/location/Location;)Landroid/location/Location;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_0
    :goto_0
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->secLocationValidate(Landroid/location/Location;J)V

    .line 69
    .line 70
    .line 71
    :cond_1
    const/4 v2, 0x1

    .line 72
    new-array v3, v2, [Landroid/location/Location;

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    aput-object p0, v3, v4

    .line 76
    .line 77
    invoke-static {v3}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v3}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V
    :try_end_1
    .catch Landroid/location/LocationResult$BadLocationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .line 87
    .line 88
    iget-boolean v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 89
    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 93
    .line 94
    iget-object v5, v3, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 95
    .line 96
    iget-object v3, v3, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 97
    .line 98
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 99
    .line 100
    if-nez v1, :cond_2

    .line 101
    .line 102
    invoke-virtual {v3, v6, v7}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v6, v7}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    const-wide/16 v8, 0x0

    .line 110
    .line 111
    invoke-virtual {v3, v8, v9}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v8, v9}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 115
    .line 116
    .line 117
    :goto_1
    if-eqz v1, :cond_6

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_3

    .line 124
    .line 125
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    float-to-double v8, p0

    .line 132
    iget-object p0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 133
    .line 134
    invoke-virtual {p0, v8, v9}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 135
    .line 136
    .line 137
    iget-object p0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 138
    .line 139
    invoke-virtual {p0, v8, v9}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 140
    .line 141
    .line 142
    :cond_3
    iget p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 143
    .line 144
    if-lez p0, :cond_6

    .line 145
    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 147
    .line 148
    .line 149
    move-result-wide v8

    .line 150
    iget-wide v10, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 151
    .line 152
    sub-long/2addr v8, v10

    .line 153
    long-to-int p0, v8

    .line 154
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 155
    .line 156
    iget v5, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    const/16 v8, 0x3e8

    .line 162
    .line 163
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    div-int/2addr p0, v5

    .line 168
    sub-int/2addr p0, v2

    .line 169
    if-lez p0, :cond_6

    .line 170
    .line 171
    :goto_2
    if-ge v4, p0, :cond_6

    .line 172
    .line 173
    iget-object v2, v3, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 174
    .line 175
    invoke-virtual {v2, v6, v7}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 176
    .line 177
    .line 178
    iget-object v2, v3, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 179
    .line 180
    invoke-virtual {v2, v6, v7}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 181
    .line 182
    .line 183
    add-int/lit8 v4, v4, 0x1

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 187
    .line 188
    .line 189
    move-result-wide v2

    .line 190
    iget-wide v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    .line 191
    .line 192
    sub-long/2addr v2, v4

    .line 193
    const-wide/16 v4, 0x7d0

    .line 194
    .line 195
    cmp-long p0, v2, v4

    .line 196
    .line 197
    if-lez p0, :cond_6

    .line 198
    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v4, "Unexpected GNSS Location report "

    .line 202
    .line 203
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v4, " after location turned off"

    .line 214
    .line 215
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    const-wide/16 v4, 0x3a98

    .line 223
    .line 224
    cmp-long v2, v2, v4

    .line 225
    .line 226
    if-lez v2, :cond_5

    .line 227
    .line 228
    const-string v2, "GnssLocationProvider"

    .line 229
    .line 230
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_5
    const-string v2, "GnssLocationProvider"

    .line 235
    .line 236
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    :cond_6
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 240
    .line 241
    .line 242
    move-result-wide v2

    .line 243
    iput-wide v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 244
    .line 245
    iget p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 246
    .line 247
    if-nez p0, :cond_7

    .line 248
    .line 249
    if-eqz v1, :cond_7

    .line 250
    .line 251
    iget-wide v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    .line 252
    .line 253
    sub-long/2addr v2, v4

    .line 254
    long-to-int p0, v2

    .line 255
    iput p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 256
    .line 257
    const-string p0, "GnssLocationProvider"

    .line 258
    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string v2, "TTFF: "

    .line 262
    .line 263
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 267
    .line 268
    invoke-static {v1, v2, p0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-boolean p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 272
    .line 273
    if-eqz p0, :cond_7

    .line 274
    .line 275
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 276
    .line 277
    iget v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 278
    .line 279
    int-to-double v1, v1

    .line 280
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    div-double v3, v1, v3

    .line 286
    .line 287
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 288
    .line 289
    invoke-virtual {v5, v3, v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 290
    .line 291
    .line 292
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 293
    .line 294
    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 295
    .line 296
    .line 297
    :cond_7
    iget-boolean p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 298
    .line 299
    if-eqz p0, :cond_8

    .line 300
    .line 301
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 302
    .line 303
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 304
    .line 305
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    .line 306
    .line 307
    .line 308
    move-result p0

    .line 309
    if-nez p0, :cond_8

    .line 310
    .line 311
    iget p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 312
    .line 313
    const v1, 0xea60

    .line 314
    .line 315
    .line 316
    if-ge p0, v1, :cond_8

    .line 317
    .line 318
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 319
    .line 320
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 321
    .line 322
    invoke-virtual {p0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 323
    .line 324
    .line 325
    :cond_8
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 326
    .line 327
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 328
    .line 329
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    .line 330
    .line 331
    .line 332
    move-result p0

    .line 333
    if-nez p0, :cond_9

    .line 334
    .line 335
    iget-boolean p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 336
    .line 337
    if-eqz p0, :cond_9

    .line 338
    .line 339
    iget p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 340
    .line 341
    const/16 v1, 0x2710

    .line 342
    .line 343
    if-le p0, v1, :cond_9

    .line 344
    .line 345
    const-string p0, "GnssLocationProvider"

    .line 346
    .line 347
    const-string/jumbo v1, "got fix, hibernating"

    .line 348
    .line 349
    .line 350
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hibernate()V

    .line 354
    .line 355
    .line 356
    goto :goto_5

    .line 357
    :goto_4
    const-string v0, "GnssLocationProvider"

    .line 358
    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    const-string v2, "Dropping invalid location: "

    .line 362
    .line 363
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    :cond_9
    :goto_5
    return-void

    .line 377
    :catchall_0
    move-exception p0

    .line 378
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    throw p0
.end method
