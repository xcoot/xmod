.class public abstract Landroid/hardware/tv/cec/V1_0/CecLogicalAddress;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const-string p0, "TV"

    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 9
    const-string p0, "RECORDER_1"

    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 15
    const-string p0, "RECORDER_2"

    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 21
    const-string p0, "TUNER_1"

    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p0, v0, :cond_4

    .line 27
    const-string p0, "PLAYBACK_1"

    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x5

    .line 31
    if-ne p0, v0, :cond_5

    .line 33
    const-string p0, "AUDIO_SYSTEM"

    .line 35
    return-object p0

    .line 36
    :cond_5
    const/4 v0, 0x6

    .line 37
    if-ne p0, v0, :cond_6

    .line 39
    const-string p0, "TUNER_2"

    .line 41
    return-object p0

    .line 42
    :cond_6
    const/4 v0, 0x7

    .line 43
    if-ne p0, v0, :cond_7

    .line 45
    const-string p0, "TUNER_3"

    .line 47
    return-object p0

    .line 48
    :cond_7
    const/16 v0, 0x8

    .line 50
    if-ne p0, v0, :cond_8

    .line 52
    const-string p0, "PLAYBACK_2"

    .line 54
    return-object p0

    .line 55
    :cond_8
    const/16 v0, 0x9

    .line 57
    if-ne p0, v0, :cond_9

    .line 59
    const-string p0, "RECORDER_3"

    .line 61
    return-object p0

    .line 62
    :cond_9
    const/16 v0, 0xa

    .line 64
    if-ne p0, v0, :cond_a

    .line 66
    const-string p0, "TUNER_4"

    .line 68
    return-object p0

    .line 69
    :cond_a
    const/16 v0, 0xb

    .line 71
    if-ne p0, v0, :cond_b

    .line 73
    const-string p0, "PLAYBACK_3"

    .line 75
    return-object p0

    .line 76
    :cond_b
    const/16 v0, 0xe

    .line 78
    if-ne p0, v0, :cond_c

    .line 80
    const-string p0, "FREE_USE"

    .line 82
    return-object p0

    .line 83
    :cond_c
    const/16 v0, 0xf

    .line 85
    if-ne p0, v0, :cond_d

    .line 87
    const-string p0, "UNREGISTERED"

    .line 89
    return-object p0

    .line 90
    :cond_d
    if-ne p0, v0, :cond_e

    .line 92
    const-string p0, "BROADCAST"

    .line 94
    return-object p0

    .line 95
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "0x"

    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-static {v0, p0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method
