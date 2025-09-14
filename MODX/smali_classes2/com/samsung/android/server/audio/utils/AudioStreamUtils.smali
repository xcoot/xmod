.class public abstract Lcom/samsung/android/server/audio/utils/AudioStreamUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getActiveStreamTypeInternal(IZ)I
    .locals 6

    .line 1
    const-string v0, "AS.AudioStreamUtils"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "l_stream_active"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v1

    .line 15
    const-string v2, "Can\'t get active stream"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    :goto_0
    and-int/lit16 v2, v1, 0x400

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/16 p0, 0xa

    .line 26
    .line 27
    return p0

    .line 28
    :cond_0
    and-int/lit8 v2, v1, 0x1

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    return v3

    .line 34
    :cond_1
    and-int/lit16 v2, v1, 0x208

    .line 35
    .line 36
    const/4 v4, 0x3

    .line 37
    if-nez v2, :cond_9

    .line 38
    .line 39
    invoke-static {v4, v3}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    and-int/lit8 v2, v1, 0x10

    .line 47
    .line 48
    const/4 v3, 0x4

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    return v3

    .line 52
    :cond_3
    and-int/lit8 v2, v1, 0x20

    .line 53
    .line 54
    const/4 v5, 0x5

    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    return v5

    .line 58
    :cond_4
    and-int/lit16 v2, v1, 0x800

    .line 59
    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    const-string p0, "getActiveStreamTypeInternal: forcing STREAM_ASSISTANT..."

    .line 63
    .line 64
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    const/16 p0, 0xb

    .line 68
    .line 69
    return p0

    .line 70
    :cond_5
    const/4 v2, 0x1

    .line 71
    if-ne p0, v2, :cond_7

    .line 72
    .line 73
    if-eqz p1, :cond_6

    .line 74
    .line 75
    and-int/lit8 p0, v1, 0x4

    .line 76
    .line 77
    if-nez p0, :cond_6

    .line 78
    .line 79
    const-string p0, "getActiveStreamTypeInternal: only adjust media volume"

    .line 80
    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    return v4

    .line 85
    :cond_6
    const-string p0, "getActiveStreamTypeInternal: forcing STREAM_RING b/c default"

    .line 86
    .line 87
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x2

    .line 91
    return p0

    .line 92
    :cond_7
    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    .line 93
    .line 94
    if-eqz p0, :cond_8

    .line 95
    .line 96
    if-nez p1, :cond_8

    .line 97
    .line 98
    const-string p0, "getActiveStreamTypeInternal: using STREAM_NOTIFICATION as default"

    .line 99
    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return v5

    .line 104
    :cond_8
    const-string p0, "getActiveStreamTypeInternal: using STREAM_MUSIC as default"

    .line 105
    .line 106
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    return v4

    .line 110
    :cond_9
    :goto_1
    const-string p0, "getActiveStreamTypeInternal: forcing STREAM_MUSIC"

    .line 111
    .line 112
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    return v4
.end method
