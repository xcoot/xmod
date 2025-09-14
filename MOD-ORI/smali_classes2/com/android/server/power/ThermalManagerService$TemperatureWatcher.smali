.class Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHeadroomThresholds:[F

.field mInactivityThresholdMillis:J

.field public mLastForecastCallTimeMillis:J

.field final mSamples:Landroid/util/ArrayMap;

.field mSevereThresholds:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance p1, Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 18
    .line 19
    new-instance p1, Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    .line 25
    .line 26
    const/4 p1, 0x7

    .line 27
    new-array p1, p1, [F

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    .line 30
    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    .line 34
    .line 35
    const-wide/16 v0, 0x2710

    .line 36
    .line 37
    iput-wide v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mInactivityThresholdMillis:J

    .line 38
    .line 39
    return-void
.end method

.method public static normalizeTemperature(FF)F
    .locals 2

    .line 1
    const/high16 v0, 0x41f00000    # 30.0f

    .line 2
    .line 3
    sub-float/2addr p1, v0

    .line 4
    cmpg-float v1, p0, p1

    .line 5
    .line 6
    if-gtz v1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_0
    sub-float/2addr p0, p1

    .line 11
    div-float/2addr p0, v0

    .line 12
    return p0
.end method


# virtual methods
.method public createSampleForTesting(JF)Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;-><init>(JF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final getForecast(I)F
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    iput-wide v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperature()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/16 v2, 0x305

    .line 32
    .line 33
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const-string p0, "ThermalManagerService"

    .line 38
    .line 39
    const-string v1, "No temperature samples found"

    .line 40
    .line 41
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/4 v1, 0x5

    .line 49
    invoke-static {v2, p0, v1, v3, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return v3

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v4, 0x6

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    const-string p0, "ThermalManagerService"

    .line 64
    .line 65
    const-string v1, "No temperature thresholds found"

    .line 66
    .line 67
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-static {v2, p0, v4, v3, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 75
    .line 76
    .line 77
    monitor-exit v0

    .line 78
    return v3

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const/4 v5, 0x0

    .line 90
    move v6, v3

    .line 91
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_7

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Ljava/util/Map$Entry;

    .line 102
    .line 103
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    check-cast v8, Ljava/lang/String;

    .line 108
    .line 109
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, Ljava/util/ArrayList;

    .line 114
    .line 115
    iget-object v9, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    .line 116
    .line 117
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    check-cast v9, Ljava/lang/Float;

    .line 122
    .line 123
    if-nez v9, :cond_4

    .line 124
    .line 125
    add-int/lit8 v5, v5, 0x1

    .line 126
    .line 127
    const-string v7, "ThermalManagerService"

    .line 128
    .line 129
    new-instance v9, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v10, "No threshold found for "

    .line 135
    .line 136
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    check-cast v8, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 155
    .line 156
    iget v8, v8, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    .line 157
    .line 158
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    const/4 v11, 0x3

    .line 163
    if-ge v10, v11, :cond_6

    .line 164
    .line 165
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    invoke-static {v8, v7}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    if-nez v8, :cond_5

    .line 178
    .line 179
    cmpl-float v8, v7, v6

    .line 180
    .line 181
    if-lez v8, :cond_3

    .line 182
    .line 183
    :cond_5
    :goto_2
    move v6, v7

    .line 184
    goto :goto_1

    .line 185
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getSlopeOf(Ljava/util/List;)F

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    int-to-float v10, p1

    .line 190
    mul-float/2addr v7, v10

    .line 191
    const/high16 v10, 0x447a0000    # 1000.0f

    .line 192
    .line 193
    mul-float/2addr v7, v10

    .line 194
    add-float/2addr v7, v8

    .line 195
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    invoke-static {v7, v8}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    if-nez v8, :cond_5

    .line 208
    .line 209
    cmpl-float v8, v7, v6

    .line 210
    .line 211
    if-lez v8, :cond_3

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_7
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    if-ne v5, p0, :cond_8

    .line 221
    .line 222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    invoke-static {v2, p0, v4, v3, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    const/4 v1, 0x1

    .line 235
    invoke-static {v2, p0, v1, v6, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 236
    .line 237
    .line 238
    :goto_3
    monitor-exit v0

    .line 239
    return v6

    .line 240
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    throw p0
.end method

.method public getSlopeOf(Ljava/util/List;)F
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v6, p0

    .line 6
    move-wide v4, v0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v7

    .line 12
    if-ge v3, v7, :cond_0

    .line 13
    .line 14
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    check-cast v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 19
    .line 20
    iget-wide v8, v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    .line 21
    .line 22
    add-long/2addr v4, v8

    .line 23
    iget v7, v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    .line 24
    .line 25
    add-float/2addr v6, v7

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    int-to-long v7, v3

    .line 34
    div-long/2addr v4, v7

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    int-to-float v3, v3

    .line 40
    div-float/2addr v6, v3

    .line 41
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge v2, v3, :cond_1

    .line 46
    .line 47
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 52
    .line 53
    iget-wide v7, v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    .line 54
    .line 55
    sub-long/2addr v7, v4

    .line 56
    iget v3, v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    .line 57
    .line 58
    sub-float/2addr v3, v6

    .line 59
    mul-long v9, v7, v7

    .line 60
    .line 61
    add-long/2addr v0, v9

    .line 62
    long-to-float v7, v7

    .line 63
    mul-float/2addr v7, v3

    .line 64
    add-float/2addr p0, v7

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    long-to-float p1, v0

    .line 69
    div-float/2addr p0, p1

    .line 70
    return p0
.end method

.method public final updateHeadroomThreshold(IFF)V
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    const/4 v1, 0x3

    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    .line 14
    .line 15
    const/high16 p2, 0x3f800000    # 1.0f

    .line 16
    .line 17
    aput p2, p0, p1

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-static {p2, p3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget-object p3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    .line 28
    .line 29
    aget p3, p3, p1

    .line 30
    .line 31
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    .line 38
    .line 39
    aput p2, p0, p1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    .line 43
    .line 44
    aget p3, p0, p1

    .line 45
    .line 46
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    aput p2, p0, p1

    .line 51
    .line 52
    :goto_0
    monitor-exit v0

    .line 53
    goto :goto_2

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0

    .line 56
    :cond_2
    :goto_2
    return-void
.end method

.method public final updateTemperature()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    iget-wide v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    .line 9
    .line 10
    sub-long/2addr v1, v3

    .line 11
    iget-wide v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mInactivityThresholdMillis:J

    .line 12
    .line 13
    cmp-long v1, v1, v3

    .line 14
    .line 15
    if-gez v1, :cond_3

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v2, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v3, 0x3e8

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    const/4 v5, 0x1

    .line 39
    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(IZ)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x0

    .line 44
    :goto_0
    move-object v5, v3

    .line 45
    check-cast v5, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-ge v4, v6, :cond_2

    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Landroid/os/Temperature;

    .line 58
    .line 59
    invoke-virtual {v5}, Landroid/os/Temperature;->getValue()F

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_0

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_0
    iget-object v6, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-virtual {v5}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    new-instance v8, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda1;

    .line 77
    .line 78
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    const/16 v8, 0x1e

    .line 92
    .line 93
    if-ne v7, v8, :cond_1

    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/util/ArrayList;->removeFirst()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_3

    .line 101
    :cond_1
    :goto_1
    new-instance v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 102
    .line 103
    invoke-virtual {v5}, Landroid/os/Temperature;->getValue()F

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-direct {v7, v1, v2, v5}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;-><init>(JF)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    monitor-exit v0

    .line 117
    return-void

    .line 118
    :cond_3
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 121
    .line 122
    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 125
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0
.end method

.method public final updateThresholds()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x3

    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getTemperatureThresholds(IZ)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowThermalHeadroomThresholds()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    .line 21
    .line 22
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 23
    .line 24
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([FF)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_4

    .line 30
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 31
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-ge v4, v5, :cond_4

    .line 36
    .line 37
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Landroid/hardware/thermal/TemperatureThreshold;

    .line 42
    .line 43
    iget-object v6, v5, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    .line 44
    .line 45
    array-length v7, v6

    .line 46
    if-gt v7, v3, :cond_1

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_1
    aget v6, v6, v3

    .line 50
    .line 51
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-nez v7, :cond_3

    .line 56
    .line 57
    iget-object v7, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    .line 58
    .line 59
    iget-object v8, v5, Landroid/hardware/thermal/TemperatureThreshold;->name:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowThermalHeadroomThresholds()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_3

    .line 73
    .line 74
    move v7, v2

    .line 75
    :goto_2
    const/4 v8, 0x6

    .line 76
    if-gt v7, v8, :cond_3

    .line 77
    .line 78
    if-eq v7, v3, :cond_2

    .line 79
    .line 80
    iget-object v8, v5, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    .line 81
    .line 82
    array-length v9, v8

    .line 83
    if-le v9, v7, :cond_2

    .line 84
    .line 85
    aget v8, v8, v7

    .line 86
    .line 87
    invoke-virtual {p0, v7, v8, v6}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateHeadroomThreshold(IFF)V

    .line 88
    .line 89
    .line 90
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0
.end method
