.class public final Lcom/android/server/power/WirelessChargerMotionDetector$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/WirelessChargerMotionDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WirelessChargerMotionDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/WirelessChargerMotionDetector$1;->this$0:Lcom/android/server/power/WirelessChargerMotionDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 11

    .line 1
    iget-object v0, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v3, 0x2e

    .line 12
    .line 13
    if-ne v0, v3, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextWirelessChargingDetection;->getAction()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    if-eq p1, v4, :cond_0

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_0
    const-string p1, "WirelessChargerMotionDetector"

    .line 32
    .line 33
    const-string v5, "SContextListener: WIRELESS_CHARGING_DETECTION_MOVE"

    .line 34
    .line 35
    invoke-static {p1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/power/WirelessChargerMotionDetector$1;->this$0:Lcom/android/server/power/WirelessChargerMotionDetector;

    .line 39
    .line 40
    iput-boolean v4, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsDeviceMoving:Z

    .line 41
    .line 42
    iget-boolean v4, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsWirelessChargerSContextRegistered:Z

    .line 43
    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 47
    .line 48
    const/4 v4, 0x4

    .line 49
    invoke-virtual {p1, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/power/WirelessChargerMotionDetector$1;->this$0:Lcom/android/server/power/WirelessChargerMotionDetector;

    .line 56
    .line 57
    iget-boolean v4, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsWirelessChargerSContextRegistered:Z

    .line 58
    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    iget-object v4, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 62
    .line 63
    iget-object v5, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mWirelessChargerSContextListener:Lcom/android/server/power/WirelessChargerMotionDetector$1;

    .line 64
    .line 65
    invoke-virtual {v4, v5, v3}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 66
    .line 67
    .line 68
    iput-boolean v0, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsWirelessChargerSContextRegistered:Z

    .line 69
    .line 70
    :cond_1
    iget-object p1, p0, Lcom/android/server/power/WirelessChargerMotionDetector$1;->this$0:Lcom/android/server/power/WirelessChargerMotionDetector;

    .line 71
    .line 72
    iget-wide v3, p1, Lcom/android/server/power/WirelessChargerMotionDetector;->mPassedWakeupTime:J

    .line 73
    .line 74
    sub-long/2addr v1, v3

    .line 75
    const-wide/16 v3, 0x12c

    .line 76
    .line 77
    cmp-long p1, v1, v3

    .line 78
    .line 79
    if-gez p1, :cond_3

    .line 80
    .line 81
    const-string p1, "WirelessChargerMotionDetector"

    .line 82
    .line 83
    const-string v1, "SContextListener: received move lately"

    .line 84
    .line 85
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/power/WirelessChargerMotionDetector$1;->this$0:Lcom/android/server/power/WirelessChargerMotionDetector;

    .line 89
    .line 90
    const-wide/16 v1, 0x0

    .line 91
    .line 92
    iput-wide v1, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mPassedWakeupTime:J

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mCallbacks:Lcom/android/server/power/PowerManagerService$1;

    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 99
    .line 100
    monitor-enter p1

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 102
    .line 103
    iget v2, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 104
    .line 105
    or-int/lit8 v2, v2, 0x40

    .line 106
    .line 107
    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 108
    .line 109
    const-string v2, " powered change"

    .line 110
    .line 111
    iput-object v2, v1, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 114
    .line 115
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    move-object v2, v0

    .line 120
    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 121
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v3

    .line 126
    const-string v6, "android.server.power:POWER"

    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    const/4 v10, 0x0

    .line 137
    const/4 v5, 0x3

    .line 138
    const/16 v7, 0x3e8

    .line 139
    .line 140
    const/16 v9, 0x3e8

    .line 141
    .line 142
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    .line 143
    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 148
    .line 149
    .line 150
    monitor-exit p1

    .line 151
    goto :goto_0

    .line 152
    :catchall_0
    move-exception p0

    .line 153
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    throw p0

    .line 155
    :cond_2
    const-string p1, "WirelessChargerMotionDetector"

    .line 156
    .line 157
    const-string v1, "SContextListener: WIRELESS_CHARGING_DETECTION_NOMOVE"

    .line 158
    .line 159
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/server/power/WirelessChargerMotionDetector$1;->this$0:Lcom/android/server/power/WirelessChargerMotionDetector;

    .line 163
    .line 164
    iput-boolean v0, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsDeviceMoving:Z

    .line 165
    .line 166
    :cond_3
    :goto_0
    return-void
.end method
