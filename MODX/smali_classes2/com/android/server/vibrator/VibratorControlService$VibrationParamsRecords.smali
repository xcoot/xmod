.class public final Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;
.super Lcom/android/server/vibrator/GroupedAggregatedLogRecords;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final declared-synchronized dumpGroupHeader(Landroid/util/IndentingPrintWriter;I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    const-string p2, "SCALE:"

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-string p2, "UNKNOWN:"

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :goto_0
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_1
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public final declared-synchronized findGroupKeyProtoFieldId(I)J
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const-wide p0, 0x20b0000001cL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    return-wide p0
.end method
