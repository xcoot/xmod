.class public final Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCaller:Ljava/lang/String;

.field public final mDeviceAddress:Ljava/lang/String;

.field public final mDeviceForStream:I

.field public final mDeviceNativeType:Ljava/lang/String;

.field public final mSkipped:Z

.field public final mStream:I

.field public final mVolIndex:I


# direct methods
.method public constructor <init>(IILandroid/media/AudioDeviceAttributes;ILjava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mStream:I

    .line 6
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mVolIndex:I

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "0x"

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceNativeType:Ljava/lang/String;

    .line 32
    invoke-virtual {p3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 35
    move-result-object p3

    .line 36
    iput-object p3, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceAddress:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceForStream:I

    .line 40
    iput-object p5, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mCaller:Ljava/lang/String;

    .line 42
    iput-boolean p6, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mSkipped:Z

    .line 44
    new-instance p0, Landroid/media/MediaMetrics$Item;

    .line 46
    const-string p4, "audio.volume.event"

    .line 48
    invoke-direct {p0, p4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 51
    sget-object p4, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 53
    const-string/jumbo p6, "setDeviceVolume"

    .line 56
    invoke-virtual {p0, p4, p6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 59
    move-result-object p0

    .line 60
    sget-object p4, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 62
    invoke-static {p1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p4, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 69
    move-result-object p0

    .line 70
    sget-object p1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 79
    move-result-object p0

    .line 80
    sget-object p1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 82
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 85
    move-result-object p0

    .line 86
    sget-object p1, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 88
    invoke-virtual {p0, p1, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 91
    move-result-object p0

    .line 92
    sget-object p1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 94
    invoke-virtual {p0, p1, p5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 101
    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "setDeviceVolume(stream:"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mStream:I

    .line 11
    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " index:"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mVolIndex:I

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, " device:"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceNativeType:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, " addr:"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceAddress:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ") from "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mCaller:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-boolean v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mSkipped:Z

    .line 60
    if-eqz v1, :cond_0

    .line 62
    const-string p0, " skipped [device in use]"

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-string v1, " currDevForStream:Ox"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceForStream:I

    .line 75
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method
