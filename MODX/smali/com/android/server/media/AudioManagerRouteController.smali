.class public final Lcom/android/server/media/AudioManagerRouteController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/media/DeviceRouteController;


# static fields
.field public static final AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

.field public static final MEDIA_USAGE_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field public final mAudioDeviceCallback:Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

.field public final mBuiltInSpeakerSuitabilityStatus:I

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mOnDeviceRouteChangedListener:Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;

.field public final mOnDevicesForAttributesChangedListener:Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;

.field public final mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

.field public mSelectedRoute:Landroid/media/MediaRoute2Info;

.field public final mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 3
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/media/AudioManagerRouteController;->MEDIA_USAGE_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 22
    sput-object v0, Lcom/android/server/media/AudioManagerRouteController;->AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

    .line 24
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 26
    const-string v2, "ROUTE_ID_BUILTIN_SPEAKER"

    .line 28
    const v3, 0x1040444

    .line 31
    const/4 v4, 0x2

    .line 32
    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 35
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 40
    const/4 v2, 0x3

    .line 41
    const-string v3, "ROUTE_ID_WIRED_HEADSET"

    .line 43
    const v4, 0x1040447

    .line 46
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 54
    const/4 v2, 0x4

    .line 55
    const-string v3, "ROUTE_ID_WIRED_HEADPHONES"

    .line 57
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 60
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 65
    const/16 v2, 0x8

    .line 67
    const-string v3, "ROUTE_ID_BLUETOOTH_A2DP"

    .line 69
    const v4, 0x1040246

    .line 72
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 80
    const/16 v2, 0x9

    .line 82
    const-string v3, "ROUTE_ID_HDMI"

    .line 84
    const v5, 0x1040446

    .line 87
    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 95
    const/16 v2, 0xd

    .line 97
    const-string v3, "ROUTE_ID_DOCK"

    .line 99
    const v6, 0x1040445

    .line 102
    invoke-direct {v1, v2, v3, v6}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 110
    const/16 v3, 0xb

    .line 112
    const-string v7, "ROUTE_ID_USB_DEVICE"

    .line 114
    const v8, 0x1040448

    .line 117
    invoke-direct {v1, v3, v7, v8}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 120
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 125
    const/16 v3, 0x16

    .line 127
    const-string v7, "ROUTE_ID_USB_HEADSET"

    .line 129
    invoke-direct {v1, v3, v7, v8}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 132
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 137
    const/16 v3, 0xa

    .line 139
    const-string v7, "ROUTE_ID_HDMI_ARC"

    .line 141
    invoke-direct {v1, v3, v7, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 144
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 149
    const/16 v3, 0x1d

    .line 151
    const-string v7, "ROUTE_ID_HDMI_EARC"

    .line 153
    invoke-direct {v1, v3, v7, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 156
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 161
    const/16 v3, 0x17

    .line 163
    const-string v7, "ROUTE_ID_HEARING_AID"

    .line 165
    invoke-direct {v1, v3, v7, v4}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 168
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 173
    const/16 v3, 0x1a

    .line 175
    const-string v7, "ROUTE_ID_BLE_HEADSET"

    .line 177
    invoke-direct {v1, v3, v7, v4}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 180
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 185
    const-string v7, "ROUTE_ID_BLE_SPEAKER"

    .line 187
    invoke-direct {v1, v3, v7, v4}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 190
    const/16 v7, 0x1b

    .line 192
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 197
    const-string v7, "ROUTE_ID_BLE_BROADCAST"

    .line 199
    invoke-direct {v1, v3, v7, v4}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 202
    const/16 v3, 0x1e

    .line 204
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 209
    const/4 v3, 0x0

    .line 210
    const-string v4, "ROUTE_ID_LINE_DIGITAL"

    .line 212
    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 215
    const/4 v4, 0x6

    .line 216
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 221
    const-string v4, "ROUTE_ID_LINE_ANALOG"

    .line 223
    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 226
    const/4 v4, 0x5

    .line 227
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 232
    const-string v4, "ROUTE_ID_AUX_LINE"

    .line 234
    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 237
    const/16 v3, 0x13

    .line 239
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 244
    const-string v3, "ROUTE_ID_DOCK_ANALOG"

    .line 246
    invoke-direct {v1, v2, v3, v6}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    .line 249
    const/16 v2, 0x1f

    .line 251
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioDeviceCallback:Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;

    .line 11
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    .line 16
    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDevicesForAttributesChangedListener:Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iput-object p2, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 35
    new-instance v3, Landroid/os/Handler;

    .line 37
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-direct {v3, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    iput-object v3, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p4, p0, Lcom/android/server/media/AudioManagerRouteController;->mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;

    .line 47
    iput-object p6, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDeviceRouteChangedListener:Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;

    .line 49
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    .line 52
    move-result p2

    .line 53
    const/4 p3, 0x0

    .line 54
    if-nez p2, :cond_0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object p2

    .line 61
    const p4, 0x10e00e2

    .line 64
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_1

    .line 70
    const/4 p4, 0x1

    .line 71
    if-eq p2, p4, :cond_1

    .line 73
    const/4 p4, 0x2

    .line 74
    if-eq p2, p4, :cond_1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move p3, p2

    .line 78
    :goto_0
    iput p3, p0, Lcom/android/server/media/AudioManagerRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    .line 80
    new-instance p2, Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 82
    new-instance v6, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda4;

    .line 84
    invoke-direct {v6, p0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    .line 87
    new-instance v5, Lcom/android/server/media/BluetoothProfileMonitor;

    .line 89
    invoke-direct {v5, p1, p5}, Lcom/android/server/media/BluetoothProfileMonitor;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V

    .line 92
    move-object v1, p2

    .line 93
    move-object v2, p1

    .line 94
    move-object v4, p5

    .line 95
    invoke-direct/range {v1 .. v6}, Lcom/android/server/media/BluetoothDeviceRoutesManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothProfileMonitor;Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;)V

    .line 98
    iput-object p2, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 100
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutes()V

    .line 103
    return-void
.end method


# virtual methods
.method public final createMediaRoute2Info(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/media/MediaRoute2Info;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/media/AudioManagerRouteController;->AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 9
    if-nez p2, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object p3, p0, Lcom/android/server/media/AudioManagerRouteController;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object p3

    .line 25
    iget v0, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mNameResource:I

    .line 27
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 30
    move-result-object p3

    .line 31
    :cond_1
    if-nez p1, :cond_2

    .line 33
    iget-object p1, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mDefaultRouteId:Ljava/lang/String;

    .line 35
    :cond_2
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    .line 37
    invoke-direct {v0, p1, p3}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 40
    iget p1, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mMediaRoute2InfoType:I

    .line 42
    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2, p4}, Landroid/media/MediaRoute2Info$Builder;->setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 49
    move-result-object p2

    .line 50
    const/4 p3, 0x1

    .line 51
    invoke-virtual {p2, p3}, Landroid/media/MediaRoute2Info$Builder;->setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;

    .line 54
    move-result-object p2

    .line 55
    const-string p3, "android.media.route.feature.LIVE_AUDIO"

    .line 57
    invoke-virtual {p2, p3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 60
    move-result-object p2

    .line 61
    const-string p3, "android.media.route.feature.LOCAL_PLAYBACK"

    .line 63
    invoke-virtual {p2, p3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 66
    move-result-object p2

    .line 67
    const/4 p3, 0x2

    .line 68
    invoke-virtual {p2, p3}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    .line 71
    move-result-object p2

    .line 72
    if-ne p1, p3, :cond_3

    .line 74
    iget p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    .line 76
    invoke-virtual {p2, p0}, Landroid/media/MediaRoute2Info$Builder;->setSuitabilityStatus(I)Landroid/media/MediaRoute2Info$Builder;

    .line 79
    :cond_3
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public final createMediaRoute2InfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MediaRoute2Info;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->name()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v2, :cond_4

    .line 20
    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v2, v1, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAddressToBondedDevice:Ljava/util/Map;

    .line 25
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 31
    if-eqz v2, :cond_2

    .line 33
    iget-object v4, v1, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 35
    const/16 v5, 0x16

    .line 37
    invoke-virtual {v4, v2, v5}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_0

    .line 43
    const/16 v4, 0x1a

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/16 v5, 0x15

    .line 48
    invoke-virtual {v4, v2, v5}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 54
    const/16 v4, 0x17

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/16 v4, 0x8

    .line 59
    :goto_0
    invoke-virtual {v1, v2, v4}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getRouteIdForType(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    .line 62
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_4

    .line 66
    :cond_2
    move-object v2, v3

    .line 67
    :goto_1
    monitor-exit v1

    .line 68
    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 70
    monitor-enter v1

    .line 71
    :try_start_1
    iget-object v4, v1, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAddressToBondedDevice:Ljava/util/Map;

    .line 73
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 79
    if-eqz v4, :cond_3

    .line 81
    invoke-virtual {v1, v4}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 84
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    goto :goto_2

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    :goto_2
    monitor-exit v1

    .line 89
    move-object v1, v3

    .line 90
    move-object v3, v2

    .line 91
    goto :goto_5

    .line 92
    :goto_3
    monitor-exit v1

    .line 93
    throw p0

    .line 94
    :goto_4
    monitor-exit v1

    .line 95
    throw p0

    .line 96
    :cond_4
    :goto_5
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 99
    move-result p1

    .line 100
    invoke-virtual {p0, v3, p1, v1, v0}, Lcom/android/server/media/AudioManagerRouteController;->createMediaRoute2Info(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method

.method public final declared-synchronized getAvailableRoutes()Ljava/util/List;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    .line 4
    check-cast v0, Ljava/util/HashMap;

    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda1;

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, v2}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 20
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 27
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    .line 29
    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0

    .line 32
    throw v0
.end method

.method public final declared-synchronized getSelectedRoute()Landroid/media/MediaRoute2Info;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mSelectedRoute:Landroid/media/MediaRoute2Info;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final rebuildAvailableRoutes()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    iget-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 5
    sget-object v2, Lcom/android/server/media/AudioManagerRouteController;->MEDIA_USAGE_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 7
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x2

    .line 18
    if-eqz v2, :cond_0

    .line 20
    const-string v0, "MR2SystemProvider"

    .line 22
    const-string v2, "Unexpected empty list of output devices for media. Using built-in speakers."

    .line 24
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    move v0, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    move-result v2

    .line 33
    if-le v2, v4, :cond_1

    .line 35
    const-string v2, "MR2SystemProvider"

    .line 37
    const-string v6, "AudioManager.getDevicesForAttributes returned more than one element. Using the first one."

    .line 39
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 48
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 51
    move-result v0

    .line 52
    :goto_0
    iget-object v2, v1, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 57
    move-result-object v2

    .line 58
    iget-object v6, v1, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 60
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    new-instance v7, Ljava/util/ArrayList;

    .line 65
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v8, Ljava/util/HashSet;

    .line 70
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 73
    monitor-enter v6

    .line 74
    :try_start_0
    iget-object v9, v6, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    .line 76
    check-cast v9, Ljava/util/HashMap;

    .line 78
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 81
    move-result-object v9

    .line 82
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 85
    move-result-object v9

    .line 86
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v10

    .line 90
    if-eqz v10, :cond_3

    .line 92
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v10

    .line 96
    check-cast v10, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;

    .line 98
    iget-object v11, v10, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 100
    invoke-virtual {v11}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 103
    move-result-object v11

    .line 104
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    move-result v11

    .line 108
    if-eqz v11, :cond_2

    .line 110
    iget-object v10, v10, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 112
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    goto/16 :goto_5

    .line 119
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v6, v1, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 122
    const/4 v8, 0x3

    .line 123
    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 126
    move-result v6

    .line 127
    iget-object v9, v1, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 129
    invoke-virtual {v9, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 132
    move-result v8

    .line 133
    iget-object v9, v1, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 135
    invoke-virtual {v9}, Landroid/media/AudioManager;->isVolumeFixed()Z

    .line 138
    move-result v9

    .line 139
    monitor-enter p0

    .line 140
    :try_start_1
    iget-object v10, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    .line 142
    check-cast v10, Ljava/util/HashMap;

    .line 144
    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 147
    array-length v10, v2

    .line 148
    const/4 v11, 0x0

    .line 149
    move v12, v3

    .line 150
    move-object v13, v11

    .line 151
    :goto_2
    if-ge v12, v10, :cond_5

    .line 153
    aget-object v14, v2, v12

    .line 155
    invoke-virtual {v1, v14}, Lcom/android/server/media/AudioManagerRouteController;->createMediaRoute2InfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MediaRoute2Info;

    .line 158
    move-result-object v15

    .line 159
    if-eqz v15, :cond_4

    .line 161
    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 164
    move-result v14

    .line 165
    new-instance v4, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    .line 167
    invoke-direct {v4, v15, v14, v3}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;-><init>(Landroid/media/MediaRoute2Info;IZ)V

    .line 170
    iget-object v3, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    .line 172
    invoke-virtual {v15}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 175
    move-result-object v15

    .line 176
    check-cast v3, Ljava/util/HashMap;

    .line 178
    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    if-ne v0, v14, :cond_4

    .line 183
    move-object v13, v4

    .line 184
    goto :goto_3

    .line 185
    :catchall_1
    move-exception v0

    .line 186
    goto/16 :goto_4

    .line 188
    :cond_4
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 190
    const/4 v3, 0x0

    .line 191
    const/4 v4, 0x1

    .line 192
    goto :goto_2

    .line 193
    :cond_5
    iget-object v2, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    .line 195
    check-cast v2, Ljava/util/HashMap;

    .line 197
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_6

    .line 203
    const-string v2, "MR2SystemProvider"

    .line 205
    const-string v3, "Ended up with an empty list of routes. Creating a placeholder route."

    .line 207
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v1, v11, v5, v11, v11}, Lcom/android/server/media/AudioManagerRouteController;->createMediaRoute2Info(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    .line 213
    move-result-object v2

    .line 214
    new-instance v3, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    .line 216
    const/4 v4, 0x0

    .line 217
    invoke-direct {v3, v2, v5, v4}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;-><init>(Landroid/media/MediaRoute2Info;IZ)V

    .line 220
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 223
    move-result-object v2

    .line 224
    iget-object v4, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    .line 226
    check-cast v4, Ljava/util/HashMap;

    .line 228
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_6
    if-nez v13, :cond_7

    .line 233
    const-string v2, "MR2SystemProvider"

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    .line 237
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    const-string v4, "Could not map this selected device attribute type to an available route: "

    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    move-result-object v0

    .line 252
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    .line 257
    check-cast v0, Ljava/util/HashMap;

    .line 259
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 262
    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 266
    move-result-object v0

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    move-result-object v0

    .line 271
    move-object v13, v0

    .line 272
    check-cast v13, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    .line 274
    :cond_7
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    .line 279
    iget-object v2, v13, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    .line 281
    invoke-direct {v0, v2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 284
    const/4 v2, 0x1

    .line 285
    xor-int/2addr v2, v9

    .line 286
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v0, v6}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v0, v8}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    .line 301
    move-result-object v0

    .line 302
    new-instance v2, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    .line 304
    iget v3, v13, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mAudioDeviceInfoType:I

    .line 306
    iget-boolean v4, v13, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mCorrespondsToInactiveBluetoothRoute:Z

    .line 308
    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;-><init>(Landroid/media/MediaRoute2Info;IZ)V

    .line 311
    iget-object v3, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    .line 313
    iget-object v4, v13, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    .line 315
    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 318
    move-result-object v4

    .line 319
    check-cast v3, Ljava/util/HashMap;

    .line 321
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iput-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mSelectedRoute:Landroid/media/MediaRoute2Info;

    .line 326
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 329
    move-result-object v0

    .line 330
    new-instance v2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;

    .line 332
    invoke-direct {v2, v1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    .line 335
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 338
    move-result-object v0

    .line 339
    new-instance v2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda1;

    .line 341
    const/4 v3, 0x0

    .line 342
    invoke-direct {v2, v3}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 345
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 348
    move-result-object v0

    .line 349
    new-instance v2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda2;

    .line 351
    invoke-direct {v2, v1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    .line 354
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 357
    monitor-exit p0

    .line 358
    return-void

    .line 359
    :goto_4
    monitor-exit p0

    .line 360
    throw v0

    .line 361
    :goto_5
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    throw v0
.end method

.method public final rebuildAvailableRoutesAndNotify()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutes()V

    .line 4
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDeviceRouteChangedListener:Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;

    .line 6
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 8
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;

    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;I)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
.end method

.method public final start(Landroid/os/UserHandle;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 3
    iget-object v1, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 5
    iget-object v2, v1, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 7
    iget-object v3, v1, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    .line 9
    iget-object v4, v1, Lcom/android/server/media/BluetoothProfileMonitor;->mProfileListener:Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

    .line 11
    const/4 v5, 0x2

    .line 12
    invoke-virtual {v2, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 15
    iget-object v2, v1, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 17
    iget-object v3, v1, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    .line 19
    const/16 v5, 0x15

    .line 21
    invoke-virtual {v2, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 24
    iget-object v2, v1, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 26
    iget-object v1, v1, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    .line 28
    const/16 v3, 0x16

    .line 30
    invoke-virtual {v2, v1, v4, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 33
    new-instance v8, Landroid/content/IntentFilter;

    .line 35
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 40
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    iget-object v5, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    .line 45
    iget-object v6, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAdapterStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    move-object v7, p1

    .line 50
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 53
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 55
    const-string v2, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 57
    const-string v3, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    .line 59
    const-string v4, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    .line 61
    const-string v5, "android.bluetooth.device.action.ALIAS_CHANGED"

    .line 63
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 66
    move-result-object v9

    .line 67
    iget-object v6, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    .line 69
    iget-object v7, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mDeviceStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    .line 71
    const/4 v11, 0x0

    .line 72
    move-object v8, p1

    .line 73
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 76
    invoke-virtual {v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->updateBluetoothRoutes()V

    .line 79
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 81
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    .line 83
    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioDeviceCallback:Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;

    .line 85
    invoke-virtual {p1, v1, v0}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 88
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 90
    sget-object v1, Lcom/android/server/media/AudioRoutingUtils;->ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;

    .line 92
    new-instance v2, Landroid/os/HandlerExecutor;

    .line 94
    invoke-direct {v2, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 97
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDevicesForAttributesChangedListener:Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;

    .line 99
    invoke-virtual {p1, v1, v2, p0}, Landroid/media/AudioManager;->addOnDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;)V

    .line 102
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 3
    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDevicesForAttributesChangedListener:Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;

    .line 5
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->removeOnDevicesForAttributesChangedListener(Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 10
    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioDeviceCallback:Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;

    .line 12
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 15
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 17
    iget-object v1, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    .line 19
    iget-object v2, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAdapterStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 24
    iget-object v1, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    .line 26
    iget-object v0, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mDeviceStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    .line 28
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 31
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public final transferTo(Ljava/lang/String;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 3
    const-string p0, "MR2SystemProvider"

    .line 5
    const-string p1, "Unexpected call to AudioPoliciesDeviceRouteController#transferTo(null)"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_0
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    .line 14
    check-cast v0, Ljava/util/HashMap;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez v0, :cond_1

    .line 25
    const-string p0, "MR2SystemProvider"

    .line 27
    const-string/jumbo v0, "transferTo: Ignoring transfer request to unknown route id : "

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 38
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mCorrespondsToInactiveBluetoothRoute:Z

    .line 40
    if-eqz v1, :cond_2

    .line 42
    iget-object v0, v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    .line 44
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getAddress()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Object;I)V

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v1, Landroid/media/AudioDeviceAttributes;

    .line 57
    iget v0, v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mAudioDeviceInfoType:I

    .line 59
    const-string v2, ""

    .line 61
    const/4 v3, 0x2

    .line 62
    invoke-direct {v1, v3, v0, v2}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 65
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;

    .line 67
    const/4 v2, 0x1

    .line 68
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Object;I)V

    .line 71
    move-object v1, v0

    .line 72
    :goto_0
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;

    .line 74
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw p1
.end method

.method public final updateVolume(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    .line 4
    const/4 p0, 0x1

    .line 5
    return p0
.end method
