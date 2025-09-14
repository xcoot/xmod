.class public final Lcom/android/server/audio/AudioDeviceInventory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

.field public static final CAPTURE_PRESETS:[I

.field public static final DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;


# instance fields
.field public final mApmConnectedDevices:Ljava/util/ArrayList;

.field public final mAppliedPresetRoles:Landroid/util/ArrayMap;

.field public final mAppliedPresetRolesInt:Landroid/util/ArrayMap;

.field public final mAppliedStrategyRoles:Landroid/util/ArrayMap;

.field public final mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public final mBluetoothDualModeEnabled:Z

.field public final mConnectedDevices:Ljava/util/LinkedHashMap;

.field public final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field public final mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

.field public final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field public final mDeviceInventory:Ljava/util/LinkedHashMap;

.field public final mDeviceInventoryLock:Ljava/lang/Object;

.field public final mDevicesLock:Ljava/lang/Object;

.field public mForcePath:Ljava/lang/String;

.field public final mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

.field public final mNonDefaultDevices:Landroid/util/ArrayMap;

.field public final mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

.field public final mPreferredDevices:Landroid/util/ArrayMap;

.field public final mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

.field public final mRoutesObservers:Landroid/os/RemoteCallbackList;

.field public final mStrategies:Ljava/util/List;

.field public mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    const/16 v2, 0x8

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    const/high16 v3, 0x20000

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    .line 36
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    const/4 v0, 0x7

    .line 40
    new-array v0, v0, [I

    .line 42
    fill-array-data v0, :array_0

    .line 45
    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->CAPTURE_PRESETS:[I

    .line 47
    new-instance v0, Ljava/util/HashSet;

    .line 49
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 52
    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    .line 54
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    const/16 v1, 0x400

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    const/16 v1, 0x800

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    const/high16 v1, 0x8000000

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    const/high16 v1, 0x20000000

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    const v1, 0x20000002

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v1

    .line 106
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 111
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 117
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    .line 119
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 122
    return-void

    .line 123
    :array_0
    .array-data 4
        0x1
        0x5
        0x6
        0x7
        0x9
        0xa
        0x7cf
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v1, Ljava/lang/Object;

    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 15
    new-instance v1, Ljava/lang/Object;

    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    .line 22
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 24
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 29
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$1;

    .line 31
    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceInventory$1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    .line 34
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    .line 43
    new-instance v1, Landroid/util/ArrayMap;

    .line 45
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 50
    new-instance v1, Landroid/util/ArrayMap;

    .line 52
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 57
    new-instance v1, Landroid/util/ArrayMap;

    .line 59
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    .line 64
    new-instance v1, Landroid/media/AudioRoutesInfo;

    .line 66
    invoke-direct {v1}, Landroid/media/AudioRoutesInfo;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 71
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 73
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 78
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 80
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 83
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 85
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 87
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 90
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 92
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 94
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 97
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    .line 99
    new-instance v1, Landroid/util/ArrayMap;

    .line 101
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 104
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    .line 106
    new-instance v1, Landroid/util/ArrayMap;

    .line 108
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 111
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    .line 113
    new-instance v1, Landroid/util/ArrayMap;

    .line 115
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 118
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    .line 120
    new-instance v1, Landroid/util/ArrayMap;

    .line 122
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 125
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    .line 127
    const/4 v1, 0x0

    .line 128
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mSystemReady:Z

    .line 130
    const-string v2, ""

    .line 132
    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mForcePath:Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 136
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 138
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    .line 141
    move-result-object p1

    .line 142
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mStrategies:Ljava/util/List;

    .line 144
    const-string/jumbo p1, "persist.bluetooth.enable_dual_mode_audio"

    .line 147
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 150
    move-result p1

    .line 151
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBluetoothDualModeEnabled:Z

    .line 153
    return-void
.end method

.method public static addDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;ILjava/util/List;)I
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/util/Pair;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v3

    .line 13
    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 32
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/util/List;

    .line 38
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p3

    .line 42
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 48
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Landroid/media/AudioDeviceAttributes;

    .line 54
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_0

    .line 60
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 72
    move-result p3

    .line 73
    if-eqz p3, :cond_3

    .line 75
    monitor-exit p0

    .line 76
    const/4 p0, 0x0

    .line 77
    return p0

    .line 78
    :cond_3
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->deviceRoleAction(IILjava/util/List;)I

    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_4

    .line 84
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_4
    monitor-exit p0

    .line 91
    return p1

    .line 92
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p1
.end method

.method public static isBtStateConnected(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p0, v0, :cond_1

    .line 6
    const/16 v0, 0x63

    .line 8
    if-ne p0, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 14
    :goto_1
    return p0
.end method

.method public static purgeRoles(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x3

    .line 3
    :try_start_0
    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/util/Pair;

    .line 33
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/util/List;

    .line 39
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v3

    .line 43
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroid/media/AudioDeviceAttributes;

    .line 55
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 58
    move-result-object v5

    .line 59
    new-instance v6, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;

    .line 61
    const/4 v7, 0x0

    .line 62
    invoke-direct {v6, v7, v4}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;-><init>(ILjava/lang/Object;)V

    .line 65
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 68
    move-result-object v5

    .line 69
    new-instance v6, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;

    .line 71
    const/4 v7, 0x1

    .line 72
    invoke-direct {v6, v7, v4}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;-><init>(ILjava/lang/Object;)V

    .line 75
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 78
    move-result-object v5

    .line 79
    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 82
    move-result-object v5

    .line 83
    const/4 v6, 0x0

    .line 84
    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Landroid/media/AudioDeviceInfo;

    .line 90
    if-nez v5, :cond_1

    .line 92
    const-string v5, "AS.AudioDeviceInventory"

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string/jumbo v7, "purgeRoles() removing device: "

    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->toString()Ljava/lang/String;

    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v7, ", for strategy: "

    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 119
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v7, " and role: "

    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v6

    .line 136
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 141
    check-cast v5, Ljava/lang/Integer;

    .line 143
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 146
    move-result v5

    .line 147
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 149
    check-cast v6, Ljava/lang/Integer;

    .line 151
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 154
    move-result v6

    .line 155
    const/4 v7, 0x1

    .line 156
    new-array v7, v7, [Landroid/media/AudioDeviceAttributes;

    .line 158
    const/4 v8, 0x0

    .line 159
    aput-object v4, v7, v8

    .line 161
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {p1, v5, v6, v4}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->deviceRoleAction(IILjava/util/List;)I

    .line 168
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 171
    goto :goto_1

    .line 172
    :catchall_0
    move-exception p1

    .line 173
    goto :goto_2

    .line 174
    :cond_2
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Ljava/util/List;

    .line 180
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_0

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 189
    goto/16 :goto_0

    .line 191
    :cond_3
    monitor-exit p0

    .line 192
    return-void

    .line 193
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    throw p1
.end method

.method public static removeDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;ILjava/util/List;)I
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/util/Pair;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v3

    .line 13
    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 22
    monitor-exit p0

    .line 23
    const/4 p0, -0x2

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/List;

    .line 33
    new-instance v3, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p3

    .line 42
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 48
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Landroid/media/AudioDeviceAttributes;

    .line 54
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_1

    .line 60
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_3

    .line 70
    monitor-exit p0

    .line 71
    const/4 p0, 0x0

    .line 72
    return p0

    .line 73
    :cond_3
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->deviceRoleAction(IILjava/util/List;)I

    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_5

    .line 79
    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 82
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_4

    .line 88
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_5
    :goto_1
    monitor-exit p0

    .line 96
    return p1

    .line 97
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p1
.end method

.method public static setDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;ILjava/util/List;)I
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/util/Pair;

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v3

    .line 13
    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_3

    .line 23
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/List;

    .line 29
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 32
    move-result v4

    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 36
    move-result v5

    .line 37
    if-eq v4, v5, :cond_0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v4

    .line 44
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Landroid/media/AudioDeviceAttributes;

    .line 56
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v6

    .line 60
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_4

    .line 66
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Landroid/media/AudioDeviceAttributes;

    .line 72
    invoke-virtual {v5, v7}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_1

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    monitor-exit p0

    .line 80
    return v3

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 89
    monitor-exit p0

    .line 90
    return v3

    .line 91
    :cond_4
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_5

    .line 97
    const/4 p1, 0x0

    .line 98
    invoke-virtual {p2, p3, v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->deviceRoleAction(IILjava/util/List;)I

    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_6

    .line 104
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    invoke-virtual {p1, p3, v2, p4}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->deviceRoleAction(IILjava/util/List;)I

    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_6

    .line 114
    new-instance p2, Ljava/util/ArrayList;

    .line 116
    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_6
    :goto_2
    monitor-exit p0

    .line 123
    return p1

    .line 124
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p1
.end method


# virtual methods
.method public final addAudioDeviceInInventoryIfNeeded(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/media/AudioSystem;->isBluetoothOutDevice(I)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    .line 17
    if-eqz p5, :cond_1

    .line 19
    invoke-virtual {p0, p5, p2}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 28
    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    .line 31
    move-result p1

    .line 32
    if-eq p1, p4, :cond_3

    .line 34
    if-nez p3, :cond_2

    .line 36
    if-eqz p4, :cond_3

    .line 38
    :cond_2
    invoke-virtual {v1, p4}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 41
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-virtual {p1, v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 47
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 49
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 52
    :cond_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 54
    const/16 p1, 0x3a

    .line 56
    const/4 p2, 0x2

    .line 57
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :cond_4
    new-instance p3, Lcom/android/server/audio/AdiDeviceState;

    .line 64
    invoke-static {p2}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    .line 67
    move-result p5

    .line 68
    invoke-direct {p3, p5, p2, p1}, Lcom/android/server/audio/AdiDeviceState;-><init>(IILjava/lang/String;)V

    .line 71
    invoke-virtual {p3, p4}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 74
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 76
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object p2, p3, Lcom/android/server/audio/AdiDeviceState;->mDeviceId:Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    :try_start_2
    monitor-exit p3

    .line 80
    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceInventorySize_l()V

    .line 86
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 88
    const/4 p2, 0x1

    .line 89
    invoke-virtual {p1, p3, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 92
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 94
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 97
    monitor-exit v0

    .line 98
    return-void

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    monitor-exit p3

    .line 101
    throw p0

    .line 102
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    throw p0
.end method

.method public final addDevicesRoleForStrategy(IZLjava/util/List;)I
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    .line 8
    :goto_0
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 14
    invoke-static {p2, v0, p1, p3}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;ILjava/util/List;)I

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final addOrUpdateAudioDeviceCategoryInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 7
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    invoke-static {}, Landroid/media/audio/Flags;->automaticBtDeviceType()Z

    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->updateAudioDeviceCategory()Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 31
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    iget-object v4, p1, Lcom/android/server/audio/AdiDeviceState;->mDeviceId:Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :try_start_2
    monitor-exit p1

    .line 35
    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;

    .line 37
    invoke-direct {v5, v0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 40
    invoke-virtual {v3, v4, p1, v5}, Ljava/util/LinkedHashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/android/server/audio/AdiDeviceState;

    .line 46
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceInventorySize_l()V

    .line 49
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 58
    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 61
    :cond_1
    if-eqz p2, :cond_2

    .line 63
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 65
    const/16 p2, 0x3a

    .line 67
    const/4 v0, 0x2

    .line 68
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 71
    :cond_2
    return-void

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    :try_start_3
    monitor-exit p1

    .line 74
    throw p0

    .line 75
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    throw p0
.end method

.method public final addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 6
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v2, p1, Lcom/android/server/audio/AdiDeviceState;->mDeviceId:Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    monitor-exit p1

    .line 10
    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda7;

    .line 12
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {v1, v2, p1, v3}, Ljava/util/LinkedHashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceInventorySize_l()V

    .line 21
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    if-eqz p2, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 26
    const/16 p2, 0x3a

    .line 28
    const/4 v0, 0x2

    .line 29
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 32
    :cond_0
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :catchall_1
    move-exception p0

    .line 36
    :try_start_3
    monitor-exit p1

    .line 37
    throw p0

    .line 38
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    throw p0
.end method

.method public final applyConnectedDevicesRoles_l()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-boolean v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mBluetoothDualModeEnabled:Z

    .line 5
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_UNICAST_SET:Ljava/util/Set;

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Landroid/media/AudioSystem;->DEVICE_IN_ALL_BLE_SET:Ljava/util/Set;

    .line 16
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 22
    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 25
    move-result-object v3

    .line 26
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    .line 28
    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 31
    move-result-object v4

    .line 32
    sget-object v5, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;

    .line 34
    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 37
    move-result-object v5

    .line 38
    const-string v7, "audio_mode_output_only"

    .line 40
    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {v1, v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isModeEnabled(Ljava/lang/String;)Z

    .line 45
    move-result v9

    .line 46
    if-eqz v9, :cond_1

    .line 48
    const/4 v9, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v9, 0x0

    .line 51
    :goto_0
    const-string v10, "audio_mode_duplex"

    .line 53
    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {v1, v10}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isModeEnabled(Ljava/lang/String;)Z

    .line 58
    move-result v11

    .line 59
    if-nez v11, :cond_3

    .line 61
    :cond_2
    if-eqz v2, :cond_4

    .line 63
    invoke-virtual {v2, v10}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isModeEnabled(Ljava/lang/String;)Z

    .line 66
    move-result v11

    .line 67
    if-eqz v11, :cond_4

    .line 69
    :cond_3
    const/4 v11, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    const/4 v11, 0x0

    .line 72
    :goto_1
    iget-object v12, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 74
    iget-object v13, v12, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    .line 76
    const/4 v14, 0x0

    .line 77
    if-nez v13, :cond_5

    .line 79
    goto :goto_2

    .line 80
    :cond_5
    invoke-virtual {v12}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    .line 83
    move-result v13

    .line 84
    if-eqz v13, :cond_6

    .line 86
    iget-object v13, v12, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    .line 88
    if-eqz v13, :cond_6

    .line 90
    new-instance v14, Landroid/media/AudioDeviceAttributes;

    .line 92
    iget-object v13, v12, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    .line 94
    invoke-direct {v14, v13}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 97
    :cond_6
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    .line 99
    const-string v15, "applyConnectedDevicesRoles_l\n - leOutDevice: "

    .line 101
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "\n - leInDevice: "

    .line 109
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "\n - a2dpDevice: "

    .line 117
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "\n - scoOutDevice: "

    .line 125
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "\n - scoInDevice: "

    .line 133
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, "\n - disableA2dp: "

    .line 141
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ", disableSco: "

    .line 149
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "AS.AudioDeviceInventory"

    .line 154
    invoke-static {v1, v13, v11}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 157
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 159
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 162
    move-result-object v2

    .line 163
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 166
    move-result-object v2

    .line 167
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_16

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    move-result-object v3

    .line 177
    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 179
    iget v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 181
    invoke-static {v4}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 184
    move-result v4

    .line 185
    if-nez v4, :cond_7

    .line 187
    goto :goto_3

    .line 188
    :cond_7
    new-instance v4, Landroid/media/AudioDeviceAttributes;

    .line 190
    iget v5, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 192
    iget-object v13, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 194
    iget-object v15, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 196
    invoke-direct {v4, v5, v13, v15}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v4, v14}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    .line 202
    move-result v13

    .line 203
    if-eqz v13, :cond_8

    .line 205
    goto :goto_3

    .line 206
    :cond_8
    invoke-static {v5}, Landroid/media/AudioSystem;->isBluetoothOutDevice(I)Z

    .line 209
    move-result v13

    .line 210
    const-string v15, ", disable: "

    .line 212
    if-eqz v13, :cond_10

    .line 214
    iget-object v13, v0, Lcom/android/server/audio/AudioDeviceInventory;->mStrategies:Ljava/util/List;

    .line 216
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 219
    move-result-object v13

    .line 220
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    move-result v16

    .line 224
    if-eqz v16, :cond_10

    .line 226
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    move-result-object v16

    .line 230
    check-cast v16, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 232
    invoke-virtual/range {v16 .. v16}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    .line 235
    move-result v8

    .line 236
    iget v6, v12, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 238
    if-ne v8, v6, :cond_b

    .line 240
    invoke-static {v5}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    .line 243
    move-result v6

    .line 244
    if-eqz v6, :cond_a

    .line 246
    if-nez v11, :cond_9

    .line 248
    invoke-virtual {v3, v10}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isModeEnabled(Ljava/lang/String;)Z

    .line 251
    move-result v6

    .line 252
    if-nez v6, :cond_e

    .line 254
    :cond_9
    :goto_5
    const/4 v6, 0x1

    .line 255
    goto :goto_8

    .line 256
    :cond_a
    invoke-static {v5}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    .line 259
    move-result v6

    .line 260
    if-eqz v6, :cond_e

    .line 262
    invoke-virtual {v3, v10}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isModeEnabled(Ljava/lang/String;)Z

    .line 265
    move-result v6

    .line 266
    :goto_6
    const/4 v8, 0x1

    .line 267
    :goto_7
    xor-int/2addr v6, v8

    .line 268
    goto :goto_8

    .line 269
    :cond_b
    invoke-static {v5}, Landroid/media/AudioSystem;->isBluetoothA2dpOutDevice(I)Z

    .line 272
    move-result v6

    .line 273
    if-eqz v6, :cond_c

    .line 275
    if-nez v9, :cond_9

    .line 277
    invoke-virtual {v3, v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isModeEnabled(Ljava/lang/String;)Z

    .line 280
    move-result v6

    .line 281
    if-nez v6, :cond_e

    .line 283
    goto :goto_5

    .line 284
    :cond_c
    invoke-static {v5}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    .line 287
    move-result v6

    .line 288
    if-eqz v6, :cond_d

    .line 290
    invoke-virtual {v3, v10}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isModeEnabled(Ljava/lang/String;)Z

    .line 293
    move-result v6

    .line 294
    goto :goto_6

    .line 295
    :cond_d
    const/4 v8, 0x1

    .line 296
    invoke-static {v5}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    .line 299
    move-result v6

    .line 300
    if-eqz v6, :cond_e

    .line 302
    invoke-virtual {v3, v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isModeEnabled(Ljava/lang/String;)Z

    .line 305
    move-result v6

    .line 306
    goto :goto_7

    .line 307
    :cond_e
    const/4 v6, 0x0

    .line 308
    :goto_8
    new-instance v8, Ljava/lang/StringBuilder;

    .line 310
    move-object/from16 v18, v2

    .line 312
    const-string v2, "     - strategy: "

    .line 314
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {v16 .. v16}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    .line 320
    move-result v2

    .line 321
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    move-result-object v2

    .line 334
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-eqz v6, :cond_f

    .line 339
    invoke-virtual/range {v16 .. v16}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    .line 342
    move-result v2

    .line 343
    const/4 v6, 0x1

    .line 344
    new-array v8, v6, [Landroid/media/AudioDeviceAttributes;

    .line 346
    const/16 v17, 0x0

    .line 348
    aput-object v4, v8, v17

    .line 350
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 353
    move-result-object v8

    .line 354
    invoke-virtual {v0, v2, v6, v8}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRoleForStrategy(IZLjava/util/List;)I

    .line 357
    move-object/from16 v16, v7

    .line 359
    move/from16 v19, v9

    .line 361
    goto :goto_9

    .line 362
    :cond_f
    const/4 v6, 0x1

    .line 363
    const/16 v17, 0x0

    .line 365
    invoke-virtual/range {v16 .. v16}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    .line 368
    move-result v2

    .line 369
    new-array v8, v6, [Landroid/media/AudioDeviceAttributes;

    .line 371
    aput-object v4, v8, v17

    .line 373
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 376
    move-result-object v6

    .line 377
    iget-object v8, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    .line 379
    move-object/from16 v16, v7

    .line 381
    new-instance v7, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;

    .line 383
    move/from16 v19, v9

    .line 385
    const/4 v9, 0x7

    .line 386
    invoke-direct {v7, v0, v9}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 389
    invoke-static {v8, v7, v2, v6}, Lcom/android/server/audio/AudioDeviceInventory;->removeDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;ILjava/util/List;)I

    .line 392
    :goto_9
    move-object/from16 v7, v16

    .line 394
    move-object/from16 v2, v18

    .line 396
    move/from16 v9, v19

    .line 398
    goto/16 :goto_4

    .line 400
    :cond_10
    move-object/from16 v18, v2

    .line 402
    move-object/from16 v16, v7

    .line 404
    move/from16 v19, v9

    .line 406
    invoke-static {v5}, Landroid/media/AudioSystem;->isBluetoothInDevice(I)Z

    .line 409
    move-result v2

    .line 410
    if-eqz v2, :cond_15

    .line 412
    sget-object v2, Lcom/android/server/audio/AudioDeviceInventory;->CAPTURE_PRESETS:[I

    .line 414
    array-length v6, v2

    .line 415
    const/4 v7, 0x0

    .line 416
    :goto_a
    if-ge v7, v6, :cond_15

    .line 418
    aget v8, v2, v7

    .line 420
    invoke-static {v5}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    .line 423
    move-result v9

    .line 424
    if-eqz v9, :cond_12

    .line 426
    if-nez v11, :cond_11

    .line 428
    invoke-virtual {v3, v10}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isModeEnabled(Ljava/lang/String;)Z

    .line 431
    move-result v9

    .line 432
    if-nez v9, :cond_13

    .line 434
    :cond_11
    const/4 v9, 0x1

    .line 435
    goto :goto_b

    .line 436
    :cond_12
    invoke-static {v5}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    .line 439
    move-result v9

    .line 440
    if-eqz v9, :cond_13

    .line 442
    invoke-virtual {v3, v10}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isModeEnabled(Ljava/lang/String;)Z

    .line 445
    move-result v9

    .line 446
    const/4 v13, 0x1

    .line 447
    xor-int/2addr v9, v13

    .line 448
    goto :goto_b

    .line 449
    :cond_13
    const/4 v9, 0x0

    .line 450
    :goto_b
    new-instance v13, Ljava/lang/StringBuilder;

    .line 452
    move-object/from16 v20, v2

    .line 454
    const-string v2, "      - capturePreset: "

    .line 456
    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    move-result-object v2

    .line 472
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    if-eqz v9, :cond_14

    .line 477
    const/4 v2, 0x1

    .line 478
    new-array v9, v2, [Landroid/media/AudioDeviceAttributes;

    .line 480
    const/4 v13, 0x0

    .line 481
    aput-object v4, v9, v13

    .line 483
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 486
    move-result-object v9

    .line 487
    iget-object v13, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    .line 489
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;

    .line 491
    move-object/from16 v21, v1

    .line 493
    const/4 v1, 0x2

    .line 494
    invoke-direct {v2, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 497
    invoke-static {v13, v2, v8, v9}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;ILjava/util/List;)I

    .line 500
    goto :goto_c

    .line 501
    :cond_14
    move-object/from16 v21, v1

    .line 503
    const/4 v1, 0x1

    .line 504
    new-array v2, v1, [Landroid/media/AudioDeviceAttributes;

    .line 506
    const/4 v9, 0x0

    .line 507
    aput-object v4, v2, v9

    .line 509
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 512
    move-result-object v2

    .line 513
    iget-object v13, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    .line 515
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;

    .line 517
    const/4 v9, 0x5

    .line 518
    invoke-direct {v1, v0, v9}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 521
    invoke-static {v13, v1, v8, v2}, Lcom/android/server/audio/AudioDeviceInventory;->removeDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;ILjava/util/List;)I

    .line 524
    :goto_c
    add-int/lit8 v7, v7, 0x1

    .line 526
    move-object/from16 v2, v20

    .line 528
    move-object/from16 v1, v21

    .line 530
    goto :goto_a

    .line 531
    :cond_15
    move-object/from16 v21, v1

    .line 533
    move-object/from16 v7, v16

    .line 535
    move-object/from16 v2, v18

    .line 537
    move/from16 v9, v19

    .line 539
    move-object/from16 v1, v21

    .line 541
    goto/16 :goto_3

    .line 543
    :cond_16
    return-void
.end method

.method public final changeActiveBleDevice(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudio;->getConnectedDevices()Ljava/util/List;

    .line 16
    move-result-object v2

    .line 17
    const-string v3, "AS.AudioDeviceInventory"

    .line 19
    if-nez v2, :cond_1

    .line 21
    const-string p0, "Nothing connected BLE devices"

    .line 23
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-object v0

    .line 27
    :cond_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    if-eqz p1, :cond_2

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->isBleHeadsetConnected(Ljava/lang/String;)Z

    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 37
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 45
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p0

    .line 49
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_4

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 61
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_3

    .line 71
    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothLeAudio;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v1, "changeActiveBleDevice setActiveDevice for BLE connection address = "

    .line 79
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v0

    .line 97
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 100
    move-result p0

    .line 101
    if-lez p0, :cond_8

    .line 103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 106
    move-result-object p0

    .line 107
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_6

    .line 113
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 119
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_5

    .line 129
    goto :goto_0

    .line 130
    :cond_6
    move-object v2, v0

    .line 131
    :goto_0
    if-eqz v2, :cond_8

    .line 133
    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    .line 135
    if-eqz p0, :cond_7

    .line 137
    invoke-static {v2}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V

    .line 140
    :cond_7
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothLeAudio;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    .line 149
    const-string/jumbo v0, "changeActiveBleDevice activeDeviceName = "

    .line 152
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-object p0

    .line 166
    :cond_8
    return-object v0

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    monitor-exit v0

    .line 169
    throw p0
.end method

.method public final changeActiveBluetoothDevice(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    .line 14
    move-result-object v2

    .line 15
    const-string v3, "AS.AudioDeviceInventory"

    .line 17
    if-nez v2, :cond_1

    .line 19
    const-string p0, "Nothing connected BT devices"

    .line 21
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-object v1

    .line 25
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x1

    .line 30
    if-ne v4, v5, :cond_3

    .line 32
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_3

    .line 38
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothA2dp;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo p1, "changeActiveBluetoothDevice a2dp setActiveDevice = "

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    .line 65
    if-eqz p0, :cond_2

    .line 67
    invoke-static {v4}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V

    .line 70
    :cond_2
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v2

    .line 79
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_8

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 91
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_5

    .line 101
    goto :goto_0

    .line 102
    :cond_5
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    .line 104
    if-eqz v5, :cond_6

    .line 106
    invoke-static {v4}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V

    .line 109
    :cond_6
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothA2dp;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_4

    .line 115
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 117
    iget-boolean p1, p1, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    .line 119
    if-eqz p1, :cond_7

    .line 121
    const-string p1, "Dual Audio is disabled by a2dp active changed."

    .line 123
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 p1, 0x0

    .line 127
    invoke-virtual {p0, v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setDualA2dpMode(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 130
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 133
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :cond_8
    return-object v1
.end method

.method public final checkDeviceConnected(I)Z
    .locals 3

    .line 1
    const v0, 0x8000

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 8
    const-string v2, "0"

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {v0, v2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 26
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 33
    move-result-object p0

    .line 34
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda12;

    .line 36
    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda12;-><init>(I)V

    .line 39
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 42
    move-result p0

    .line 43
    monitor-exit v0

    .line 44
    return p0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final checkDeviceInventorySize_l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x348

    .line 9
    if-le v0, v1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 13
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 33
    :cond_0
    return-void
.end method

.method public final checkProfileIsConnected(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_3

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_2

    .line 7
    const/16 v0, 0x16

    .line 9
    if-eq p1, v0, :cond_0

    .line 11
    const/16 v0, 0x1a

    .line 13
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 24
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_BLE_SET:Ljava/util/Set;

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_4

    .line 32
    :cond_1
    return p1

    .line 33
    :cond_2
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_4

    .line 41
    return p1

    .line 42
    :cond_3
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 47
    move-result-object v0

    .line 48
    if-nez v0, :cond_5

    .line 50
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 55
    move-result-object p0

    .line 56
    if-eqz p0, :cond_4

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 60
    return p0

    .line 61
    :cond_5
    :goto_1
    return p1
.end method

.method public final checkSendBecomingNoisyIntentInt(III)I
    .locals 9

    .line 1
    new-instance v0, Landroid/media/MediaMetrics$Item;

    .line 3
    const-string v1, "audio.device.checkSendBecomingNoisyIntentInt"

    .line 5
    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object v1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 10
    invoke-static {p1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne p2, v2, :cond_0

    .line 23
    const-string/jumbo v3, "connected"

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string/jumbo v3, "disconnected"

    .line 30
    :goto_0
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    const-string v3, "AS.AudioDeviceInventory"

    .line 37
    if-eqz p2, :cond_1

    .line 39
    const-string/jumbo p0, "not sending NOISY: state="

    .line 42
    invoke-static {p2, p0, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 58
    return v1

    .line 59
    :cond_1
    sget-object p2, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v4

    .line 65
    move-object v5, p2

    .line 66
    check-cast v5, Ljava/util/HashSet;

    .line 68
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_2

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo p3, "not sending NOISY: device=0x"

    .line 79
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string p1, " not in set "

    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 117
    return v1

    .line 118
    :cond_2
    new-instance p2, Ljava/util/HashSet;

    .line 120
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 123
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 125
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 128
    move-result-object v4

    .line 129
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 132
    move-result-object v4

    .line 133
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_4

    .line 139
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    move-result-object v5

    .line 143
    check-cast v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 145
    iget v6, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 147
    invoke-static {v6}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    .line 150
    move-result v6

    .line 151
    if-nez v6, :cond_3

    .line 153
    sget-object v6, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    .line 155
    iget v5, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 157
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v7

    .line 161
    check-cast v6, Ljava/util/HashSet;

    .line 163
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_3

    .line 169
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    .line 178
    const-string v7, "NOISY: adding 0x"

    .line 180
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v5

    .line 194
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    goto :goto_1

    .line 198
    :cond_4
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 200
    const/4 v5, 0x3

    .line 201
    if-nez p3, :cond_5

    .line 203
    iget-object p3, v4, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 205
    invoke-virtual {p3, v5}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 208
    move-result p3

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    .line 211
    const-string v7, "NOISY: musicDevice changing from NONE to 0x"

    .line 213
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 219
    move-result-object v7

    .line 220
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object v6

    .line 227
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    .line 233
    move-result v6

    .line 234
    invoke-static {p2, p1}, Landroid/media/AudioSystem;->isSingleAudioDeviceType(Ljava/util/Set;I)Z

    .line 237
    move-result p2

    .line 238
    iget-object v7, v4, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 240
    invoke-virtual {v7}, Lcom/android/server/audio/AudioService;->hasMediaDynamicPolicy()Z

    .line 243
    move-result v8

    .line 244
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    const/4 p0, 0x7

    .line 250
    invoke-static {p0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    .line 253
    move-result p0

    .line 254
    if-eqz p0, :cond_6

    .line 256
    invoke-virtual {v7, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 259
    move-result p0

    .line 260
    if-ne p0, p1, :cond_6

    .line 262
    goto :goto_2

    .line 263
    :cond_6
    move v2, v1

    .line 264
    :goto_2
    const/16 p0, 0x1f4

    .line 266
    if-eq p1, p3, :cond_7

    .line 268
    if-nez v6, :cond_7

    .line 270
    if-eqz v2, :cond_a

    .line 272
    :cond_7
    if-nez v8, :cond_a

    .line 274
    const v2, 0x8000

    .line 277
    if-eq p3, v2, :cond_a

    .line 279
    invoke-static {v5, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    .line 282
    move-result p2

    .line 283
    if-nez p2, :cond_8

    .line 285
    invoke-virtual {v7}, Lcom/android/server/audio/AudioService;->hasAudioFocusUsers()Z

    .line 288
    move-result p2

    .line 289
    if-nez p2, :cond_8

    .line 291
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 293
    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 295
    const-string/jumbo p2, "dropping ACTION_AUDIO_BECOMING_NOISY"

    .line 298
    invoke-direct {p1, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1, v1, v3}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 307
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    .line 309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    move-result-object p1

    .line 313
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 316
    move-result-object p0

    .line 317
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 320
    return v1

    .line 321
    :cond_8
    sget-boolean p2, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 323
    if-eqz p2, :cond_9

    .line 325
    invoke-static {p1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->isWiredDeviceType(I)Z

    .line 328
    move-result p2

    .line 329
    if-eqz p2, :cond_9

    .line 331
    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    .line 334
    move-result p2

    .line 335
    if-eqz p2, :cond_9

    .line 337
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 339
    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 341
    const-string/jumbo p2, "dropping ACTION_AUDIO_BECOMING_NOISY by split sound"

    .line 344
    invoke-direct {p1, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1, v1, v3}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 353
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    .line 355
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    move-result-object p1

    .line 359
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 362
    move-result-object p0

    .line 363
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 366
    return v1

    .line 367
    :cond_9
    const/16 p2, 0xc

    .line 369
    invoke-virtual {v4, p2, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 372
    goto/16 :goto_4

    .line 374
    :cond_a
    invoke-virtual {v7}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_d

    .line 380
    invoke-static {v5, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    .line 383
    move-result v2

    .line 384
    if-eqz v2, :cond_d

    .line 386
    invoke-virtual {v7}, Lcom/android/server/audio/AudioService;->getPinDeviceInternal()I

    .line 389
    move-result v2

    .line 390
    if-ne v2, p1, :cond_d

    .line 392
    sget-object p2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 394
    new-instance p3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 396
    const-string/jumbo v2, "send ACTION_AUDIO_BECOMING_NOISY to pinned apps"

    .line 399
    invoke-direct {p3, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p3, v1, v3}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 405
    invoke-virtual {p2, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 408
    iget-object p2, v4, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 410
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    iget-object p2, v7, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 415
    iget-boolean p3, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 417
    if-nez p3, :cond_b

    .line 419
    goto :goto_4

    .line 420
    :cond_b
    new-instance p3, Ljava/util/ArrayList;

    .line 422
    iget-object v2, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 424
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 427
    move-result-object v2

    .line 428
    invoke-direct {p3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 431
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 434
    move-result-object p3

    .line 435
    :cond_c
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 438
    move-result v2

    .line 439
    if-eqz v2, :cond_e

    .line 441
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 444
    move-result-object v2

    .line 445
    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 447
    iget v5, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    .line 449
    invoke-virtual {p2, v5}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    .line 452
    move-result v5

    .line 453
    if-ne v5, p1, :cond_c

    .line 455
    iget-object v5, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 457
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    sget v6, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 462
    iget-object v5, v5, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 464
    iget v2, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    .line 466
    invoke-virtual {v5, v2}, Lcom/android/server/audio/AudioService;->getPackageName(I)[Ljava/lang/String;

    .line 469
    move-result-object v6

    .line 470
    invoke-virtual {v5, v2, v6}, Lcom/android/server/audio/AudioService;->sendBecomingNoisyIntent(I[Ljava/lang/String;)I

    .line 473
    goto :goto_3

    .line 474
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    .line 476
    const-string/jumbo v2, "not sending NOISY: device:0x"

    .line 479
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 485
    move-result-object v2

    .line 486
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string v2, " musicDevice:0x"

    .line 491
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 497
    move-result-object p3

    .line 498
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string p3, " inComm:"

    .line 503
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string p3, " mediaPolicy:"

    .line 508
    const-string v2, " singleDevice:"

    .line 510
    invoke-static {p0, v6, p3, v8, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 513
    invoke-static {v3, p0, p2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 516
    move p0, v1

    .line 517
    :cond_e
    :goto_4
    if-lez p0, :cond_11

    .line 519
    invoke-static {}, Lcom/samsung/android/server/audio/FactoryUtils;->isFactoryMode()Z

    .line 522
    move-result p2

    .line 523
    if-eqz p2, :cond_10

    .line 525
    const/16 p2, 0x400

    .line 527
    if-eq p1, p2, :cond_f

    .line 529
    const/high16 p2, 0x4000000

    .line 531
    if-ne p1, p2, :cond_10

    .line 533
    :cond_f
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 535
    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 537
    const-string p2, "HDMI/USB Headset delay in factory mode"

    .line 539
    invoke-direct {p1, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1, v1, v3}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 545
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 548
    goto :goto_5

    .line 549
    :cond_10
    invoke-static {p1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->isWiredDeviceType(I)Z

    .line 552
    move-result p1

    .line 553
    if-eqz p1, :cond_11

    .line 555
    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    .line 558
    move-result p1

    .line 559
    if-eqz p1, :cond_11

    .line 561
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 563
    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 565
    const-string/jumbo p2, "in call wired headset/headphone"

    .line 568
    invoke-direct {p1, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p1, v1, v3}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 577
    goto :goto_5

    .line 578
    :cond_11
    move v1, p0

    .line 579
    :goto_5
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    .line 581
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 584
    move-result-object p1

    .line 585
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 588
    move-result-object p0

    .line 589
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 592
    return v1
.end method

.method public final clearDevicesRoleForStrategy(IZ)I
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    .line 8
    :goto_0
    monitor-enter p2

    .line 9
    :try_start_0
    new-instance v0, Landroid/util/Pair;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 29
    monitor-exit p2

    .line 30
    const/4 p0, -0x2

    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 36
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 39
    invoke-static {p1, v2}, Landroid/media/AudioSystem;->clearDevicesRoleForStrategy(II)I

    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_2

    .line 45
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_2
    monitor-exit p2

    .line 49
    :goto_1
    return p0

    .line 50
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final disconnectLeAudio(I)V
    .locals 5

    .line 1
    const/high16 v0, 0x20000000

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    const v0, 0x20000002

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    const-string p0, "AS.AudioDeviceInventory"

    .line 12
    const-string/jumbo v0, "disconnectLeAudio: Can\'t disconnect not LE Audio device "

    .line 15
    invoke-static {p1, v0, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    .line 24
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 27
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 29
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;

    .line 35
    invoke-direct {v3, p1, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;-><init>(ILandroid/util/ArraySet;)V

    .line 38
    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 41
    new-instance v2, Landroid/media/MediaMetrics$Item;

    .line 43
    const-string v3, "audio.device.disconnectLeAudio"

    .line 45
    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 48
    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 50
    const-string/jumbo v4, "disconnectLeAudio"

    .line 53
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 60
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 63
    move-result v2

    .line 64
    if-lez v2, :cond_1

    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    .line 70
    move-result v2

    .line 71
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    .line 74
    move-result-object v1

    .line 75
    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda28;

    .line 77
    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/audio/AudioDeviceInventory;II)V

    .line 80
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    monitor-exit v0

    .line 87
    return-void

    .line 88
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0
.end method

.method public final dispatchDevicesRoleForCapturePreset(ILjava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    .line 12
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 26
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->anonymizeAudioDeviceAttributesListUnchecked(Ljava/util/List;)Ljava/util/List;

    .line 34
    move-result-object p2

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception v2

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    .line 40
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/media/ICapturePresetDevicesRoleDispatcher;

    .line 46
    const/4 v3, 0x1

    .line 47
    invoke-interface {v2, p1, v3, p2}, Landroid/media/ICapturePresetDevicesRoleDispatcher;->dispatchDevicesRoleChanged(IILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_3

    .line 51
    :goto_2
    const-string v3, "AS.AudioDeviceInventory"

    .line 53
    const-string/jumbo v4, "dispatchDevicesRoleForCapturePreset "

    .line 56
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    .line 64
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 67
    return-void
.end method

.method public final dispatchNonDefaultDevice(ILjava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 12
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 26
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->anonymizeAudioDeviceAttributesListUnchecked(Ljava/util/List;)Ljava/util/List;

    .line 34
    move-result-object p2

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception v2

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 40
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/media/IStrategyNonDefaultDevicesDispatcher;

    .line 46
    invoke-interface {v2, p1, p2}, Landroid/media/IStrategyNonDefaultDevicesDispatcher;->dispatchNonDefDevicesChanged(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_3

    .line 50
    :goto_2
    const-string v3, "AS.AudioDeviceInventory"

    .line 52
    const-string/jumbo v4, "dispatchNonDefaultDevice "

    .line 55
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 63
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 66
    return-void
.end method

.method public final dispatchPreferredDevice(ILjava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 12
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 26
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->anonymizeAudioDeviceAttributesListUnchecked(Ljava/util/List;)Ljava/util/List;

    .line 34
    move-result-object p2

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception v2

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 40
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/media/IStrategyPreferredDevicesDispatcher;

    .line 46
    invoke-interface {v2, p1, p2}, Landroid/media/IStrategyPreferredDevicesDispatcher;->dispatchPrefDevicesChanged(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_3

    .line 50
    :goto_2
    const-string v3, "AS.AudioDeviceInventory"

    .line 52
    const-string/jumbo v4, "dispatchPreferredDevice "

    .line 55
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 63
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 66
    return-void
.end method

.method public findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;
    .locals 5

    .line 1
    invoke-static {p2}, Landroid/media/AudioSystem;->isBluetoothA2dpOutDevice(I)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    sget-object p2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p2}, Landroid/media/AudioSystem;->isBluetoothLeOutDevice(I)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    sget-object p2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-static {p2}, Landroid/media/AudioSystem;->isBluetoothScoOutDevice(I)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 26
    sget-object p2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/high16 v0, 0x8000000

    .line 31
    if-ne p2, v0, :cond_5

    .line 33
    new-instance p2, Ljava/util/HashSet;

    .line 35
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p2

    .line 52
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_4

    .line 58
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/lang/Integer;

    .line 64
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 66
    new-instance v4, Landroid/util/Pair;

    .line 68
    invoke-direct {v4, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    .line 77
    if-eqz v2, :cond_3

    .line 79
    monitor-exit v0

    .line 80
    return-object v2

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    monitor-exit v0

    .line 84
    return-object v1

    .line 85
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0

    .line 87
    :cond_5
    return-object v1
.end method

.method public final getAvailableDeviceSetForQuickSoundPath()Ljava/util/Set;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    const/high16 v2, -0x7ffe0000

    .line 11
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 17
    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 19
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 27
    const/4 v3, 0x7

    .line 28
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceOnForCommunication(I)Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 34
    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    .line 36
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_1
    const v2, 0x8000

    .line 42
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_2

    .line 48
    sget-object p0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    .line 50
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_2
    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_FM_RADIO:Z

    .line 55
    if-eqz p0, :cond_3

    .line 57
    invoke-static {}, Lcom/samsung/android/audio/AudioManagerHelper;->isFMPlayerActive()Z

    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3

    .line 63
    sget-object p0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    .line 65
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    new-instance p0, Ljava/util/HashSet;

    .line 71
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    .line 73
    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 76
    invoke-interface {p0, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 79
    return-object p0

    .line 80
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method

.method public final getConnectedDevicesOfTypes(Ljava/util/Set;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 11
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 31
    iget v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v3

    .line 37
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    monitor-exit v1

    .line 50
    return-object v0

    .line 51
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final getDeviceIdentityAddresses(Landroid/media/AudioDeviceAttributes;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 23
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 29
    if-eqz p0, :cond_1

    .line 31
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    .line 57
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_1

    .line 65
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    monitor-exit v1

    .line 71
    return-object v0

    .line 72
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0
.end method

.method public final getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getConnectedDevicesOfTypes(Ljava/util/Set;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 22
    :goto_0
    return-object p0
.end method

.method public final handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZZLandroid/bluetooth/BluetoothDevice;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v7, p2

    .line 7
    const-string/jumbo v2, "handleDeviceConnection() failed, deviceKey="

    .line 10
    const-string v8, "SCO "

    .line 12
    const-string v3, "APM failed to make available device 0x"

    .line 14
    const-string/jumbo v4, "not connecting device 0x"

    .line 17
    const-string/jumbo v5, "retry: not connecting device 0x"

    .line 20
    const-string/jumbo v6, "deviceInfo:"

    .line 23
    const-string/jumbo v9, "deviceKey:"

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 29
    move-result v10

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 33
    move-result-object v11

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    .line 37
    move-result-object v12

    .line 38
    const-string v13, "AS.AudioDeviceInventory"

    .line 40
    const-string/jumbo v14, "handleDeviceConnection("

    .line 43
    const-string v15, " dev:"

    .line 45
    invoke-static {v14, v15, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v14

    .line 49
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 52
    move-result-object v15

    .line 53
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v15, " address:"

    .line 58
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v15, " name:"

    .line 66
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v15, ")"

    .line 74
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v14

    .line 81
    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v13, Landroid/media/MediaMetrics$Item;

    .line 86
    const-string v14, "audio.device.handleDeviceConnection"

    .line 88
    invoke-direct {v13, v14}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 91
    sget-object v14, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 93
    invoke-virtual {v13, v14, v11}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 96
    move-result-object v13

    .line 97
    sget-object v14, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 99
    invoke-static {v10}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    .line 102
    move-result-object v15

    .line 103
    invoke-virtual {v13, v14, v15}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 106
    move-result-object v13

    .line 107
    sget-object v14, Landroid/media/MediaMetrics$Property;->MODE:Landroid/media/MediaMetrics$Key;

    .line 109
    if-eqz v7, :cond_0

    .line 111
    const-string/jumbo v15, "connect"

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    const-string/jumbo v15, "disconnect"

    .line 118
    :goto_0
    invoke-virtual {v13, v14, v15}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 121
    move-result-object v13

    .line 122
    sget-object v14, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 124
    invoke-virtual {v13, v14, v12}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 127
    move-result-object v13

    .line 128
    iget-object v14, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 130
    monitor-enter v14

    .line 131
    :try_start_0
    invoke-static {v10, v11}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v15

    .line 135
    move-object/from16 v16, v2

    .line 137
    const-string v2, "AS.AudioDeviceInventory"

    .line 139
    move-object/from16 v17, v8

    .line 141
    new-instance v8, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v8

    .line 153
    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 158
    invoke-virtual {v2, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 164
    if-eqz v2, :cond_1

    .line 166
    const/4 v8, 0x1

    .line 167
    goto :goto_1

    .line 168
    :cond_1
    const/4 v8, 0x0

    .line 169
    :goto_1
    const-string v9, "AS.AudioDeviceInventory"

    .line 171
    move-object/from16 v18, v15

    .line 173
    new-instance v15, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    const-string v6, " is(already)Connected:"

    .line 183
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v6

    .line 193
    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/high16 v6, -0x40800000    # -1.0f

    .line 198
    invoke-static {v6}, Lcom/samsung/android/media/AudioFxHelper;->setSoundFxVolume(F)V

    .line 201
    if-eqz v7, :cond_5

    .line 203
    if-nez v8, :cond_5

    .line 205
    if-eqz p3, :cond_2

    .line 207
    const/4 v1, 0x0

    .line 208
    goto :goto_2

    .line 209
    :cond_2
    iget-object v6, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 211
    const/4 v8, 0x1

    .line 212
    const/4 v9, 0x0

    .line 213
    invoke-virtual {v6, v1, v8, v9}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 216
    move-result v6

    .line 217
    if-eqz v6, :cond_3

    .line 219
    invoke-static {v10}, Lcom/samsung/android/server/audio/utils/AudioUtils;->isWiredDeviceType(I)Z

    .line 222
    move-result v8

    .line 223
    if-eqz v8, :cond_3

    .line 225
    const-string v8, "AS.AudioDeviceInventory"

    .line 227
    new-instance v9, Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 235
    move-result-object v5

    .line 236
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v5, " due to command error "

    .line 241
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object v5

    .line 251
    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 256
    const/4 v6, 0x0

    .line 257
    invoke-virtual {v5, v1, v6, v6}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 260
    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 262
    const/4 v8, 0x1

    .line 263
    invoke-virtual {v5, v1, v8, v6}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 266
    move-result v1

    .line 267
    goto :goto_2

    .line 268
    :catchall_0
    move-exception v0

    .line 269
    goto/16 :goto_a

    .line 271
    :cond_3
    move v1, v6

    .line 272
    :goto_2
    if-eqz v1, :cond_4

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    .line 276
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v2, " due to command error "

    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v0

    .line 298
    sget-object v2, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    .line 300
    invoke-virtual {v13, v2, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 303
    move-result-object v0

    .line 304
    sget-object v2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 306
    const-string/jumbo v4, "disconnected"

    .line 309
    invoke-virtual {v0, v2, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 316
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 318
    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    .line 322
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v3, "addr="

    .line 334
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v3, " error="

    .line 342
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    move-result-object v1

    .line 352
    invoke-direct {v2, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 355
    const-string v1, "AS.AudioDeviceInventory"

    .line 357
    const/4 v3, 0x1

    .line 358
    invoke-virtual {v2, v3, v1}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 361
    invoke-virtual {v0, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 364
    monitor-exit v14

    .line 365
    const/4 v0, 0x0

    .line 366
    return v0

    .line 367
    :cond_4
    const/4 v3, 0x1

    .line 368
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 370
    new-instance v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 372
    invoke-direct {v4, v10, v12, v11}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 375
    move-object/from16 v5, v18

    .line 377
    invoke-virtual {v1, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 382
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 384
    invoke-virtual {v1, v10}, Lcom/android/server/audio/AudioService;->postAccessoryPlugMediaUnmute(I)V

    .line 387
    :goto_3
    move v8, v3

    .line 388
    goto :goto_4

    .line 389
    :cond_5
    move-object/from16 v5, v18

    .line 391
    const/4 v3, 0x1

    .line 392
    if-nez v7, :cond_6

    .line 394
    if-eqz v8, :cond_6

    .line 396
    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 398
    const/4 v6, 0x0

    .line 399
    invoke-virtual {v4, v1, v6, v6}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 402
    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 404
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 409
    invoke-virtual {v4, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postCheckCommunicationDeviceRemoval(Landroid/media/AudioDeviceAttributes;)V

    .line 412
    goto :goto_3

    .line 413
    :cond_6
    const/4 v8, 0x0

    .line 414
    :goto_4
    if-eqz v8, :cond_c

    .line 416
    invoke-static {v10}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_b

    .line 422
    if-eqz v7, :cond_7

    .line 424
    move-object/from16 v1, p4

    .line 426
    goto :goto_5

    .line 427
    :cond_7
    const/4 v1, 0x0

    .line 428
    :goto_5
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    .line 431
    if-nez v7, :cond_8

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioDeviceInventory;->purgeDevicesRoles_l()V

    .line 436
    goto :goto_6

    .line 437
    :cond_8
    const-string v6, ""

    .line 439
    invoke-static {v11}, Lcom/android/server/audio/BtHelper;->getBtDeviceCategory(Ljava/lang/String;)I

    .line 442
    move-result v5

    .line 443
    const/4 v4, 0x0

    .line 444
    move-object/from16 v1, p0

    .line 446
    move-object v2, v11

    .line 447
    move v3, v10

    .line 448
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(Ljava/lang/String;IZILjava/lang/String;)V

    .line 451
    :goto_6
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 453
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    .line 457
    move-object/from16 v3, v17

    .line 459
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-static {v10}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    .line 465
    move-result v3

    .line 466
    if-eqz v3, :cond_9

    .line 468
    const-string/jumbo v3, "source"

    .line 471
    goto :goto_7

    .line 472
    :cond_9
    const-string/jumbo v3, "sink"

    .line 475
    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v3, " device addr="

    .line 480
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    if-eqz v7, :cond_a

    .line 488
    const-string v3, " now available"

    .line 490
    goto :goto_8

    .line 491
    :cond_a
    const-string v3, " made unavailable"

    .line 493
    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    move-result-object v2

    .line 500
    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 503
    const-string v2, "AS.AudioDeviceInventory"

    .line 505
    const/4 v3, 0x0

    .line 506
    invoke-virtual {v1, v3, v2}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 509
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 512
    :cond_b
    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 514
    const-string/jumbo v1, "connected"

    .line 517
    invoke-virtual {v13, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 520
    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 524
    goto :goto_9

    .line 525
    :cond_c
    const-string v0, "AS.AudioDeviceInventory"

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    .line 529
    move-object/from16 v3, v16

    .line 531
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string v3, ", deviceSpec="

    .line 539
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 545
    const-string v2, ", connect="

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    move-result-object v1

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 562
    const-string/jumbo v1, "disconnected"

    .line 565
    invoke-virtual {v13, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 572
    :goto_9
    monitor-exit v14

    .line 573
    return v8

    .line 574
    :goto_a
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    throw v0
.end method

.method public isA2dpDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 1
    const/16 v0, 0x80

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    filled-new-array {v0}, [Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getConnectedDevicesOfTypes(Ljava/util/Set;)Ljava/util/List;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 37
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_1
    const/4 p0, 0x0

    .line 52
    return p0
.end method

.method public final isBleHeadsetConnected(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 26
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 34
    iget v1, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 36
    const/high16 v2, 0x20000000

    .line 38
    if-ne v1, v2, :cond_0

    .line 40
    monitor-exit v0

    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    monitor-exit v0

    .line 46
    const/4 p0, 0x0

    .line 47
    return p0

    .line 48
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public final makeA2dpDeviceAvailable(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 9
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    const-string v1, ""

    .line 17
    :cond_0
    move-object v7, v1

    .line 18
    iget-object v8, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 20
    const/4 v9, 0x1

    .line 21
    const-string/jumbo v1, "onSetBtActiveDevice"

    .line 24
    invoke-virtual {v8, v1, v9, v9}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(Ljava/lang/String;ZZ)V

    .line 27
    new-instance v1, Landroid/media/AudioDeviceAttributes;

    .line 29
    const/16 v10, 0x80

    .line 31
    invoke-direct {v1, v10, v0, v7}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 36
    invoke-virtual {v2, v1, v9, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 39
    move-result v1

    .line 40
    const-string v2, "AS.AudioDeviceInventory"

    .line 42
    if-eqz v1, :cond_1

    .line 44
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 46
    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    const-string v3, "APM failed to make available A2DP device addr="

    .line 52
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-static {v0}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, " error="

    .line 64
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p1, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, v9, v2}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 83
    return-void

    .line 84
    :cond_1
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 86
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    const-string v5, "A2DP sink device addr="

    .line 92
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {v0}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v5, " now available"

    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v4

    .line 111
    invoke-direct {v3, v4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 114
    const/4 v4, 0x0

    .line 115
    invoke-virtual {v3, v4, v2}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 118
    invoke-virtual {v1, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 121
    invoke-virtual {p0, v10}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_2

    .line 127
    invoke-virtual {v8, v9}, Lcom/android/server/audio/AudioDeviceBroker;->clearA2dpSuspended(Z)V

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    const-string/jumbo v1, "makeA2dpDeviceAvailable clearA2dpSuspended(true) skipped"

    .line 134
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    new-instance v11, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 139
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 141
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    .line 144
    move-result-object v6

    .line 145
    const/16 v2, 0x80

    .line 147
    move-object v1, v11

    .line 148
    move v3, p2

    .line 149
    move-object v4, v7

    .line 150
    move-object v5, v0

    .line 151
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget p2, v11, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 156
    iget-object v1, v11, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 158
    invoke-static {p2, v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 161
    move-result-object p2

    .line 162
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 164
    invoke-virtual {v1, p2, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object p2, v8, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 174
    invoke-virtual {p2, v10}, Lcom/android/server/audio/AudioService;->postAccessoryPlugMediaUnmute(I)V

    .line 177
    invoke-virtual {p0, v7, v9}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 180
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    .line 185
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->getBtDeviceCategory(Ljava/lang/String;)I

    .line 188
    move-result v5

    .line 189
    const/16 v3, 0x80

    .line 191
    const-string v6, ""

    .line 193
    const/4 v4, 0x0

    .line 194
    move-object v1, p0

    .line 195
    move-object v2, v0

    .line 196
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(Ljava/lang/String;IZILjava/lang/String;)V

    .line 199
    return-void
.end method

.method public final makeA2dpDeviceUnavailableNow(ILjava/lang/String;)V
    .locals 11

    .line 1
    new-instance v0, Landroid/media/MediaMetrics$Item;

    .line 3
    const-string v1, "audio.device.a2dp."

    .line 5
    invoke-static {v1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 12
    sget-object v1, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    .line 14
    invoke-static {p1}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 24
    const-string/jumbo v2, "makeA2dpDeviceUnavailableNow"

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 30
    move-result-object v0

    .line 31
    if-nez p2, :cond_0

    .line 33
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    .line 35
    const-string p1, "address null"

    .line 37
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 44
    return-void

    .line 45
    :cond_0
    const/16 v1, 0x80

    .line 47
    invoke-static {v1, p2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 53
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v3

    .line 62
    const/4 v4, 0x0

    .line 63
    move v5, v4

    .line 64
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v6

    .line 68
    const/4 v7, 0x1

    .line 69
    if-eqz v6, :cond_2

    .line 71
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Ljava/lang/String;

    .line 77
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_1

    .line 83
    move v5, v7

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    const-string v3, "AS.AudioDeviceInventory"

    .line 87
    if-nez v5, :cond_3

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo p1, "makeA2dpDeviceUnavailableNow return "

    .line 94
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string p1, " not connected !!!"

    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 114
    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 116
    const-string v1, "A2DP device "

    .line 118
    const-string v2, " made unavailable, was not used"

    .line 120
    invoke-static {v1, p2, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p1, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1, v4, v3}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 133
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    .line 135
    const-string p1, "A2DP device made unavailable, was not used"

    .line 137
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 144
    return-void

    .line 145
    :cond_3
    new-instance v5, Landroid/media/AudioDeviceAttributes;

    .line 147
    invoke-direct {v5, v1, p2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 150
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 152
    invoke-virtual {v6, v5, v4, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_4

    .line 158
    sget-object v6, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 160
    new-instance v8, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 162
    new-instance v9, Ljava/lang/StringBuilder;

    .line 164
    const-string v10, "APM failed to make unavailable A2DP device addr="

    .line 166
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-static {p2}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string p2, " error="

    .line 178
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object p1

    .line 188
    invoke-direct {v8, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v8, v7, v3}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 194
    invoke-virtual {v6, v8}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 197
    goto :goto_1

    .line 198
    :cond_4
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 200
    new-instance v6, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 202
    new-instance v8, Ljava/lang/StringBuilder;

    .line 204
    const-string v9, "A2DP device addr="

    .line 206
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-static {p2}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string p2, " made unavailable"

    .line 218
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object p2

    .line 225
    invoke-direct {v6, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v6, v4, v3}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 231
    invoke-virtual {p1, v6}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 234
    :goto_1
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    .line 236
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    const/4 p1, 0x0

    .line 240
    invoke-virtual {p0, p1, v7}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 243
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->purgeDevicesRoles_l()V

    .line 252
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    .line 255
    move-result p2

    .line 256
    if-nez p2, :cond_5

    .line 258
    invoke-virtual {p0, p1, v4}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 261
    :cond_5
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 263
    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioDeviceBroker;->postCheckCommunicationDeviceRemoval(Landroid/media/AudioDeviceAttributes;)V

    .line 266
    return-void
.end method

.method public final makeA2dpSrcAvailable(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    .line 3
    const/high16 v1, -0x7ffe0000

    .line 5
    invoke-direct {v0, v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 15
    move-result v0

    .line 16
    const-string v2, "AS.AudioDeviceInventory"

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v4, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 22
    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    .line 26
    const-string v7, "APM failed to make available A2DP source device addr="

    .line 28
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v7, " error="

    .line 40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-direct {v5, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v5, v3, v2}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 56
    invoke-virtual {v4, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 62
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    const-string v6, "A2DP source device addr="

    .line 68
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v6, " now available"

    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v5

    .line 87
    invoke-direct {v3, v5}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3, v4, v2}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 93
    invoke-virtual {v0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 96
    :goto_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 98
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 104
    const-string v3, ""

    .line 106
    invoke-direct {v2, v1, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public final makeHearingAidDeviceAvailable(ILjava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v8, p1

    .line 3
    move-object v9, p2

    .line 4
    move-object/from16 v10, p3

    .line 6
    iget-object v11, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 8
    iget-object v1, v11, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 10
    const/high16 v12, 0x8000000

    .line 12
    invoke-virtual {v1, p1, v12}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    .line 15
    move-result v4

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/16 v2, 0xe

    .line 20
    const/4 v3, 0x0

    .line 21
    move-object v1, v11

    .line 22
    move v5, p1

    .line 23
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    const-string/jumbo v3, "onSetBtActiveDevice"

    .line 31
    invoke-virtual {v11, v3, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(Ljava/lang/String;ZZ)V

    .line 34
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    .line 36
    invoke-direct {v3, v12, p2, v10}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 41
    invoke-virtual {v4, v3, v1, v2}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 44
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 46
    invoke-static {v12, p2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    new-instance v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 52
    invoke-direct {v4, v12, v10, p2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, v11, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 60
    invoke-virtual {v1, v12}, Lcom/android/server/audio/AudioService;->postAccessoryPlugMediaUnmute(I)V

    .line 63
    const-string/jumbo v1, "makeHearingAidDeviceAvailable"

    .line 66
    invoke-virtual {v11, p1, v12, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 69
    invoke-virtual {p0, v10, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 72
    invoke-static {p2}, Lcom/android/server/audio/BtHelper;->getBtDeviceCategory(Ljava/lang/String;)I

    .line 75
    move-result v4

    .line 76
    const/high16 v2, 0x8000000

    .line 78
    const-string v5, ""

    .line 80
    const/4 v3, 0x0

    .line 81
    move-object v0, p0

    .line 82
    move-object v1, p2

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(Ljava/lang/String;IZILjava/lang/String;)V

    .line 86
    new-instance v0, Landroid/media/MediaMetrics$Item;

    .line 88
    const-string v1, "audio.device.makeHearingAidDeviceAvailable"

    .line 90
    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 93
    sget-object v1, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 95
    if-eqz v9, :cond_0

    .line 97
    move-object v2, v9

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    const-string v2, ""

    .line 101
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 104
    move-result-object v0

    .line 105
    sget-object v1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 107
    invoke-static {v12}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 114
    move-result-object v0

    .line 115
    sget-object v1, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 117
    invoke-virtual {v0, v1, v10}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 120
    move-result-object v0

    .line 121
    sget-object v1, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 123
    invoke-static {p1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 134
    return-void
.end method

.method public final makeHearingAidDeviceUnavailable(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    .line 3
    const/high16 v1, 0x8000000

    .line 5
    invoke-direct {v0, v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v0, v3, v3}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 14
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 16
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p0, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 27
    new-instance v2, Landroid/media/MediaMetrics$Item;

    .line 29
    const-string v3, "audio.device.makeHearingAidDeviceUnavailable"

    .line 31
    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 34
    sget-object v3, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 36
    if-eqz p1, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string p1, ""

    .line 41
    :goto_0
    invoke-virtual {v2, v3, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 44
    move-result-object p1

    .line 45
    sget-object v2, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 47
    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 58
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postCheckCommunicationDeviceRemoval(Landroid/media/AudioDeviceAttributes;)V

    .line 63
    return-void
.end method

.method public final makeLeAudioDeviceAvailable(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V
    .locals 22

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    move/from16 v8, p2

    .line 7
    iget v0, v7, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    .line 9
    iget-object v9, v6, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 11
    const/4 v10, -0x1

    .line 12
    iget v5, v7, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 14
    if-eqz v5, :cond_c

    .line 16
    iget-object v0, v7, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 18
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    iget-object v0, v7, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 24
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v2, ""

    .line 30
    if-nez v0, :cond_0

    .line 32
    move-object v0, v2

    .line 33
    :cond_0
    iget-object v3, v7, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 35
    iget-object v4, v9, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 37
    iget-object v4, v4, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 39
    if-eqz v4, :cond_2

    .line 41
    if-nez v3, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    .line 47
    move-result v3

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    move v3, v10

    .line 50
    :goto_1
    const/4 v4, 0x1

    .line 51
    if-eq v3, v10, :cond_4

    .line 53
    invoke-virtual {v9, v3}, Lcom/android/server/audio/AudioDeviceBroker;->getLeAudioGroupAddresses(I)Ljava/util/List;

    .line 56
    move-result-object v11

    .line 57
    check-cast v11, Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 62
    move-result v12

    .line 63
    if-le v12, v4, :cond_4

    .line 65
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object v11

    .line 69
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result v12

    .line 73
    if-eqz v12, :cond_4

    .line 75
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v12

    .line 79
    check-cast v12, Landroid/util/Pair;

    .line 81
    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 83
    check-cast v13, Ljava/lang/String;

    .line 85
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v13

    .line 89
    if-nez v13, :cond_3

    .line 91
    iget-object v11, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 93
    check-cast v11, Ljava/lang/String;

    .line 95
    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 97
    check-cast v12, Ljava/lang/String;

    .line 99
    move-object/from16 v20, v11

    .line 101
    move-object/from16 v19, v12

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    move-object/from16 v19, v2

    .line 106
    move-object/from16 v20, v19

    .line 108
    :goto_2
    const v11, 0x20000002

    .line 111
    if-ne v5, v11, :cond_5

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_5

    .line 119
    const-string v0, "Broadcast"

    .line 121
    :cond_5
    const/4 v2, 0x0

    .line 122
    const-string/jumbo v12, "onSetBtActiveDevice"

    .line 125
    invoke-virtual {v9, v12, v4, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(Ljava/lang/String;ZZ)V

    .line 128
    iget-object v12, v7, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 130
    if-eqz v12, :cond_6

    .line 132
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->isLeAudioDualMode()Z

    .line 135
    move-result v12

    .line 136
    if-eqz v12, :cond_6

    .line 138
    if-eq v5, v11, :cond_6

    .line 140
    const/high16 v12, 0x400000

    .line 142
    :goto_3
    move v15, v12

    .line 143
    goto :goto_4

    .line 144
    :cond_6
    const/high16 v12, 0x20000000

    .line 146
    if-eq v5, v12, :cond_7

    .line 148
    const v12, 0x20000001

    .line 151
    if-ne v5, v12, :cond_8

    .line 153
    :cond_7
    const/16 v12, 0x63

    .line 155
    iget v13, v7, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 157
    if-ne v13, v12, :cond_8

    .line 159
    const/high16 v12, 0x800000

    .line 161
    goto :goto_3

    .line 162
    :cond_8
    move v15, v2

    .line 163
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v13, "checkBleDeviceFormat format = "

    .line 168
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v12

    .line 178
    const-string v13, "AS.AudioDeviceInventory"

    .line 180
    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v12, Landroid/media/AudioDeviceAttributes;

    .line 185
    invoke-direct {v12, v5, v1, v0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v12, v4, v15}, Landroid/media/AudioSystem;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 191
    move-result v12

    .line 192
    iget-object v14, v9, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 194
    if-eqz v12, :cond_a

    .line 196
    sget-object v11, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 198
    new-instance v10, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 200
    const-string v2, "APM failed to make available LE Audio device addr="

    .line 202
    const-string v4, " error="

    .line 204
    invoke-static {v12, v2, v1, v4}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    move-result-object v2

    .line 208
    invoke-direct {v10, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 211
    const/4 v2, 0x1

    .line 212
    invoke-virtual {v10, v2, v13}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 215
    invoke-virtual {v11, v10}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 218
    :cond_9
    move-object v10, v14

    .line 219
    move/from16 v18, v15

    .line 221
    const/4 v2, 0x1

    .line 222
    goto :goto_6

    .line 223
    :cond_a
    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 225
    new-instance v4, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 227
    new-instance v10, Ljava/lang/StringBuilder;

    .line 229
    const-string v12, "LE Audio "

    .line 231
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-static {v5}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    .line 237
    move-result v12

    .line 238
    if-eqz v12, :cond_b

    .line 240
    const-string/jumbo v12, "source"

    .line 243
    goto :goto_5

    .line 244
    :cond_b
    const-string/jumbo v12, "sink"

    .line 247
    :goto_5
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v12, " device addr="

    .line 252
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {v1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    move-result-object v12

    .line 259
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v12, " now available"

    .line 264
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    move-result-object v10

    .line 271
    invoke-direct {v4, v10}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 274
    const/4 v10, 0x0

    .line 275
    invoke-virtual {v4, v10, v13}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 278
    invoke-virtual {v2, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 281
    if-ne v5, v11, :cond_9

    .line 283
    const/4 v2, 0x1

    .line 284
    invoke-static {v2}, Lcom/samsung/android/server/audio/utils/BtUtils;->setAuracast(Z)V

    .line 287
    iput-boolean v2, v14, Lcom/android/server/audio/AudioService;->mIsLeBroadCasting:Z

    .line 289
    iget-object v11, v14, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 291
    const/4 v13, 0x0

    .line 292
    const/4 v4, 0x0

    .line 293
    const/16 v12, 0xad7

    .line 295
    const/16 v16, 0x0

    .line 297
    const/16 v17, 0x0

    .line 299
    move-object v10, v14

    .line 300
    move v14, v2

    .line 301
    move/from16 v18, v15

    .line 303
    move v15, v4

    .line 304
    invoke-static/range {v11 .. v17}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 307
    :goto_6
    invoke-virtual {v9, v2}, Lcom/android/server/audio/AudioDeviceBroker;->clearLeAudioSuspended(Z)V

    .line 310
    iget-object v2, v6, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 312
    invoke-static {v5, v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 315
    move-result-object v4

    .line 316
    new-instance v15, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 318
    iget-object v11, v7, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 320
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    .line 323
    move-result-object v16

    .line 324
    move-object v11, v15

    .line 325
    move v12, v5

    .line 326
    move-object v13, v0

    .line 327
    move-object v14, v1

    .line 328
    move-object/from16 v21, v9

    .line 330
    move-object v9, v15

    .line 331
    move-object/from16 v15, v16

    .line 333
    move/from16 v16, v18

    .line 335
    move/from16 v17, v3

    .line 337
    move-object/from16 v18, v20

    .line 339
    invoke-direct/range {v11 .. v19}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v2, v4, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-virtual {v10, v5}, Lcom/android/server/audio/AudioService;->postAccessoryPlugMediaUnmute(I)V

    .line 348
    const/4 v2, 0x0

    .line 349
    invoke-virtual {v6, v0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 352
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->getBtDeviceCategory(Ljava/lang/String;)I

    .line 355
    move-result v4

    .line 356
    const/4 v3, 0x0

    .line 357
    move-object/from16 v0, p0

    .line 359
    move v2, v5

    .line 360
    move v9, v5

    .line 361
    move-object/from16 v5, v20

    .line 363
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(Ljava/lang/String;IZILjava/lang/String;)V

    .line 366
    const/4 v0, -0x1

    .line 367
    goto :goto_7

    .line 368
    :cond_c
    move-object/from16 v21, v9

    .line 370
    move v9, v5

    .line 371
    move v0, v10

    .line 372
    :goto_7
    if-ne v8, v0, :cond_d

    .line 374
    iget-object v0, v7, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 376
    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    .line 379
    return-void

    .line 380
    :cond_d
    move-object/from16 v0, v21

    .line 382
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 384
    invoke-virtual {v1, v8, v9}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    .line 387
    move-result v1

    .line 388
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 390
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 392
    aget-object v2, v2, v8

    .line 394
    iget v2, v2, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 396
    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/audio/AudioDeviceBroker;->postSetLeAudioVolumeIndex(III)V

    .line 399
    const-string/jumbo v1, "makeLeAudioDeviceAvailable"

    .line 402
    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 405
    iget-object v0, v7, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 407
    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    .line 410
    return-void
.end method

.method public final makeLeAudioDeviceUnavailableNow(IILjava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 3
    const/4 v8, 0x0

    .line 4
    const/4 v9, 0x0

    .line 5
    if-eqz p1, :cond_2

    .line 7
    new-instance v10, Landroid/media/AudioDeviceAttributes;

    .line 9
    invoke-direct {v10, p1, p3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 12
    invoke-static {v10, v8, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 15
    move-result p2

    .line 16
    const-string v1, "AS.AudioDeviceInventory"

    .line 18
    if-eqz p2, :cond_0

    .line 20
    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 22
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 24
    const-string v4, "APM failed to make unavailable LE Audio device addr="

    .line 26
    const-string v5, " error="

    .line 28
    invoke-static {p2, v4, p3, v5}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    invoke-direct {v3, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 p2, 0x1

    .line 36
    invoke-virtual {v3, p2, v1}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 39
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-object p2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 45
    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    const-string v4, "LE Audio device addr="

    .line 51
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {p3}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v4, " made unavailable"

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    invoke-direct {v2, v3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2, v8, v1}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 76
    invoke-virtual {p2, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 79
    const p2, 0x20000002

    .line 82
    if-ne p1, p2, :cond_1

    .line 84
    invoke-static {v8}, Lcom/samsung/android/server/audio/utils/BtUtils;->setAuracast(Z)V

    .line 87
    iget-object p2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 89
    iput-boolean v8, p2, Lcom/android/server/audio/AudioService;->mIsLeBroadCasting:Z

    .line 91
    iget-object v1, p2, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 93
    const/4 v3, 0x0

    .line 94
    const/4 v5, 0x0

    .line 95
    const/16 v2, 0xad7

    .line 97
    const/4 v6, 0x0

    .line 98
    const/4 v7, 0x0

    .line 99
    move v4, v8

    .line 100
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 103
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 105
    invoke-static {p1, p3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {p2, p3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    move-object v10, v9

    .line 114
    :goto_1
    const p2, 0x20000001

    .line 117
    const/high16 p3, 0x20000000

    .line 119
    if-eq p1, p3, :cond_3

    .line 121
    if-ne p1, p2, :cond_9

    .line 123
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 125
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 127
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 130
    move-result-object v1

    .line 131
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object v1

    .line 135
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_6

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 147
    iget v2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 149
    if-eq v2, p3, :cond_5

    .line 151
    if-ne v2, p2, :cond_4

    .line 153
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 155
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_9

    .line 161
    iget-object p1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 163
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 166
    move-result-object p1

    .line 167
    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    move-result p2

    .line 171
    if-eqz p2, :cond_9

    .line 173
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    move-result-object p2

    .line 177
    check-cast p2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 179
    iget-object p3, p2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 181
    invoke-virtual {p3}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 184
    move-result p3

    .line 185
    const/16 v1, 0x1a

    .line 187
    if-eq p3, v1, :cond_8

    .line 189
    const/16 v1, 0x1b

    .line 191
    if-ne p3, v1, :cond_7

    .line 193
    :cond_8
    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->unregisterDeathRecipient()V

    .line 196
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 199
    sget-object p2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 201
    new-instance p3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 203
    const-string/jumbo v1, "ble route removed on CommunicationRouteClients"

    .line 206
    invoke-direct {p3, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 209
    const-string v1, "AS.AudioDeviceBroker"

    .line 211
    invoke-virtual {p3, v8, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 214
    invoke-virtual {p2, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 217
    goto :goto_2

    .line 218
    :cond_9
    invoke-virtual {p0, v9, v8}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 221
    invoke-virtual {p0, v9}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->purgeDevicesRoles_l()V

    .line 227
    if-eqz v10, :cond_a

    .line 229
    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioDeviceBroker;->postCheckCommunicationDeviceRemoval(Landroid/media/AudioDeviceAttributes;)V

    .line 232
    :cond_a
    return-void
.end method

.method public final onBluetoothDeviceConfigChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;IZ)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    const-string v3, "APM handleDeviceConfigChange success for A2DP device addr="

    .line 9
    const-string v4, "APM handleDeviceConfigChange failed for A2DP device addr="

    .line 11
    new-instance v5, Landroid/media/MediaMetrics$Item;

    .line 13
    const-string v6, "audio.device.onBluetoothDeviceConfigChange"

    .line 15
    invoke-direct {v5, v6}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 18
    sget-object v6, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 20
    const-string v7, "DEVICE_CONFIG_CHANGE"

    .line 22
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 25
    move-result-object v5

    .line 26
    iget-object v6, v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 28
    const/4 v7, 0x0

    .line 29
    if-nez v6, :cond_0

    .line 31
    sget-object v0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    .line 33
    const-string/jumbo v1, "btDevice null"

    .line 36
    invoke-virtual {v5, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 43
    return v7

    .line 44
    :cond_0
    const-string v8, "AS.AudioDeviceInventory"

    .line 46
    new-instance v9, Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v10, "onBluetoothDeviceConfigChange btDevice="

    .line 51
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v9

    .line 61
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget v8, v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    .line 66
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 69
    move-result-object v9

    .line 70
    invoke-static {v9}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    .line 73
    move-result v10

    .line 74
    if-nez v10, :cond_1

    .line 76
    const-string v9, ""

    .line 78
    :cond_1
    sget-object v10, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 80
    new-instance v11, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 82
    const-string/jumbo v12, "onBluetoothDeviceConfigChange addr="

    .line 85
    const-string v13, " event=DEVICE_CONFIG_CHANGE"

    .line 87
    invoke-static {v12, v9, v13}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v12

    .line 91
    invoke-direct {v11, v12}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v10, v11}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 97
    iget-object v11, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 99
    monitor-enter v11

    .line 100
    const/16 v12, 0x80

    .line 102
    :try_start_0
    invoke-static {v12, v9}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v12

    .line 106
    iget-object v13, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 108
    invoke-virtual {v13, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-result-object v13

    .line 112
    check-cast v13, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 114
    const/4 v14, 0x2

    .line 115
    if-nez v13, :cond_3

    .line 117
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 119
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    new-instance v3, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 124
    invoke-direct {v3, v6}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 127
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 129
    const/4 v4, 0x7

    .line 130
    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_2

    .line 136
    const-string v2, "AS.AudioDeviceInventory"

    .line 138
    const-string v3, "DeviceInfo is null. send MSG for handleDeviceConfigChange"

    .line 140
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 145
    const/16 v2, 0xb

    .line 147
    invoke-virtual {v0, v2, v14, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 150
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    goto/16 :goto_2

    .line 154
    :cond_2
    const-string v0, "AS.AudioDeviceInventory"

    .line 156
    const-string/jumbo v1, "invalid null DeviceInfo in onBluetoothDeviceConfigChange"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    .line 164
    const-string/jumbo v1, "null DeviceInfo"

    .line 167
    invoke-virtual {v5, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 174
    :goto_0
    monitor-exit v11

    .line 175
    return v7

    .line 176
    :cond_3
    sget-object v15, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 178
    invoke-virtual {v5, v15, v9}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 181
    move-result-object v15

    .line 182
    sget-object v7, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    .line 184
    invoke-static/range {p2 .. p2}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    .line 187
    move-result-object v14

    .line 188
    invoke-virtual {v15, v7, v14}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 191
    move-result-object v7

    .line 192
    sget-object v14, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 194
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v7, v14, v8}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 201
    move-result-object v7

    .line 202
    sget-object v8, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 204
    iget-object v14, v13, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 206
    invoke-virtual {v7, v8, v14}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 209
    iget v7, v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 211
    const/4 v8, 0x2

    .line 212
    if-eq v7, v8, :cond_4

    .line 214
    const/16 v14, 0x16

    .line 216
    if-eq v7, v14, :cond_4

    .line 218
    const/16 v14, 0x1a

    .line 220
    if-ne v7, v14, :cond_7

    .line 222
    :cond_4
    if-nez p3, :cond_5

    .line 224
    if-ne v7, v8, :cond_7

    .line 226
    :cond_5
    iput v2, v13, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 228
    iget-object v7, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 230
    invoke-virtual {v7, v12, v13}, Ljava/util/LinkedHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v7, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 235
    iget v8, v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 237
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 240
    move-result-object v12

    .line 241
    if-nez v12, :cond_6

    .line 243
    const-string v12, ""

    .line 245
    :cond_6
    invoke-virtual {v7}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 248
    invoke-static {v8, v9, v12, v2}, Landroid/media/AudioSystem;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    .line 251
    move-result v7

    .line 252
    if-eqz v7, :cond_8

    .line 254
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    .line 258
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v4, " codec="

    .line 266
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-static/range {p2 .. p2}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object v2

    .line 280
    invoke-direct {v3, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 283
    const-string v2, "AS.AudioDeviceInventory"

    .line 285
    const/4 v4, 0x1

    .line 286
    invoke-virtual {v3, v4, v2}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 289
    invoke-virtual {v10, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 292
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 294
    invoke-direct {v2, v1}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)V

    .line 297
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)V

    .line 300
    :cond_7
    const/4 v7, 0x0

    .line 301
    goto :goto_1

    .line 302
    :cond_8
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    .line 306
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v3, " codec="

    .line 314
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-static/range {p2 .. p2}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    move-result-object v2

    .line 328
    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 331
    const-string v2, "AS.AudioDeviceInventory"

    .line 333
    const/4 v3, 0x0

    .line 334
    invoke-virtual {v1, v3, v2}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    .line 337
    invoke-virtual {v10, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 340
    const/16 v7, 0x1f4

    .line 342
    :goto_1
    if-nez p3, :cond_9

    .line 344
    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    .line 347
    :cond_9
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-virtual {v5}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 351
    return v7

    .line 352
    :goto_2
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    throw v0
.end method

.method public final onBtProfileDisconnected(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p1, v2, :cond_8

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq p1, v2, :cond_5

    .line 9
    const/16 v1, 0xb

    .line 11
    if-eq p1, v1, :cond_4

    .line 13
    const/16 v1, 0x1a

    .line 15
    if-eq p1, v1, :cond_3

    .line 17
    const/16 v1, 0x15

    .line 19
    if-eq p1, v1, :cond_1

    .line 21
    const/16 v0, 0x16

    .line 23
    if-eq p1, v0, :cond_0

    .line 25
    const-string p0, "AS.AudioDeviceInventory"

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v1, "onBtProfileDisconnected: Not a valid profile to disconnect "

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    goto/16 :goto_5

    .line 51
    :cond_0
    const/high16 p1, 0x20000000

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectLeAudio(I)V

    .line 56
    goto/16 :goto_5

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 60
    monitor-enter p1

    .line 61
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    .line 63
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 66
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 68
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 71
    move-result-object v2

    .line 72
    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda29;

    .line 74
    const/4 v4, 0x2

    .line 75
    invoke-direct {v3, v4, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda29;-><init>(ILandroid/util/ArraySet;)V

    .line 78
    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 81
    new-instance v2, Landroid/media/MediaMetrics$Item;

    .line 83
    const-string v3, "audio.device.disconnectHearingAid"

    .line 85
    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 88
    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 90
    const-string/jumbo v4, "disconnectHearingAid"

    .line 93
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 100
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 103
    move-result v2

    .line 104
    if-lez v2, :cond_2

    .line 106
    const/high16 v2, 0x8000000

    .line 108
    invoke-virtual {p0, v2, v0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    .line 111
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda32;

    .line 117
    const/4 v2, 0x1

    .line 118
    invoke-direct {v1, v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda32;-><init>(ILjava/lang/Object;)V

    .line 121
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    :goto_0
    monitor-exit p1

    .line 128
    goto/16 :goto_5

    .line 130
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    throw p0

    .line 132
    :cond_3
    const p1, 0x20000002

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectLeAudio(I)V

    .line 138
    goto/16 :goto_5

    .line 140
    :cond_4
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 142
    monitor-enter p1

    .line 143
    :try_start_1
    new-instance v0, Landroid/util/ArraySet;

    .line 145
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 150
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 153
    move-result-object v1

    .line 154
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda29;

    .line 156
    const/4 v3, 0x1

    .line 157
    invoke-direct {v2, v3, v0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda29;-><init>(ILandroid/util/ArraySet;)V

    .line 160
    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 163
    new-instance v1, Landroid/media/MediaMetrics$Item;

    .line 165
    const-string v2, "audio.device.disconnectA2dpSink"

    .line 167
    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 170
    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 172
    const-string/jumbo v3, "disconnectA2dpSink"

    .line 175
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 182
    invoke-virtual {v0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    .line 185
    move-result-object v0

    .line 186
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda32;

    .line 188
    const/4 v2, 0x0

    .line 189
    invoke-direct {v1, v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda32;-><init>(ILjava/lang/Object;)V

    .line 192
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 195
    monitor-exit p1

    .line 196
    goto/16 :goto_5

    .line 198
    :catchall_1
    move-exception p0

    .line 199
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    throw p0

    .line 201
    :cond_5
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 203
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 205
    iget-boolean v2, p1, Lcom/android/server/audio/AudioService;->mIsBluetoothCastState:Z

    .line 207
    if-eqz v2, :cond_6

    .line 209
    iput-boolean v0, p1, Lcom/android/server/audio/AudioService;->mIsBluetoothCastState:Z

    .line 211
    const-string p1, "0"

    .line 213
    const-string/jumbo v2, "remote_submix"

    .line 216
    const v3, 0x8000

    .line 219
    invoke-static {v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 222
    move-result-object v3

    .line 223
    new-instance v4, Landroid/util/ArraySet;

    .line 225
    invoke-direct {v4, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 228
    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 249
    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_6
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 254
    monitor-enter p1

    .line 255
    :try_start_2
    new-instance v1, Landroid/util/ArraySet;

    .line 257
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 260
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 262
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 265
    move-result-object v2

    .line 266
    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda29;

    .line 268
    const/4 v4, 0x0

    .line 269
    invoke-direct {v3, v4, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda29;-><init>(ILandroid/util/ArraySet;)V

    .line 272
    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 275
    new-instance v2, Landroid/media/MediaMetrics$Item;

    .line 277
    const-string v3, "audio.device.disconnectA2dp"

    .line 279
    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 282
    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 284
    const-string/jumbo v4, "disconnectA2dp"

    .line 287
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 294
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 297
    move-result v2

    .line 298
    if-lez v2, :cond_7

    .line 300
    const/16 v2, 0x80

    .line 302
    invoke-virtual {p0, v2, v0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    .line 305
    move-result v0

    .line 306
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    .line 309
    move-result-object v1

    .line 310
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;

    .line 312
    invoke-direct {v2, p0, v0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 315
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 318
    goto :goto_2

    .line 319
    :catchall_2
    move-exception p0

    .line 320
    goto :goto_3

    .line 321
    :cond_7
    :goto_2
    monitor-exit p1

    .line 322
    goto :goto_5

    .line 323
    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 324
    throw p0

    .line 325
    :cond_8
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 327
    monitor-enter p1

    .line 328
    :try_start_3
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 330
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 333
    move-result-object v3

    .line 334
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 337
    move-result-object v3

    .line 338
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 341
    move-result v4

    .line 342
    if-eqz v4, :cond_a

    .line 344
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 347
    move-result-object v4

    .line 348
    check-cast v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 350
    iget v4, v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 352
    invoke-static {v4}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    .line 355
    move-result v4

    .line 356
    if-eqz v4, :cond_9

    .line 358
    move v0, v2

    .line 359
    goto :goto_4

    .line 360
    :catchall_3
    move-exception p0

    .line 361
    goto :goto_6

    .line 362
    :cond_a
    :goto_4
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 363
    if-eqz v0, :cond_b

    .line 365
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 367
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 369
    invoke-virtual {p0, v1}, Lcom/android/server/audio/BtHelper;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 372
    :cond_b
    :goto_5
    return-void

    .line 373
    :goto_6
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 374
    throw p0
.end method

.method public final onMakeA2dpDeviceUnavailableNow(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(ILjava/lang/String;)V

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public final onMakeLeAudioDeviceUnavailableNow(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->makeLeAudioDeviceUnavailableNow(IILjava/lang/String;)V

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public final onReportNewRoutes()V
    .locals 6

    .line 1
    const-string/jumbo v0, "dispatchAudioRoutesChanged mainType = "

    .line 4
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 6
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_3

    .line 12
    new-instance v2, Landroid/media/MediaMetrics$Item;

    .line 14
    const-string v3, "audio.device.onReportNewRoutes"

    .line 16
    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 19
    sget-object v3, Landroid/media/MediaMetrics$Property;->OBSERVERS:Landroid/media/MediaMetrics$Key;

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 32
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 34
    monitor-enter v2

    .line 35
    :try_start_0
    new-instance v3, Landroid/media/AudioRoutesInfo;

    .line 37
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 39
    invoke-direct {v3, v4}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 42
    const-string v4, "BT"

    .line 44
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mForcePath:Ljava/lang/String;

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 52
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 54
    iget-object v4, v4, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 56
    if-nez v4, :cond_1

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    :goto_0
    const-string v4, "OTHERS"

    .line 63
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mForcePath:Ljava/lang/String;

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_2

    .line 71
    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mForcePath:Ljava/lang/String;

    .line 73
    invoke-virtual {v3, v4}, Landroid/media/AudioRoutesInfo;->setForcePath(Ljava/lang/String;)V

    .line 76
    const-string v4, ""

    .line 78
    iput-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mForcePath:Ljava/lang/String;

    .line 80
    :cond_2
    const-string v4, "AS.AudioDeviceInventory"

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 89
    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 91
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, " setForcePath = "

    .line 96
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3}, Landroid/media/AudioRoutesInfo;->getSetForcePath()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_1
    if-lez v1, :cond_3

    .line 116
    add-int/lit8 v1, v1, -0x1

    .line 118
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 120
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Landroid/media/IAudioRoutesObserver;

    .line 126
    :try_start_1
    invoke-interface {v0, v3}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string v2, "AS.AudioDeviceInventory"

    .line 133
    const-string/jumbo v4, "onReportNewRoutes"

    .line 136
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    goto :goto_1

    .line 140
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    throw p0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 144
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 147
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 149
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams()V

    .line 154
    return-void
.end method

.method public final onRestoreDevices()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 26
    iget v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 28
    sget-object v4, Lcom/samsung/android/server/audio/utils/AudioUtils;->SKIP_RESTORE_DEVICE_SET:Ljava/util/Set;

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v3

    .line 34
    check-cast v4, Ljava/util/HashSet;

    .line 36
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 45
    new-instance v4, Landroid/media/AudioDeviceAttributes;

    .line 47
    iget v5, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 49
    iget-object v6, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 51
    iget-object v7, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 53
    invoke-direct {v4, v5, v6, v7}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    iget v2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 58
    const/4 v5, 0x1

    .line 59
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    .line 67
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 70
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    .line 72
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 75
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->applyConnectedDevicesRoles_l()V

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->reapplyExternalDevicesRoles()V

    .line 82
    return-void

    .line 83
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p0
.end method

.method public onSetBtActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;II)V
    .locals 11

    .line 1
    const-string v0, "Invalid profile "

    .line 3
    const-string v1, "AS.AudioDeviceInventory"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v3, "onSetBtActiveDevice btDevice="

    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string v3, " profile="

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 25
    invoke-static {v3}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v3, " state="

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 39
    const/16 v4, 0x63

    .line 41
    if-ne v3, v4, :cond_0

    .line 43
    const-string v3, "STATE_CONNECTED_IMPLICIT"

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v3}, Landroid/bluetooth/BluetoothProfile;->getConnectionStateName(I)Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    :goto_0
    invoke-static {v2, v3, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 55
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_1

    .line 65
    const-string v1, ""

    .line 67
    :cond_1
    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 69
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    const-string v5, "BT connected:"

    .line 75
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v5, " codec="

    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {p2}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v4

    .line 97
    invoke-direct {v3, v4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 103
    new-instance v2, Landroid/media/MediaMetrics$Item;

    .line 105
    const-string v3, "audio.device.onSetBtActiveDevice"

    .line 107
    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 110
    sget-object v3, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    .line 112
    iget v4, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 114
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 121
    move-result-object v2

    .line 122
    sget-object v3, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 124
    iget v4, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 126
    invoke-static {v4}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 133
    move-result-object v2

    .line 134
    sget-object v3, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 136
    invoke-virtual {v2, v3, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 139
    move-result-object v2

    .line 140
    sget-object v3, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    .line 142
    invoke-static {p2}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 149
    move-result-object v2

    .line 150
    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 152
    const-string/jumbo v4, "onSetBtActiveDevice"

    .line 155
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 158
    move-result-object v2

    .line 159
    sget-object v3, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 161
    invoke-static {p3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 168
    move-result-object v2

    .line 169
    sget-object v3, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 171
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceInventory;->isBtStateConnected(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)Z

    .line 174
    move-result v4

    .line 175
    if-eqz v4, :cond_2

    .line 177
    const-string/jumbo v4, "connected"

    .line 180
    goto :goto_1

    .line 181
    :cond_2
    const-string/jumbo v4, "disconnected"

    .line 184
    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 191
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 193
    monitor-enter v2

    .line 194
    :try_start_0
    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 196
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 199
    move-result-object v3

    .line 200
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 202
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    move-result-object v3

    .line 206
    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 208
    const/4 v4, 0x0

    .line 209
    const/4 v5, 0x1

    .line 210
    if-eqz v3, :cond_3

    .line 212
    move v6, v5

    .line 213
    goto :goto_2

    .line 214
    :cond_3
    move v6, v4

    .line 215
    :goto_2
    if-eqz v6, :cond_4

    .line 217
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceInventory;->isBtStateConnected(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)Z

    .line 220
    move-result v7

    .line 221
    if-nez v7, :cond_4

    .line 223
    move v7, v5

    .line 224
    goto :goto_3

    .line 225
    :catchall_0
    move-exception p0

    .line 226
    goto/16 :goto_8

    .line 228
    :cond_4
    move v7, v4

    .line 229
    :goto_3
    if-nez v6, :cond_5

    .line 231
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceInventory;->isBtStateConnected(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)Z

    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_5

    .line 237
    move v6, v5

    .line 238
    goto :goto_4

    .line 239
    :cond_5
    move v6, v4

    .line 240
    :goto_4
    iget v8, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 242
    const/4 v9, 0x0

    .line 243
    if-eq v8, v5, :cond_14

    .line 245
    const/4 v10, 0x2

    .line 246
    if-eq v8, v10, :cond_e

    .line 248
    const/16 p2, 0xb

    .line 250
    if-eq v8, p2, :cond_c

    .line 252
    const/16 p2, 0x1a

    .line 254
    if-eq v8, p2, :cond_a

    .line 256
    const/16 p2, 0x15

    .line 258
    if-eq v8, p2, :cond_7

    .line 260
    const/16 p2, 0x16

    .line 262
    if-ne v8, p2, :cond_6

    .line 264
    goto :goto_5

    .line 265
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 267
    new-instance p2, Ljava/lang/StringBuilder;

    .line 269
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    iget p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 274
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object p1

    .line 285
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 288
    throw p0

    .line 289
    :cond_7
    if-eqz v7, :cond_8

    .line 291
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    .line 294
    goto/16 :goto_7

    .line 296
    :cond_8
    if-eqz v6, :cond_16

    .line 298
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 300
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 303
    move-result-object p1

    .line 304
    if-nez p1, :cond_9

    .line 306
    const-string p1, ""

    .line 308
    :cond_9
    invoke-virtual {p0, p3, v1, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceAvailable(ILjava/lang/String;Ljava/lang/String;)V

    .line 311
    goto/16 :goto_7

    .line 313
    :cond_a
    :goto_5
    if-eqz v7, :cond_b

    .line 315
    iget p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 317
    iget p3, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 319
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeLeAudioDeviceUnavailableNow(IILjava/lang/String;)V

    .line 322
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    .line 324
    if-eqz p2, :cond_16

    .line 326
    iget-boolean p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    .line 328
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 330
    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker;->isDualModeActive()Z

    .line 333
    move-result p2

    .line 334
    if-nez p2, :cond_16

    .line 336
    if-eqz p1, :cond_16

    .line 338
    new-instance p1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;

    .line 340
    const/4 p2, 0x1

    .line 341
    invoke-direct {p1, p0, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 344
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 347
    goto/16 :goto_7

    .line 349
    :cond_b
    if-eqz v6, :cond_16

    .line 351
    invoke-virtual {p0, p1, p3}, Lcom/android/server/audio/AudioDeviceInventory;->makeLeAudioDeviceAvailable(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V

    .line 354
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    .line 356
    if-eqz p2, :cond_16

    .line 358
    iget-boolean p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    .line 360
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 362
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isDualModeActive()Z

    .line 365
    move-result p0

    .line 366
    if-nez p0, :cond_16

    .line 368
    if-eqz p2, :cond_16

    .line 370
    iget-object p0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 372
    invoke-static {p0}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V

    .line 375
    goto/16 :goto_7

    .line 377
    :cond_c
    if-eqz v7, :cond_d

    .line 379
    new-instance p1, Landroid/media/AudioDeviceAttributes;

    .line 381
    const/high16 p2, -0x7ffe0000

    .line 383
    invoke-direct {p1, p2, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 386
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 388
    invoke-virtual {p3, p1, v4, v4}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 391
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 393
    invoke-static {p2, v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 396
    move-result-object p2

    .line 397
    invoke-virtual {p3, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postCheckCommunicationDeviceRemoval(Landroid/media/AudioDeviceAttributes;)V

    .line 405
    goto/16 :goto_7

    .line 407
    :cond_d
    if-eqz v6, :cond_16

    .line 409
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcAvailable(Ljava/lang/String;)V

    .line 412
    goto/16 :goto_7

    .line 414
    :cond_e
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 416
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 418
    iget v4, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 420
    iget v8, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    .line 422
    invoke-virtual {p3, v0, v4, v8}, Lcom/android/server/audio/AudioDeviceBroker;->connectA2dpDevice(Landroid/bluetooth/BluetoothDevice;II)V

    .line 425
    const/16 p3, 0x80

    .line 427
    if-eqz v7, :cond_10

    .line 429
    iget p1, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 431
    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(ILjava/lang/String;)V

    .line 434
    invoke-virtual {p0, p3}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    .line 437
    move-result p1

    .line 438
    if-nez p1, :cond_f

    .line 440
    invoke-virtual {p0, v9, v5}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 443
    :cond_f
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    .line 445
    if-eqz p1, :cond_16

    .line 447
    new-instance p1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;

    .line 449
    const/4 p2, 0x0

    .line 450
    invoke-direct {p1, p0, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 453
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 456
    goto :goto_7

    .line 457
    :cond_10
    if-eqz v6, :cond_16

    .line 459
    iget v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    .line 461
    const/4 v1, 0x3

    .line 462
    const/4 v3, -0x1

    .line 463
    if-eq v0, v3, :cond_11

    .line 465
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 467
    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 469
    const-string/jumbo v4, "onSetBtActiveDevice"

    .line 472
    iget-object p3, p3, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 474
    invoke-virtual {p3, v1, v0, v3, v4}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 477
    goto :goto_6

    .line 478
    :cond_11
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 480
    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 482
    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;)I

    .line 485
    move-result v0

    .line 486
    if-eq v0, v3, :cond_12

    .line 488
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 490
    const-string/jumbo v4, "onSetBtActiveDevice"

    .line 493
    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 495
    invoke-virtual {v3, v1, v0, p3, v4}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 498
    :cond_12
    :goto_6
    sget-boolean p3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    .line 500
    if-eqz p3, :cond_13

    .line 502
    iget-object p3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 504
    invoke-static {p3}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V

    .line 507
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceAvailable(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V

    .line 510
    goto :goto_7

    .line 511
    :cond_14
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 513
    iget-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    .line 515
    if-eqz p2, :cond_16

    .line 517
    if-eqz v7, :cond_15

    .line 519
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 521
    invoke-virtual {p0, v9}, Lcom/android/server/audio/BtHelper;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 524
    goto :goto_7

    .line 525
    :cond_15
    if-eqz v6, :cond_16

    .line 527
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 529
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 534
    :cond_16
    :goto_7
    monitor-exit v2

    .line 535
    return-void

    .line 536
    :goto_8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    throw p0
.end method

.method public final onSetDeviceConnectionStateForceByUser(Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "send NEW_ROUTES MSG, BT Name is "

    .line 4
    const-string v1, "Device is changed by force ret : "

    .line 6
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mDevice:I

    .line 8
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mAddress:Ljava/lang/String;

    .line 10
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mActiveBTDeviceName:Ljava/lang/String;

    .line 12
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 14
    monitor-enter v4

    .line 15
    :try_start_0
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 21
    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 27
    if-nez v2, :cond_0

    .line 29
    const-string p0, "AS.AudioDeviceInventory"

    .line 31
    const-string p1, "There is no device spec in connected devices"

    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    monitor-exit v4

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 42
    new-instance v6, Landroid/media/AudioDeviceAttributes;

    .line 44
    iget v2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 46
    const-string v7, ""

    .line 48
    invoke-direct {v6, v2, v3, v7}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v2, 0x2

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 56
    move-result v2

    .line 57
    const-string v3, "AS.AudioDeviceInventory"

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 77
    monitor-enter v1

    .line 78
    :try_start_1
    const-string v2, "AS.AudioDeviceInventory"

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 97
    iput-object p1, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 99
    if-eqz p1, :cond_1

    .line 101
    const-string p1, "BT"

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    const-string p1, "OTHERS"

    .line 106
    :goto_0
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mForcePath:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    const/4 v5, 0x0

    .line 114
    const/4 v6, 0x0

    .line 115
    const/16 v3, 0xd

    .line 117
    const/4 v7, 0x0

    .line 118
    const/4 v8, 0x0

    .line 119
    const/4 v4, 0x1

    .line 120
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 125
    :catchall_1
    move-exception p0

    .line 126
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    throw p0

    .line 128
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    throw p0
.end method

.method public final onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 7
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 10
    move-result v2

    .line 11
    sget-object v3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 13
    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;

    .line 15
    invoke-direct {v4, v1}, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;-><init>(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    .line 18
    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 21
    new-instance v3, Landroid/media/MediaMetrics$Item;

    .line 23
    const-string v4, "audio.device.onSetWiredDeviceConnectionState"

    .line 25
    invoke-direct {v3, v4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 28
    sget-object v4, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 30
    iget-object v5, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 32
    invoke-virtual {v5}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 39
    move-result-object v3

    .line 40
    sget-object v4, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 42
    invoke-static {v2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 49
    move-result-object v3

    .line 50
    sget-object v4, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 52
    iget v5, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    .line 54
    if-nez v5, :cond_0

    .line 56
    const-string/jumbo v5, "disconnected"

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-string/jumbo v5, "connected"

    .line 63
    :goto_0
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 66
    move-result-object v3

    .line 67
    iget v4, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    .line 69
    const/4 v5, 0x2

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    if-nez v4, :cond_2

    .line 74
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    .line 76
    iget-object v8, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 78
    invoke-virtual {v8}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 81
    move-result v8

    .line 82
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v8

    .line 86
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_2

    .line 92
    invoke-static {v5}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    .line 95
    move-result-object v4

    .line 96
    array-length v8, v4

    .line 97
    move v9, v7

    .line 98
    :goto_1
    if-ge v9, v8, :cond_2

    .line 100
    aget-object v10, v4, v9

    .line 102
    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    .line 105
    move-result v11

    .line 106
    iget-object v12, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 108
    invoke-virtual {v12}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 111
    move-result v12

    .line 112
    if-ne v11, v12, :cond_1

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    move-object v10, v6

    .line 119
    :goto_2
    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 121
    monitor-enter v4

    .line 122
    :try_start_0
    iget v8, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    .line 124
    const/4 v13, 0x1

    .line 125
    if-nez v8, :cond_3

    .line 127
    sget-object v8, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v9

    .line 133
    check-cast v8, Ljava/util/HashSet;

    .line 135
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 138
    move-result v8

    .line 139
    if-eqz v8, :cond_3

    .line 141
    iget-object v8, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 143
    const-string/jumbo v9, "onSetWiredDeviceConnectionState state DISCONNECTED"

    .line 146
    invoke-virtual {v8, v9, v13, v7}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(Ljava/lang/String;ZZ)V

    .line 149
    goto :goto_3

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    goto/16 :goto_a

    .line 153
    :cond_3
    :goto_3
    iget-object v8, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 155
    iget v9, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    .line 157
    if-ne v9, v13, :cond_4

    .line 159
    move v9, v13

    .line 160
    goto :goto_4

    .line 161
    :cond_4
    move v9, v7

    .line 162
    :goto_4
    iget-boolean v11, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mForTest:Z

    .line 164
    invoke-virtual {v0, v8, v9, v11, v6}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZZLandroid/bluetooth/BluetoothDevice;)Z

    .line 167
    move-result v8

    .line 168
    if-nez v8, :cond_5

    .line 170
    sget-object v0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    .line 172
    const-string/jumbo v1, "change of connection state failed"

    .line 175
    invoke-virtual {v3, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 182
    monitor-exit v4

    .line 183
    return-void

    .line 184
    :cond_5
    iget v8, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    .line 186
    if-eqz v8, :cond_8

    .line 188
    and-int/lit8 v8, v2, 0xc

    .line 190
    if-eqz v8, :cond_6

    .line 192
    invoke-static {}, Lcom/samsung/android/server/audio/FactoryUtils;->increaseEarJackCounter()V

    .line 195
    :cond_6
    sget-object v8, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    .line 197
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    move-result-object v9

    .line 201
    check-cast v8, Ljava/util/HashSet;

    .line 203
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 206
    move-result v8

    .line 207
    if-eqz v8, :cond_7

    .line 209
    iget-object v8, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 211
    const-string/jumbo v9, "onSetWiredDeviceConnectionState state not DISCONNECTED"

    .line 214
    invoke-virtual {v8, v9, v7, v7}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(Ljava/lang/String;ZZ)V

    .line 217
    :cond_7
    iget-object v8, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 219
    iget-object v9, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    .line 221
    iget-object v8, v8, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 223
    invoke-virtual {v8, v2, v9}, Lcom/android/server/audio/AudioService;->checkMusicActive(ILjava/lang/String;)V

    .line 226
    :cond_8
    const/16 v8, 0x400

    .line 228
    if-ne v2, v8, :cond_9

    .line 230
    iget-object v9, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 232
    iget v11, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    .line 234
    iget-object v12, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    .line 236
    iget-object v9, v9, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 238
    iget-object v14, v9, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 240
    const/16 v15, 0x1c

    .line 242
    const/16 v16, 0x0

    .line 244
    const/16 v18, 0x0

    .line 246
    const/16 v20, 0x0

    .line 248
    move/from16 v17, v11

    .line 250
    move-object/from16 v19, v12

    .line 252
    invoke-static/range {v14 .. v20}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 255
    :cond_9
    iget-object v9, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 257
    iget-object v9, v9, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 259
    invoke-static {v9, v2}, Lcom/samsung/android/server/audio/utils/AudioUtils;->wakeUpDeviceByWiredHeadset(Landroid/content/Context;I)V

    .line 262
    iget v9, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    .line 264
    if-nez v9, :cond_b

    .line 266
    sget-object v9, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    .line 268
    iget-object v11, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 270
    invoke-virtual {v11}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 273
    move-result v11

    .line 274
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    move-result-object v11

    .line 278
    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 281
    move-result v9

    .line 282
    if-eqz v9, :cond_b

    .line 284
    if-eqz v10, :cond_a

    .line 286
    iget-object v9, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 288
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    new-instance v11, Landroid/media/AudioAttributes$Builder;

    .line 293
    invoke-direct {v11}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 296
    invoke-virtual {v11, v13}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 299
    move-result-object v11

    .line 300
    invoke-virtual {v11}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 303
    move-result-object v11

    .line 304
    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getId()I

    .line 307
    move-result v10

    .line 308
    iget-object v9, v9, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 310
    invoke-virtual {v9, v11, v10, v6}, Lcom/android/server/audio/AudioService;->dispatchPreferredMixerAttributesChanged(Landroid/media/AudioAttributes;ILandroid/media/AudioMixerAttributes;)V

    .line 313
    goto :goto_5

    .line 314
    :cond_a
    const-string v6, "AS.AudioDeviceInventory"

    .line 316
    new-instance v9, Ljava/lang/StringBuilder;

    .line 318
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    const-string v10, "Didn\'t find AudioDeviceInfo to notify preferred mixer attributes change for type="

    .line 323
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v10, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 328
    invoke-virtual {v10}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 331
    move-result v10

    .line 332
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    move-result-object v9

    .line 339
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_b
    :goto_5
    iget v6, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    .line 344
    iget-object v9, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 346
    invoke-virtual {v9}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 349
    move-result-object v9

    .line 350
    iget-object v10, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 352
    invoke-virtual {v10}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    .line 355
    move-result-object v10

    .line 356
    invoke-virtual {v0, v2, v6, v9, v10}, Lcom/android/server/audio/AudioDeviceInventory;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    .line 359
    iget v1, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    .line 361
    const/4 v6, 0x4

    .line 362
    if-eq v2, v6, :cond_f

    .line 364
    const/16 v9, 0x8

    .line 366
    if-eq v2, v9, :cond_10

    .line 368
    if-eq v2, v8, :cond_e

    .line 370
    const/16 v8, 0x1000

    .line 372
    if-eq v2, v8, :cond_d

    .line 374
    const/16 v6, 0x4000

    .line 376
    if-eq v2, v6, :cond_c

    .line 378
    const/high16 v6, 0x20000

    .line 380
    if-eq v2, v6, :cond_10

    .line 382
    const/high16 v5, 0x4000000

    .line 384
    if-eq v2, v5, :cond_c

    .line 386
    const/high16 v5, 0x40000

    .line 388
    if-eq v2, v5, :cond_e

    .line 390
    const v5, 0x40001

    .line 393
    if-eq v2, v5, :cond_e

    .line 395
    move v5, v7

    .line 396
    goto :goto_6

    .line 397
    :cond_c
    const/16 v5, 0x10

    .line 399
    goto :goto_6

    .line 400
    :cond_d
    move v5, v6

    .line 401
    goto :goto_6

    .line 402
    :cond_e
    move v5, v9

    .line 403
    goto :goto_6

    .line 404
    :cond_f
    move v5, v13

    .line 405
    :cond_10
    :goto_6
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 407
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    if-nez v5, :cond_11

    .line 410
    :try_start_1
    monitor-exit v2

    .line 411
    goto :goto_8

    .line 412
    :catchall_1
    move-exception v0

    .line 413
    goto :goto_9

    .line 414
    :cond_11
    iget-object v6, v0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 416
    iget v7, v6, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 418
    if-eqz v1, :cond_12

    .line 420
    or-int v1, v7, v5

    .line 422
    goto :goto_7

    .line 423
    :cond_12
    not-int v1, v5

    .line 424
    and-int/2addr v1, v7

    .line 425
    :goto_7
    if-eq v1, v7, :cond_13

    .line 427
    iput v1, v6, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 429
    iget-object v11, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 431
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    const/16 v16, 0x0

    .line 436
    const/16 v17, 0x0

    .line 438
    const/16 v12, 0xd

    .line 440
    const/4 v14, 0x0

    .line 441
    const/4 v15, 0x0

    .line 442
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 445
    :cond_13
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 446
    :goto_8
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 450
    return-void

    .line 451
    :goto_9
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 452
    :try_start_4
    throw v0

    .line 453
    :goto_a
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 454
    throw v0
.end method

.method public final onSynchronizeAdiDeviceInInventory_l(Lcom/android/server/audio/AdiDeviceState;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 17
    const-string v3, " ads2="

    .line 19
    const-string v4, "AS.AudioDeviceInventory"

    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    if-eqz v1, :cond_9

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 31
    iget v7, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 33
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    .line 36
    move-result v8

    .line 37
    if-eq v7, v8, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    .line 43
    move-result-object v7

    .line 44
    iget-object v8, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 46
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v7

    .line 50
    const-string/jumbo v9, "synchronizeBleDeviceInInventory synced device pair ads1="

    .line 53
    iget v10, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 55
    if-eqz v7, :cond_5

    .line 57
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 59
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 62
    move-result-object v7

    .line 63
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v7

    .line 67
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v11

    .line 71
    if-eqz v11, :cond_5

    .line 73
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v11

    .line 77
    check-cast v11, Lcom/android/server/audio/AdiDeviceState;

    .line 79
    invoke-virtual {v11}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    .line 82
    move-result v12

    .line 83
    if-ne v10, v12, :cond_2

    .line 85
    iget-object v12, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    .line 87
    invoke-virtual {v11}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    .line 90
    move-result-object v13

    .line 91
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v12

    .line 95
    if-nez v12, :cond_3

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    .line 101
    move-result v0

    .line 102
    invoke-virtual {v2, v11}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    .line 105
    move-result v1

    .line 106
    if-ne v0, v1, :cond_4

    .line 108
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    .line 111
    move-result v0

    .line 112
    invoke-virtual {v11, v0}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    .line 115
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    .line 118
    move-result v0

    .line 119
    invoke-virtual {v11, v0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 122
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    .line 125
    move-result v0

    .line 126
    invoke-virtual {v11, v0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 129
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    .line 132
    move-result v0

    .line 133
    invoke-virtual {v11, v0}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 136
    invoke-virtual {v2, v11, v6}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 139
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 141
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    .line 145
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v7

    .line 161
    invoke-direct {v1, v7}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1, v6, v4}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 167
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 170
    :goto_2
    move v0, v5

    .line 171
    goto/16 :goto_4

    .line 173
    :cond_5
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 187
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 190
    move-result-object v1

    .line 191
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 194
    move-result-object v1

    .line 195
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    move-result v7

    .line 199
    if-eqz v7, :cond_0

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    move-result-object v7

    .line 205
    check-cast v7, Lcom/android/server/audio/AdiDeviceState;

    .line 207
    invoke-virtual {v7}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    .line 210
    move-result v11

    .line 211
    if-ne v10, v11, :cond_6

    .line 213
    invoke-virtual {v7}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    .line 216
    move-result-object v11

    .line 217
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    move-result v11

    .line 221
    if-nez v11, :cond_7

    .line 223
    goto :goto_3

    .line 224
    :cond_7
    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    .line 227
    move-result v0

    .line 228
    invoke-virtual {v2, v7}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    .line 231
    move-result v1

    .line 232
    if-ne v0, v1, :cond_8

    .line 234
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    .line 237
    move-result v0

    .line 238
    invoke-virtual {v7, v0}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    .line 241
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    .line 244
    move-result v0

    .line 245
    invoke-virtual {v7, v0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 248
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    .line 251
    move-result v0

    .line 252
    invoke-virtual {v7, v0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 255
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    .line 258
    move-result v0

    .line 259
    invoke-virtual {v7, v0}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 262
    invoke-virtual {v2, v7, v6}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 265
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 267
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 269
    new-instance v8, Ljava/lang/StringBuilder;

    .line 271
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    const-string v9, " peer ads2="

    .line 279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object v7

    .line 289
    invoke-direct {v1, v7}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1, v6, v4}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 295
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 298
    goto/16 :goto_2

    .line 300
    :cond_9
    move v0, v6

    .line 301
    :goto_4
    invoke-static {}, Landroid/media/audio/Flags;->automaticBtDeviceType()Z

    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_e

    .line 307
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 309
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 312
    move-result-object p0

    .line 313
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 316
    move-result-object p0

    .line 317
    :cond_a
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_d

    .line 323
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    move-result-object v1

    .line 327
    check-cast v1, Lcom/android/server/audio/AdiDeviceState;

    .line 329
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    .line 332
    move-result v7

    .line 333
    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    .line 336
    move-result v8

    .line 337
    if-eq v7, v8, :cond_a

    .line 339
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    .line 342
    move-result-object v7

    .line 343
    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    .line 346
    move-result-object v8

    .line 347
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    move-result v7

    .line 351
    if-nez v7, :cond_b

    .line 353
    goto :goto_5

    .line 354
    :cond_b
    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    .line 357
    move-result p0

    .line 358
    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    .line 361
    move-result v7

    .line 362
    if-ne p0, v7, :cond_c

    .line 364
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    .line 367
    move-result p0

    .line 368
    invoke-virtual {v1, p0}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    .line 371
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    .line 374
    move-result p0

    .line 375
    invoke-virtual {v1, p0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 378
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    .line 381
    move-result p0

    .line 382
    invoke-virtual {v1, p0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 385
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    .line 388
    move-result p0

    .line 389
    invoke-virtual {v1, p0}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 392
    invoke-virtual {v2, v1, v6}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 395
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 397
    new-instance v7, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 399
    new-instance v8, Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v9, "synchronizeDeviceProfilesInInventory synced device pair ads1="

    .line 404
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    move-result-object p1

    .line 420
    invoke-direct {v7, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v7, v6, v4}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 426
    invoke-virtual {p0, v7}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 429
    goto :goto_6

    .line 430
    :cond_d
    move v5, v6

    .line 431
    :goto_6
    or-int/2addr v0, v5

    .line 432
    :cond_e
    if-eqz v0, :cond_f

    .line 434
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 437
    :cond_f
    return-void
.end method

.method public final onSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->onSynchronizeAdiDeviceInInventory_l(Lcom/android/server/audio/AdiDeviceState;)V

    .line 12
    goto :goto_1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 17
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    .line 37
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onSynchronizeAdiDeviceInInventory_l(Lcom/android/server/audio/AdiDeviceState;)V

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    return-void

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    goto :goto_3

    .line 46
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    :try_start_4
    throw p0

    .line 48
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 49
    throw p0
.end method

.method public final onToggleHdmi()V
    .locals 6

    .line 1
    new-instance v0, Landroid/media/MediaMetrics$Item;

    .line 3
    const-string v1, "audio.device.onToggleHdmi"

    .line 5
    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object v1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 10
    const/16 v2, 0x400

    .line 12
    invoke-static {v2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    const-string v3, ""

    .line 25
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 31
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 37
    if-nez v3, :cond_0

    .line 39
    const-string p0, "AS.AudioDeviceInventory"

    .line 41
    const-string/jumbo v2, "invalid null DeviceInfo in onToggleHdmi"

    .line 44
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    .line 49
    const-string/jumbo v2, "invalid null DeviceInfo"

    .line 52
    invoke-virtual {v0, p0, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    .line 65
    const-string v4, ""

    .line 67
    invoke-direct {v3, v2, v4}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 70
    const-string v4, "android"

    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 76
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    .line 78
    const-string v4, ""

    .line 80
    invoke-direct {v3, v2, v4}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 83
    const-string v2, "android"

    .line 85
    const/4 v4, 0x1

    .line 86
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 89
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 93
    return-void

    .line 94
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw p0
.end method

.method public final onUpdateLeAudioGroupAddresses(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 11
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_6

    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 31
    iget v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mGroupId:I

    .line 33
    if-ne v4, p1, :cond_0

    .line 35
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 41
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 43
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getLeAudioGroupAddresses(I)Ljava/util/List;

    .line 46
    move-result-object v1

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto/16 :goto_3

    .line 51
    :cond_1
    :goto_1
    iget-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    .line 53
    const-string v5, ""

    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_3

    .line 61
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v4

    .line 65
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_4

    .line 71
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Landroid/util/Pair;

    .line 77
    iget-object v6, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 79
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_2

    .line 87
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 89
    check-cast v4, Ljava/lang/String;

    .line 91
    invoke-static {v4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 95
    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    .line 97
    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 99
    check-cast v4, Ljava/lang/String;

    .line 101
    invoke-static {v4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v4

    .line 105
    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    new-instance v4, Landroid/util/Pair;

    .line 110
    iget-object v5, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    .line 112
    iget-object v6, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    .line 114
    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 120
    move-result v4

    .line 121
    if-nez v4, :cond_4

    .line 123
    const-string v4, ""

    .line 125
    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    .line 127
    const-string v4, ""

    .line 129
    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    .line 131
    :cond_4
    :goto_2
    iget-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    .line 133
    const-string v5, ""

    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_0

    .line 141
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 144
    move-result-object v4

    .line 145
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_0

    .line 151
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    move-result-object v5

    .line 155
    check-cast v5, Landroid/util/Pair;

    .line 157
    iget-object v6, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 159
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 161
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    move-result v6

    .line 165
    if-eqz v6, :cond_5

    .line 167
    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 169
    check-cast v4, Ljava/lang/String;

    .line 171
    invoke-static {v4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v4

    .line 175
    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    .line 177
    goto/16 :goto_0

    .line 179
    :cond_6
    monitor-exit v0

    .line 180
    return-void

    .line 181
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    throw p0
.end method

.method public final purgeDevicesRoles_l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    .line 3
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;

    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 9
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->purgeRoles(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;)V

    .line 12
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    .line 14
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;

    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-direct {v1, p0, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 20
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->purgeRoles(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->reapplyExternalDevicesRoles()V

    .line 26
    return-void
.end method

.method public final reapplyExternalDevicesRoles()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 9
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 15
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 17
    monitor-enter v1

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 20
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, p0, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 26
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 29
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 32
    monitor-enter v0

    .line 33
    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 35
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;

    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-direct {v2, p0, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 41
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 44
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    .line 47
    monitor-enter v1

    .line 48
    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    .line 50
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;

    .line 52
    const/4 v3, 0x2

    .line 53
    invoke-direct {v2, p0, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 56
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    throw p0

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 66
    throw p0

    .line 67
    :catchall_2
    move-exception p0

    .line 68
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 69
    throw p0

    .line 70
    :catchall_3
    move-exception p0

    .line 71
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 72
    throw p0
.end method

.method public final sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1
    move/from16 v0, p1

    .line 3
    move/from16 v1, p2

    .line 5
    move-object/from16 v2, p3

    .line 7
    move-object/from16 v3, p0

    .line 9
    move-object/from16 v4, p4

    .line 11
    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v6, "sendDeviceConnectionIntent(dev:0x"

    .line 18
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v6, " state:0x"

    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v6, " address:"

    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v6, " name:"

    .line 47
    const-string v7, ");"

    .line 49
    invoke-static {v5, v2, v6, v4, v7}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 53
    const-string v6, "AS.AudioDeviceInventory"

    .line 55
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v5, Landroid/content/Intent;

    .line 60
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 63
    const-string/jumbo v8, "builtInMic"

    .line 66
    const-string v9, ""

    .line 68
    const/high16 v10, 0x4000000

    .line 70
    const/high16 v11, -0x7e000000

    .line 72
    const-string/jumbo v12, "microphone"

    .line 75
    const-string v13, "android.intent.action.HEADSET_PLUG"

    .line 77
    if-eq v0, v11, :cond_e

    .line 79
    const/4 v14, 0x4

    .line 80
    if-eq v0, v14, :cond_d

    .line 82
    const/16 v14, 0x8

    .line 84
    if-eq v0, v14, :cond_c

    .line 86
    const v14, 0x40001

    .line 89
    const/high16 v15, 0x40000

    .line 91
    const/16 v7, 0x400

    .line 93
    if-eq v0, v7, :cond_0

    .line 95
    const/high16 v7, 0x20000

    .line 97
    if-eq v0, v7, :cond_c

    .line 99
    if-eq v0, v10, :cond_1

    .line 101
    if-eq v0, v15, :cond_0

    .line 103
    if-eq v0, v14, :cond_0

    .line 105
    goto/16 :goto_5

    .line 107
    :cond_0
    const/4 v7, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-static {v11, v9}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    .line 115
    move-result v6

    .line 116
    const/4 v7, 0x1

    .line 117
    if-ne v6, v7, :cond_2

    .line 119
    move v15, v7

    .line 120
    goto :goto_0

    .line 121
    :cond_2
    const/4 v15, 0x0

    .line 122
    :goto_0
    invoke-virtual {v5, v12, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    sget-boolean v6, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_USB_HEADSET_FOR_CAMCORDER:Z

    .line 127
    if-nez v6, :cond_f

    .line 129
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    goto/16 :goto_5

    .line 134
    :goto_1
    const-string v8, "android.media.action.HDMI_AUDIO_PLUG"

    .line 136
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v8, "android.media.extra.AUDIO_PLUG_STATE"

    .line 141
    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    if-eq v1, v7, :cond_3

    .line 146
    goto/16 :goto_5

    .line 148
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    .line 150
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-array v9, v7, [I

    .line 155
    invoke-static {v8, v9}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    .line 158
    move-result v7

    .line 159
    if-eqz v7, :cond_4

    .line 161
    const-string/jumbo v8, "listAudioPorts error "

    .line 164
    const-string v9, " in configureHdmiPlugIntent"

    .line 166
    invoke-static {v7, v8, v9, v6}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    goto/16 :goto_5

    .line 171
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 174
    move-result-object v6

    .line 175
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    move-result v7

    .line 179
    if-eqz v7, :cond_f

    .line 181
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    move-result-object v7

    .line 185
    check-cast v7, Landroid/media/AudioPort;

    .line 187
    instance-of v8, v7, Landroid/media/AudioDevicePort;

    .line 189
    if-nez v8, :cond_5

    .line 191
    goto :goto_2

    .line 192
    :cond_5
    check-cast v7, Landroid/media/AudioDevicePort;

    .line 194
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->type()I

    .line 197
    move-result v8

    .line 198
    const/16 v9, 0x400

    .line 200
    if-eq v8, v9, :cond_6

    .line 202
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->type()I

    .line 205
    move-result v8

    .line 206
    if-eq v8, v15, :cond_6

    .line 208
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->type()I

    .line 211
    move-result v8

    .line 212
    if-eq v8, v14, :cond_6

    .line 214
    goto :goto_2

    .line 215
    :cond_6
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->formats()[I

    .line 218
    move-result-object v8

    .line 219
    invoke-static {v8}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    .line 222
    move-result-object v8

    .line 223
    array-length v10, v8

    .line 224
    if-lez v10, :cond_9

    .line 226
    new-instance v10, Ljava/util/ArrayList;

    .line 228
    const/4 v11, 0x1

    .line 229
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    array-length v11, v8

    .line 233
    const/4 v12, 0x0

    .line 234
    :goto_3
    if-ge v12, v11, :cond_8

    .line 236
    aget v13, v8, v12

    .line 238
    if-eqz v13, :cond_7

    .line 240
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    move-result-object v13

    .line 244
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 249
    goto :goto_3

    .line 250
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 253
    move-result-object v8

    .line 254
    new-instance v10, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda8;

    .line 256
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-interface {v8, v10}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 262
    move-result-object v8

    .line 263
    invoke-interface {v8}, Ljava/util/stream/IntStream;->toArray()[I

    .line 266
    move-result-object v8

    .line 267
    const-string v10, "android.media.extra.ENCODINGS"

    .line 269
    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 272
    :cond_9
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->channelMasks()[I

    .line 275
    move-result-object v7

    .line 276
    array-length v8, v7

    .line 277
    const/4 v10, 0x0

    .line 278
    const/4 v11, 0x0

    .line 279
    :goto_4
    if-ge v10, v8, :cond_b

    .line 281
    aget v12, v7, v10

    .line 283
    invoke-static {v12}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    .line 286
    move-result v12

    .line 287
    if-le v12, v11, :cond_a

    .line 289
    move v11, v12

    .line 290
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 292
    goto :goto_4

    .line 293
    :cond_b
    const-string v7, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 295
    invoke-virtual {v5, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    goto :goto_2

    .line 299
    :cond_c
    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const/4 v6, 0x0

    .line 303
    invoke-virtual {v5, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    goto :goto_5

    .line 307
    :cond_d
    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const/4 v6, 0x1

    .line 311
    invoke-virtual {v5, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    goto :goto_5

    .line 315
    :cond_e
    const/4 v6, 0x1

    .line 316
    invoke-static {v10, v9}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    .line 319
    move-result v7

    .line 320
    if-ne v7, v6, :cond_13

    .line 322
    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {v5, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    sget-boolean v7, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_USB_HEADSET_FOR_CAMCORDER:Z

    .line 330
    if-nez v7, :cond_f

    .line 332
    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    :cond_f
    :goto_5
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 338
    move-result-object v6

    .line 339
    if-nez v6, :cond_10

    .line 341
    return-void

    .line 342
    :cond_10
    const-string/jumbo v6, "state"

    .line 345
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    const-string v1, "address"

    .line 350
    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string/jumbo v1, "portName"

    .line 356
    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const/high16 v1, 0x40000000    # 2.0f

    .line 361
    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 367
    move-result-wide v1

    .line 368
    :try_start_0
    iget-object v4, v3, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 370
    invoke-virtual {v4, v5}, Lcom/android/server/audio/SystemServerAdapter;->broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V

    .line 373
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->isWiredDeviceType(I)Z

    .line 376
    move-result v4

    .line 377
    if-eqz v4, :cond_11

    .line 379
    new-instance v4, Landroid/content/Intent;

    .line 381
    const-string/jumbo v6, "com.sec.android.contextaware.HEADSET_PLUG"

    .line 384
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 390
    move-result-object v5

    .line 391
    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 394
    const/16 v5, 0x20

    .line 396
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 399
    const/high16 v5, 0x1000000

    .line 401
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 404
    iget-object v5, v3, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 406
    invoke-virtual {v5, v4}, Lcom/android/server/audio/SystemServerAdapter;->broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    goto :goto_6

    .line 410
    :catchall_0
    move-exception v0

    .line 411
    goto :goto_7

    .line 412
    :cond_11
    :goto_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 415
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->isWiredDeviceType(I)Z

    .line 418
    move-result v0

    .line 419
    if-eqz v0, :cond_12

    .line 421
    iget-object v0, v3, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 423
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isForceSpeakerOn()Z

    .line 426
    move-result v1

    .line 427
    if-eqz v1, :cond_12

    .line 429
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 431
    const/4 v7, 0x0

    .line 432
    const/4 v8, 0x0

    .line 433
    const/16 v3, 0x8

    .line 435
    const/4 v4, 0x2

    .line 436
    const/4 v5, 0x1

    .line 437
    const/4 v6, 0x1

    .line 438
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 441
    :cond_12
    return-void

    .line 442
    :goto_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 445
    throw v0

    .line 446
    :cond_13
    return-void
.end method

.method public final setBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "setBluetoothActiveDevice "

    .line 4
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-boolean v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    .line 9
    if-nez v2, :cond_3

    .line 11
    iget v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 13
    const/16 v3, 0x16

    .line 15
    if-eq v2, v3, :cond_0

    .line 17
    const/16 v3, 0x1a

    .line 19
    if-ne v2, v3, :cond_1

    .line 21
    :cond_0
    iget-boolean v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    .line 23
    if-nez v3, :cond_2

    .line 25
    :cond_1
    const/16 v3, 0x15

    .line 27
    if-eq v2, v3, :cond_2

    .line 29
    const/4 v3, 0x2

    .line 30
    if-ne v2, v3, :cond_3

    .line 32
    :cond_2
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceInventory;->isBtStateConnected(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)Z

    .line 35
    move-result v2

    .line 36
    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 38
    iget v4, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mMusicDevice:I

    .line 40
    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    .line 43
    move-result v2

    .line 44
    :goto_0
    move v9, v2

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    const/4 v2, 0x0

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    const-string v2, "AS.AudioDeviceInventory"

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, " delay(ms): "

    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 81
    const/4 v4, 0x7

    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v5, 0x2

    .line 85
    move-object v8, p1

    .line 86
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 91
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method

.method public final setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 6
    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 8
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    if-nez p1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 22
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;

    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-direct {v2, v3, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;-><init>(ILjava/lang/Object;)V

    .line 36
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 44
    iput-object p1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 46
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    if-eqz p2, :cond_2

    .line 53
    const/16 p0, 0x24

    .line 55
    :goto_0
    move v3, p0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/16 p0, 0xd

    .line 59
    goto :goto_0

    .line 60
    :goto_1
    const/4 v5, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 68
    :cond_3
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

.method public final setDeviceToForceByUser(ILjava/lang/String;Z)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p3

    .line 7
    const-string/jumbo v3, "setAudioPath delay : "

    .line 10
    const-string/jumbo v4, "setDeviceToForceByUser(true) from u/pid:"

    .line 13
    sget-object v5, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 15
    new-instance v6, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 17
    const-string/jumbo v7, "setDeviceToForceByUser : device = "

    .line 20
    const-string v8, " address = "

    .line 22
    invoke-static {v1, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object v7

    .line 26
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v8

    .line 30
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v8, " force = "

    .line 35
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string v8, " uid = "

    .line 43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 49
    move-result v8

    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v8, " pid = "

    .line 55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 61
    move-result v8

    .line 62
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v7

    .line 69
    invoke-direct {v6, v7}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 72
    const-string v7, "AS.AudioDeviceInventory"

    .line 74
    const/4 v8, 0x0

    .line 75
    invoke-virtual {v6, v8, v7}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 78
    invoke-virtual {v5, v6}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 81
    const v5, 0x8000

    .line 84
    if-ne v1, v5, :cond_0

    .line 86
    const-string v5, "AS.AudioDeviceInventory"

    .line 88
    const-string/jumbo v6, "setDeviceToForceByUser: remote submix should use address 0"

    .line 91
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v5, "0"

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    move-object/from16 v5, p2

    .line 99
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 102
    move-result v6

    .line 103
    const/16 v7, 0x3ea

    .line 105
    if-ne v6, v7, :cond_1

    .line 107
    if-nez v2, :cond_1

    .line 109
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 111
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 113
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_1

    .line 119
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 121
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 123
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getPinDeviceInternal()I

    .line 126
    move-result v2

    .line 127
    const/16 v6, 0x80

    .line 129
    if-ne v2, v6, :cond_1

    .line 131
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 133
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 135
    const/4 v7, 0x3

    .line 136
    invoke-virtual {v2, v7}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 139
    move-result v2

    .line 140
    if-eq v2, v6, :cond_1

    .line 142
    const-string v1, "AS.AudioDeviceInventory"

    .line 144
    const-string v2, "Device does not change while MultiSound On"

    .line 146
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioDeviceInventory;->changeActiveBluetoothDevice(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 153
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 155
    monitor-enter v2

    .line 156
    :try_start_0
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 158
    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 160
    monitor-exit v2

    .line 161
    return v8

    .line 162
    :catchall_0
    move-exception v0

    .line 163
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    throw v0

    .line 165
    :cond_1
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 167
    monitor-enter v2

    .line 168
    :try_start_1
    invoke-static {v1, v5}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object v6

    .line 172
    iget-object v7, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 174
    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    move-result-object v6

    .line 178
    check-cast v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 180
    const/4 v7, -0x1

    .line 181
    if-nez v6, :cond_2

    .line 183
    sget-object v6, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    .line 185
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object v9

    .line 189
    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 192
    move-result v6

    .line 193
    if-nez v6, :cond_2

    .line 195
    const-string v0, "AS.AudioDeviceInventory"

    .line 197
    const-string v1, "There is no device spec in connected devices"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v2

    .line 203
    return v7

    .line 204
    :catchall_1
    move-exception v0

    .line 205
    goto/16 :goto_3

    .line 207
    :cond_2
    sget-object v6, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 209
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    move-result-object v9

    .line 213
    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 216
    move-result v6

    .line 217
    const/4 v9, 0x1

    .line 218
    if-eqz v6, :cond_3

    .line 220
    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioDeviceInventory;->changeActiveBluetoothDevice(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    move-result-object v3

    .line 224
    new-instance v6, Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 232
    move-result v4

    .line 233
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const-string v4, "/"

    .line 238
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 244
    move-result v4

    .line 245
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    move-result-object v4

    .line 252
    iget-object v6, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 254
    invoke-virtual {v6, v4, v9, v8}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(Ljava/lang/String;ZZ)V

    .line 257
    :goto_1
    move v15, v8

    .line 258
    goto :goto_2

    .line 259
    :cond_3
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    .line 261
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    move-result-object v6

    .line 265
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_5

    .line 271
    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioDeviceInventory;->changeActiveBleDevice(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    move-result-object v3

    .line 275
    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 277
    invoke-virtual {v4, v1}, Lcom/android/server/audio/AudioDeviceBroker;->updateLeAudioVolume(I)V

    .line 280
    if-nez v3, :cond_4

    .line 282
    monitor-exit v2

    .line 283
    return v7

    .line 284
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 286
    const-string/jumbo v6, "setDeviceToForceByUser(true) BLE address = "

    .line 289
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-static {v5}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    move-result-object v6

    .line 296
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v6, " from u/pid:"

    .line 301
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 307
    move-result v6

    .line 308
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    const-string v6, "/"

    .line 313
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 319
    move-result v6

    .line 320
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object v4

    .line 327
    iget-object v6, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 329
    invoke-virtual {v6, v4, v9, v8}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(Ljava/lang/String;ZZ)V

    .line 332
    goto :goto_1

    .line 333
    :cond_5
    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 335
    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    .line 338
    move-result-object v4

    .line 339
    const/4 v6, 0x0

    .line 340
    if-eqz v4, :cond_6

    .line 342
    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothA2dp;->setAudioPath(I)I

    .line 345
    move-result v4

    .line 346
    const-string v7, "AS.AudioDeviceInventory"

    .line 348
    new-instance v9, Ljava/lang/StringBuilder;

    .line 350
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    move-result-object v3

    .line 360
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move v15, v4

    .line 364
    move-object v3, v6

    .line 365
    goto :goto_2

    .line 366
    :cond_6
    move-object v3, v6

    .line 367
    goto :goto_1

    .line 368
    :goto_2
    iget-object v9, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 370
    new-instance v14, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;

    .line 372
    invoke-direct {v14, v1, v5, v3}, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v13, 0x0

    .line 376
    const/4 v11, 0x2

    .line 377
    const/16 v10, 0xac8

    .line 379
    const/4 v12, 0x0

    .line 380
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 383
    monitor-exit v2

    .line 384
    return v8

    .line 385
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 386
    throw v0
.end method

.method public final setDevicesRoleForStrategy(IZLjava/util/List;)I
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    .line 8
    :goto_0
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 14
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;

    .line 16
    const/4 v2, 0x6

    .line 17
    invoke-direct {v1, p0, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 20
    invoke-static {p2, v0, v1, p1, p3}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;ILjava/util/List;)I

    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p2, :cond_1

    .line 11
    invoke-static {v1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->isWiredDeviceType(I)Z

    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 17
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 19
    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {v3}, Lcom/samsung/android/server/audio/utils/KnoxAudioUtils;->isRestrictedHeadphone(Landroid/content/Context;)Z

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 27
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_0

    .line 33
    move p2, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 42
    move-result v1

    .line 43
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    .line 46
    move-result v9

    .line 47
    const-string/jumbo v1, "h2w-before-boot-completed"

    .line 50
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    const/4 v4, 0x2

    .line 59
    if-eqz v1, :cond_4

    .line 61
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 64
    move-result v1

    .line 65
    iget-boolean v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mSystemReady:Z

    .line 67
    if-nez v2, :cond_2

    .line 69
    const/4 v2, 0x4

    .line 70
    if-eq v1, v2, :cond_3

    .line 72
    :cond_2
    const/16 v2, 0x8

    .line 74
    if-ne v1, v2, :cond_5

    .line 76
    :cond_3
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    .line 78
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    const-string/jumbo v3, "h2w"

    .line 85
    invoke-direct {v2, v1, p1, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 90
    new-instance v8, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    .line 92
    invoke-direct {v8, v2, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;-><init>(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 95
    const/4 v7, 0x0

    .line 96
    const/4 v5, 0x2

    .line 97
    const/4 v6, 0x0

    .line 98
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 104
    new-instance v8, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    .line 106
    invoke-direct {v8, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;-><init>(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 109
    const/4 v7, 0x0

    .line 110
    const/4 v5, 0x2

    .line 111
    const/4 v6, 0x0

    .line 112
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 115
    :cond_5
    :goto_1
    monitor-exit v0

    .line 116
    return-void

    .line 117
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    throw p0
.end method

.method public final updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBluetoothDualModeEnabled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 12
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 14
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v2

    .line 22
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x2

    .line 27
    if-eqz v3, :cond_e

    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 35
    iget v5, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 37
    invoke-static {v5}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 43
    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getPreferredAudioProfiles(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    .line 63
    move-result-object v5

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v7, "updateBluetoothPreferredModes_l processing device address: "

    .line 69
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v7, ", preferredProfiles: "

    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v6

    .line 87
    const-string v7, "AS.AudioDeviceInventory"

    .line 89
    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 94
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 97
    move-result-object v6

    .line 98
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object v6

    .line 102
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_d

    .line 108
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 114
    iget v8, v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 116
    invoke-static {v8}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 119
    move-result v8

    .line 120
    if-eqz v8, :cond_3

    .line 122
    iget-object v8, v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 124
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v8

    .line 128
    if-nez v8, :cond_4

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    iget v8, v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 133
    invoke-static {v8}, Landroid/media/AudioSystem;->isBluetoothA2dpOutDevice(I)Z

    .line 136
    move-result v9

    .line 137
    if-eqz v9, :cond_5

    .line 139
    move v8, v4

    .line 140
    goto :goto_2

    .line 141
    :cond_5
    invoke-static {v8}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    .line 144
    move-result v9

    .line 145
    if-eqz v9, :cond_6

    .line 147
    const/4 v8, 0x1

    .line 148
    goto :goto_2

    .line 149
    :cond_6
    invoke-static {v8}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_7

    .line 155
    const/16 v8, 0x16

    .line 157
    goto :goto_2

    .line 158
    :cond_7
    move v8, v1

    .line 159
    :goto_2
    if-nez v8, :cond_8

    .line 161
    goto :goto_1

    .line 162
    :cond_8
    const-string v9, "audio_mode_duplex"

    .line 164
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 167
    move-result v10

    .line 168
    invoke-virtual {p0, v10}, Lcom/android/server/audio/AudioDeviceInventory;->checkProfileIsConnected(I)I

    .line 171
    move-result v10

    .line 172
    if-eq v10, v8, :cond_a

    .line 174
    if-nez v10, :cond_9

    .line 176
    goto :goto_3

    .line 177
    :cond_9
    iget-object v10, v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDisabledModes:Landroid/util/ArraySet;

    .line 179
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 182
    goto :goto_4

    .line 183
    :cond_a
    :goto_3
    iget-object v10, v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDisabledModes:Landroid/util/ArraySet;

    .line 185
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 188
    :goto_4
    const-string v9, "audio_mode_output_only"

    .line 190
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 193
    move-result v10

    .line 194
    invoke-virtual {p0, v10}, Lcom/android/server/audio/AudioDeviceInventory;->checkProfileIsConnected(I)I

    .line 197
    move-result v10

    .line 198
    if-eq v10, v8, :cond_c

    .line 200
    if-nez v10, :cond_b

    .line 202
    goto :goto_5

    .line 203
    :cond_b
    iget-object v7, v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDisabledModes:Landroid/util/ArraySet;

    .line 205
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 208
    goto :goto_1

    .line 209
    :cond_c
    :goto_5
    iget-object v7, v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDisabledModes:Landroid/util/ArraySet;

    .line 211
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 214
    goto :goto_1

    .line 215
    :cond_d
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    goto/16 :goto_0

    .line 220
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->applyConnectedDevicesRoles_l()V

    .line 223
    if-eqz p1, :cond_f

    .line 225
    const/16 v0, 0x34

    .line 227
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 229
    invoke-virtual {p0, v0, v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 232
    :cond_f
    return-void
.end method

.method public final updateBtVolumeMonitor()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    .line 6
    move-result-object v1

    .line 7
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v2, v0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 43
    invoke-static {v0}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V

    .line 46
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    if-eqz v2, :cond_2

    .line 51
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothLeAudio;->getConnectedDevices()Ljava/util/List;

    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 61
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v1

    .line 65
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 77
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioDeviceInventory;->isBleHeadsetConnected(Ljava/lang/String;)Z

    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_1

    .line 87
    invoke-static {v2}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V

    .line 90
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    move-result p0

    .line 97
    if-nez p0, :cond_3

    .line 99
    const/4 p0, 0x0

    .line 100
    invoke-static {p0}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Z)V

    .line 103
    :cond_3
    return-void

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    monitor-exit v0

    .line 106
    throw p0
.end method
