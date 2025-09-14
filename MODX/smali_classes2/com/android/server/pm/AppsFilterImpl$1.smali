.class public final Lcom/android/server/pm/AppsFilterImpl$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AppsFilterImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/AppsFilterBase;Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$1;->this$0:Lcom/android/server/pm/AppsFilterImpl;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/pm/AppsFilterSnapshotImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$1;->this$0:Lcom/android/server/pm/AppsFilterImpl;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/android/server/pm/AppsFilterBase;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 9
    .line 10
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/server/utils/WatchedSparseSetArray;

    .line 20
    .line 21
    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/utils/WatchedSparseSetArray;

    .line 30
    .line 31
    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 32
    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 34
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 35
    .line 36
    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 40
    .line 41
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 42
    .line 43
    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 49
    .line 50
    monitor-enter v2

    .line 51
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/server/utils/WatchedSparseSetArray;

    .line 58
    .line 59
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 60
    .line 61
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 62
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 63
    .line 64
    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 70
    .line 71
    monitor-enter v1

    .line 72
    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lcom/android/server/utils/WatchedSparseSetArray;

    .line 79
    .line 80
    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 81
    .line 82
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 83
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 84
    .line 85
    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 91
    .line 92
    monitor-enter v2

    .line 93
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Lcom/android/server/utils/WatchedSparseSetArray;

    .line 100
    .line 101
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 102
    .line 103
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 104
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 105
    .line 106
    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 112
    .line 113
    monitor-enter v1

    .line 114
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermissionSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Lcom/android/server/utils/WatchedSparseSetArray;

    .line 121
    .line 122
    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 123
    .line 124
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 125
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 126
    .line 127
    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermissionSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 131
    .line 132
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 133
    .line 134
    monitor-enter v2

    .line 135
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    .line 142
    .line 143
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 144
    .line 145
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 146
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 147
    .line 148
    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 152
    .line 153
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 154
    .line 155
    monitor-enter v1

    .line 156
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 157
    .line 158
    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Lcom/android/server/utils/WatchedArraySet;

    .line 163
    .line 164
    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 165
    .line 166
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 167
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 168
    .line 169
    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 175
    .line 176
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 177
    .line 178
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 179
    .line 180
    array-length v2, v1

    .line 181
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, [Ljava/lang/String;

    .line 186
    .line 187
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 188
    .line 189
    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    .line 190
    .line 191
    iput-boolean v1, v0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    .line 192
    .line 193
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 194
    .line 195
    invoke-interface {v1}, Lcom/android/server/pm/FeatureConfig;->snapshot()Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 200
    .line 201
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 202
    .line 203
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 204
    .line 205
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    .line 206
    .line 207
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    .line 208
    .line 209
    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 210
    .line 211
    iput-boolean v1, v0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 212
    .line 213
    iget-boolean v1, v0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 214
    .line 215
    if-eqz v1, :cond_0

    .line 216
    .line 217
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 218
    .line 219
    monitor-enter v1

    .line 220
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 221
    .line 222
    invoke-virtual {v2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast v2, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 227
    .line 228
    iput-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 229
    .line 230
    monitor-exit v1

    .line 231
    goto :goto_0

    .line 232
    :catchall_0
    move-exception p0

    .line 233
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 234
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 235
    .line 236
    throw p0

    .line 237
    :cond_0
    new-instance v1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 238
    .line 239
    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>()V

    .line 240
    .line 241
    .line 242
    iput-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 243
    .line 244
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    .line 245
    .line 246
    iput-boolean p0, v0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    .line 247
    .line 248
    new-instance p0, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 249
    .line 250
    invoke-direct {p0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 251
    .line 252
    .line 253
    iput-object p0, v0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 254
    .line 255
    const/4 p0, 0x0

    .line 256
    iput-object p0, v0, Lcom/android/server/pm/AppsFilterBase;->mHandler:Landroid/os/Handler;

    .line 257
    .line 258
    return-object v0

    .line 259
    :catchall_1
    move-exception p0

    .line 260
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 261
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 262
    .line 263
    throw p0

    .line 264
    :catchall_2
    move-exception p0

    .line 265
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 266
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 267
    .line 268
    throw p0

    .line 269
    :catchall_3
    move-exception p0

    .line 270
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 271
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 272
    .line 273
    throw p0

    .line 274
    :catchall_4
    move-exception p0

    .line 275
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 276
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 277
    .line 278
    throw p0

    .line 279
    :catchall_5
    move-exception p0

    .line 280
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 281
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 282
    .line 283
    throw p0

    .line 284
    :catchall_6
    move-exception p0

    .line 285
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 286
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 287
    .line 288
    throw p0

    .line 289
    :catchall_7
    move-exception p0

    .line 290
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 291
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 292
    .line 293
    throw p0
.end method
