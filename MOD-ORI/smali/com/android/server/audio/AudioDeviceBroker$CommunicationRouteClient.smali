.class public final Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCb:Landroid/os/IBinder;

.field public final mDevice:Landroid/media/AudioDeviceAttributes;

.field public final mIsPrivileged:Z

.field public mPlaybackActive:Z

.field public mRecordingActive:Z

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mIsPrivileged:Z

    .line 13
    .line 14
    iget-object p2, p1, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 15
    .line 16
    invoke-virtual {p2, p3}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 25
    .line 26
    invoke-virtual {p1, p3}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final isActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mIsPrivileged:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[CommunicationRouteClient: mUid: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " mDevice: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " mIsPrivileged: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mIsPrivileged:Z

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " mPlaybackActive: "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, " mRecordingActive: "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    .line 53
    .line 54
    const-string v1, "]"

    .line 55
    .line 56
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public final unregisterDeathRecipient()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "CommunicationRouteClient could not unlink to "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p0, " binder death"

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "AS.AudioDeviceBroker"

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
