.class public final Lcom/android/server/location/injector/LocationUsageLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mApiUsageLogHourlyCount:I

.field public mLastApiUsageLogHour:J


# direct methods
.method public static bucketizeProvider(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string/jumbo v0, "network"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const-string/jumbo v0, "gps"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x2

    .line 22
    return p0

    .line 23
    :cond_1
    const-string/jumbo v0, "passive"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/4 p0, 0x3

    .line 33
    return p0

    .line 34
    :cond_2
    const-string/jumbo v0, "fused"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    const/4 p0, 0x4

    .line 44
    return p0

    .line 45
    :cond_3
    const/4 p0, 0x0

    .line 46
    return p0
.end method


# virtual methods
.method public final declared-synchronized hitApiUsageLogCap()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/32 v2, 0x36ee80

    .line 11
    .line 12
    .line 13
    div-long/2addr v0, v2

    .line 14
    iget-wide v2, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mLastApiUsageLogHour:J

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-lez v2, :cond_0

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mLastApiUsageLogHour:J

    .line 22
    .line 23
    iput v3, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return v3

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    add-int/2addr v0, v1

    .line 33
    const/16 v2, 0x3c

    .line 34
    .line 35
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    if-lt v0, v2, :cond_1

    .line 42
    .line 43
    move v3, v1

    .line 44
    :cond_1
    monitor-exit p0

    .line 45
    return v3

    .line 46
    :goto_0
    monitor-exit p0

    .line 47
    throw v0
.end method

.method public final logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V
    .locals 26

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/injector/LocationUsageLogger;->hitApiUsageLogCap()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p6, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez p9, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_3

    const/4 v9, 0x0

    goto :goto_2

    .line 2
    :cond_3
    invoke-static/range {p5 .. p5}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeProvider(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    :goto_2
    if-eqz v2, :cond_4

    const/4 v10, 0x0

    goto :goto_3

    .line 3
    :cond_4
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getQuality()I

    move-result v4

    move v10, v4

    :goto_3
    const/4 v6, 0x5

    const-wide/32 v7, 0x36ee80

    const-wide/32 v11, 0x927c0

    const-wide/32 v13, 0xea60

    const/4 v15, 0x6

    const/16 v16, 0x4

    if-eqz v2, :cond_5

    const/16 v17, 0x0

    goto :goto_4

    .line 4
    :cond_5
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    cmp-long v19, v17, v19

    if-gez v19, :cond_6

    move/from16 v17, v0

    goto :goto_4

    :cond_6
    const-wide/16 v19, 0x1388

    cmp-long v19, v17, v19

    if-gez v19, :cond_7

    const/16 v17, 0x2

    goto :goto_4

    :cond_7
    cmp-long v19, v17, v13

    if-gez v19, :cond_8

    const/16 v17, 0x3

    goto :goto_4

    :cond_8
    cmp-long v19, v17, v11

    if-gez v19, :cond_9

    move/from16 v17, v16

    goto :goto_4

    :cond_9
    cmp-long v17, v17, v7

    if-gez v17, :cond_a

    move/from16 v17, v6

    goto :goto_4

    :cond_a
    move/from16 v17, v15

    :goto_4
    const/high16 v18, 0x42c80000    # 100.0f

    const/16 v19, 0x0

    if-eqz v2, :cond_b

    const/16 v20, 0x0

    goto :goto_5

    .line 5
    :cond_b
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v20

    cmpg-float v21, v20, v19

    if-gtz v21, :cond_c

    move/from16 v20, v0

    goto :goto_5

    :cond_c
    cmpl-float v21, v20, v19

    if-lez v21, :cond_d

    cmpg-float v20, v20, v18

    if-gtz v20, :cond_d

    const/16 v20, 0x2

    goto :goto_5

    :cond_d
    const/16 v20, 0x3

    :goto_5
    if-eqz v2, :cond_e

    const-wide/16 v21, 0x0

    move-wide/from16 v22, v21

    goto :goto_6

    .line 6
    :cond_e
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getMaxUpdates()I

    move-result v1

    int-to-long v4, v1

    move-wide/from16 v22, v4

    :goto_6
    move/from16 v1, p1

    if-nez v2, :cond_15

    if-ne v1, v0, :cond_f

    goto :goto_8

    .line 7
    :cond_f
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getDurationMillis()J

    move-result-wide v4

    const-wide v24, 0x7fffffffffffffffL

    cmp-long v2, v4, v24

    if-nez v2, :cond_10

    move v2, v15

    goto :goto_7

    :cond_10
    const-wide/16 v24, 0x4e20

    cmp-long v2, v4, v24

    if-gez v2, :cond_11

    move v2, v0

    goto :goto_7

    :cond_11
    cmp-long v2, v4, v13

    if-gez v2, :cond_12

    const/4 v2, 0x2

    goto :goto_7

    :cond_12
    cmp-long v2, v4, v11

    if-gez v2, :cond_13

    const/4 v2, 0x3

    goto :goto_7

    :cond_13
    cmp-long v2, v4, v7

    if-gez v2, :cond_14

    move/from16 v2, v16

    goto :goto_7

    :cond_14
    move v2, v6

    :goto_7
    move/from16 v4, p2

    goto :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :cond_15
    :goto_8
    move/from16 v4, p2

    const/4 v2, 0x0

    :goto_9
    if-ne v4, v6, :cond_16

    move/from16 v24, v0

    goto :goto_a

    :cond_16
    if-eqz p8, :cond_17

    const/16 v24, 0x3

    goto :goto_a

    :cond_17
    if-eqz p7, :cond_18

    const/16 v24, 0x2

    goto :goto_a

    :cond_18
    const/16 v24, 0x0

    :goto_a
    if-eqz v3, :cond_19

    const/16 v21, 0x0

    goto :goto_b

    .line 8
    :cond_19
    invoke-virtual/range {p9 .. p9}, Landroid/location/Geofence;->getRadius()F

    move-result v3

    cmpg-float v5, v3, v19

    if-gez v5, :cond_1a

    const/4 v3, 0x7

    move/from16 v21, v3

    goto :goto_b

    :cond_1a
    cmpg-float v5, v3, v18

    if-gez v5, :cond_1b

    move/from16 v21, v0

    goto :goto_b

    :cond_1b
    const/high16 v5, 0x43480000    # 200.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_1c

    const/16 v21, 0x2

    goto :goto_b

    :cond_1c
    const/high16 v5, 0x43960000    # 300.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_1d

    const/16 v21, 0x3

    goto :goto_b

    :cond_1d
    const/high16 v5, 0x447a0000    # 1000.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_1e

    move/from16 v21, v16

    goto :goto_b

    :cond_1e
    const v5, 0x461c4000    # 10000.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1f

    move/from16 v21, v6

    goto :goto_b

    :cond_1f
    move/from16 v21, v15

    :goto_b
    if-eqz p10, :cond_20

    move/from16 v18, v0

    goto :goto_c

    :cond_20
    const/16 v18, 0x3

    :goto_c
    const/16 v5, 0xd2

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v11, v17

    move/from16 v12, v20

    move-wide/from16 v13, v22

    move v15, v2

    move/from16 v16, v24

    move/from16 v17, v21

    move-object/from16 v19, p4

    .line 9
    invoke-static/range {v5 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIJIIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    .line 10
    :goto_d
    const-string v1, "LocationManagerService"

    const-string v2, "Failed to log API usage to statsd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public final logLocationApiUsage(ILjava/lang/String;)V
    .locals 16

    .line 11
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/injector/LocationUsageLogger;->hitApiUsageLogCap()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeProvider(Ljava/lang/String;)I

    move-result v5

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x5

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v1, 0xd2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move/from16 v2, p1

    .line 13
    invoke-static/range {v1 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIJIIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    const-string v1, "LocationManagerService"

    const-string v2, "Failed to log API usage to statsd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
