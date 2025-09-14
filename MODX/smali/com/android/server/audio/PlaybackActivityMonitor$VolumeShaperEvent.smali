.class public abstract Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClientPid:I

.field public final mClientUid:I

.field public final mConfig:Landroid/media/VolumeShaper$Configuration;

.field public final mOperation:Landroid/media/VolumeShaper$Operation;

.field public final mPlayerAttr:Landroid/media/AudioAttributes;

.field public final mPlayerIId:I

.field public final mPlayerType:I

.field public final mSkipRamp:Z


# direct methods
.method public constructor <init>(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mPlayerIId:I

    .line 10
    iput-boolean p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mSkipRamp:Z

    .line 12
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 15
    move-result p2

    .line 16
    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mClientUid:I

    .line 18
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    .line 21
    move-result p2

    .line 22
    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mClientPid:I

    .line 24
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 30
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mPlayerType:I

    .line 36
    iput-object p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mConfig:Landroid/media/VolumeShaper$Configuration;

    .line 38
    iput-object p4, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mOperation:Landroid/media/VolumeShaper$Operation;

    .line 40
    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->getVSAction()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " player piid:"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mPlayerIId:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, " uid/pid:"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mClientUid:I

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "/"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mClientPid:I

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, " skip ramp:"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-boolean v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mSkipRamp:Z

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, " player type:"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mPlayerType:I

    .line 60
    invoke-static {v1}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, " attr:"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, " config:"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mConfig:Landroid/media/VolumeShaper$Configuration;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, " operation:"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mOperation:Landroid/media/VolumeShaper$Operation;

    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method

.method public abstract getVSAction()Ljava/lang/String;
.end method
