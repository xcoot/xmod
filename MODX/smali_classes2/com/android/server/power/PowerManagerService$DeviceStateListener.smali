.class public final Lcom/android/server/power/PowerManagerService$DeviceStateListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public mDeviceState:I

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->mDeviceState:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "onStateChanged: mDualScreenPolicy="

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget v1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->mDeviceState:I

    .line 9
    .line 10
    if-eq v1, p1, :cond_4

    .line 11
    .line 12
    iput p1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->mDeviceState:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 20
    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 24
    .line 25
    iget v3, v2, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    if-eq p1, v4, :cond_1

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    if-eq p1, v5, :cond_0

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    if-eq p1, v5, :cond_0

    .line 37
    .line 38
    const/4 v5, 0x4

    .line 39
    const/4 v6, -0x1

    .line 40
    if-eq p1, v5, :cond_2

    .line 41
    .line 42
    const/4 v5, 0x5

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v6, 0x0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v6, v4

    .line 47
    :cond_2
    :goto_0
    iput v6, v2, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    .line 48
    .line 49
    if-eq v6, v3, :cond_3

    .line 50
    .line 51
    const-string p1, "PowerManagerService"

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 59
    .line 60
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 73
    .line 74
    iput-boolean v4, p1, Lcom/android/server/power/PowerManagerService;->mForceSetHalInteractiveMode:Z

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DeviceStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 81
    .line 82
    iget-object p0, v2, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v7

    .line 91
    const/4 v5, 0x0

    .line 92
    const/16 v6, 0x3e8

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    const/4 v4, 0x6

    .line 96
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IIIIJ)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p0

    .line 102
    :cond_4
    :goto_3
    return-void
.end method
