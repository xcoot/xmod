.class public final Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClientPackageName:Ljava/lang/String;

.field public final mClientPid:I

.field public final mClientUid:I

.field public final mPlayerAttr:Landroid/media/AudioAttributes;

.field public final mPlayerIId:I

.field public final mPlayerType:I

.field public final mSessionId:I


# direct methods
.method public constructor <init>(Landroid/media/AudioPlaybackConfiguration;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mPlayerIId:I

    .line 10
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mPlayerType:I

    .line 16
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mClientUid:I

    .line 22
    iput-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mClientPackageName:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    .line 27
    move-result p2

    .line 28
    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mClientPid:I

    .line 30
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 36
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getSessionId()I

    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mSessionId:I

    .line 42
    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "new player piid:"

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mPlayerIId:I

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, " uid/pid:"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mClientUid:I

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "/"

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mClientPid:I

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, " package:"

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mClientPackageName:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v2, " type:"

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mPlayerType:I

    .line 53
    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, " attr:"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v2, " session:"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mSessionId:I

    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 87
    return-object v0
.end method
