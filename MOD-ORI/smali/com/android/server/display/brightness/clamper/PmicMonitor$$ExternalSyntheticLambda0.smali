.class public final synthetic Lcom/android/server/display/brightness/clamper/PmicMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/PmicMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/PmicMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_8

    .line 16
    .line 17
    array-length v2, v1

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_9

    .line 21
    .line 22
    :cond_0
    new-instance v2, Landroid/util/IntArray;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    move v4, v3

    .line 29
    :goto_0
    array-length v5, v1

    .line 30
    const/4 v6, 0x3

    .line 31
    if-ge v4, v5, :cond_2

    .line 32
    .line 33
    aget-object v5, v1, v4

    .line 34
    .line 35
    iget-byte v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 36
    .line 37
    if-ne v7, v6, :cond_1

    .line 38
    .line 39
    iget v5, v5, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    .line 40
    .line 41
    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const-string v4, "PmicMonitor"

    .line 52
    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    const-string p0, "DISPLAY energyConsumerIds size is null"

    .line 56
    .line 57
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto/16 :goto_9

    .line 61
    .line 62
    :cond_3
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/server/powerstats/PowerStatsService$LocalService;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v1, 0x0

    .line 71
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :catch_0
    move-exception v0

    .line 79
    goto :goto_1

    .line 80
    :catch_1
    move-exception v0

    .line 81
    goto :goto_3

    .line 82
    :goto_1
    const-string/jumbo v2, "exception reading getEnergyConsumedAsync: "

    .line 83
    .line 84
    .line 85
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    :goto_2
    move-object v0, v1

    .line 89
    goto :goto_4

    .line 90
    :goto_3
    const-string/jumbo v2, "timeout or interrupt reading getEnergyConsumedAsync failed"

    .line 91
    .line 92
    .line 93
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :goto_4
    if-eqz v0, :cond_7

    .line 98
    .line 99
    array-length v2, v0

    .line 100
    if-nez v2, :cond_4

    .line 101
    .line 102
    goto :goto_8

    .line 103
    :cond_4
    aget-object v2, v0, v3

    .line 104
    .line 105
    iget-wide v7, v2, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    .line 106
    .line 107
    long-to-float v5, v7

    .line 108
    iget v7, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mLastEnergyConsumed:F

    .line 109
    .line 110
    sub-float/2addr v5, v7

    .line 111
    iget-wide v7, v2, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    .line 112
    .line 113
    iget-wide v9, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTimestampMillis:J

    .line 114
    .line 115
    sub-long/2addr v7, v9

    .line 116
    long-to-float v2, v7

    .line 117
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 118
    .line 119
    div-float/2addr v2, v7

    .line 120
    div-float/2addr v5, v2

    .line 121
    div-float/2addr v5, v7

    .line 122
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mThermalService:Landroid/os/IThermalService;

    .line 123
    .line 124
    invoke-interface {v2, v6}, Landroid/os/IThermalService;->getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    array-length v6, v2

    .line 129
    const/4 v7, 0x1

    .line 130
    if-le v6, v7, :cond_5

    .line 131
    .line 132
    const-string v6, "Multiple skin temperatures not allowed!"

    .line 133
    .line 134
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :catch_2
    move-exception v2

    .line 139
    goto :goto_6

    .line 140
    :cond_5
    :goto_5
    array-length v6, v2

    .line 141
    if-lez v6, :cond_6

    .line 142
    .line 143
    aget-object v1, v2, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 144
    .line 145
    goto :goto_7

    .line 146
    :goto_6
    const-string/jumbo v6, "getDisplayTemperature failed"

    .line 147
    .line 148
    .line 149
    invoke-static {v6, v2, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    :goto_7
    aget-object v0, v0, v3

    .line 153
    .line 154
    iget-wide v2, v0, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    .line 155
    .line 156
    long-to-float v2, v2

    .line 157
    iput v2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mLastEnergyConsumed:F

    .line 158
    .line 159
    iget-wide v2, v0, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    .line 160
    .line 161
    iput-wide v2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTimestampMillis:J

    .line 162
    .line 163
    if-eqz v1, :cond_8

    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/os/Temperature;->getStatus()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda4;

    .line 170
    .line 171
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;

    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda6;

    .line 177
    .line 178
    invoke-direct {v1, p0, v0, v5}, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;IF)V

    .line 179
    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mHandler:Landroid/os/Handler;

    .line 182
    .line 183
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_9

    .line 187
    :cond_7
    :goto_8
    const-string/jumbo p0, "displayResults are null"

    .line 188
    .line 189
    .line 190
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    :cond_8
    :goto_9
    return-void
.end method
