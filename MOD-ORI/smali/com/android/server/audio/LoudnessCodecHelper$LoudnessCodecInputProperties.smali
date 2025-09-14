.class final Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeviceSplRange:I

.field public final mIsDownmixing:Z

.field public final mMetadataType:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;

    .line 14
    .line 15
    if-eq v3, v2, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;

    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    .line 21
    .line 22
    iget v3, p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_3

    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    .line 27
    .line 28
    iget-boolean v3, p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    .line 29
    .line 30
    if-ne v2, v3, :cond_3

    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    .line 33
    .line 34
    iget p1, p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    .line 35
    .line 36
    if-ne p0, p1, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    move v0, v1

    .line 40
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Loudness properties: device SPL range: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iget v2, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    .line 12
    .line 13
    if-eq v2, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v2, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq v2, v1, :cond_0

    .line 20
    .line 21
    const-string/jumbo v1, "unknown"

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string/jumbo v1, "large"

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string/jumbo v1, "medium"

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-string/jumbo v1, "small"

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " down-mixing: "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, " metadata type: "

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method
