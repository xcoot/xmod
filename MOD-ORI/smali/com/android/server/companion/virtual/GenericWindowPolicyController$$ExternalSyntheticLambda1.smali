.class public final synthetic Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/pm/ActivityInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/content/pm/ActivityInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;->f$2:Landroid/content/pm/ActivityInfo;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;->f$2:Landroid/content/pm/ActivityInfo;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mSecureWindowCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    monitor-exit v2

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-class v3, Landroid/hardware/display/DisplayManager;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    and-int/lit8 v1, v1, 0x2

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    const v3, 0x1041002

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->showToastWhereUidIsRunning(ILjava/lang/String;Landroid/os/Looper;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/companion/virtualdevice/flags/Flags;->metricsCollection()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_1

    .line 76
    .line 77
    const-string/jumbo p0, "virtual_devices.value_secure_window_blocked_count"

    .line 78
    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    return-void

    .line 90
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw p0
.end method
