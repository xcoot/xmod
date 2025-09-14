.class public final Lcom/android/server/media/SystemMediaRoute2Provider;
.super Lcom/android/server/media/MediaRoute2Provider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

.field public final mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController;

.field public final mContext:Landroid/content/Context;

.field public mDefaultRoute:Landroid/media/MediaRoute2Info;

.field public mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

.field public final mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

.field public final mHandler:Landroid/os/Handler;

.field public mMusicShareDeviceRoute:Landroid/media/MediaRoute2Info;

.field public volatile mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

.field public volatile mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

.field public final mRequestLock:Ljava/lang/Object;

.field public mScreenMirroringRoute:Landroid/media/MediaRoute2Info;

.field public mSelectedRouteId:Ljava/lang/String;

.field public final mTransferLock:Ljava/lang/Object;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 3
    const-class v1, Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sput-object v0, Lcom/android/server/media/SystemMediaRoute2Provider;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Looper;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/android/server/media/SystemMediaRoute2Provider;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 3
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRoute2Provider;-><init>(Landroid/content/ComponentName;)V

    .line 6
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    .line 8
    invoke-direct {v0, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    .line 11
    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/lang/Object;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mTransferLock:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mMusicShareDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 30
    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mScreenMirroringRoute:Landroid/media/MediaRoute2Info;

    .line 32
    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    .line 35
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUser:Landroid/os/UserHandle;

    .line 39
    new-instance p2, Landroid/os/Handler;

    .line 41
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    .line 46
    const-string p2, "audio"

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/media/AudioManager;

    .line 54
    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    .line 56
    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;

    .line 58
    invoke-direct {v1, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    .line 61
    const-class v2, Landroid/bluetooth/BluetoothManager;

    .line 63
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Landroid/bluetooth/BluetoothManager;

    .line 69
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_1

    .line 75
    invoke-static {}, Lcom/android/media/flags/Flags;->enableAudioPoliciesDeviceAndBluetoothController()Z

    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_0

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-instance v3, Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 84
    invoke-direct {v3, p1, v2, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;)V

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    new-instance v3, Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

    .line 90
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 93
    :goto_1
    iput-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController;

    .line 95
    new-instance v10, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;

    .line 97
    invoke-direct {v10, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    .line 100
    const-class v1, Landroid/media/AudioManager;

    .line 102
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    move-result-object v1

    .line 106
    move-object v6, v1

    .line 107
    check-cast v6, Landroid/media/AudioManager;

    .line 109
    sget-object v1, Lcom/android/server/media/AudioRoutingUtils;->ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;

    .line 111
    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    .line 114
    move-result-object v1

    .line 115
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    move-result-object v1

    .line 119
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_3

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 131
    sget-object v3, Lcom/android/server/media/AudioRoutingUtils;->ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;

    .line 133
    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioProductStrategy;->supportsAudioAttributes(Landroid/media/AudioAttributes;)Z

    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_2

    .line 139
    move-object v8, v2

    .line 140
    goto :goto_2

    .line 141
    :cond_3
    move-object v8, v0

    .line 142
    :goto_2
    const-class v1, Landroid/bluetooth/BluetoothManager;

    .line 144
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 150
    if-eqz v1, :cond_4

    .line 152
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 155
    move-result-object v0

    .line 156
    :cond_4
    move-object v9, v0

    .line 157
    if-eqz v8, :cond_5

    .line 159
    if-eqz v9, :cond_5

    .line 161
    invoke-static {}, Lcom/android/media/flags/Flags;->enableAudioPoliciesDeviceAndBluetoothController()Z

    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_5

    .line 167
    new-instance p2, Lcom/android/server/media/AudioManagerRouteController;

    .line 169
    move-object v4, p2

    .line 170
    move-object v5, p1

    .line 171
    move-object v7, p3

    .line 172
    invoke-direct/range {v4 .. v10}, Lcom/android/server/media/AudioManagerRouteController;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;)V

    .line 175
    goto :goto_3

    .line 176
    :cond_5
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 179
    move-result-object p2

    .line 180
    invoke-static {p2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 183
    move-result-object p2

    .line 184
    new-instance p3, Lcom/android/server/media/LegacyDeviceRouteController;

    .line 186
    invoke-direct {p3, p1, v6, p2, v10}, Lcom/android/server/media/LegacyDeviceRouteController;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/IAudioService;Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;)V

    .line 189
    move-object p2, p3

    .line 190
    :goto_3
    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    .line 192
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    .line 195
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    .line 198
    return-void
.end method


# virtual methods
.method public final deselectRoute(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final generateDeviceRouteSelectedSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto/16 :goto_2

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    .line 22
    invoke-interface {v1}, Lcom/android/server/media/DeviceRouteController;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Landroid/media/RoutingSessionInfo$Builder;

    .line 28
    const-string v3, "SYSTEM_SESSION"

    .line 30
    invoke-direct {v2, v3, p1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 p1, 0x1

    .line 34
    invoke-virtual {v2, p1}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p1, v2}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 45
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController;

    .line 47
    invoke-interface {v2}, Lcom/android/server/media/BluetoothRouteController;->getAllBluetoothRoutes()Ljava/util/List;

    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v2

    .line 55
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 67
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p1, v3}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Lcom/android/media/flags/Flags;->enableAudioPoliciesDeviceAndBluetoothController()Z

    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 81
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    .line 83
    invoke-interface {v2}, Lcom/android/server/media/DeviceRouteController;->getAvailableRoutes()Ljava/util/List;

    .line 86
    move-result-object v2

    .line 87
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v2

    .line 91
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_3

    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 103
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 110
    move-result-object v5

    .line 111
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_2

    .line 117
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {p1, v3}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_4

    .line 131
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 133
    check-cast v1, Ljava/util/ArrayList;

    .line 135
    const/4 v2, 0x0

    .line 136
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 142
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    .line 145
    move-result v2

    .line 146
    invoke-virtual {p1, v2}, Landroid/media/RoutingSessionInfo$Builder;->setTransferReason(I)Landroid/media/RoutingSessionInfo$Builder;

    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v2, v3, v1}, Landroid/media/RoutingSessionInfo$Builder;->setTransferInitiator(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 161
    :cond_4
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 163
    invoke-virtual {p1, p0}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    .line 170
    move-result-object p0

    .line 171
    monitor-exit v0

    .line 172
    return-object p0

    .line 173
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    throw p0
.end method

.method public final getDebugString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 3
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    .line 9
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    const-string v0, "SystemMR2Provider - package: %s, selected route id: %s, bluetooth impl: %s"

    .line 25
    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final notifySessionInfoUpdated()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 23
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;

    .line 30
    const/4 v3, 0x5

    .line 31
    invoke-direct {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 34
    invoke-static {v2, v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method

.method public final prepareReleaseSession(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final releaseSession(JLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final reportPendingSessionRequestResultLockedIfNeeded(Landroid/media/RoutingSessionInfo;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 8
    iget-wide v0, v0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mRequestId:J

    .line 10
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 12
    iget-object v2, v2, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    const-string v4, "MR2SystemProvider"

    .line 23
    if-eqz v2, :cond_1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    const-string v5, "Session creation success to route "

    .line 29
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v5, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 34
    iget-object v5, v5, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    .line 36
    invoke-static {v2, v5, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 41
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 43
    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 45
    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController;

    .line 51
    invoke-interface {p1}, Lcom/android/server/media/BluetoothRouteController;->getAllBluetoothRoutes()Ljava/util/List;

    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object p1

    .line 59
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v2

    .line 63
    const/4 v5, 0x0

    .line 64
    if-eqz v2, :cond_3

    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 72
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 78
    iget-object v6, v6, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    .line 80
    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 86
    const/4 p1, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    move p1, v5

    .line 89
    :goto_0
    invoke-static {}, Lcom/android/media/flags/Flags;->enableWaitingStateForSystemSessionCreationRequest()Z

    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_5

    .line 95
    if-nez p1, :cond_4

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    const-string v0, "Session creation waiting state to route "

    .line 102
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 107
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    .line 109
    invoke-static {p1, p0, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    const-string v2, "Session creation failed to route "

    .line 117
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 122
    iget-object v2, v2, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    .line 124
    invoke-static {p1, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iput-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 129
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 131
    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 133
    invoke-virtual {p1, p0, v0, v1, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V

    .line 136
    :goto_2
    return-void
.end method

.method public final requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-wide v8, p1

    .line 3
    move-object/from16 v10, p4

    .line 5
    const-string v1, "DEFAULT_ROUTE"

    .line 7
    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    iget-object v1, v0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 15
    iget-object v2, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 17
    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 19
    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_1

    .line 30
    iget-object v1, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    .line 32
    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 38
    iget-object v1, v0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v3, v0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 43
    check-cast v3, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v1, v0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 54
    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 56
    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw v0

    .line 63
    :cond_1
    iget-object v11, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    .line 65
    monitor-enter v11

    .line 66
    :try_start_2
    iget-object v1, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 68
    if-eqz v1, :cond_2

    .line 70
    iget-object v1, v0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 72
    iget-object v3, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 74
    iget-wide v3, v3, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mRequestId:J

    .line 76
    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 78
    invoke-virtual {v1, p0, v3, v4, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V

    .line 81
    goto :goto_0

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    :goto_0
    new-instance v12, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 86
    const/4 v5, 0x0

    .line 87
    move-object v1, v12

    .line 88
    move-wide v2, p1

    .line 89
    move-object/from16 v4, p4

    .line 91
    move-object/from16 v6, p7

    .line 93
    move-object/from16 v7, p8

    .line 95
    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;-><init>(JLjava/lang/String;ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 98
    iput-object v12, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 100
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    const-string v6, "SYSTEM_SESSION"

    .line 103
    move-object v1, p0

    .line 104
    move-wide v2, p1

    .line 105
    move-object/from16 v4, p7

    .line 107
    move-object/from16 v5, p8

    .line 109
    move-object/from16 v7, p4

    .line 111
    move/from16 v8, p6

    .line 113
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/SystemMediaRoute2Provider;->transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    return-void

    .line 117
    :goto_1
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    throw v0
.end method

.method public final selectRoute(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setRouteVolume(ILjava/lang/String;J)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    .line 3
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    .line 12
    const/4 p2, 0x3

    .line 13
    const/4 p3, 0x0

    .line 14
    invoke-virtual {p0, p2, p1, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 17
    return-void
.end method

.method public final setSessionVolume(ILjava/lang/String;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    .line 4
    invoke-interface {v1}, Lcom/android/server/media/DeviceRouteController;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "DEFAULT_ROUTE"

    .line 14
    move-object/from16 v3, p6

    .line 16
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 22
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 28
    move-object v9, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v0, "MR2SystemProvider"

    .line 32
    const-string v1, "Ignoring transfer to DEFAULT_ROUTE"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 38
    :cond_1
    move-object v9, v3

    .line 39
    :goto_0
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 45
    iget-object v10, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mTransferLock:Ljava/lang/Object;

    .line 47
    monitor-enter v10

    .line 48
    :try_start_0
    new-instance v11, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 50
    move-object v2, v11

    .line 51
    move-wide v3, p1

    .line 52
    move-object v5, v9

    .line 53
    move/from16 v6, p7

    .line 55
    move-object v7, p3

    .line 56
    move-object/from16 v8, p4

    .line 58
    invoke-direct/range {v2 .. v8}, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;-><init>(JLjava/lang/String;ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 61
    iput-object v11, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 63
    monitor-exit v10

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v0

    .line 68
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    .line 70
    invoke-interface {v2}, Lcom/android/server/media/DeviceRouteController;->getAvailableRoutes()Ljava/util/List;

    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 77
    move-result-object v2

    .line 78
    new-instance v3, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;

    .line 80
    invoke-direct {v3, v9}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 86
    move-result v2

    .line 87
    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 90
    move-result v1

    .line 91
    const/4 v3, 0x0

    .line 92
    if-nez v1, :cond_4

    .line 94
    if-eqz v2, :cond_3

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    iget-object v1, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    .line 99
    invoke-interface {v1, v3}, Lcom/android/server/media/DeviceRouteController;->transferTo(Ljava/lang/String;)V

    .line 102
    iget-object v1, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController;

    .line 104
    invoke-interface {v1, v9}, Lcom/android/server/media/BluetoothRouteController;->transferTo(Ljava/lang/String;)V

    .line 107
    goto :goto_3

    .line 108
    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    .line 110
    invoke-interface {v1, v9}, Lcom/android/server/media/DeviceRouteController;->transferTo(Ljava/lang/String;)V

    .line 113
    iget-object v1, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController;

    .line 115
    invoke-interface {v1, v3}, Lcom/android/server/media/BluetoothRouteController;->transferTo(Ljava/lang/String;)V

    .line 118
    :goto_3
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_5

    .line 124
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_5

    .line 130
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifySessionInfoUpdated()V

    .line 133
    :cond_5
    return-void
.end method

.method public final updateDiscoveryPreference(Ljava/util/Set;Landroid/media/RouteDiscoveryPreference;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateProviderState()V
    .locals 3

    .line 1
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 3
    invoke-direct {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/media/flags/Flags;->enableAudioPoliciesDeviceAndBluetoothController()Z

    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    .line 12
    if-eqz v1, :cond_1

    .line 14
    invoke-interface {v2}, Lcom/android/server/media/DeviceRouteController;->getAvailableRoutes()Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 34
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRoute2Provider;->setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-interface {v2}, Lcom/android/server/media/DeviceRouteController;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 53
    :goto_1
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mMusicShareDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 55
    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mScreenMirroringRoute:Landroid/media/MediaRoute2Info;

    .line 62
    if-eqz v1, :cond_3

    .line 64
    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController;

    .line 69
    invoke-interface {v1}, Lcom/android/server/media/BluetoothRouteController;->getAllBluetoothRoutes()Ljava/util/List;

    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v1

    .line 77
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_4

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 89
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRoute2Provider;->setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "Updating system provider info : "

    .line 104
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    const-string v0, "MR2SystemProvider"

    .line 116
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public final updateSessionInfosIfNeeded()Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 16
    move-object v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 20
    check-cast v1, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 28
    :goto_0
    new-instance v4, Landroid/media/RoutingSessionInfo$Builder;

    .line 30
    const-string v5, "SYSTEM_SESSION"

    .line 32
    const-string v6, ""

    .line 34
    invoke-direct {v4, v5, v6}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v5, 0x1

    .line 38
    invoke-virtual {v4, v5}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    .line 41
    move-result-object v4

    .line 42
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    .line 44
    invoke-interface {v6}, Lcom/android/server/media/DeviceRouteController;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    .line 47
    move-result-object v6

    .line 48
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController;

    .line 50
    invoke-interface {v7}, Lcom/android/server/media/BluetoothRouteController;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    .line 53
    move-result-object v7

    .line 54
    new-instance v8, Ljava/util/ArrayList;

    .line 56
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 59
    if-eqz v7, :cond_1

    .line 61
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    move-object v6, v7

    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto/16 :goto_9

    .line 73
    :cond_1
    :goto_1
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 76
    move-result-object v7

    .line 77
    iput-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    .line 79
    new-instance v7, Landroid/media/MediaRoute2Info$Builder;

    .line 81
    const-string v9, "DEFAULT_ROUTE"

    .line 83
    invoke-direct {v7, v9, v6}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 86
    invoke-virtual {v7, v5}, Landroid/media/MediaRoute2Info$Builder;->setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;

    .line 89
    move-result-object v7

    .line 90
    iget-object v9, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 92
    invoke-virtual {v7, v9}, Landroid/media/MediaRoute2Info$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v7}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    .line 99
    move-result-object v7

    .line 100
    iput-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 102
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    .line 104
    invoke-virtual {v4, v7}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 107
    invoke-static {}, Lcom/android/media/flags/Flags;->enableAudioPoliciesDeviceAndBluetoothController()Z

    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_3

    .line 113
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    .line 115
    invoke-interface {v7}, Lcom/android/server/media/DeviceRouteController;->getAvailableRoutes()Ljava/util/List;

    .line 118
    move-result-object v7

    .line 119
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    move-result-object v7

    .line 123
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    move-result v9

    .line 127
    if-eqz v9, :cond_3

    .line 129
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    move-result-object v9

    .line 133
    check-cast v9, Landroid/media/MediaRoute2Info;

    .line 135
    invoke-virtual {v9}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 138
    move-result-object v9

    .line 139
    iget-object v10, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    .line 141
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v10

    .line 145
    if-nez v10, :cond_2

    .line 147
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    goto :goto_2

    .line 151
    :cond_3
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController;

    .line 153
    invoke-interface {v7}, Lcom/android/server/media/BluetoothRouteController;->getTransferableRoutes()Ljava/util/List;

    .line 156
    move-result-object v7

    .line 157
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 160
    move-result-object v7

    .line 161
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    move-result v9

    .line 165
    if-eqz v9, :cond_4

    .line 167
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    move-result-object v9

    .line 171
    check-cast v9, Landroid/media/MediaRoute2Info;

    .line 173
    invoke-virtual {v9}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 176
    move-result-object v9

    .line 177
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    goto :goto_3

    .line 181
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    move-result-object v7

    .line 185
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    move-result v9

    .line 189
    if-eqz v9, :cond_5

    .line 191
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    move-result-object v9

    .line 195
    check-cast v9, Ljava/lang/String;

    .line 197
    invoke-virtual {v4, v9}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 200
    goto :goto_4

    .line 201
    :cond_5
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    .line 204
    move-result v7

    .line 205
    if-eqz v7, :cond_a

    .line 207
    if-eqz v1, :cond_7

    .line 209
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 212
    move-result-object v7

    .line 213
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    .line 216
    move-result-object v9

    .line 217
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 220
    move-result v10

    .line 221
    if-ne v10, v5, :cond_6

    .line 223
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    move-result-object v9

    .line 227
    check-cast v9, Ljava/lang/String;

    .line 229
    invoke-static {v9}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    move-result-object v9

    .line 233
    if-eqz v9, :cond_7

    .line 235
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    move-result v7

    .line 239
    if-eqz v7, :cond_7

    .line 241
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    .line 244
    move-result v7

    .line 245
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    .line 248
    move-result-object v9

    .line 249
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    .line 252
    move-result-object v10

    .line 253
    goto :goto_5

    .line 254
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 256
    const-string v1, "Selected routes list should contain only 1 route id."

    .line 258
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 261
    throw p0

    .line 262
    :cond_7
    move v7, v2

    .line 263
    move-object v9, v3

    .line 264
    move-object v10, v9

    .line 265
    :goto_5
    iget-object v11, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mTransferLock:Ljava/lang/Object;

    .line 267
    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :try_start_1
    iget-object v12, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 270
    if-eqz v12, :cond_9

    .line 272
    iget-object v12, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 274
    iget-object v12, v12, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    .line 276
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    .line 279
    move-result-object v6

    .line 280
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    move-result v6

    .line 284
    iget-object v12, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 286
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    invoke-interface {v8}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 292
    move-result-object v8

    .line 293
    iget-object v12, v12, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    .line 295
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v13, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest$$ExternalSyntheticLambda1;

    .line 300
    invoke-direct {v13, v12}, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-interface {v8, v13}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 306
    move-result v8

    .line 307
    if-eqz v6, :cond_8

    .line 309
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 311
    iget v7, v6, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferReason:I

    .line 313
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 315
    iget-object v9, v6, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    .line 317
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 319
    iget-object v10, v6, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferInitiatorPackageName:Ljava/lang/String;

    .line 321
    iput-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 323
    goto :goto_6

    .line 324
    :catchall_1
    move-exception p0

    .line 325
    goto :goto_7

    .line 326
    :cond_8
    if-nez v8, :cond_9

    .line 328
    iput-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 330
    :cond_9
    :goto_6
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 331
    :try_start_2
    invoke-virtual {v4, v7}, Landroid/media/RoutingSessionInfo$Builder;->setTransferReason(I)Landroid/media/RoutingSessionInfo$Builder;

    .line 334
    move-result-object v3

    .line 335
    invoke-virtual {v3, v9, v10}, Landroid/media/RoutingSessionInfo$Builder;->setTransferInitiator(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    goto :goto_8

    .line 339
    :goto_7
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 340
    :try_start_4
    throw p0

    .line 341
    :cond_a
    :goto_8
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 343
    invoke-virtual {v4, v3}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 346
    move-result-object v3

    .line 347
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    .line 350
    move-result-object v3

    .line 351
    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    .line 353
    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 354
    :try_start_5
    invoke-virtual {p0, v3}, Lcom/android/server/media/SystemMediaRoute2Provider;->reportPendingSessionRequestResultLockedIfNeeded(Landroid/media/RoutingSessionInfo;)V

    .line 357
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 358
    :try_start_6
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_b

    .line 364
    monitor-exit v0

    .line 365
    return v2

    .line 366
    :cond_b
    const-string v1, "MR2SystemProvider"

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    .line 370
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    const-string v4, "Updating system routing session info : "

    .line 375
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    move-result-object v2

    .line 385
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 390
    check-cast v1, Ljava/util/ArrayList;

    .line 392
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 395
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 397
    check-cast v1, Ljava/util/ArrayList;

    .line 399
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v1, Landroid/media/RoutingSessionInfo$Builder;

    .line 404
    const-string v2, "SYSTEM_SESSION"

    .line 406
    const-string v4, ""

    .line 408
    invoke-direct {v1, v2, v4}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 413
    invoke-virtual {v1, v2}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 416
    move-result-object v1

    .line 417
    invoke-virtual {v1, v5}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    .line 420
    move-result-object v1

    .line 421
    const-string v2, "DEFAULT_ROUTE"

    .line 423
    invoke-virtual {v1, v2}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 426
    move-result-object v1

    .line 427
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    .line 430
    move-result v2

    .line 431
    invoke-virtual {v1, v2}, Landroid/media/RoutingSessionInfo$Builder;->setTransferReason(I)Landroid/media/RoutingSessionInfo$Builder;

    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    .line 438
    move-result-object v2

    .line 439
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    .line 442
    move-result-object v3

    .line 443
    invoke-virtual {v1, v2, v3}, Landroid/media/RoutingSessionInfo$Builder;->setTransferInitiator(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 446
    move-result-object v1

    .line 447
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    .line 450
    move-result-object v1

    .line 451
    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 453
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 454
    return v5

    .line 455
    :catchall_2
    move-exception p0

    .line 456
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 457
    :try_start_8
    throw p0

    .line 458
    :goto_9
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 459
    throw p0
.end method

.method public final updateVolume()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    .line 10
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 16
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getVolume()I

    .line 19
    move-result v2

    .line 20
    if-eq v2, v1, :cond_0

    .line 22
    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    .line 24
    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 26
    invoke-direct {v2, v3}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 29
    invoke-virtual {v2, v1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    .line 36
    move-result-object v2

    .line 37
    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController;

    .line 41
    invoke-interface {v2, v0, v1}, Lcom/android/server/media/BluetoothRouteController;->updateVolumeForDevices(II)Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 47
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    .line 50
    invoke-interface {v0, v1}, Lcom/android/server/media/DeviceRouteController;->updateVolume(I)Z

    .line 53
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    .line 56
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    .line 59
    return-void
.end method
