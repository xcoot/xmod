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

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$1:Z

    .line 8
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$2:Landroid/location/Location;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 3
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$1:Z

    .line 5
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$2:Landroid/location/Location;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v2, "GnssLocationProvider"

    .line 12
    const-string/jumbo v3, "reportLocation"

    .line 15
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 21
    move-result-wide v2

    .line 22
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    .line 24
    monitor-enter v4

    .line 25
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    .line 27
    iget-object v6, v4, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    .line 29
    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 32
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {p0, v5}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 36
    :try_start_1
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 47
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mVSFilter:Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;

    .line 49
    invoke-virtual {v4, p0}, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->getFilteredLocation(Landroid/location/Location;)Landroid/location/Location;

    .line 52
    move-result-object p0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto/16 :goto_4

    .line 57
    :cond_0
    :goto_0
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 59
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_1

    .line 68
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->secLocationValidate(Landroid/location/Location;J)V

    .line 71
    :cond_1
    const/4 v2, 0x1

    .line 72
    new-array v3, v2, [Landroid/location/Location;

    .line 74
    const/4 v4, 0x0

    .line 75
    aput-object p0, v3, v4

    .line 77
    invoke-static {v3}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v3}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V
    :try_end_1
    .catch Landroid/location/LocationResult$BadLocationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    iget-boolean v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 90
    if-eqz v3, :cond_4

    .line 92
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 94
    iget-object v5, v3, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 96
    iget-object v3, v3, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 98
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 100
    if-nez v1, :cond_2

    .line 102
    invoke-virtual {v3, v6, v7}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 105
    invoke-virtual {v5, v6, v7}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    const-wide/16 v8, 0x0

    .line 111
    invoke-virtual {v3, v8, v9}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 114
    invoke-virtual {v5, v8, v9}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 117
    :goto_1
    if-eqz v1, :cond_6

    .line 119
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_3

    .line 125
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 127
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    .line 130
    move-result p0

    .line 131
    float-to-double v8, p0

    .line 132
    iget-object p0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 134
    invoke-virtual {p0, v8, v9}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 137
    iget-object p0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 139
    invoke-virtual {p0, v8, v9}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 142
    :cond_3
    iget p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 144
    if-lez p0, :cond_6

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 149
    move-result-wide v8

    .line 150
    iget-wide v10, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 152
    sub-long/2addr v8, v10

    .line 153
    long-to-int p0, v8

    .line 154
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 156
    iget v5, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 158
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    const/16 v8, 0x3e8

    .line 163
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 166
    move-result v5

    .line 167
    div-int/2addr p0, v5

    .line 168
    sub-int/2addr p0, v2

    .line 169
    if-lez p0, :cond_6

    .line 171
    :goto_2
    if-ge v4, p0, :cond_6

    .line 173
    iget-object v2, v3, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 175
    invoke-virtual {v2, v6, v7}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 178
    iget-object v2, v3, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 180
    invoke-virtual {v2, v6, v7}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 183
    add-int/lit8 v4, v4, 0x1

    .line 185
    goto :goto_2

    .line 186
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 189
    move-result-wide v2

    .line 190
    iget-wide v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    .line 192
    sub-long/2addr v2, v4

    .line 193
    const-wide/16 v4, 0x7d0

    .line 195
    cmp-long p0, v2, v4

    .line 197
    if-lez p0, :cond_6

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    .line 201
    const-string v4, "Unexpected GNSS Location report "

    .line 203
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v4, " after location turned off"

    .line 215
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p0

    .line 222
    const-wide/16 v4, 0x3a98

    .line 224
    cmp-long v2, v2, v4

    .line 226
    if-lez v2, :cond_5

    .line 228
    const-string v2, "GnssLocationProvider"

    .line 230
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    goto :goto_3

    .line 234
    :cond_5
    const-string v2, "GnssLocationProvider"

    .line 236
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_6
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 242
    move-result-wide v2

    .line 243
    iput-wide v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 245
    iget p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 247
    if-nez p0, :cond_7

    .line 249
    if-eqz v1, :cond_7

    .line 251
    iget-wide v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    .line 253
    sub-long/2addr v2, v4

    .line 254
    long-to-int p0, v2

    .line 255
    iput p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 257
    const-string p0, "GnssLocationProvider"

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    .line 261
    const-string v2, "TTFF: "

    .line 263
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    iget v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 268
    invoke-static {v1, v2, p0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 271
    iget-boolean p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 273
    if-eqz p0, :cond_7

    .line 275
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 277
    iget v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 279
    int-to-double v1, v1

    .line 280
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 285
    div-double v3, v1, v3

    .line 287
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 289
    invoke-virtual {v5, v3, v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 292
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 294
    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 297
    :cond_7
    iget-boolean p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 299
    if-eqz p0, :cond_8

    .line 301
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 303
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 305
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    .line 308
    move-result p0

    .line 309
    if-nez p0, :cond_8

    .line 311
    iget p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 313
    const v1, 0xea60

    .line 316
    if-ge p0, v1, :cond_8

    .line 318
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 320
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 322
    invoke-virtual {p0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 325
    :cond_8
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 327
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 329
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    .line 332
    move-result p0

    .line 333
    if-nez p0, :cond_9

    .line 335
    iget-boolean p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 337
    if-eqz p0, :cond_9

    .line 339
    iget p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 341
    const/16 v1, 0x2710

    .line 343
    if-le p0, v1, :cond_9

    .line 345
    const-string p0, "GnssLocationProvider"

    .line 347
    const-string/jumbo v1, "got fix, hibernating"

    .line 350
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hibernate()V

    .line 356
    goto :goto_5

    .line 357
    :goto_4
    const-string v0, "GnssLocationProvider"

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    .line 361
    const-string v2, "Dropping invalid location: "

    .line 363
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    move-result-object p0

    .line 373
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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
