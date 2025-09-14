.class public final Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRingerZenMutedStreams:I

.field public final mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;->mRingerZenMutedStreams:I

    .line 6
    iput-object p2, p0, Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;->mSource:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "RingerZenMutedStreams 0x"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;->mRingerZenMutedStreams:I

    .line 10
    const-string v2, " from "

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 15
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;->mSource:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
