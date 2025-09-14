.class public final Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClientUid:I

.field public final mPackName:Ljava/lang/String;

.field public final mRIId:I

.field public final mRecEvent:I

.field public final mSession:I

.field public final mSilenced:Z

.field public final mSource:I


# direct methods
.method public constructor <init>(IILandroid/media/AudioRecordingConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRecEvent:I

    .line 6
    iput p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRIId:I

    .line 8
    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mClientUid:I

    .line 16
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSessionId()I

    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSession:I

    .line 22
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSource()I

    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSource:I

    .line 28
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    .line 34
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    .line 37
    move-result p1

    .line 38
    iput-boolean p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSilenced:Z

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mClientUid:I

    .line 44
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSession:I

    .line 46
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSource:I

    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    .line 51
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSilenced:Z

    .line 54
    :goto_0
    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "rec "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRecEvent:I

    .line 11
    if-eqz v1, :cond_4

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v1, v2, :cond_3

    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v1, v2, :cond_2

    .line 19
    const/4 v2, 0x3

    .line 20
    if-eq v1, v2, :cond_1

    .line 22
    const/16 v2, 0x63

    .line 24
    if-eq v1, v2, :cond_0

    .line 26
    const-string/jumbo v2, "unknown ("

    .line 29
    const-string v3, ")"

    .line 31
    invoke-static {v1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string/jumbo v1, "popup"

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string/jumbo v1, "release"

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-string/jumbo v1, "update"

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const-string/jumbo v1, "stop"

    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const-string/jumbo v1, "start"

    .line 55
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, " riid:"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRIId:I

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, " uid:"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mClientUid:I

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, " session:"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSession:I

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, " src:"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSource:I

    .line 95
    invoke-static {v1}, Landroid/media/MediaRecorder;->toLogFriendlyAudioSource(I)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-boolean v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSilenced:Z

    .line 104
    if-eqz v1, :cond_5

    .line 106
    const-string v1, " silenced"

    .line 108
    goto :goto_1

    .line 109
    :cond_5
    const-string v1, " not silenced"

    .line 111
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    .line 116
    if-nez p0, :cond_6

    .line 118
    const-string p0, ""

    .line 120
    goto :goto_2

    .line 121
    :cond_6
    const-string v1, " pack:"

    .line 123
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 127
    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    return-object p0
.end method
