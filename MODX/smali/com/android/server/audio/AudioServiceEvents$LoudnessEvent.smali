.class public final Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEventType:I

.field public final mIntValue1:I

.field public final mIntValue2:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mEventType:I

    .line 6
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue1:I

    .line 8
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue1:I

    .line 3
    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue2:I

    .line 5
    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mEventType:I

    .line 7
    if-eqz p0, :cond_2

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq p0, v2, :cond_1

    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "FIXME invalid event type:"

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p0

    .line 34
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    const-string v0, "Loudness client with pid %d died"

    .line 40
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p0

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v0

    .line 53
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 57
    const-string v0, "Stop loudness updates for piid %d for client pid %d"

    .line 59
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object p0

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v0

    .line 72
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 75
    move-result-object p0

    .line 76
    const-string v0, "Start loudness updates for piid %d for client pid %d"

    .line 78
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
