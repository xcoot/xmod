.class public final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# virtual methods
.method public final canVolumeDownEnterSilent()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public final getRingerModeAffectedStreams(I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public final onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    const/4 p5, 0x0

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, p2, :cond_0

    .line 5
    .line 6
    move p5, v0

    .line 7
    :cond_0
    if-eqz p2, :cond_2

    .line 8
    .line 9
    if-eq p2, v0, :cond_1

    .line 10
    .line 11
    const/4 p5, 0x2

    .line 12
    if-eq p2, p5, :cond_1

    .line 13
    .line 14
    move p0, p2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    throw p0

    .line 17
    :cond_2
    if-nez p5, :cond_3

    .line 18
    .line 19
    move p0, p4

    .line 20
    :goto_0
    sget-object p5, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    .line 21
    .line 22
    const-string p5, ",e:"

    .line 23
    .line 24
    invoke-static {p3, p5}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, "->"

    .line 36
    .line 37
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, ",i:"

    .line 48
    .line 49
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {p4}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/4 p2, 0x3

    .line 74
    invoke-static {p2, p1}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return p0

    .line 78
    :cond_3
    throw p0
.end method

.method public final onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ZenModeHelper"

    .line 2
    .line 3
    return-object p0
.end method
