.class public final Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEvent:I

.field public final mEventValue:I

.field public final mPlayerIId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mPlayerIId:I

    .line 6
    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mEvent:I

    .line 8
    iput p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mEventValue:I

    .line 10
    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "player piid:"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mPlayerIId:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, " event:"

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mEvent:I

    .line 21
    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const/4 v3, 0x5

    .line 29
    iget p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mEventValue:I

    .line 31
    if-eq v2, v3, :cond_9

    .line 33
    const/4 v3, 0x6

    .line 34
    if-eq v2, v3, :cond_8

    .line 36
    const/4 v1, 0x7

    .line 37
    if-eq v2, v1, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_0
    const-string v1, " source:"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    if-gtz p0, :cond_1

    .line 51
    const-string/jumbo p0, "none "

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    and-int/lit8 v1, p0, 0x1

    .line 60
    if-eqz v1, :cond_2

    .line 62
    const-string/jumbo v1, "masterMute "

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_2
    and-int/lit8 v1, p0, 0x2

    .line 70
    if-eqz v1, :cond_3

    .line 72
    const-string/jumbo v1, "streamVolume "

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_3
    and-int/lit8 v1, p0, 0x4

    .line 80
    if-eqz v1, :cond_4

    .line 82
    const-string/jumbo v1, "streamMute "

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_4
    and-int/lit8 v1, p0, 0x8

    .line 90
    if-eqz v1, :cond_5

    .line 92
    const-string v1, "appOps "

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_5
    and-int/lit8 v1, p0, 0x10

    .line 99
    if-eqz v1, :cond_6

    .line 101
    const-string/jumbo v1, "clientVolume "

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_6
    and-int/lit8 p0, p0, 0x20

    .line 109
    if-eqz p0, :cond_7

    .line 111
    const-string/jumbo p0, "volumeShaper "

    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, " portId:"

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string p0, " mapped to player piid:"

    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :cond_9
    if-eqz p0, :cond_a

    .line 157
    const-string v1, " deviceId:"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p0

    .line 169
    return-object p0
.end method
