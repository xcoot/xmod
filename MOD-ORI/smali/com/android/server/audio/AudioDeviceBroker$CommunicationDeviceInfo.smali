.class public final Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCb:Landroid/os/IBinder;

.field public final mDevice:Landroid/media/AudioDeviceAttributes;

.field public final mEventSource:Ljava/lang/String;

.field public final mIsPrivileged:Z

.field public final mOn:Z

.field public final mScoAudioMode:I

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mCb:Landroid/os/IBinder;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mUid:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mOn:Z

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mScoAudioMode:I

    .line 13
    .line 14
    iput-boolean p7, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mIsPrivileged:Z

    .line 15
    .line 16
    iput-object p6, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mEventSource:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p0, p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    return v0

    .line 14
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mCb:Landroid/os/IBinder;

    .line 15
    .line 16
    check-cast p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    .line 17
    .line 18
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mCb:Landroid/os/IBinder;

    .line 19
    .line 20
    invoke-interface {v2, v3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mUid:I

    .line 27
    .line 28
    iget p1, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mUid:I

    .line 29
    .line 30
    if-ne p0, p1, :cond_3

    .line 31
    .line 32
    move v0, v1

    .line 33
    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mCb:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mUid:I

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CommunicationDeviceInfo mCb="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mCb:Landroid/os/IBinder;

    .line 9
    .line 10
    invoke-interface {v1}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " mUid="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mUid:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " mDevice=["

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string/jumbo v1, "null"

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "] mOn="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mOn:Z

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, " mScoAudioMode="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mScoAudioMode:I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, " mIsPrivileged="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mIsPrivileged:Z

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, " mEventSource="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mEventSource:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method
