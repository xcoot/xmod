.class public final Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;
.super Lcom/android/server/vibrator/GroupedAggregatedLogRecords;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final dumpGroupHeader(Landroid/util/IndentingPrintWriter;I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p2, ":"

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final findGroupKeyProtoFieldId(I)J
    .locals 0

    .line 1
    const/16 p0, 0x11

    .line 2
    .line 3
    if-eq p1, p0, :cond_2

    .line 4
    .line 5
    const/16 p0, 0x21

    .line 6
    .line 7
    if-eq p1, p0, :cond_1

    .line 8
    .line 9
    const/16 p0, 0x31

    .line 10
    .line 11
    if-eq p1, p0, :cond_0

    .line 12
    .line 13
    const-wide p0, 0x20b00000010L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide p0, 0x20b0000000eL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-wide p0, 0x20b0000000dL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-wide p0, 0x20b0000000fL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    :goto_0
    return-wide p0
.end method
