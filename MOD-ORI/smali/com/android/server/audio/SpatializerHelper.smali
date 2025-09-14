.class public final Lcom/android/server/audio/SpatializerHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static final DEFAULT_FORMAT:Landroid/media/AudioFormat;

.field public static final SPAT_MODE_FOR_DEVICE_TYPE:Lcom/android/server/audio/SpatializerHelper$1;

.field public static sRoutingDevices:Ljava/util/ArrayList;


# instance fields
.field public final mASA:Lcom/android/server/audio/AudioSystemAdapter;

.field public mActualHeadTrackingMode:I

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field mBinauralEnabledDefault:Z

.field public mBinauralSupported:Z

.field public mCapableSpatLevel:I

.field public mDesiredHeadTrackingMode:I

.field public mDesiredHeadTrackingModeWhenEnabled:I

.field public final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field public mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

.field public mFeatureEnabled:Z

.field public mGlobalHeadTrackerAvailable:Z

.field public final mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

.field public mHeadTrackerAvailable:Z

.field public final mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

.field mHeadTrackingEnabledDefault:Z

.field public final mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

.field public mIsHeadTrackingSupported:Z

.field public final mOutputCallbacks:Landroid/os/RemoteCallbackList;

.field public final mSACapableDeviceTypes:Ljava/util/ArrayList;

.field public mSecHeadTrackerAvailable:Z

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSpat:Landroid/media/ISpatializer;

.field public final mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

.field public mSpatLevel:I

.field public mSpatOutput:I

.field public mState:I

.field public final mStateCallbacks:Landroid/os/RemoteCallbackList;

.field public mSupportedHeadTrackingModes:[I

.field mTransauralEnabledDefault:Z

.field public mTransauralSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/audio/SpatializerHelper$1;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 11
    .line 12
    .line 13
    const/16 v3, 0x18

    .line 14
    .line 15
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 25
    .line 26
    .line 27
    const/16 v3, 0x8

    .line 28
    .line 29
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    .line 31
    .line 32
    const/16 v3, 0xd

    .line 33
    .line 34
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 35
    .line 36
    .line 37
    const/16 v3, 0xc

    .line 38
    .line 39
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 40
    .line 41
    .line 42
    const/16 v3, 0xb

    .line 43
    .line 44
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 45
    .line 46
    .line 47
    const/16 v3, 0x16

    .line 48
    .line 49
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x5

    .line 53
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x6

    .line 57
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 58
    .line 59
    .line 60
    const/16 v3, 0x13

    .line 61
    .line 62
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 63
    .line 64
    .line 65
    const/16 v3, 0x1a

    .line 66
    .line 67
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 68
    .line 69
    .line 70
    const/16 v3, 0x1b

    .line 71
    .line 72
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 73
    .line 74
    .line 75
    const/16 v3, 0x1e

    .line 76
    .line 77
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Lcom/android/server/audio/SpatializerHelper$1;

    .line 81
    .line 82
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 83
    .line 84
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 96
    .line 97
    new-instance v0, Landroid/media/AudioFormat$Builder;

    .line 98
    .line 99
    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const v1, 0xbb80

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/16 v1, 0xfc

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_FORMAT:Landroid/media/AudioFormat;

    .line 124
    .line 125
    new-instance v0, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .line 129
    .line 130
    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    .line 131
    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/AudioDeviceBroker;ZZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 18
    .line 19
    new-array v1, v0, [I

    .line 20
    .line 21
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    .line 22
    .line 23
    const/4 v1, -0x2

    .line 24
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 30
    .line 31
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    .line 32
    .line 33
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    .line 34
    .line 35
    new-instance v1, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    .line 41
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    .line 48
    .line 49
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 50
    .line 51
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 55
    .line 56
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 57
    .line 58
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    .line 62
    .line 63
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 64
    .line 65
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    .line 69
    .line 70
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 71
    .line 72
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    .line 76
    .line 77
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 78
    .line 79
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    .line 83
    .line 84
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSecHeadTrackerAvailable:Z

    .line 85
    .line 86
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z

    .line 87
    .line 88
    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 89
    .line 90
    iput-object p2, p0, Lcom/android/server/audio/SpatializerHelper;->mASA:Lcom/android/server/audio/AudioSystemAdapter;

    .line 91
    .line 92
    iput-object p3, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 93
    .line 94
    iput-boolean p4, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralEnabledDefault:Z

    .line 95
    .line 96
    iput-boolean p5, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralEnabledDefault:Z

    .line 97
    .line 98
    iput-boolean p6, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingEnabledDefault:Z

    .line 99
    .line 100
    return-void
.end method

.method public static getCanonicalDeviceType(II)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    sget-object p1, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Lcom/android/server/audio/SpatializerHelper$1;

    .line 9
    .line 10
    const/high16 v0, -0x80000000

    .line 11
    .line 12
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 p1, 0x1

    .line 17
    if-ne p0, p1, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x2

    .line 20
    return p0

    .line 21
    :cond_1
    if-nez p0, :cond_2

    .line 22
    .line 23
    const/4 p0, 0x4

    .line 24
    return p0

    .line 25
    :cond_2
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public static headTrackingModeTypeToSpatializerInt(B)I
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "Unexpected head tracking mode:"

    .line 16
    .line 17
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    return v0

    .line 26
    :cond_2
    const/4 p0, -0x1

    .line 27
    return p0

    .line 28
    :cond_3
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public static logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/media/MediaMetrics$Item;

    .line 14
    .line 15
    const-string v2, "audio.spatializer.device."

    .line 16
    .line 17
    invoke-static {v2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {v1, v0}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v0, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Landroid/media/MediaMetrics$Property;->ENABLED:Landroid/media/MediaMetrics$Key;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const-string/jumbo v3, "false"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v4, "true"

    .line 44
    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    move-object v2, v4

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v2, v3

    .line 51
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 56
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object v0, Landroid/media/MediaMetrics$Property;->HAS_HEAD_TRACKER:Landroid/media/MediaMetrics$Key;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    move-object v1, v4

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move-object v1, v3

    .line 76
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget-object v0, Landroid/media/MediaMetrics$Property;->HEAD_TRACKER_ENABLED:Landroid/media/MediaMetrics$Key;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_2

    .line 87
    .line 88
    move-object v3, v4

    .line 89
    :cond_2
    invoke-virtual {p1, v0, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    monitor-exit p0

    .line 99
    throw p1
.end method

.method public static logloge(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/audio/AudioService;->sSpatialLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "AS.SpatializerHelper"

    .line 5
    .line 6
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static loglogi(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/audio/AudioService;->sSpatialLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "AS.SpatializerHelper"

    .line 5
    .line 6
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static spatStateString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const-string/jumbo p0, "invalid state"

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, "STATE_DISABLED_AVAILABLE"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    const-string p0, "STATE_ENABLED_AVAILABLE"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    const-string p0, "STATE_ENABLED_UNAVAILABLE"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_3
    const-string p0, "STATE_DISABLED_UNAVAILABLE"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_4
    const-string p0, "STATE_NOT_SUPPORTED"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_5
    const-string p0, "STATE_UNINITIALIZED"

    .line 38
    .line 39
    return-object p0
.end method


# virtual methods
.method public final addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;ZZ)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "addCompatibleAudioDevice: dev="

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x1

    .line 30
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->initSAState(Lcom/android/server/audio/AdiDeviceState;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    invoke-static {p2, p3}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(II)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_4

    .line 66
    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string p2, "addCompatibleAudioDevice with incompatible AudioDeviceAttributes "

    .line 70
    .line 71
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string p1, "AS.SpatializerHelper"

    .line 82
    .line 83
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    new-instance v0, Lcom/android/server/audio/AdiDeviceState;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {v0, p2, p3, p1}, Lcom/android/server/audio/AdiDeviceState;-><init>(IILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->initSAState(Lcom/android/server/audio/AdiDeviceState;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 104
    .line 105
    invoke-virtual {p1, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 106
    .line 107
    .line 108
    :goto_0
    if-eqz v0, :cond_5

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 114
    .line 115
    .line 116
    const-string p0, "addCompatibleAudioDevice"

    .line 117
    .line 118
    invoke-static {v0, p0}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    return-void
.end method

.method public final declared-synchronized addWirelessDeviceIfNew(Landroid/media/AudioDeviceAttributes;)V
    .locals 3

    .line 1
    const-string v0, "addWirelessDeviceIfNew with incompatible AudioDeviceAttributes "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v1, v2}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    const-string v1, "AS.SpatializerHelper"

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    :try_start_2
    new-instance v0, Lcom/android/server/audio/AdiDeviceState;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/audio/AdiDeviceState;-><init>(IILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->initSAState(Lcom/android/server/audio/AdiDeviceState;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p1, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 80
    .line 81
    .line 82
    const-string p1, "addWirelessDeviceIfNew"

    .line 83
    .line 84
    invoke-static {v0, p1}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    .line 87
    :cond_2
    monitor-exit p0

    .line 88
    return-void

    .line 89
    :goto_0
    monitor-exit p0

    .line 90
    throw p1
.end method

.method public final declared-synchronized canBeSpatializedOnDevice(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;Ljava/util/ArrayList;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    new-array v0, v0, [Landroid/media/AudioDeviceAttributes;

    .line 28
    .line 29
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    check-cast p3, [Landroid/media/AudioDeviceAttributes;

    .line 34
    .line 35
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;[Landroid/media/AudioDeviceAttributes;)Z

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return p1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    monitor-exit p0

    .line 44
    return v1

    .line 45
    :goto_0
    monitor-exit p0

    .line 46
    throw p1
.end method

.method public final checkSpatializer(Ljava/lang/String;)Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_2

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq v0, v3, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    if-eq v0, v3, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x5

    .line 16
    if-eq v0, v3, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x6

    .line 19
    if-eq v0, v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string/jumbo v0, "checkSpatializer(): called from "

    .line 27
    .line 28
    .line 29
    const-string v2, "(), native spatializer should not be null in state: "

    .line 30
    .line 31
    invoke-static {v0, p1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v0, "AS.SpatializerHelper"

    .line 45
    .line 46
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 52
    .line 53
    const-string v7, "AS.AudioService"

    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    const/16 v3, 0x32

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :cond_1
    :goto_0
    return v2

    .line 66
    :cond_2
    return v1
.end method

.method public final createSpat()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/media/AudioSystem;->getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/ISpatializer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 15
    .line 16
    const-string v1, "AS.SpatializerHelper"

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string/jumbo v0, "createSpat(): No Spatializer found"

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 29
    .line 30
    const-string v5, "AS.AudioService"

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    const/16 v1, 0x32

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Landroid/media/ISpatializer;->getActualHeadTrackingMode()B

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    .line 59
    .line 60
    invoke-interface {v0, v2}, Landroid/media/ISpatializer;->registerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v2, "Can\'t configure head tracking"

    .line 66
    .line 67
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 75
    .line 76
    const/4 v0, -0x2

    .line 77
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 78
    .line 79
    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchDesiredHeadTrackingMode(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/media/ISpatializerHeadTrackingModeCallback;

    .line 17
    .line 18
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadTrackingModeCallback;->dispatchSpatializerDesiredHeadTrackingModeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v4, "Error in dispatchSpatializerDesiredHeadTrackingModeChanged("

    .line 26
    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, ")"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "AS.SpatializerHelper"

    .line 43
    .line 44
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final dispatchHeadTrackerAvailable(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/media/ISpatializerHeadTrackerAvailableCallback;

    .line 17
    .line 18
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadTrackerAvailableCallback;->dispatchSpatializerHeadTrackerAvailable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v4, "Error in dispatchSpatializerHeadTrackerAvailable("

    .line 26
    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, ")"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "AS.SpatializerHelper"

    .line 43
    .line 44
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "SpatializerHelper:"

    .line 2
    .line 3
    const-string v1, "\tmState:"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 10
    .line 11
    const-string v2, "\tmSpatLevel:"

    .line 12
    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    .line 18
    .line 19
    const-string v2, "\tmCapableSpatLevel:"

    .line 20
    .line 21
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 26
    .line 27
    const-string v2, "\tmIsHeadTrackingSupported:"

    .line 28
    .line 29
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    .line 51
    .line 52
    array-length v2, v1

    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_0
    if-ge v3, v2, :cond_0

    .line 55
    .line 56
    aget v4, v1, v3

    .line 57
    .line 58
    invoke-static {v4}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v4, " "

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "\tsupported head tracking modes:"

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "\tmDesiredHeadTrackingMode:"

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 98
    .line 99
    invoke-static {v1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v1, "\tmActualHeadTrackingMode:"

    .line 116
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 121
    .line 122
    invoke-static {v1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v1, "\theadtracker available:"

    .line 139
    .line 140
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 144
    .line 145
    const-string v2, "\tsec headtracker available:"

    .line 146
    .line 147
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSecHeadTrackerAvailable:Z

    .line 152
    .line 153
    const-string v2, "\tglobal headtracker available:"

    .line 154
    .line 155
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z

    .line 160
    .line 161
    const-string v2, "\tsupports binaural:"

    .line 162
    .line 163
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, " / transaural:"

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 178
    .line 179
    const-string v2, "\tmSpatOutput:"

    .line 180
    .line 181
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    .line 186
    .line 187
    const-string v2, "\thas FEATURE_AUDIO_SPATIAL_HEADTRACKING_LOW_LATENCY:"

    .line 188
    .line 189
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 194
    .line 195
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    const-string v1, "android.hardware.audio.spatial.headtracking.low_latency"

    .line 202
    .line 203
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method public final declared-synchronized evaluateState(Landroid/media/AudioDeviceAttributes;)Landroid/util/Pair;
    .locals 6

    .line 1
    const-string/jumbo v0, "no spatialization device state found for Spatial Audio device:"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "no spatialization mode found for device type:"

    .line 5
    .line 6
    .line 7
    const-string v2, "Device incompatible with Spatial Audio dev:"

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    iget-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    const-string v0, "AS.SpatializerHelper"

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    new-instance p1, Landroid/util/Pair;

    .line 44
    .line 45
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return-object p1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Lcom/android/server/audio/SpatializerHelper$1;

    .line 56
    .line 57
    const/high16 v4, -0x80000000

    .line 58
    .line 59
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-ne v2, v4, :cond_1

    .line 64
    .line 65
    const-string p1, "AS.SpatializerHelper"

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    new-instance p1, Landroid/util/Pair;

    .line 83
    .line 84
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    monitor-exit p0

    .line 90
    return-object p1

    .line 91
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-nez v1, :cond_2

    .line 96
    .line 97
    const-string v1, "AS.SpatializerHelper"

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    new-instance p1, Landroid/util/Pair;

    .line 115
    .line 116
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return-object p1

    .line 123
    :cond_2
    :try_start_3
    invoke-static {v3}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    const/4 v0, 0x1

    .line 128
    if-eqz p1, :cond_5

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    const/4 v3, 0x0

    .line 135
    if-eqz p1, :cond_4

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    const/4 v4, 0x3

    .line 142
    if-ne p1, v4, :cond_3

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_3
    move v0, v3

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    :goto_0
    if-nez v2, :cond_3

    .line 148
    .line 149
    iget-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 150
    .line 151
    if-eqz p1, :cond_3

    .line 152
    .line 153
    :cond_5
    :goto_1
    new-instance p1, Landroid/util/Pair;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    .line 169
    .line 170
    monitor-exit p0

    .line 171
    return-object p1

    .line 172
    :goto_2
    monitor-exit p0

    .line 173
    throw p1
.end method

.method public final findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v1, v2}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v2}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v3

    .line 31
    :try_start_0
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/4 v5, 0x0

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lcom/android/server/audio/AdiDeviceState;

    .line 53
    .line 54
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    iget v6, v4, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    .line 57
    :try_start_2
    monitor-exit v4

    .line 58
    if-ne v6, v1, :cond_0

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v4}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    :goto_0
    monitor-exit v3

    .line 80
    goto :goto_1

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    monitor-exit v4

    .line 83
    throw p0

    .line 84
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    move-object v4, v5

    .line 86
    :goto_1
    if-nez v4, :cond_3

    .line 87
    .line 88
    return-object v5

    .line 89
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/server/audio/SpatializerHelper;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-nez p0, :cond_4

    .line 94
    .line 95
    return-object v5

    .line 96
    :cond_4
    return-object v4

    .line 97
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    throw p0
.end method

.method public final getHeadSensorHandleUpdateTracker()I
    .locals 14

    .line 1
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "getHeadSensorHandleUpdateTracker: no device, no head tracker"

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 29
    .line 30
    iget-object v4, v3, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v4

    .line 33
    :try_start_0
    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getDeviceIdentityAddresses(Landroid/media/AudioDeviceAttributes;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    iget-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 41
    .line 42
    const/16 v5, 0x25

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDynamicSensorList(I)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v3, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const/4 v5, 0x0

    .line 55
    :cond_1
    move-object v6, v5

    .line 56
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_e

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Ljava/lang/String;

    .line 67
    .line 68
    new-instance v8, Landroid/media/AudioDeviceAttributes;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    invoke-direct {v8, v9, v7}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v7, Lcom/android/server/audio/UuidUtils;->STANDALONE_UUID:Ljava/util/UUID;

    .line 78
    .line 79
    invoke-virtual {v8}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    invoke-static {v7}, Landroid/media/AudioSystem;->isBluetoothA2dpOutDevice(I)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-nez v7, :cond_3

    .line 88
    .line 89
    invoke-virtual {v8}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    invoke-static {v7}, Landroid/media/AudioSystem;->isBluetoothLeOutDevice(I)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-nez v7, :cond_3

    .line 98
    .line 99
    :catch_0
    :goto_0
    move-object v9, v5

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v8}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    const-string v8, ":"

    .line 106
    .line 107
    const-string v9, ""

    .line 108
    .line 109
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    const/16 v9, 0xc

    .line 118
    .line 119
    if-eq v8, v9, :cond_4

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    const-string v8, "0x"

    .line 123
    .line 124
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    :try_start_1
    invoke-static {v7}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 133
    .line 134
    .line 135
    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    const-wide/high16 v9, 0x4254000000000000L    # 3.4359738368E11

    .line 137
    .line 138
    or-long/2addr v7, v9

    .line 139
    new-instance v9, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string/jumbo v10, "uuidFromAudioDeviceAttributes lsb: "

    .line 142
    .line 143
    .line 144
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    const-string v10, "AudioService.UuidUtils"

    .line 159
    .line 160
    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    new-instance v9, Ljava/util/UUID;

    .line 164
    .line 165
    const-wide/16 v10, 0x0

    .line 166
    .line 167
    invoke-direct {v9, v10, v11, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    .line 168
    .line 169
    .line 170
    :goto_1
    invoke-static {}, Lcom/android/media/audio/Flags;->dsaOverBtLeAudio()Z

    .line 171
    .line 172
    .line 173
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    const/4 v10, 0x1

    .line 182
    if-eqz v8, :cond_9

    .line 183
    .line 184
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    check-cast v8, Landroid/hardware/Sensor;

    .line 189
    .line 190
    invoke-virtual {v8}, Landroid/hardware/Sensor;->getUuid()Ljava/util/UUID;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    invoke-virtual {v11, v9}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    if-eqz v12, :cond_8

    .line 199
    .line 200
    invoke-virtual {v8}, Landroid/hardware/Sensor;->getVersion()I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    invoke-static {v12}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    const/high16 v13, -0x1000000

    .line 213
    .line 214
    if-eqz v12, :cond_6

    .line 215
    .line 216
    and-int/2addr v6, v13

    .line 217
    shr-int/lit8 v6, v6, 0x18

    .line 218
    .line 219
    const/4 v12, 0x2

    .line 220
    if-ne v6, v12, :cond_7

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_6
    and-int/2addr v6, v13

    .line 224
    shr-int/lit8 v6, v6, 0x18

    .line 225
    .line 226
    if-ne v6, v10, :cond_7

    .line 227
    .line 228
    :goto_3
    move-object v6, v8

    .line 229
    goto :goto_4

    .line 230
    :cond_7
    move-object v6, v8

    .line 231
    :cond_8
    if-nez v6, :cond_5

    .line 232
    .line 233
    sget-object v10, Lcom/android/server/audio/UuidUtils;->STANDALONE_UUID:Ljava/util/UUID;

    .line 234
    .line 235
    invoke-virtual {v11, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    if-eqz v10, :cond_5

    .line 240
    .line 241
    move-object v6, v8

    .line 242
    goto :goto_2

    .line 243
    :cond_9
    :goto_4
    if-eqz v6, :cond_2

    .line 244
    .line 245
    invoke-virtual {v6}, Landroid/hardware/Sensor;->getUuid()Ljava/util/UUID;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    sget-object v8, Lcom/android/server/audio/UuidUtils;->STANDALONE_UUID:Ljava/util/UUID;

    .line 250
    .line 251
    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-eqz v7, :cond_a

    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_a
    const-string/jumbo v7, "setHasHeadTracker: device not found for:"

    .line 259
    .line 260
    .line 261
    const-string/jumbo v8, "no headtracking support, setHasHeadTracker always false for "

    .line 262
    .line 263
    .line 264
    monitor-enter p0

    .line 265
    :try_start_2
    iget-boolean v9, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 266
    .line 267
    if-nez v9, :cond_b

    .line 268
    .line 269
    const-string v7, "AS.SpatializerHelper"

    .line 270
    .line 271
    new-instance v9, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    .line 285
    .line 286
    monitor-exit p0

    .line 287
    :goto_5
    move v7, v2

    .line 288
    goto :goto_6

    .line 289
    :catchall_0
    move-exception v0

    .line 290
    goto :goto_7

    .line 291
    :cond_b
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    if-eqz v8, :cond_d

    .line 296
    .line 297
    invoke-virtual {v8}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    if-nez v7, :cond_c

    .line 302
    .line 303
    invoke-virtual {v8, v10}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    .line 304
    .line 305
    .line 306
    iget-object v7, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 307
    .line 308
    invoke-virtual {v7}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 309
    .line 310
    .line 311
    const-string/jumbo v7, "setHasHeadTracker"

    .line 312
    .line 313
    .line 314
    invoke-static {v8, v7}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :cond_c
    invoke-virtual {v8}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    .line 318
    .line 319
    .line 320
    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    monitor-exit p0

    .line 322
    goto :goto_6

    .line 323
    :cond_d
    :try_start_4
    const-string v8, "AS.SpatializerHelper"

    .line 324
    .line 325
    new-instance v9, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 338
    .line 339
    .line 340
    monitor-exit p0

    .line 341
    goto :goto_5

    .line 342
    :goto_6
    if-eqz v7, :cond_1

    .line 343
    .line 344
    goto :goto_8

    .line 345
    :goto_7
    monitor-exit p0

    .line 346
    throw v0

    .line 347
    :cond_e
    :goto_8
    if-eqz v6, :cond_f

    .line 348
    .line 349
    invoke-virtual {v6}, Landroid/hardware/Sensor;->getHandle()I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    :cond_f
    return v1

    .line 354
    :catchall_1
    move-exception p0

    .line 355
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 356
    throw p0
.end method

.method public final getRoutingDevices(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mASA:Lcom/android/server/audio/AudioSystemAdapter;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance p0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object p0
.end method

.method public final declared-synchronized init(Z)V
    .locals 12

    .line 1
    const-string/jumbo v0, "init() called in state "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "init effectExpected="

    .line 5
    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const-string/jumbo p1, "init(): setting state to STATE_NOT_SUPPORTED due to effect not expected"

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto/16 :goto_e

    .line 38
    .line 39
    :cond_0
    :try_start_1
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 40
    .line 41
    if-nez p1, :cond_16

    .line 42
    .line 43
    new-instance p1, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Landroid/media/AudioSystem;->getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/ISpatializer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    const-string/jumbo p1, "init(): No Spatializer found"

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    .line 65
    :try_start_2
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 66
    .line 67
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 70
    .line 71
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 72
    .line 73
    new-array v2, v0, [I

    .line 74
    .line 75
    iput-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    const/4 v2, 0x3

    .line 78
    :try_start_3
    invoke-interface {p1}, Landroid/media/ISpatializer;->getSupportedLevels()[B

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_14

    .line 83
    .line 84
    array-length v4, v3

    .line 85
    if-eqz v4, :cond_14

    .line 86
    .line 87
    array-length v4, v3

    .line 88
    if-ne v4, v1, :cond_2

    .line 89
    .line 90
    aget-byte v4, v3, v0

    .line 91
    .line 92
    if-nez v4, :cond_2

    .line 93
    .line 94
    goto/16 :goto_b

    .line 95
    .line 96
    :catchall_1
    move-exception v0

    .line 97
    goto/16 :goto_d

    .line 98
    .line 99
    :cond_2
    array-length v4, v3

    .line 100
    move v5, v0

    .line 101
    :goto_0
    if-ge v5, v4, :cond_4

    .line 102
    .line 103
    aget-byte v6, v3, v5

    .line 104
    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string/jumbo v8, "init(): found support for level: "

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-static {v7}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    if-ne v6, v1, :cond_3

    .line 127
    .line 128
    const-string/jumbo v3, "init(): setting capable level to LEVEL_MULTICHANNEL"

    .line 129
    .line 130
    .line 131
    invoke-static {v3}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iput v6, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_4
    :goto_1
    invoke-interface {p1}, Landroid/media/ISpatializer;->isHeadTrackingSupported()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    iput-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 145
    .line 146
    const/4 v4, 0x2

    .line 147
    if-eqz v3, :cond_9

    .line 148
    .line 149
    invoke-interface {p1}, Landroid/media/ISpatializer;->getSupportedHeadTrackingModes()[B

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    new-instance v5, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .line 157
    .line 158
    array-length v6, v3

    .line 159
    move v7, v0

    .line 160
    :goto_2
    if-ge v7, v6, :cond_7

    .line 161
    .line 162
    aget-byte v8, v3, v7

    .line 163
    .line 164
    if-eqz v8, :cond_6

    .line 165
    .line 166
    if-eq v8, v1, :cond_6

    .line 167
    .line 168
    if-eq v8, v4, :cond_5

    .line 169
    .line 170
    if-eq v8, v2, :cond_5

    .line 171
    .line 172
    const-string v9, "AS.SpatializerHelper"

    .line 173
    .line 174
    new-instance v10, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v11, "Unexpected head tracking mode:"

    .line 180
    .line 181
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 192
    .line 193
    const-string/jumbo v11, "invalid mode"

    .line 194
    .line 195
    .line 196
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v9, v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_5
    invoke-static {v8}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    new-array v3, v3, [I

    .line 222
    .line 223
    iput-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    .line 224
    .line 225
    move v3, v0

    .line 226
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-ge v3, v6, :cond_8

    .line 231
    .line 232
    iget-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    .line 233
    .line 234
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    check-cast v7, Ljava/lang/Integer;

    .line 239
    .line 240
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    aput v7, v6, v3

    .line 245
    .line 246
    add-int/lit8 v3, v3, 0x1

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_8
    invoke-interface {p1}, Landroid/media/ISpatializer;->getActualHeadTrackingMode()B

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    invoke-static {v3}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    iput v3, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_9
    const/4 v3, -0x2

    .line 261
    iput v3, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    .line 262
    .line 263
    iput v3, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 264
    .line 265
    :goto_5
    invoke-interface {p1}, Landroid/media/ISpatializer;->getSupportedModes()[B

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    array-length v5, v3

    .line 270
    move v6, v0

    .line 271
    :goto_6
    if-ge v6, v5, :cond_c

    .line 272
    .line 273
    aget-byte v7, v3, v6

    .line 274
    .line 275
    if-eqz v7, :cond_b

    .line 276
    .line 277
    if-eq v7, v1, :cond_a

    .line 278
    .line 279
    new-instance v8, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string/jumbo v9, "init(): Spatializer reports unknown supported mode:"

    .line 285
    .line 286
    .line 287
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-static {v7}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_a
    iput-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_b
    iput-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 305
    .line 306
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_c
    iget-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 310
    .line 311
    if-nez v3, :cond_d

    .line 312
    .line 313
    iget-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 314
    .line 315
    if-nez v3, :cond_d

    .line 316
    .line 317
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 318
    .line 319
    :try_start_4
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 320
    .line 321
    .line 322
    :catch_0
    monitor-exit p0

    .line 323
    return-void

    .line 324
    :cond_d
    move v3, v0

    .line 325
    :goto_8
    :try_start_5
    sget-object v5, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Lcom/android/server/audio/SpatializerHelper$1;

    .line 326
    .line 327
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    if-ge v3, v6, :cond_11

    .line 332
    .line 333
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    if-nez v6, :cond_e

    .line 338
    .line 339
    iget-boolean v7, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 340
    .line 341
    if-nez v7, :cond_f

    .line 342
    .line 343
    :cond_e
    if-ne v6, v1, :cond_10

    .line 344
    .line 345
    iget-boolean v6, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 346
    .line 347
    if-eqz v6, :cond_10

    .line 348
    .line 349
    :cond_f
    iget-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 363
    .line 364
    goto :goto_8

    .line 365
    :cond_11
    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 366
    .line 367
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->getImmutableDeviceInventory()Ljava/util/Collection;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    check-cast v3, Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    :cond_12
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    if-eqz v5, :cond_13

    .line 382
    .line 383
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    check-cast v5, Lcom/android/server/audio/AdiDeviceState;

    .line 388
    .line 389
    invoke-virtual {p0, v5}, Lcom/android/server/audio/SpatializerHelper;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    .line 390
    .line 391
    .line 392
    move-result v6

    .line 393
    if-eqz v6, :cond_12

    .line 394
    .line 395
    const-string/jumbo v6, "setSADeviceSettings"

    .line 396
    .line 397
    .line 398
    invoke-static {v5, v6}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    goto :goto_9

    .line 402
    :cond_13
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    .line 403
    .line 404
    const-string v5, ""

    .line 405
    .line 406
    invoke-direct {v3, v4, v5}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0, v3, v0, v0}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;ZZ)V

    .line 410
    .line 411
    .line 412
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    .line 413
    .line 414
    const-string v4, ""

    .line 415
    .line 416
    const/16 v5, 0x8

    .line 417
    .line 418
    invoke-direct {v3, v5, v4}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0, v3, v0, v0}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 422
    .line 423
    .line 424
    :goto_a
    :try_start_6
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 425
    .line 426
    .line 427
    goto :goto_c

    .line 428
    :cond_14
    :goto_b
    :try_start_7
    const-string/jumbo v3, "init(): found Spatializer is useless"

    .line 429
    .line 430
    .line 431
    invoke-static {v3}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 435
    .line 436
    :try_start_8
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 437
    .line 438
    .line 439
    :catch_1
    monitor-exit p0

    .line 440
    return-void

    .line 441
    :catch_2
    :try_start_9
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 442
    .line 443
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 444
    .line 445
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 446
    .line 447
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 448
    .line 449
    new-array v0, v0, [I

    .line 450
    .line 451
    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 452
    .line 453
    goto :goto_a

    .line 454
    :catch_3
    :goto_c
    :try_start_a
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 455
    .line 456
    if-nez p1, :cond_15

    .line 457
    .line 458
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 459
    .line 460
    monitor-exit p0

    .line 461
    return-void

    .line 462
    :cond_15
    :try_start_b
    iput v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 463
    .line 464
    sget-object p1, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 465
    .line 466
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->getRoutingDevices(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    sput-object p1, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 471
    .line 472
    monitor-exit p0

    .line 473
    return-void

    .line 474
    :goto_d
    :try_start_c
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 475
    .line 476
    .line 477
    :catch_4
    :try_start_d
    throw v0

    .line 478
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 479
    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 486
    .line 487
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 501
    :goto_e
    monitor-exit p0

    .line 502
    throw p1
.end method

.method public final initSAState(Lcom/android/server/audio/AdiDeviceState;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Lcom/android/server/audio/SpatializerHelper$1;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget v1, p1, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p1

    .line 7
    const/high16 v2, -0x80000000

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralEnabledDefault:Z

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralEnabledDefault:Z

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 26
    .line 27
    .line 28
    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingEnabledDefault:Z

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit p1

    .line 36
    throw p0
.end method

.method public final isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    sget-object v1, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Lcom/android/server/audio/SpatializerHelper$1;

    .line 7
    .line 8
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    int-to-byte p1, p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    :cond_0
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    :cond_1
    return v0

    .line 27
    :cond_2
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z
    .locals 3

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget v0, p1, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    .line 4
    monitor-exit p1

    .line 5
    monitor-enter p1

    .line 6
    :try_start_1
    iget v1, p1, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    .line 8
    monitor-exit p1

    .line 9
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v1, v2}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceAttributes()Landroid/media/AudioDeviceAttributes;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit p1

    .line 35
    throw p0

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    monitor-exit p1

    .line 38
    throw p0
.end method

.method public final declared-synchronized onInitSensors()V
    .locals 13

    .line 1
    const-string v0, "Error calling setHeadSensor:"

    .line 2
    .line 3
    const-string/jumbo v1, "setHeadSensor:"

    .line 4
    .line 5
    .line 6
    const-string v2, "Error calling setScreenSensor:"

    .line 7
    .line 8
    const-string/jumbo v3, "setScreenSensor:"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v4, "found screen sensor handle initialized to "

    .line 12
    .line 13
    .line 14
    const-string/jumbo v5, "head tracker sensor handle initialized to "

    .line 15
    .line 16
    .line 17
    const-string/jumbo v6, "not "

    .line 18
    .line 19
    .line 20
    const-string/jumbo v7, "not "

    .line 21
    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-boolean v8, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x1

    .line 28
    if-eqz v8, :cond_0

    .line 29
    .line 30
    iget v8, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    .line 31
    .line 32
    if-eqz v8, :cond_0

    .line 33
    .line 34
    move v8, v10

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto/16 :goto_9

    .line 38
    .line 39
    :cond_0
    move v8, v9

    .line 40
    :goto_0
    if-eqz v8, :cond_1

    .line 41
    .line 42
    const-string/jumbo v11, "initializing"

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string/jumbo v11, "releasing"

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object v12, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 50
    .line 51
    if-nez v12, :cond_2

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, " sensors, null spatializer"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :cond_2
    :try_start_1
    iget-boolean v7, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 76
    .line 77
    if-nez v7, :cond_3

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, " sensors, spatializer doesn\'t support headtracking"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    monitor-exit p0

    .line 100
    return-void

    .line 101
    :cond_3
    const/4 v6, 0x0

    .line 102
    const/4 v7, -0x1

    .line 103
    if-eqz v8, :cond_6

    .line 104
    .line 105
    :try_start_2
    iget-object v8, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .line 107
    if-nez v8, :cond_4

    .line 108
    .line 109
    :try_start_3
    iget-object v8, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 110
    .line 111
    iget-object v8, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    const-string/jumbo v11, "sensor"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    check-cast v8, Landroid/hardware/SensorManager;

    .line 121
    .line 122
    iput-object v8, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 123
    .line 124
    new-instance v8, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    .line 125
    .line 126
    invoke-direct {v8, p0}, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    .line 127
    .line 128
    .line 129
    iput-object v8, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    .line 130
    .line 131
    iget-object v11, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 132
    .line 133
    invoke-virtual {v11, v8}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :catch_0
    move-exception v0

    .line 138
    :try_start_4
    const-string v1, "AS.SpatializerHelper"

    .line 139
    .line 140
    const-string v2, "Error with SensorManager, can\'t initialize sensors"

    .line 141
    .line 142
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .line 144
    .line 145
    iput-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 146
    .line 147
    iput-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    .line 149
    monitor-exit p0

    .line 150
    return-void

    .line 151
    :cond_4
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->getHeadSensorHandleUpdateTracker()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    new-instance v8, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-static {v5}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v5, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 171
    .line 172
    const/16 v8, 0xb

    .line 173
    .line 174
    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    if-eqz v5, :cond_5

    .line 179
    .line 180
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getHandle()I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    goto :goto_3

    .line 185
    :cond_5
    move v5, v7

    .line 186
    :goto_3
    const-string v8, "AS.SpatializerHelper"

    .line 187
    .line 188
    new-instance v11, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_6
    iget-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 205
    .line 206
    if-eqz v4, :cond_7

    .line 207
    .line 208
    iget-object v5, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    .line 209
    .line 210
    if-eqz v5, :cond_7

    .line 211
    .line 212
    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    .line 213
    .line 214
    .line 215
    iput-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 216
    .line 217
    iput-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 218
    .line 219
    :cond_7
    move v5, v7

    .line 220
    move v6, v5

    .line 221
    :goto_4
    :try_start_6
    const-string v4, "AS.SpatializerHelper"

    .line 222
    .line 223
    new-instance v8, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 239
    .line 240
    invoke-interface {v3, v5}, Landroid/media/ISpatializer;->setScreenSensor(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 241
    .line 242
    .line 243
    goto :goto_5

    .line 244
    :catch_1
    move-exception v3

    .line 245
    :try_start_7
    const-string v4, "AS.SpatializerHelper"

    .line 246
    .line 247
    new-instance v8, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 260
    .line 261
    .line 262
    :goto_5
    :try_start_8
    const-string v2, "AS.SpatializerHelper"

    .line 263
    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 280
    .line 281
    invoke-interface {v1, v6}, Landroid/media/ISpatializer;->setHeadSensor(I)V

    .line 282
    .line 283
    .line 284
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 285
    .line 286
    if-eq v6, v7, :cond_8

    .line 287
    .line 288
    move v2, v10

    .line 289
    goto :goto_6

    .line 290
    :cond_8
    move v2, v9

    .line 291
    :goto_6
    if-eq v1, v2, :cond_c

    .line 292
    .line 293
    if-eq v6, v7, :cond_9

    .line 294
    .line 295
    move v1, v10

    .line 296
    goto :goto_7

    .line 297
    :cond_9
    move v1, v9

    .line 298
    :goto_7
    iput-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 299
    .line 300
    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSecHeadTrackerAvailable:Z

    .line 301
    .line 302
    if-nez v2, :cond_a

    .line 303
    .line 304
    if-eqz v1, :cond_b

    .line 305
    .line 306
    :cond_a
    move v9, v10

    .line 307
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z

    .line 308
    .line 309
    if-eq v1, v9, :cond_c

    .line 310
    .line 311
    iput-boolean v9, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z

    .line 312
    .line 313
    invoke-virtual {p0, v9}, Lcom/android/server/audio/SpatializerHelper;->dispatchHeadTrackerAvailable(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 314
    .line 315
    .line 316
    goto :goto_8

    .line 317
    :catch_2
    move-exception v1

    .line 318
    :try_start_9
    const-string v2, "AS.SpatializerHelper"

    .line 319
    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .line 334
    .line 335
    :cond_c
    :goto_8
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 336
    .line 337
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->setDesiredHeadTrackingMode(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 338
    .line 339
    .line 340
    monitor-exit p0

    .line 341
    return-void

    .line 342
    :goto_9
    monitor-exit p0

    .line 343
    throw v0
.end method

.method public final declared-synchronized onRoutingUpdated()V
    .locals 11

    .line 1
    const-string v0, "Setting spatialization level to: "

    .line 2
    .line 3
    const-string v1, "Disabling Spatial Audio since disabled for media device:"

    .line 4
    .line 5
    const-string v2, "Enabling Spatial Audio since enabled for media device:"

    .line 6
    .line 7
    const-string/jumbo v3, "onRoutingUpdated: device:"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v4, "onRoutingUpdated: can spatialize media 5.1:"

    .line 11
    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget v5, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 15
    .line 16
    if-eqz v5, :cond_7

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    if-eq v5, v6, :cond_7

    .line 20
    .line 21
    sget-object v5, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 22
    .line 23
    invoke-virtual {p0, v5}, Lcom/android/server/audio/SpatializerHelper;->getRoutingDevices(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    sput-object v7, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    const/4 v8, 0x0

    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    const-string/jumbo v0, "onRoutingUpdated: no device, no Spatial Audio"

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v8}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_0
    :try_start_1
    sget-object v7, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Landroid/media/AudioDeviceAttributes;

    .line 57
    .line 58
    invoke-virtual {v7}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    invoke-static {v9}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-eqz v9, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0, v7}, Lcom/android/server/audio/SpatializerHelper;->addWirelessDeviceIfNew(Landroid/media/AudioDeviceAttributes;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/server/audio/SpatializerHelper;->evaluateState(Landroid/media/AudioDeviceAttributes;)Landroid/util/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v10, Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-eqz v10, :cond_2

    .line 84
    .line 85
    sget-object v3, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_FORMAT:Landroid/media/AudioFormat;

    .line 86
    .line 87
    sget-object v10, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {p0, v5, v3, v10}, Lcom/android/server/audio/SpatializerHelper;->canBeSpatializedOnDevice(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;Ljava/util/ArrayList;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v4, " on device:"

    .line 102
    .line 103
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v4}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v3, " not available for Spatial Audio"

    .line 129
    .line 130
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v3}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v8}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V

    .line 141
    .line 142
    .line 143
    move v3, v8

    .line 144
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    .line 145
    .line 146
    if-eqz v4, :cond_3

    .line 147
    .line 148
    if-eqz v3, :cond_3

    .line 149
    .line 150
    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v3, Ljava/lang/Boolean;

    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_3

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_3
    move v6, v8

    .line 162
    :goto_1
    if-eqz v6, :cond_4

    .line 163
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :goto_2
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 196
    .line 197
    if-eqz v1, :cond_5

    .line 198
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .line 213
    .line 214
    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 215
    .line 216
    invoke-interface {v0, v6}, Landroid/media/ISpatializer;->setLevel(B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :catch_0
    move-exception v0

    .line 221
    :try_start_3
    const-string v1, "AS.SpatializerHelper"

    .line 222
    .line 223
    const-string/jumbo v2, "onRoutingUpdated() Can\'t set spatializer level"

    .line 224
    .line 225
    .line 226
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 230
    .line 231
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 232
    .line 233
    const-string v6, "AS.AudioService"

    .line 234
    .line 235
    const/4 v7, 0x0

    .line 236
    const/4 v4, 0x0

    .line 237
    const/4 v5, 0x0

    .line 238
    const/16 v2, 0x32

    .line 239
    .line 240
    const/4 v3, 0x0

    .line 241
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    .line 243
    .line 244
    monitor-exit p0

    .line 245
    return-void

    .line 246
    :cond_5
    :goto_3
    :try_start_4
    const-string/jumbo v0, "onRoutingUpdated"

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v0, v6}, Lcom/android/server/audio/SpatializerHelper;->setDispatchFeatureEnabledState(Ljava/lang/String;Z)V

    .line 250
    .line 251
    .line 252
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 253
    .line 254
    const/4 v1, -0x2

    .line 255
    if-eq v0, v1, :cond_6

    .line 256
    .line 257
    const/4 v1, -0x1

    .line 258
    if-eq v0, v1, :cond_6

    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    .line 262
    .line 263
    :cond_6
    monitor-exit p0

    .line 264
    return-void

    .line 265
    :cond_7
    monitor-exit p0

    .line 266
    return-void

    .line 267
    :goto_4
    monitor-exit p0

    .line 268
    throw v0
.end method

.method public final postInitSensors()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/16 v1, 0x2a

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v5, "AS.AudioService"

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final declared-synchronized refreshDevice(Landroid/media/AudioDeviceAttributes;Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x3

    .line 30
    if-eq v1, v2, :cond_1

    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->removeCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;ZZ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/SpatializerHelper;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :goto_1
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :goto_2
    monitor-exit p0

    .line 55
    throw p1
.end method

.method public final releaseSpat()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, v1}, Landroid/media/ISpatializer;->registerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingCallback;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 20
    .line 21
    invoke-interface {v0}, Landroid/media/ISpatializer;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_2

    .line 25
    :goto_1
    const-string v2, "AS.SpatializerHelper"

    .line 26
    .line 27
    const-string v3, "Can\'t set release spatializer cleanly"

    .line 28
    .line 29
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :goto_2
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final declared-synchronized removeCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "removeCompatibleAudioDevice: dev="

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 42
    .line 43
    .line 44
    const-string/jumbo v0, "removeCompatibleAudioDevice"

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit p0

    .line 56
    throw p1
.end method

.method public final declared-synchronized reset(Z)V
    .locals 2

    .line 1
    const-string v0, "Resetting featureEnabled="

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->releaseSpat()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 24
    .line 25
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    .line 26
    .line 27
    const/4 v0, -0x2

    .line 28
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->init(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p0

    .line 41
    throw p1
.end method

.method public final declared-synchronized setDesiredHeadTrackingMode(I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setDesiredHeadTrackingMode("

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    const-string/jumbo v1, "setDesiredHeadTrackingMode"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SpatializerHelper;->checkSpatializer(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_6

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 15
    .line 16
    if-eqz v1, :cond_6

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    if-eq p1, v1, :cond_0

    .line 20
    .line 21
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_5

    .line 26
    :cond_0
    :goto_0
    :try_start_1
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 27
    .line 28
    if-eq v1, p1, :cond_1

    .line 29
    .line 30
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchDesiredHeadTrackingMode(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_3

    .line 38
    :cond_1
    :goto_1
    const-string v1, "AS.SpatializerHelper"

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ")"

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 65
    .line 66
    const/4 v1, -0x1

    .line 67
    const/4 v2, 0x1

    .line 68
    if-eq p1, v1, :cond_5

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    const/4 v1, 0x2

    .line 73
    if-eq p1, v2, :cond_3

    .line 74
    .line 75
    if-ne p1, v1, :cond_2

    .line 76
    .line 77
    const/4 v2, 0x3

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string v1, "Unexpected head tracking mode:"

    .line 82
    .line 83
    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_3
    move v2, v1

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    const/4 v2, 0x0

    .line 94
    :cond_5
    :goto_2
    invoke-interface {v0, v2}, Landroid/media/ISpatializer;->setDesiredHeadTrackingMode(B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_4

    .line 98
    :goto_3
    :try_start_2
    const-string v0, "AS.SpatializerHelper"

    .line 99
    .line 100
    const-string v1, "Error calling setDesiredHeadTrackingMode"

    .line 101
    .line 102
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .line 104
    .line 105
    :goto_4
    monitor-exit p0

    .line 106
    return-void

    .line 107
    :cond_6
    monitor-exit p0

    .line 108
    return-void

    .line 109
    :goto_5
    monitor-exit p0

    .line 110
    throw p1
.end method

.method public final declared-synchronized setDispatchAvailableState(Z)V
    .locals 9

    .line 1
    const-string/jumbo v0, "setDispatchAvailableState("

    .line 2
    .line 3
    .line 4
    const-string v1, "Should not update available state in state:"

    .line 5
    .line 6
    const-string/jumbo v2, "setDispatchAvailableState("

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "setDispatchAvailableState("

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "setDispatchAvailableState("

    .line 13
    .line 14
    .line 15
    const-string/jumbo v5, "setDispatchAvailableState("

    .line 16
    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget v6, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 20
    .line 21
    if-eqz v6, :cond_9

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    if-eq v6, v7, :cond_9

    .line 25
    .line 26
    const/4 v1, 0x6

    .line 27
    const/4 v7, 0x3

    .line 28
    if-eq v6, v7, :cond_6

    .line 29
    .line 30
    const/4 v2, 0x5

    .line 31
    const/4 v8, 0x4

    .line 32
    if-eq v6, v8, :cond_4

    .line 33
    .line 34
    if-eq v6, v2, :cond_2

    .line 35
    .line 36
    if-eq v6, v1, :cond_0

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ") no dispatch: mState:"

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 56
    .line 57
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_1
    :try_start_1
    iput v7, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    if-eqz p1, :cond_3

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p1, ") no dispatch: mState:"

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 95
    .line 96
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    .line 110
    monitor-exit p0

    .line 111
    return-void

    .line 112
    :cond_3
    :try_start_2
    iput v8, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    if-eqz p1, :cond_5

    .line 116
    .line 117
    iput v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p1, ") no dispatch: mState:"

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 134
    .line 135
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .line 148
    .line 149
    monitor-exit p0

    .line 150
    return-void

    .line 151
    :cond_6
    if-eqz p1, :cond_8

    .line 152
    .line 153
    :try_start_3
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 154
    .line 155
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v0, ") mState:"

    .line 164
    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 169
    .line 170
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 185
    .line 186
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 187
    .line 188
    .line 189
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    const/4 v1, 0x0

    .line 191
    :goto_1
    if-ge v1, v0, :cond_7

    .line 192
    .line 193
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 194
    .line 195
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Landroid/media/ISpatializerCallback;

    .line 200
    .line 201
    invoke-interface {v2, p1}, Landroid/media/ISpatializerCallback;->dispatchSpatializerAvailableChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :catch_0
    move-exception v2

    .line 206
    :try_start_5
    const-string v3, "AS.SpatializerHelper"

    .line 207
    .line 208
    const-string v4, "Error in dispatchSpatializerEnabledChanged"

    .line 209
    .line 210
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .line 212
    .line 213
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_7
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 219
    .line 220
    .line 221
    monitor-exit p0

    .line 222
    return-void

    .line 223
    :cond_8
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string p1, ") no dispatch: mState:"

    .line 232
    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 237
    .line 238
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 250
    .line 251
    .line 252
    monitor-exit p0

    .line 253
    return-void

    .line 254
    :cond_9
    :try_start_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 255
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 274
    :goto_3
    monitor-exit p0

    .line 275
    throw p1
.end method

.method public final declared-synchronized setDispatchFeatureEnabledState(Ljava/lang/String;Z)V
    .locals 9

    .line 1
    const-string v0, "Invalid mState:"

    .line 2
    .line 3
    const-string/jumbo v1, "setDispatchFeatureEnabledState("

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "setDispatchFeatureEnabledState("

    .line 7
    .line 8
    .line 9
    const-string v3, "Invalid mState:"

    .line 10
    .line 11
    const-string/jumbo v4, "setDispatchFeatureEnabledState("

    .line 12
    .line 13
    .line 14
    monitor-enter p0

    .line 15
    const/4 v5, 0x6

    .line 16
    const/4 v6, 0x5

    .line 17
    const/4 v7, 0x4

    .line 18
    const/4 v8, 0x3

    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 22
    .line 23
    if-eq v0, v8, :cond_2

    .line 24
    .line 25
    if-eq v0, v7, :cond_1

    .line 26
    .line 27
    if-eq v0, v6, :cond_1

    .line 28
    .line 29
    if-ne v0, v5, :cond_0

    .line 30
    .line 31
    iput v6, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, " for enabled true"

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p2, ") no dispatch: mState:"

    .line 71
    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget p2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 76
    .line 77
    invoke-static {p2}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p2, " src:"

    .line 85
    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    monitor-exit p0

    .line 100
    return-void

    .line 101
    :cond_2
    :try_start_1
    iput v7, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    iget v3, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 105
    .line 106
    if-eq v3, v8, :cond_8

    .line 107
    .line 108
    if-eq v3, v7, :cond_6

    .line 109
    .line 110
    if-eq v3, v6, :cond_5

    .line 111
    .line 112
    if-ne v3, v5, :cond_4

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 116
    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v0, " for enabled false"

    .line 128
    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_5
    iput v5, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_6
    iput v8, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 144
    .line 145
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v0, ") mState:"

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 159
    .line 160
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 177
    .line 178
    .line 179
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    const/4 v0, 0x0

    .line 181
    :goto_1
    if-ge v0, p1, :cond_7

    .line 182
    .line 183
    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 184
    .line 185
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Landroid/media/ISpatializerCallback;

    .line 190
    .line 191
    invoke-interface {v1, p2}, Landroid/media/ISpatializerCallback;->dispatchSpatializerEnabledChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :catch_0
    move-exception v1

    .line 196
    :try_start_3
    const-string v2, "AS.SpatializerHelper"

    .line 197
    .line 198
    const-string v3, "Error in dispatchSpatializerEnabledChanged"

    .line 199
    .line 200
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .line 202
    .line 203
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_7
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    .line 210
    .line 211
    monitor-exit p0

    .line 212
    return-void

    .line 213
    :cond_8
    :goto_3
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string p2, ") no dispatch: mState:"

    .line 222
    .line 223
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget p2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 227
    .line 228
    invoke-static {p2}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string p2, " src:"

    .line 236
    .line 237
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 248
    .line 249
    .line 250
    monitor-exit p0

    .line 251
    return-void

    .line 252
    :goto_4
    monitor-exit p0

    .line 253
    throw p1
.end method

.method public final declared-synchronized setFeatureEnabled(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setFeatureEnabled("

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, ") was featureEnabled:"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-ne v0, p1, :cond_0

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    if-ne p1, v0, :cond_1

    .line 44
    .line 45
    const-string p1, "AS.SpatializerHelper"

    .line 46
    .line 47
    const-string v0, "Can\'t enabled Spatial Audio, unsupported"

    .line 48
    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    if-nez p1, :cond_2

    .line 57
    .line 58
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->init(Z)V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    :goto_0
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :goto_1
    monitor-exit p0

    .line 72
    throw p1
.end method

.method public final declared-synchronized setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setHeadTrackerEnabled enabled:"

    .line 2
    .line 3
    .line 4
    const-string v1, "Called setHeadTrackerEnabled enabled:"

    .line 5
    .line 6
    const-string/jumbo v2, "no headtracking support, ignoring setHeadTrackerEnabled to "

    .line 7
    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    const-string v3, "AS.SpatializerHelper"

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " for "

    .line 25
    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    .line 44
    .line 45
    .line 46
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    const-string v0, "AS.SpatializerHelper"

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, " device:"

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, " on a device without headtracker"

    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 89
    :cond_2
    :try_start_2
    const-string v1, "AS.SpatializerHelper"

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, " device:"

    .line 100
    .line 101
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, p1}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 120
    .line 121
    .line 122
    const-string/jumbo v0, "setHeadTrackerEnabled"

    .line 123
    .line 124
    .line 125
    invoke-static {v2, v0}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    const-string/jumbo p1, "setHeadTrackerEnabled: no device, bailing"

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .line 141
    .line 142
    monitor-exit p0

    .line 143
    return-void

    .line 144
    :cond_3
    :try_start_3
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-ne v1, v2, :cond_5

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    if-eqz p2, :cond_5

    .line 176
    .line 177
    if-eqz p1, :cond_4

    .line 178
    .line 179
    iget p2, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_4
    const/4 p2, -0x1

    .line 183
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SpatializerHelper;->setDesiredHeadTrackingMode(I)V

    .line 184
    .line 185
    .line 186
    if-eqz p1, :cond_5

    .line 187
    .line 188
    iget-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 189
    .line 190
    if-nez p1, :cond_5

    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    .line 194
    .line 195
    :cond_5
    monitor-exit p0

    .line 196
    return-void

    .line 197
    :goto_2
    monitor-exit p0

    .line 198
    throw p1
.end method

.method public final declared-synchronized setSpatializerEnabledInt(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x6

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-nez p1, :cond_4

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->releaseSpat()V

    .line 25
    .line 26
    .line 27
    const-string/jumbo p1, "setSpatializerEnabledInt"

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/SpatializerHelper;->setDispatchFeatureEnabledState(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    if-eqz p1, :cond_4

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->createSpat()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    if-eqz p1, :cond_4

    .line 47
    .line 48
    const-string p1, "AS.SpatializerHelper"

    .line 49
    .line 50
    const-string v0, "Can\'t enable when unsupported"

    .line 51
    .line 52
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    if-nez p1, :cond_5

    .line 57
    .line 58
    :cond_4
    :goto_0
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v0, "Can\'t enable when uninitialized"

    .line 63
    .line 64
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :goto_1
    monitor-exit p0

    .line 69
    throw p1
.end method
