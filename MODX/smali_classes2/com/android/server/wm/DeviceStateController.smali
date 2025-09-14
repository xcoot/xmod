.class public final Lcom/android/server/wm/DeviceStateController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConcurrentDisplayDeviceState:I

.field public mCurrentDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public mCurrentState:I

.field final mDeviceStateCallbacks:Ljava/util/Map;

.field public final mFoldedDeviceStates:[I

.field public final mHalfFoldedDeviceStates:[I

.field public final mMatchBuiltInDisplayOrientationToDefaultDisplay:Z

.field public final mOpenDeviceStates:[I

.field public final mRearDisplayDeviceStates:[I

.field public final mReverseRotationAroundZAxisStates:[I

.field public final mWmLock:Lcom/android/server/wm/WindowManagerGlobalLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerGlobalLock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mDeviceStateCallbacks:Ljava/util/Map;

    .line 10
    .line 11
    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mCurrentDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController;->mWmLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x107013c

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController;->mOpenDeviceStates:[I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const v0, 0x107010a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController;->mHalfFoldedDeviceStates:[I

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const v0, 0x1070103

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController;->mFoldedDeviceStates:[I

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    const v0, 0x1070142

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController;->mRearDisplayDeviceStates:[I

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const v0, 0x10e0089

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    iput p2, p0, Lcom/android/server/wm/DeviceStateController;->mConcurrentDisplayDeviceState:I

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const v0, 0x10700ce

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController;->mReverseRotationAroundZAxisStates:[I

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const p2, 0x11101e0

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iput-boolean p1, p0, Lcom/android/server/wm/DeviceStateController;->mMatchBuiltInDisplayOrientationToDefaultDisplay:Z

    .line 107
    .line 108
    return-void
.end method


# virtual methods
.method public copyDeviceStateCallbacks()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/DeviceStateController;->mWmLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateController;->mDeviceStateCallbacks:Ljava/util/Map;

    .line 13
    .line 14
    new-instance v2, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 30
    .line 31
    .line 32
    throw p0
.end method
