.class public final Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

.field public final synthetic val$batteryLevel:I

.field public final synthetic val$plugType:I

.field public final synthetic val$secondsToFullCharge:J


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;IIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$batteryLevel:I

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$secondsToFullCharge:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    .line 4
    .line 5
    iput v1, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mPlugType:I

    .line 6
    .line 7
    iget v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$batteryLevel:I

    .line 8
    .line 9
    iput v2, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mBatteryLevel:I

    .line 10
    .line 11
    iget-wide v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$secondsToFullCharge:J

    .line 12
    .line 13
    iput-wide v2, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSecondsToFullCharge:J

    .line 14
    .line 15
    const-string v2, "[SS]SleepChargingManager"

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-wide v5, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    .line 22
    .line 23
    cmp-long v5, v5, v3

    .line 24
    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    iput-wide v3, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "[updateChargingInfo]Started mChargeStartTime:"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 41
    .line 42
    iget-wide v3, v1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    .line 43
    .line 44
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    if-nez v1, :cond_1

    .line 49
    .line 50
    iget-wide v5, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    .line 51
    .line 52
    cmp-long v1, v5, v3

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iput-wide v3, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    .line 57
    .line 58
    const-string v0, "[updateChargingInfo]End mChargeStartTime"

    .line 59
    .line 60
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 64
    .line 65
    iget-boolean v1, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    .line 70
    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    iget-boolean v1, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    .line 79
    .line 80
    if-nez v1, :cond_3

    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isActivated()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "[updateChargingInfo]plugType:"

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, " ,batteryLevel:"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$batteryLevel:I

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, " ,secondsToFullCharge:"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-wide v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$secondsToFullCharge:J

    .line 118
    .line 119
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 132
    .line 133
    const/16 v1, 0xb

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 141
    .line 142
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 143
    .line 144
    .line 145
    :cond_3
    return-void
.end method
