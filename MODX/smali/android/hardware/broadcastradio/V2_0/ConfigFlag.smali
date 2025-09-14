.class public abstract Landroid/hardware/broadcastradio/V2_0/ConfigFlag;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 4
    const-string p0, "FORCE_MONO"

    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_1

    .line 10
    const-string p0, "FORCE_ANALOG"

    .line 12
    return-object p0

    .line 13
    :cond_1
    const/4 v0, 0x3

    .line 14
    if-ne p0, v0, :cond_2

    .line 16
    const-string p0, "FORCE_DIGITAL"

    .line 18
    return-object p0

    .line 19
    :cond_2
    const/4 v0, 0x4

    .line 20
    if-ne p0, v0, :cond_3

    .line 22
    const-string p0, "RDS_AF"

    .line 24
    return-object p0

    .line 25
    :cond_3
    const/4 v0, 0x5

    .line 26
    if-ne p0, v0, :cond_4

    .line 28
    const-string p0, "RDS_REG"

    .line 30
    return-object p0

    .line 31
    :cond_4
    const/4 v0, 0x6

    .line 32
    if-ne p0, v0, :cond_5

    .line 34
    const-string p0, "DAB_DAB_LINKING"

    .line 36
    return-object p0

    .line 37
    :cond_5
    const/4 v0, 0x7

    .line 38
    if-ne p0, v0, :cond_6

    .line 40
    const-string p0, "DAB_FM_LINKING"

    .line 42
    return-object p0

    .line 43
    :cond_6
    const/16 v0, 0x8

    .line 45
    if-ne p0, v0, :cond_7

    .line 47
    const-string p0, "DAB_DAB_SOFT_LINKING"

    .line 49
    return-object p0

    .line 50
    :cond_7
    const/16 v0, 0x9

    .line 52
    if-ne p0, v0, :cond_8

    .line 54
    const-string p0, "DAB_FM_SOFT_LINKING"

    .line 56
    return-object p0

    .line 57
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    const-string v1, "0x"

    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-static {v0, p0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method
