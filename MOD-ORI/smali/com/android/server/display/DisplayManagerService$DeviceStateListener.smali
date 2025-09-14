.class public final Lcom/android/server/display/DisplayManagerService$DeviceStateListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 9
    .line 10
    const/16 v2, 0x9

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    if-eq v2, v3, :cond_2

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    if-eq v2, v3, :cond_1

    .line 46
    .line 47
    const/4 v3, 0x3

    .line 48
    if-eq v2, v3, :cond_1

    .line 49
    .line 50
    const/4 v3, 0x4

    .line 51
    const/4 v4, -0x1

    .line 52
    if-eq v2, v3, :cond_0

    .line 53
    .line 54
    const/4 v3, 0x5

    .line 55
    :cond_0
    move v3, v4

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v3, 0x0

    .line 58
    :cond_2
    :goto_0
    iput v3, v1, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->setDeviceStateLocked(I)V

    .line 72
    .line 73
    .line 74
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method
