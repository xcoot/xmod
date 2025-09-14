.class public final Lcom/android/server/display/exynos/ExynosDisplayATC$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 6
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v1, "Ignore event "

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 11
    iget-object v2, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDataCollectionLock:Ljava/lang/Object;

    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 16
    check-cast v3, Ljava/util/ArrayDeque;

    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    if-nez v3, :cond_0

    .line 25
    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 27
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 29
    check-cast v3, Ljava/util/ArrayDeque;

    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    .line 37
    iget-wide v7, v3, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->timestamp:J

    .line 39
    cmp-long v3, v5, v7

    .line 41
    if-gez v3, :cond_0

    .line 43
    const-string v0, "ExynosDisplayATC"

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 52
    aget v1, v1, v4

    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    monitor-exit v2

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto/16 :goto_2

    .line 69
    :cond_0
    iget-object v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    .line 71
    const-string v3, "\\s*,\\s*"

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    iput-object v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 79
    aget-object v1, v1, v4

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 84
    move-result v1

    .line 85
    :goto_0
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 87
    check-cast v3, Ljava/util/ArrayDeque;

    .line 89
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_1

    .line 95
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 97
    check-cast v3, Ljava/util/ArrayDeque;

    .line 99
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    .line 102
    move-result v3

    .line 103
    if-lt v3, v1, :cond_1

    .line 105
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 107
    check-cast v3, Ljava/util/ArrayDeque;

    .line 109
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    .line 115
    goto :goto_0

    .line 116
    :cond_1
    new-instance v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    .line 118
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 121
    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 123
    iput-wide v5, v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->timestamp:J

    .line 125
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 127
    aget v3, v3, v4

    .line 129
    iput v3, v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    .line 131
    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 133
    check-cast v0, Ljava/util/ArrayDeque;

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 138
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_1
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 141
    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 145
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->printSensorDeque()V

    .line 148
    :cond_2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 150
    aget p1, p1, v4

    .line 152
    float-to-int p1, p1

    .line 153
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 155
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->caculateLuminance()V

    .line 158
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 160
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->loadLuminanceATCTable()V

    .line 163
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 165
    iget-object v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQdelay:Ljava/lang/String;

    .line 167
    const-string v2, "\\s*,\\s*"

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 173
    iput-object v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 175
    aget-object v0, v1, v4

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 180
    move-result v0

    .line 181
    sget-boolean v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 183
    if-eqz v1, :cond_3

    .line 185
    const-string/jumbo v1, "qdelay: "

    .line 188
    const-string v2, "ExynosDisplayATC"

    .line 190
    invoke-static {v0, v1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_3
    if-lez v0, :cond_5

    .line 195
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 197
    iget v2, v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->mEventCount:I

    .line 199
    add-int/lit8 v3, v2, 0x1

    .line 201
    iput v3, v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->mEventCount:I

    .line 203
    if-ge v2, v0, :cond_4

    .line 205
    return-void

    .line 206
    :cond_4
    if-lt v3, v0, :cond_5

    .line 208
    iput v4, v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->mEventCount:I

    .line 210
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 212
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sendMessage()V

    .line 215
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 217
    if-eqz v0, :cond_6

    .line 219
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setBrightnessAdjustment(I)V

    .line 224
    :cond_6
    return-void

    .line 225
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    throw p0
.end method
