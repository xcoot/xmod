.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/PackageWatchdog;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/PackageWatchdog;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p1, Ljava/util/List;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v0, Landroid/util/ArrayMap;

    .line 15
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;

    .line 34
    invoke-virtual {v2}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getPackageName()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getHealthCheckTimeoutMillis()J

    .line 41
    move-result-wide v4

    .line 42
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 52
    monitor-enter v1

    .line 53
    :try_start_0
    const-string v2, "PackageWatchdog"

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v4, "Received supported packages "

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 77
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object v2

    .line 85
    const/4 v3, 0x0

    .line 86
    move v4, v3

    .line 87
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_5

    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 99
    iget-object v5, v5, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 101
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 104
    move-result-object v5

    .line 105
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object v5

    .line 109
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_1

    .line 115
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object v6

    .line 119
    check-cast v6, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 121
    iget-object v7, v6, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    .line 123
    iget v8, v6, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 125
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 128
    move-result v9

    .line 129
    const/4 v10, 0x1

    .line 130
    if-eqz v9, :cond_2

    .line 132
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    move-result-object v7

    .line 136
    check-cast v7, Ljava/lang/Long;

    .line 138
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 141
    move-result-wide v11

    .line 142
    invoke-virtual {v6, v11, v12}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->setHealthCheckActiveLocked(J)I

    .line 145
    move-result v6

    .line 146
    goto :goto_2

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    goto :goto_4

    .line 149
    :cond_2
    iget v7, v6, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 151
    const/4 v9, 0x3

    .line 152
    if-eq v7, v9, :cond_3

    .line 154
    iput-boolean v10, v6, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 156
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    .line 159
    move-result v6

    .line 160
    :goto_2
    if-eq v8, v6, :cond_4

    .line 162
    goto :goto_3

    .line 163
    :cond_4
    move v10, v3

    .line 164
    :goto_3
    or-int/2addr v4, v10

    .line 165
    goto :goto_1

    .line 166
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    if-eqz v4, :cond_6

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    const-string/jumbo v1, "updated health check supported packages "

    .line 174
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 187
    :cond_6
    return-void

    .line 188
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    throw p0

    .line 190
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    const-string v0, "PackageWatchdog"

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 199
    const-string v2, "Health check passed for package: "

    .line 201
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v1

    .line 211
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 216
    monitor-enter v0

    .line 217
    const/4 v1, 0x0

    .line 218
    move v2, v1

    .line 219
    move v3, v2

    .line 220
    :goto_5
    :try_start_2
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 222
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 225
    move-result v4

    .line 226
    if-ge v2, v4, :cond_a

    .line 228
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 230
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 233
    move-result-object v4

    .line 234
    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 236
    invoke-virtual {v4, p1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 239
    move-result-object v4

    .line 240
    if-eqz v4, :cond_9

    .line 242
    iget v5, v4, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 244
    const/4 v6, 0x3

    .line 245
    const/4 v7, 0x1

    .line 246
    if-eq v5, v6, :cond_7

    .line 248
    iput-boolean v7, v4, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 250
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    .line 253
    move-result v4

    .line 254
    if-eq v5, v4, :cond_8

    .line 256
    goto :goto_6

    .line 257
    :cond_8
    move v7, v1

    .line 258
    :goto_6
    or-int/2addr v3, v7

    .line 259
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 261
    goto :goto_5

    .line 262
    :catchall_1
    move-exception p0

    .line 263
    goto :goto_7

    .line 264
    :cond_a
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 265
    if-eqz v3, :cond_b

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v1, "health check passed for "

    .line 272
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 285
    :cond_b
    return-void

    .line 286
    :goto_7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 287
    throw p0

    .line 288
    nop

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
