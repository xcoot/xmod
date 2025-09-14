.class public final Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAudioSystemDevice:I

.field public final mDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mEventSource:Ljava/lang/String;

.field public final mIsLeOutput:Z

.field public final mMusicDevice:I

.field public final mProfile:I

.field public final mState:I

.field public final mSupprNoisy:Z

.field public final mVolume:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x2

    .line 13
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 14
    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mEventSource:Ljava/lang/String;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mMusicDevice:I

    .line 16
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 17
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 18
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    .line 20
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 4
    iget-object p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {p2}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result p2

    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 5
    iget-object p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {p2}, Landroid/media/BluetoothProfileConnectionInfo;->isSuppressNoisyIntent()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    .line 6
    iget-object p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {p2}, Landroid/media/BluetoothProfileConnectionInfo;->getVolume()I

    move-result p2

    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    .line 7
    iget-object p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {p2}, Landroid/media/BluetoothProfileConnectionInfo;->isLeOutput()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    .line 8
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mEventSource:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mEventSource:Ljava/lang/String;

    .line 9
    iput p4, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mMusicDevice:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 24
    iget v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 25
    iget-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    .line 26
    iget v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    .line 27
    iget-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    .line 28
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mEventSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mEventSource:Ljava/lang/String;

    .line 29
    iget v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 30
    iget p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mMusicDevice:I

    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mMusicDevice:I

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
    instance-of v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    check-cast p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 14
    .line 15
    iget v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 16
    .line 17
    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 18
    .line 19
    if-ne v3, v2, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    move v0, v1

    .line 32
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 8
    .line 9
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BtDeviceInfo: device="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " state="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " prof="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " supprNoisy="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, " volume="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, " isLeOutput="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, " eventSource="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mEventSource:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, " audioSystemDevice="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, " musicDevice="

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mMusicDevice:I

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method
