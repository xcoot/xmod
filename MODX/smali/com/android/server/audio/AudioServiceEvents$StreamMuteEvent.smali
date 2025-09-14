.class public final Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mMuted:Z

.field public final mSource:Ljava/lang/String;

.field public final mStreamType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;->mStreamType:I

    .line 6
    iput-boolean p3, p0, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;->mMuted:Z

    .line 8
    iput-object p2, p0, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;->mSource:Ljava/lang/String;

    .line 10
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
    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;->mStreamType:I

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v2, "stream "

    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-boolean v0, p0, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;->mMuted:Z

    .line 38
    if-eqz v0, :cond_1

    .line 40
    const-string v0, " muting by "

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string v0, " unmuting by "

    .line 45
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;->mSource:Ljava/lang/String;

    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
