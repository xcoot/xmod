.class public final Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActualMode:I

.field public final mOwnerPid:I

.field public final mPackage:Ljava/lang/String;

.field public final mRequestedMode:I

.field public final mRequesterPid:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequesterPid:I

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    .line 9
    .line 10
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    .line 11
    .line 12
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    .line 13
    .line 14
    new-instance p0, Landroid/media/MediaMetrics$Item;

    .line 15
    .line 16
    const-string p1, "audio.mode"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 22
    .line 23
    const-string/jumbo p3, "set"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object p1, Landroid/media/MediaMetrics$Property;->REQUESTED_MODE:Landroid/media/MediaMetrics$Key;

    .line 31
    .line 32
    invoke-static {p2}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object p1, Landroid/media/MediaMetrics$Property;->MODE:Landroid/media/MediaMetrics$Key;

    .line 41
    .line 42
    invoke-static {p4}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    sget-object p1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 51
    .line 52
    invoke-virtual {p0, p1, p5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setMode("

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    .line 10
    .line 11
    invoke-static {v1}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ") from package="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " pid="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequesterPid:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " selected mode="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    .line 44
    .line 45
    invoke-static {v1}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " by pid="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
