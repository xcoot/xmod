.class public final synthetic Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppsFilterImpl;

.field public final synthetic f$1:Landroid/content/pm/PackageManagerInternal;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppsFilterImpl;Landroid/content/pm/PackageManagerInternal;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/AppsFilterImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/PackageManagerInternal;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;->f$2:I

    .line 10
    .line 11
    iput-wide p3, p0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;->f$3:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/AppsFilterImpl;

    .line 5
    .line 6
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/PackageManagerInternal;

    .line 7
    .line 8
    iget v5, v0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    iget-wide v11, v0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;->f$3:J

    .line 11
    .line 12
    iget-object v0, v2, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v13, 0x0

    .line 15
    invoke-virtual {v0, v13, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 30
    .line 31
    .line 32
    new-array v4, v1, [[Landroid/content/pm/UserInfo;

    .line 33
    .line 34
    move-object v8, v3

    .line 35
    check-cast v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 36
    .line 37
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 38
    .line 39
    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-interface {v8}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-interface {v8}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 52
    .line 53
    .line 54
    move-result v14

    .line 55
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 56
    .line 57
    .line 58
    aput-object v10, v4, v13

    .line 59
    .line 60
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    move v15, v13

    .line 65
    :goto_0
    if-ge v15, v14, :cond_1

    .line 66
    .line 67
    invoke-virtual {v9, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v16

    .line 71
    check-cast v16, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 72
    .line 73
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    invoke-virtual {v9, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v16

    .line 81
    move/from16 v17, v14

    .line 82
    .line 83
    move-object/from16 v14, v16

    .line 84
    .line 85
    check-cast v14, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v14, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    add-int/2addr v15, v1

    .line 91
    move/from16 v14, v17

    .line 92
    .line 93
    const/4 v13, 0x0

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    aget-object v0, v4, v13

    .line 96
    .line 97
    const/4 v4, -0x1

    .line 98
    invoke-virtual {v2, v8, v9, v0, v4}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheInner(Lcom/android/server/pm/Computer;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 102
    .line 103
    .line 104
    move-result-wide v13

    .line 105
    sub-long v6, v13, v6

    .line 106
    .line 107
    array-length v8, v10

    .line 108
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    iget-object v0, v2, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 113
    .line 114
    iget v10, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 115
    .line 116
    const/16 v4, 0x221

    .line 117
    .line 118
    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJIII)V

    .line 119
    .line 120
    .line 121
    iget-object v0, v2, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    .line 123
    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_2

    .line 128
    .line 129
    const-string v0, "AppsFilter"

    .line 130
    .line 131
    const-string v1, "Cache invalidated while building, retrying."

    .line 132
    .line 133
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    const-wide/16 v0, 0x2

    .line 137
    .line 138
    mul-long/2addr v11, v0

    .line 139
    const-wide/16 v0, 0x2710

    .line 140
    .line 141
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 142
    .line 143
    .line 144
    move-result-wide v0

    .line 145
    iget-object v4, v2, Lcom/android/server/pm/AppsFilterBase;->mHandler:Landroid/os/Handler;

    .line 146
    .line 147
    new-instance v5, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;

    .line 148
    .line 149
    invoke-direct {v5, v2, v3, v0, v1}, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppsFilterImpl;Landroid/content/pm/PackageManagerInternal;J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_2
    iget-object v3, v2, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 157
    .line 158
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 159
    .line 160
    monitor-enter v3

    .line 161
    :try_start_0
    iget-boolean v0, v2, Lcom/android/server/pm/AppsFilterBase;->mNeedToUpdateCacheForImplicitAccess:Z

    .line 162
    .line 163
    if-eqz v0, :cond_3

    .line 164
    .line 165
    iget-object v0, v2, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 166
    .line 167
    invoke-virtual {v2, v0}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForImplicitAccess(Lcom/android/server/utils/WatchedSparseSetArray;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, v2, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 171
    .line 172
    invoke-virtual {v2, v0}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForImplicitAccess(Lcom/android/server/utils/WatchedSparseSetArray;)V

    .line 173
    .line 174
    .line 175
    const/4 v0, 0x0

    .line 176
    iput-boolean v0, v2, Lcom/android/server/pm/AppsFilterBase;->mNeedToUpdateCacheForImplicitAccess:Z

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    goto :goto_3

    .line 181
    :cond_3
    :goto_1
    iput-boolean v1, v2, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 182
    .line 183
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v2, v2}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 185
    .line 186
    .line 187
    :goto_2
    return-void

    .line 188
    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 190
    .line 191
    throw v0
.end method
