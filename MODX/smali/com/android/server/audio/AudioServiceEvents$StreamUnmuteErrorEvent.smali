.class public final Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRingerZenMutedStreams:I

.field public final mStreamType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;->mStreamType:I

    .line 6
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;->mRingerZenMutedStreams:I

    .line 8
    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;->mStreamType:I

    .line 7
    if-gt v1, v0, :cond_0

    .line 9
    if-ltz v1, :cond_0

    .line 11
    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    .line 13
    aget-object v0, v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string/jumbo v0, "stream "

    .line 19
    invoke-static {v1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    :goto_0
    const-string v1, "Invalid call to unmute "

    .line 25
    const-string v2, " despite muted streams 0x"

    .line 27
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v0

    .line 31
    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;->mRingerZenMutedStreams:I

    .line 33
    invoke-static {v0, p0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
