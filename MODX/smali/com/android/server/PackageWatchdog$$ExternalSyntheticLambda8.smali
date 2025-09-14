.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/PackageWatchdog;

    .line 6
    iput p2, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v6, v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/PackageWatchdog;

    .line 5
    iget v7, v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;->f$1:I

    .line 7
    iget-object v8, v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    .line 9
    iget-object v9, v6, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v9

    .line 12
    :try_start_0
    iget-object v0, v6, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    monitor-exit v9

    .line 21
    goto/16 :goto_9

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto/16 :goto_a

    .line 26
    :cond_0
    const/4 v10, 0x1

    .line 27
    const/4 v12, 0x0

    .line 28
    const/4 v13, 0x0

    .line 29
    if-eq v7, v10, :cond_8

    .line 31
    const/4 v0, 0x2

    .line 32
    if-ne v7, v0, :cond_1

    .line 34
    goto/16 :goto_5

    .line 36
    :cond_1
    move v14, v12

    .line 37
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 40
    move-result v0

    .line 41
    if-ge v14, v0, :cond_d

    .line 43
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    move-object v2, v0

    .line 48
    check-cast v2, Landroid/content/pm/VersionedPackage;

    .line 50
    move v0, v12

    .line 51
    move-object v1, v13

    .line 52
    move-object v3, v1

    .line 53
    const v4, 0x7fffffff

    .line 56
    :goto_1
    iget-object v5, v6, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 58
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 61
    move-result v5

    .line 62
    if-ge v0, v5, :cond_4

    .line 64
    iget-object v5, v6, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 66
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 72
    iget-object v15, v5, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 74
    if-eqz v15, :cond_3

    .line 76
    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 79
    move-result-object v11

    .line 80
    invoke-virtual {v5, v11}, Lcom/android/server/PackageWatchdog$ObserverInternal;->onPackageFailureLocked(Ljava/lang/String;)Z

    .line 83
    move-result v11

    .line 84
    if-eqz v11, :cond_3

    .line 86
    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 89
    move-result-object v11

    .line 90
    invoke-virtual {v5, v11}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 93
    move-result-object v5

    .line 94
    if-eqz v5, :cond_2

    .line 96
    invoke-virtual {v5}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getMitigationCountLocked()I

    .line 99
    move-result v11

    .line 100
    add-int/2addr v11, v10

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    move v11, v10

    .line 103
    :goto_2
    invoke-interface {v15, v2, v7, v11}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I

    .line 106
    move-result v11

    .line 107
    if-eqz v11, :cond_3

    .line 109
    if-ge v11, v4, :cond_3

    .line 111
    move-object v3, v5

    .line 112
    move v4, v11

    .line 113
    move-object v1, v15

    .line 114
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 116
    goto :goto_1

    .line 117
    :cond_4
    if-eqz v1, :cond_7

    .line 119
    if-eqz v3, :cond_5

    .line 121
    iget-object v0, v3, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    .line 123
    iget-object v5, v3, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    .line 125
    iget-object v5, v5, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 127
    invoke-interface {v5}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 130
    move-result-wide v10

    .line 131
    invoke-virtual {v0, v10, v11}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 134
    invoke-virtual {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getMitigationCountLocked()I

    .line 137
    move-result v0

    .line 138
    move v5, v0

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    const/4 v5, 0x1

    .line 141
    :goto_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_6

    .line 147
    move-object v0, v6

    .line 148
    move v3, v7

    .line 149
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PackageWatchdog;->maybeExecute(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Landroid/content/pm/VersionedPackage;III)V

    .line 152
    goto :goto_4

    .line 153
    :cond_6
    invoke-interface {v1, v2, v7, v5}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;II)Z

    .line 156
    :cond_7
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 158
    const/4 v10, 0x1

    .line 159
    goto :goto_0

    .line 160
    :cond_8
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 163
    move-result v0

    .line 164
    if-lez v0, :cond_9

    .line 166
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Landroid/content/pm/VersionedPackage;

    .line 172
    move-object v2, v0

    .line 173
    goto :goto_6

    .line 174
    :cond_9
    move-object v2, v13

    .line 175
    :goto_6
    iget-object v0, v6, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 177
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 180
    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 184
    move-result-object v0

    .line 185
    move-object v1, v13

    .line 186
    const v4, 0x7fffffff

    .line 189
    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_b

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 201
    iget-object v3, v3, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 203
    if-eqz v3, :cond_a

    .line 205
    const/4 v5, 0x1

    .line 206
    invoke-interface {v3, v2, v7, v5}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I

    .line 209
    move-result v8

    .line 210
    if-eqz v8, :cond_a

    .line 212
    if-ge v8, v4, :cond_a

    .line 214
    move-object v1, v3

    .line 215
    move v4, v8

    .line 216
    goto :goto_7

    .line 217
    :cond_b
    if-eqz v1, :cond_d

    .line 219
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_c

    .line 225
    const/4 v5, 0x1

    .line 226
    move-object v0, v6

    .line 227
    move v3, v7

    .line 228
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PackageWatchdog;->maybeExecute(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Landroid/content/pm/VersionedPackage;III)V

    .line 231
    goto :goto_8

    .line 232
    :cond_c
    const/4 v0, 0x1

    .line 233
    invoke-interface {v1, v2, v7, v0}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;II)Z

    .line 236
    :cond_d
    :goto_8
    monitor-exit v9

    .line 237
    :goto_9
    return-void

    .line 238
    :goto_a
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    throw v0
.end method
