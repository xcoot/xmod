.class public final Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHasOp:Z

.field public final mPlayerIId:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mPlayerIId:I

    .line 6
    iput-boolean p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mHasOp:Z

    .line 8
    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mUid:I

    .line 10
    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "player piid:"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mPlayerIId:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " has OP_PLAY_AUDIO:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-boolean v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mHasOp:Z

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, " in uid:"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mUid:I

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
