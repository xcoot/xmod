.class final Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPid:I

.field public final mSessionId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;->mSessionId:I

    .line 6
    iput p2, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;->mPid:I

    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 13
    const-class v3, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;

    .line 15
    if-eq v3, v2, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;

    .line 20
    iget v2, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;->mSessionId:I

    .line 22
    iget v3, p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;->mSessionId:I

    .line 24
    if-ne v2, v3, :cond_3

    .line 26
    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;->mPid:I

    .line 28
    iget p1, p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;->mPid:I

    .line 30
    if-ne p0, p1, :cond_3

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    move v0, v1

    .line 34
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;->mSessionId:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;->mPid:I

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Loudness track id: session ID: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;->mSessionId:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " pid: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;->mPid:I

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
