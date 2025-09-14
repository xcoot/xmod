.class public final Lcom/android/server/pm/AppsFilterImpl;
.super Lcom/android/server/pm/AppsFilterBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mPermissionToUids:Landroid/util/ArrayMap;

.field public final mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mSnapshot:Lcom/android/server/pm/AppsFilterImpl$1;

.field public final mUsesPermissionToUids:Landroid/util/ArrayMap;

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterBase;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 32
    .line 33
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 39
    .line 40
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 46
    .line 47
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 53
    .line 54
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 60
    .line 61
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    .line 62
    .line 63
    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 69
    .line 70
    iput-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 71
    .line 72
    iput-boolean p3, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    .line 73
    .line 74
    new-instance p1, Lcom/android/server/om/OverlayReferenceMapper;

    .line 75
    .line 76
    invoke-direct {p1, p4}, Lcom/android/server/om/OverlayReferenceMapper;-><init>(Lcom/android/server/om/OverlayReferenceMapper$Provider;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 80
    .line 81
    iput-object p5, p0, Lcom/android/server/pm/AppsFilterBase;->mHandler:Landroid/os/Handler;

    .line 82
    .line 83
    new-instance p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 84
    .line 85
    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 89
    .line 90
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 91
    .line 92
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 93
    .line 94
    const-string p3, "AppsFilter.mShouldFilterCache"

    .line 95
    .line 96
    const/4 p4, 0x0

    .line 97
    invoke-direct {p1, p2, p2, p3, p4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 101
    .line 102
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    .line 103
    .line 104
    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 108
    .line 109
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 110
    .line 111
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 112
    .line 113
    const-string p3, "AppsFilter.mImplicitlyQueryable"

    .line 114
    .line 115
    const/4 p4, 0x0

    .line 116
    invoke-direct {p1, p2, p2, p3, p4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 120
    .line 121
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    .line 122
    .line 123
    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 127
    .line 128
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 129
    .line 130
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 131
    .line 132
    const-string p3, "AppsFilter.mRetainedImplicitlyQueryable"

    .line 133
    .line 134
    const/4 p4, 0x0

    .line 135
    invoke-direct {p1, p2, p2, p3, p4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 139
    .line 140
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    .line 141
    .line 142
    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 146
    .line 147
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 148
    .line 149
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 150
    .line 151
    const-string p3, "AppsFilter.mQueriesViaPackage"

    .line 152
    .line 153
    const/4 p4, 0x0

    .line 154
    invoke-direct {p1, p2, p2, p3, p4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 158
    .line 159
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    .line 160
    .line 161
    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    .line 162
    .line 163
    .line 164
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 165
    .line 166
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 167
    .line 168
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 169
    .line 170
    const-string p3, "AppsFilter.mQueriesViaComponent"

    .line 171
    .line 172
    const/4 p4, 0x0

    .line 173
    invoke-direct {p1, p2, p2, p3, p4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 177
    .line 178
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    .line 179
    .line 180
    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    .line 181
    .line 182
    .line 183
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 184
    .line 185
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 186
    .line 187
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 188
    .line 189
    const-string p3, "AppsFilter.mQueryableViaUsesLibrary"

    .line 190
    .line 191
    const/4 p4, 0x0

    .line 192
    invoke-direct {p1, p2, p2, p3, p4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 196
    .line 197
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    .line 198
    .line 199
    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    .line 200
    .line 201
    .line 202
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 203
    .line 204
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 205
    .line 206
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 207
    .line 208
    const-string p3, "AppsFilter.mQueryableViaUsesPermission"

    .line 209
    .line 210
    const/4 p4, 0x0

    .line 211
    invoke-direct {p1, p2, p2, p3, p4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermissionSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 215
    .line 216
    new-instance p1, Lcom/android/server/utils/WatchedArraySet;

    .line 217
    .line 218
    invoke-direct {p1}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    .line 219
    .line 220
    .line 221
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 222
    .line 223
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 224
    .line 225
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 226
    .line 227
    const-string p3, "AppsFilter.mForceQueryable"

    .line 228
    .line 229
    const/4 p4, 0x0

    .line 230
    invoke-direct {p1, p2, p2, p3, p4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 234
    .line 235
    new-instance p1, Lcom/android/server/utils/WatchedArraySet;

    .line 236
    .line 237
    invoke-direct {p1}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    .line 238
    .line 239
    .line 240
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 241
    .line 242
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 243
    .line 244
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 245
    .line 246
    const-string p3, "AppsFilter.mProtectedBroadcasts"

    .line 247
    .line 248
    const/4 p4, 0x0

    .line 249
    invoke-direct {p1, p2, p2, p3, p4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 250
    .line 251
    .line 252
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 253
    .line 254
    new-instance p1, Landroid/util/ArrayMap;

    .line 255
    .line 256
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 257
    .line 258
    .line 259
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    .line 260
    .line 261
    new-instance p1, Landroid/util/ArrayMap;

    .line 262
    .line 263
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 264
    .line 265
    .line 266
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    .line 267
    .line 268
    new-instance p1, Lcom/android/server/pm/AppsFilterImpl$1;

    .line 269
    .line 270
    invoke-direct {p1, p0, p0, p0}, Lcom/android/server/pm/AppsFilterImpl$1;-><init>(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/AppsFilterBase;Lcom/android/server/utils/Watchable;)V

    .line 271
    .line 272
    .line 273
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl;->mSnapshot:Lcom/android/server/pm/AppsFilterImpl$1;

    .line 274
    .line 275
    const-string p1, "debug.pm.use_app_filter_cache"

    .line 276
    .line 277
    const/4 p2, 0x1

    .line 278
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    iput-boolean p1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    .line 283
    .line 284
    new-instance p1, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda0;

    .line 285
    .line 286
    invoke-direct {p1, p0}, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppsFilterImpl;)V

    .line 287
    .line 288
    .line 289
    invoke-static {p1}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 290
    .line 291
    .line 292
    return-void
.end method

.method public static pkgInstruments(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    :goto_0
    if-ltz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 22
    .line 23
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    return v1

    .line 34
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0
.end method


# virtual methods
.method public final addPackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V
    .locals 21

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const-string v1, "addPackage: "

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 8
    .line 9
    .line 10
    move-result-wide v10

    .line 11
    const/4 v12, 0x1

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    move v14, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v14, v12

    .line 18
    :goto_0
    if-eqz p3, :cond_1

    .line 19
    .line 20
    move-object/from16 v13, p1

    .line 21
    .line 22
    move/from16 v2, p4

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v9, v13, v0, v12, v2}, Lcom/android/server/pm/AppsFilterImpl;->removePackageInternal(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto/16 :goto_7

    .line 30
    .line 31
    :cond_1
    move-object/from16 v13, p1

    .line 32
    .line 33
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 34
    .line 35
    .line 36
    move-result-object v15

    .line 37
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {v9, v15, v0}, Lcom/android/server/pm/AppsFilterImpl;->addPackageInternal(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)Landroid/util/ArraySet;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    iget-boolean v2, v9, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 46
    .line 47
    if-eqz v2, :cond_5

    .line 48
    .line 49
    iget-object v6, v9, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 50
    .line 51
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 52
    .line 53
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 55
    .line 56
    .line 57
    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 58
    const/4 v3, 0x0

    .line 59
    const/16 v17, -0x1

    .line 60
    .line 61
    move-object/from16 v1, p0

    .line 62
    .line 63
    move-object/from16 v2, p1

    .line 64
    .line 65
    move-object/from16 v4, p2

    .line 66
    .line 67
    move-object v5, v15

    .line 68
    move-object/from16 v18, v6

    .line 69
    .line 70
    move-object v6, v8

    .line 71
    move-object v12, v7

    .line 72
    move/from16 v7, v17

    .line 73
    .line 74
    move-object/from16 p3, v8

    .line 75
    .line 76
    move/from16 v8, v16

    .line 77
    .line 78
    :try_start_2
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 79
    .line 80
    .line 81
    if-eqz v12, :cond_3

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    move v8, v1

    .line 85
    :goto_2
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-ge v8, v1, :cond_3

    .line 90
    .line 91
    invoke-virtual {v12, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v15, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    move-object v4, v1

    .line 102
    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 103
    .line 104
    if-nez v4, :cond_2

    .line 105
    .line 106
    move/from16 v17, v8

    .line 107
    .line 108
    :goto_3
    const/4 v1, 0x1

    .line 109
    goto :goto_4

    .line 110
    :cond_2
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 111
    .line 112
    .line 113
    move-result v16

    .line 114
    const/4 v3, 0x0

    .line 115
    const/4 v7, -0x1

    .line 116
    move-object/from16 v1, p0

    .line 117
    .line 118
    move-object/from16 v2, p1

    .line 119
    .line 120
    move-object v5, v15

    .line 121
    move-object/from16 v6, p3

    .line 122
    .line 123
    move/from16 v17, v8

    .line 124
    .line 125
    move/from16 v8, v16

    .line 126
    .line 127
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :goto_4
    add-int/lit8 v8, v17, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catchall_1
    move-exception v0

    .line 135
    goto :goto_5

    .line 136
    :cond_3
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    :try_start_3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 138
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 140
    .line 141
    .line 142
    move-result-wide v1

    .line 143
    sub-long v16, v1, v10

    .line 144
    .line 145
    move-object/from16 v1, p3

    .line 146
    .line 147
    array-length v1, v1

    .line 148
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 149
    .line 150
    .line 151
    move-result v19

    .line 152
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    iget-boolean v0, v9, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 157
    .line 158
    if-nez v0, :cond_4

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_4
    iget-object v0, v9, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 162
    .line 163
    iget v0, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 164
    .line 165
    const/16 v13, 0x222

    .line 166
    .line 167
    move/from16 v18, v1

    .line 168
    .line 169
    move/from16 v20, v0

    .line 170
    .line 171
    invoke-static/range {v13 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :catchall_2
    move-exception v0

    .line 176
    move-object/from16 v18, v6

    .line 177
    .line 178
    :goto_5
    :try_start_4
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    :try_start_5
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 180
    .line 181
    throw v0

    .line 182
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v9, v0}, Lcom/android/server/pm/AppsFilterImpl;->invalidateCache(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 199
    .line 200
    .line 201
    :goto_6
    invoke-virtual {v9, v9}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :goto_7
    invoke-virtual {v9, v9}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 206
    .line 207
    .line 208
    throw v0
.end method

.method public final addPackageInternal(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)Landroid/util/ArraySet;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "android"

    .line 3
    .line 4
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    .line 41
    .line 42
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4, v3}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 59
    .line 60
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 61
    .line 62
    monitor-enter v3

    .line 63
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 64
    .line 65
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    monitor-exit v3

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 81
    .line 82
    throw p0

    .line 83
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-nez v1, :cond_2

    .line 88
    .line 89
    const/4 p0, 0x0

    .line 90
    return-object p0

    .line 91
    :cond_2
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    const/4 v4, 0x0

    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 103
    .line 104
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 105
    .line 106
    monitor-enter v3

    .line 107
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 108
    .line 109
    iget-object v5, v5, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 110
    .line 111
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 116
    .line 117
    iget-object v7, v6, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 118
    .line 119
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v6}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 126
    .line 127
    iget-object v2, v2, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 128
    .line 129
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eq v2, v5, :cond_3

    .line 134
    .line 135
    move v2, v0

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    move v2, v4

    .line 138
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    const-string v2, "AppsFilter"

    .line 142
    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v5, "Protected-Broadcast is changed by Installing "

    .line 146
    .line 147
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catchall_1
    move-exception p0

    .line 171
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 173
    .line 174
    throw p0

    .line 175
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 176
    .line 177
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 178
    .line 179
    monitor-enter v2

    .line 180
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 181
    .line 182
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    iget-object v3, v3, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 191
    .line 192
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_6

    .line 197
    .line 198
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isForceQueryableOverride()Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-nez v3, :cond_6

    .line 203
    .line 204
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_5

    .line 209
    .line 210
    iget-boolean v3, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    .line 211
    .line 212
    if-nez v3, :cond_6

    .line 213
    .line 214
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isForceQueryable()Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-nez v3, :cond_6

    .line 219
    .line 220
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 221
    .line 222
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_5

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :catchall_2
    move-exception p0

    .line 234
    goto/16 :goto_18

    .line 235
    .line 236
    :cond_5
    move v3, v4

    .line 237
    goto :goto_4

    .line 238
    :cond_6
    :goto_3
    move v3, v0

    .line 239
    :goto_4
    if-nez v3, :cond_7

    .line 240
    .line 241
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    .line 242
    .line 243
    if-eqz v5, :cond_8

    .line 244
    .line 245
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-eqz v6, :cond_8

    .line 250
    .line 251
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-virtual {v6, v5}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eqz v5, :cond_8

    .line 260
    .line 261
    :cond_7
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 262
    .line 263
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-virtual {v5, v6}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    :cond_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 275
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissions()Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-nez v2, :cond_d

    .line 284
    .line 285
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 286
    .line 287
    monitor-enter v2

    .line 288
    :try_start_4
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissions()Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    if-eqz v6, :cond_c

    .line 301
    .line 302
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 307
    .line 308
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    .line 313
    .line 314
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    if-eqz v7, :cond_a

    .line 319
    .line 320
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    .line 321
    .line 322
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    check-cast v7, Landroid/util/ArraySet;

    .line 327
    .line 328
    move v8, v4

    .line 329
    :goto_6
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 330
    .line 331
    .line 332
    move-result v9

    .line 333
    if-ge v8, v9, :cond_a

    .line 334
    .line 335
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    check-cast v9, Ljava/lang/Integer;

    .line 340
    .line 341
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result v10

    .line 345
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 346
    .line 347
    .line 348
    move-result v11

    .line 349
    if-eq v10, v11, :cond_9

    .line 350
    .line 351
    iget-object v10, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 352
    .line 353
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 354
    .line 355
    .line 356
    move-result v11

    .line 357
    invoke-virtual {v10, v11, v9}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    goto :goto_7

    .line 361
    :catchall_3
    move-exception p0

    .line 362
    goto :goto_8

    .line 363
    :cond_9
    :goto_7
    add-int/2addr v8, v0

    .line 364
    goto :goto_6

    .line 365
    :cond_a
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    .line 366
    .line 367
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    if-nez v7, :cond_b

    .line 372
    .line 373
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    .line 374
    .line 375
    new-instance v8, Landroid/util/ArraySet;

    .line 376
    .line 377
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v7, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    :cond_b
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    .line 384
    .line 385
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    check-cast v6, Landroid/util/ArraySet;

    .line 390
    .line 391
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    goto :goto_5

    .line 403
    :cond_c
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 404
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 405
    .line 406
    goto :goto_9

    .line 407
    :goto_8
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 408
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 409
    .line 410
    throw p0

    .line 411
    :cond_d
    :goto_9
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    if-nez v2, :cond_12

    .line 420
    .line 421
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 422
    .line 423
    monitor-enter v2

    .line 424
    :try_start_6
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 433
    .line 434
    .line 435
    move-result v6

    .line 436
    if-eqz v6, :cond_11

    .line 437
    .line 438
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 443
    .line 444
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v6

    .line 448
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    .line 449
    .line 450
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v7

    .line 454
    if-eqz v7, :cond_f

    .line 455
    .line 456
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    .line 457
    .line 458
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v7

    .line 462
    check-cast v7, Landroid/util/ArraySet;

    .line 463
    .line 464
    move v8, v4

    .line 465
    :goto_b
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 466
    .line 467
    .line 468
    move-result v9

    .line 469
    if-ge v8, v9, :cond_f

    .line 470
    .line 471
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v9

    .line 475
    check-cast v9, Ljava/lang/Integer;

    .line 476
    .line 477
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 478
    .line 479
    .line 480
    move-result v9

    .line 481
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 482
    .line 483
    .line 484
    move-result v10

    .line 485
    if-eq v9, v10, :cond_e

    .line 486
    .line 487
    iget-object v10, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 488
    .line 489
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 490
    .line 491
    .line 492
    move-result v11

    .line 493
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    .line 495
    .line 496
    move-result-object v11

    .line 497
    invoke-virtual {v10, v9, v11}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    goto :goto_c

    .line 501
    :catchall_4
    move-exception p0

    .line 502
    goto :goto_d

    .line 503
    :cond_e
    :goto_c
    add-int/2addr v8, v0

    .line 504
    goto :goto_b

    .line 505
    :cond_f
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    .line 506
    .line 507
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    if-nez v7, :cond_10

    .line 512
    .line 513
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    .line 514
    .line 515
    new-instance v8, Landroid/util/ArraySet;

    .line 516
    .line 517
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v7, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    :cond_10
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    .line 524
    .line 525
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v6

    .line 529
    check-cast v6, Landroid/util/ArraySet;

    .line 530
    .line 531
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 532
    .line 533
    .line 534
    move-result v7

    .line 535
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 536
    .line 537
    .line 538
    move-result-object v7

    .line 539
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    goto :goto_a

    .line 543
    :cond_11
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 544
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 545
    .line 546
    goto :goto_e

    .line 547
    :goto_d
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 548
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 549
    .line 550
    throw p0

    .line 551
    :cond_12
    :goto_e
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    sub-int/2addr v2, v0

    .line 556
    :goto_f
    if-ltz v2, :cond_20

    .line 557
    .line 558
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 563
    .line 564
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 565
    .line 566
    .line 567
    move-result v6

    .line 568
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 569
    .line 570
    .line 571
    move-result v7

    .line 572
    if-eq v6, v7, :cond_1f

    .line 573
    .line 574
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 575
    .line 576
    .line 577
    move-result-object v6

    .line 578
    if-nez v6, :cond_13

    .line 579
    .line 580
    goto/16 :goto_16

    .line 581
    .line 582
    :cond_13
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 583
    .line 584
    .line 585
    move-result-object v6

    .line 586
    if-nez v3, :cond_18

    .line 587
    .line 588
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 589
    .line 590
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 591
    .line 592
    .line 593
    move-result v7

    .line 594
    if-nez v7, :cond_14

    .line 595
    .line 596
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 597
    .line 598
    invoke-static {v6, v1, v7}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    .line 599
    .line 600
    .line 601
    move-result v7

    .line 602
    if-eqz v7, :cond_14

    .line 603
    .line 604
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 605
    .line 606
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 607
    .line 608
    monitor-enter v7

    .line 609
    :try_start_8
    iget-object v8, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 610
    .line 611
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 612
    .line 613
    .line 614
    move-result v9

    .line 615
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 616
    .line 617
    .line 618
    move-result v10

    .line 619
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 620
    .line 621
    .line 622
    move-result-object v10

    .line 623
    invoke-virtual {v8, v9, v10}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    monitor-exit v7

    .line 627
    goto :goto_10

    .line 628
    :catchall_5
    move-exception p0

    .line 629
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 630
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 631
    .line 632
    throw p0

    .line 633
    :cond_14
    :goto_10
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    .line 634
    .line 635
    .line 636
    move-result-object v7

    .line 637
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 638
    .line 639
    .line 640
    move-result v7

    .line 641
    if-nez v7, :cond_15

    .line 642
    .line 643
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    .line 644
    .line 645
    .line 646
    move-result-object v7

    .line 647
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v8

    .line 651
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    move-result v7

    .line 655
    if-eqz v7, :cond_15

    .line 656
    .line 657
    goto :goto_11

    .line 658
    :cond_15
    invoke-static {v1, v5}, Lcom/android/server/pm/AppsFilterUtils;->canQueryAsInstaller(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    .line 659
    .line 660
    .line 661
    move-result v7

    .line 662
    if-nez v7, :cond_16

    .line 663
    .line 664
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 665
    .line 666
    .line 667
    move-result-object v7

    .line 668
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v8

    .line 672
    iget-object v7, v7, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 673
    .line 674
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result v7

    .line 678
    if-eqz v7, :cond_17

    .line 679
    .line 680
    :cond_16
    :goto_11
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 681
    .line 682
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 683
    .line 684
    monitor-enter v7

    .line 685
    :try_start_9
    iget-object v8, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 686
    .line 687
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 688
    .line 689
    .line 690
    move-result v9

    .line 691
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 692
    .line 693
    .line 694
    move-result v10

    .line 695
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 696
    .line 697
    .line 698
    move-result-object v10

    .line 699
    invoke-virtual {v8, v9, v10}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 703
    :cond_17
    invoke-static {v6, v1}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaUsesLibrary(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 704
    .line 705
    .line 706
    move-result v7

    .line 707
    if-eqz v7, :cond_18

    .line 708
    .line 709
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 710
    .line 711
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 712
    .line 713
    monitor-enter v7

    .line 714
    :try_start_a
    iget-object v8, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 715
    .line 716
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 717
    .line 718
    .line 719
    move-result v9

    .line 720
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 721
    .line 722
    .line 723
    move-result v10

    .line 724
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 725
    .line 726
    .line 727
    move-result-object v10

    .line 728
    invoke-virtual {v8, v9, v10}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    monitor-exit v7

    .line 732
    goto :goto_12

    .line 733
    :catchall_6
    move-exception p0

    .line 734
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 735
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 736
    .line 737
    throw p0

    .line 738
    :catchall_7
    move-exception p0

    .line 739
    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 740
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 741
    .line 742
    throw p0

    .line 743
    :cond_18
    :goto_12
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 744
    .line 745
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 746
    .line 747
    monitor-enter v7

    .line 748
    :try_start_c
    iget-object v8, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 749
    .line 750
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 751
    .line 752
    .line 753
    move-result v9

    .line 754
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 755
    .line 756
    .line 757
    move-result-object v9

    .line 758
    iget-object v8, v8, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 759
    .line 760
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    move-result v8

    .line 764
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 765
    if-nez v8, :cond_1d

    .line 766
    .line 767
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 768
    .line 769
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 770
    .line 771
    .line 772
    move-result v7

    .line 773
    if-nez v7, :cond_19

    .line 774
    .line 775
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 776
    .line 777
    invoke-static {v1, v6, v7}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    .line 778
    .line 779
    .line 780
    move-result v7

    .line 781
    if-eqz v7, :cond_19

    .line 782
    .line 783
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 784
    .line 785
    monitor-enter v7

    .line 786
    :try_start_d
    iget-object v8, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 787
    .line 788
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 789
    .line 790
    .line 791
    move-result v9

    .line 792
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 793
    .line 794
    .line 795
    move-result v10

    .line 796
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 797
    .line 798
    .line 799
    move-result-object v10

    .line 800
    invoke-virtual {v8, v9, v10}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    monitor-exit v7

    .line 804
    goto :goto_13

    .line 805
    :catchall_8
    move-exception p0

    .line 806
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 807
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 808
    .line 809
    throw p0

    .line 810
    :cond_19
    :goto_13
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    .line 811
    .line 812
    .line 813
    move-result-object v7

    .line 814
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 815
    .line 816
    .line 817
    move-result v7

    .line 818
    if-nez v7, :cond_1a

    .line 819
    .line 820
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    .line 821
    .line 822
    .line 823
    move-result-object v7

    .line 824
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v8

    .line 828
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 829
    .line 830
    .line 831
    move-result v7

    .line 832
    if-eqz v7, :cond_1a

    .line 833
    .line 834
    goto :goto_14

    .line 835
    :cond_1a
    invoke-static {v6, p2}, Lcom/android/server/pm/AppsFilterUtils;->canQueryAsInstaller(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    .line 836
    .line 837
    .line 838
    move-result v7

    .line 839
    if-nez v7, :cond_1b

    .line 840
    .line 841
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 842
    .line 843
    .line 844
    move-result-object v7

    .line 845
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v8

    .line 849
    iget-object v7, v7, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 850
    .line 851
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    move-result v7

    .line 855
    if-eqz v7, :cond_1c

    .line 856
    .line 857
    :cond_1b
    :goto_14
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 858
    .line 859
    monitor-enter v7

    .line 860
    :try_start_e
    iget-object v8, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 861
    .line 862
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 863
    .line 864
    .line 865
    move-result v9

    .line 866
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 867
    .line 868
    .line 869
    move-result v10

    .line 870
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 871
    .line 872
    .line 873
    move-result-object v10

    .line 874
    invoke-virtual {v8, v9, v10}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 875
    .line 876
    .line 877
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 878
    :cond_1c
    invoke-static {v1, v6}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaUsesLibrary(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 879
    .line 880
    .line 881
    move-result v6

    .line 882
    if-eqz v6, :cond_1d

    .line 883
    .line 884
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 885
    .line 886
    monitor-enter v6

    .line 887
    :try_start_f
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 888
    .line 889
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 890
    .line 891
    .line 892
    move-result v8

    .line 893
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 894
    .line 895
    .line 896
    move-result v9

    .line 897
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 898
    .line 899
    .line 900
    move-result-object v9

    .line 901
    invoke-virtual {v7, v8, v9}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 902
    .line 903
    .line 904
    monitor-exit v6

    .line 905
    goto :goto_15

    .line 906
    :catchall_9
    move-exception p0

    .line 907
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 908
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 909
    .line 910
    throw p0

    .line 911
    :catchall_a
    move-exception p0

    .line 912
    :try_start_10
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 913
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 914
    .line 915
    throw p0

    .line 916
    :cond_1d
    :goto_15
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 917
    .line 918
    .line 919
    move-result-object v6

    .line 920
    if-eqz v6, :cond_1f

    .line 921
    .line 922
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 923
    .line 924
    .line 925
    move-result-object v6

    .line 926
    if-eqz v6, :cond_1f

    .line 927
    .line 928
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 929
    .line 930
    .line 931
    move-result-object v6

    .line 932
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 933
    .line 934
    .line 935
    move-result-object v7

    .line 936
    invoke-static {v6, v7}, Lcom/android/server/pm/AppsFilterImpl;->pkgInstruments(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 937
    .line 938
    .line 939
    move-result v6

    .line 940
    if-nez v6, :cond_1e

    .line 941
    .line 942
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 943
    .line 944
    .line 945
    move-result-object v6

    .line 946
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 947
    .line 948
    .line 949
    move-result-object v7

    .line 950
    invoke-static {v6, v7}, Lcom/android/server/pm/AppsFilterImpl;->pkgInstruments(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 951
    .line 952
    .line 953
    move-result v6

    .line 954
    if-eqz v6, :cond_1f

    .line 955
    .line 956
    :cond_1e
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 957
    .line 958
    monitor-enter v6

    .line 959
    :try_start_11
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 960
    .line 961
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 962
    .line 963
    .line 964
    move-result v8

    .line 965
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 966
    .line 967
    .line 968
    move-result v9

    .line 969
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 970
    .line 971
    .line 972
    move-result-object v9

    .line 973
    invoke-virtual {v7, v8, v9}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 974
    .line 975
    .line 976
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 977
    .line 978
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 979
    .line 980
    .line 981
    move-result v5

    .line 982
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 983
    .line 984
    .line 985
    move-result v8

    .line 986
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 987
    .line 988
    .line 989
    move-result-object v8

    .line 990
    invoke-virtual {v7, v5, v8}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 991
    .line 992
    .line 993
    monitor-exit v6

    .line 994
    goto :goto_16

    .line 995
    :catchall_b
    move-exception p0

    .line 996
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 997
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 998
    .line 999
    throw p0

    .line 1000
    :catchall_c
    move-exception p0

    .line 1001
    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 1002
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1003
    .line 1004
    throw p0

    .line 1005
    :cond_1f
    :goto_16
    add-int/lit8 v2, v2, -0x1

    .line 1006
    .line 1007
    goto/16 :goto_f

    .line 1008
    .line 1009
    :cond_20
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 1010
    .line 1011
    .line 1012
    move-result v1

    .line 1013
    new-instance v2, Landroid/util/ArrayMap;

    .line 1014
    .line 1015
    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1016
    .line 1017
    .line 1018
    move v3, v4

    .line 1019
    :goto_17
    if-ge v3, v1, :cond_22

    .line 1020
    .line 1021
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v5

    .line 1025
    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1026
    .line 1027
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v6

    .line 1031
    if-eqz v6, :cond_21

    .line 1032
    .line 1033
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v6

    .line 1037
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v5

    .line 1041
    invoke-virtual {v2, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    :cond_21
    add-int/2addr v3, v0

    .line 1045
    goto :goto_17

    .line 1046
    :cond_22
    iget-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 1047
    .line 1048
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    invoke-virtual {p1, v0, v2}, Lcom/android/server/om/OverlayReferenceMapper;->addPkg(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;)Landroid/util/ArraySet;

    .line 1053
    .line 1054
    .line 1055
    move-result-object p1

    .line 1056
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 1057
    .line 1058
    invoke-interface {p0, p2, v4}, Lcom/android/server/pm/FeatureConfig;->updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    .line 1059
    .line 1060
    .line 1061
    return-object p1

    .line 1062
    :goto_18
    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1063
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1064
    .line 1065
    throw p0
.end method

.method public final collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    :goto_0
    if-ltz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 24
    .line 25
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProtectedBroadcasts()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 61
    .line 62
    iget-object v4, v3, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v3}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 78
    .line 79
    return-void

    .line 80
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 82
    .line 83
    throw p0
.end method

.method public final dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 14
    .line 15
    throw p0
.end method

.method public final dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 14
    .line 15
    throw p0
.end method

.method public final dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 14
    .line 15
    throw p0
.end method

.method public final dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 14
    .line 15
    throw p0
.end method

.method public final dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 14
    .line 15
    throw p0
.end method

.method public final invalidateCache(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string p0, "Invalidating cache: "

    .line 12
    .line 13
    const-string v0, "AppsFilter"

    .line 14
    .line 15
    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final isForceQueryable(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 15
    .line 16
    throw p0
.end method

.method public final isImplicitlyQueryable(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 15
    .line 16
    throw p0
.end method

.method public final isQueryableViaComponent(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponent(II)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 15
    .line 16
    throw p0
.end method

.method public final isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;II)Z
    .locals 8

    .line 1
    const/4 p2, 0x0

    .line 2
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 3
    .line 4
    sget-boolean p4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 5
    .line 6
    monitor-enter p3

    .line 7
    :try_start_0
    new-instance p4, Lcom/android/server/utils/WatchedArraySet;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 10
    .line 11
    invoke-direct {p4, v0}, Lcom/android/server/utils/WatchedArraySet;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    .line 12
    .line 13
    .line 14
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 15
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_1
    new-instance p3, Landroid/util/ArraySet;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-direct {p3, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 25
    .line 26
    .line 27
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 28
    new-instance v0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;

    .line 29
    .line 30
    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;-><init>(Landroid/util/ArrayMap;Landroid/util/ArraySet;Lcom/android/server/utils/WatchedArraySet;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide p3

    .line 37
    new-instance v1, Landroid/util/SparseSetArray;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/util/SparseSetArray;-><init>()V

    .line 40
    .line 41
    .line 42
    const-class v2, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x4

    .line 49
    invoke-static {v3, v2, p2}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    add-int/lit8 p1, p1, -0x1

    .line 63
    .line 64
    :goto_0
    if-ltz p1, :cond_3

    .line 65
    .line 66
    iget-object v4, v0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->mExistingSettings:Landroid/util/ArrayMap;

    .line 67
    .line 68
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 73
    .line 74
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-eqz v5, :cond_2

    .line 79
    .line 80
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const-string v7, "android.permission.QUERY_ALL_PACKAGES"

    .line 85
    .line 86
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_0

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_0
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_1

    .line 102
    .line 103
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :cond_1
    new-instance v5, Landroid/util/Pair;

    .line 118
    .line 119
    new-instance v6, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    invoke-direct {v6, v0, v4}, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v2, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_3
    move p1, p2

    .line 138
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-ge p1, v0, :cond_5

    .line 143
    .line 144
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Landroid/util/Pair;

    .line 149
    .line 150
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    .line 153
    .line 154
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Landroid/util/Pair;

    .line 163
    .line 164
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v4, Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .line 168
    :try_start_3
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Landroid/util/ArraySet;

    .line 173
    .line 174
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_4

    .line 179
    .line 180
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseSetArray;->addAll(ILandroid/util/ArraySet;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catch_0
    move-exception p0

    .line 185
    goto :goto_4

    .line 186
    :cond_4
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :goto_4
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 190
    .line 191
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 195
    :cond_5
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    const-string p1, "AppsFilter"

    .line 199
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v2, "Recomputing visibility takes "

    .line 203
    .line 204
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 208
    .line 209
    .line 210
    move-result-wide v2

    .line 211
    sub-long/2addr v2, p3

    .line 212
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string/jumbo p3, "ms"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p3

    .line 225
    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 229
    .line 230
    sget-boolean p3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 231
    .line 232
    monitor-enter p1

    .line 233
    :try_start_5
    new-instance p3, Lcom/android/server/utils/WatchedSparseSetArray;

    .line 234
    .line 235
    invoke-direct {p3, v1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>(Landroid/util/SparseSetArray;)V

    .line 236
    .line 237
    .line 238
    iput-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 239
    .line 240
    new-instance p3, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 241
    .line 242
    iget-object p4, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 243
    .line 244
    const-string v0, "AppsFilter.mQueriesViaComponent"

    .line 245
    .line 246
    invoke-direct {p3, p4, p4, v0, p2}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 247
    .line 248
    .line 249
    iput-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 250
    .line 251
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 252
    iget-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 253
    .line 254
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, p0}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, p5, p6}, Lcom/android/server/pm/AppsFilterImpl;->isQueryableViaComponent(II)Z

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    return p0

    .line 265
    :catchall_1
    move-exception p0

    .line 266
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 267
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 268
    .line 269
    throw p0

    .line 270
    :goto_5
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 271
    .line 272
    .line 273
    throw p0

    .line 274
    :catchall_2
    move-exception p0

    .line 275
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 276
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 277
    .line 278
    throw p0

    .line 279
    :catchall_3
    move-exception p0

    .line 280
    :try_start_8
    monitor-exit p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 281
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 282
    .line 283
    throw p0
.end method

.method public final isQueryableViaPackage(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaPackage(II)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 15
    .line 16
    throw p0
.end method

.method public final isQueryableViaUsesLibrary(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesLibrary(II)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 15
    .line 16
    throw p0
.end method

.method public final isQueryableViaUsesPermission(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesPermission(II)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 15
    .line 16
    throw p0
.end method

.method public final isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isRetainedImplicitlyQueryable(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isRetainedImplicitlyQueryable(II)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 15
    .line 16
    throw p0
.end method

.method public final onUserCreated(Lcom/android/server/pm/Computer;I)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    array-length v5, v3

    .line 20
    const/16 v6, -0x2710

    .line 21
    .line 22
    if-ge v4, v5, :cond_2

    .line 23
    .line 24
    aget-object v5, v3, v4

    .line 25
    .line 26
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 27
    .line 28
    if-ne p2, v5, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move p2, v6

    .line 35
    :goto_1
    if-ne p2, v6, :cond_3

    .line 36
    .line 37
    const-string p2, "AppsFilter"

    .line 38
    .line 39
    const-string v4, "We encountered a new user that isn\'t a member of known users, updating the whole cache"

    .line 40
    .line 41
    invoke-static {p2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 p2, -0x1

    .line 45
    :cond_3
    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheInner(Lcom/android/server/pm/Computer;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p0}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    sub-long v6, v2, v0

    .line 56
    .line 57
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    array-length v8, p2

    .line 62
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 71
    .line 72
    iget v10, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 73
    .line 74
    const/16 v4, 0x221

    .line 75
    .line 76
    const/4 v5, 0x2

    .line 77
    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJIII)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final onUserDeleted(Lcom/android/server/pm/Computer;I)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-string v2, "Failed to remove should filter cache for user "

    .line 11
    .line 12
    const-string v3, "Failed to remove should filter cache for user "

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 15
    .line 16
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 17
    .line 18
    monitor-enter v4

    .line 19
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 20
    .line 21
    iget-object v6, v5, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 22
    .line 23
    iget v5, v5, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 24
    .line 25
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    array-length v6, v5

    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-static {p2, v7}, Landroid/os/UserHandle;->getUid(II)I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    invoke-static {v5, v8}, Ljava/util/Arrays;->binarySearch([II)I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-ltz v8, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    not-int v8, v8

    .line 43
    :goto_0
    if-ge v8, v6, :cond_6

    .line 44
    .line 45
    aget v6, v5, v8

    .line 46
    .line 47
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eq v6, p2, :cond_2

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_2
    add-int/lit8 v2, p2, 0x1

    .line 55
    .line 56
    invoke-static {v2, v7}, Landroid/os/UserHandle;->getUid(II)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    add-int/lit8 v2, v2, -0x1

    .line 61
    .line 62
    invoke-static {v5, v2}, Ljava/util/Arrays;->binarySearch([II)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-ltz v2, :cond_3

    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    not-int v2, v2

    .line 72
    :goto_1
    if-ge v8, v2, :cond_5

    .line 73
    .line 74
    add-int/lit8 v6, v2, -0x1

    .line 75
    .line 76
    aget v5, v5, v6

    .line 77
    .line 78
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eq v5, p2, :cond_4

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 86
    .line 87
    invoke-virtual {p2, v8, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeRange(II)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->compact()V

    .line 93
    .line 94
    .line 95
    monitor-exit v4

    .line 96
    goto :goto_4

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_5

    .line 99
    :cond_5
    :goto_2
    const-string v5, "AppsFilter"

    .line 100
    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p2, ", fromIndex="

    .line 110
    .line 111
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p2, ", toIndex="

    .line 118
    .line 119
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-static {v5, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    monitor-exit v4

    .line 133
    goto :goto_4

    .line 134
    :cond_6
    :goto_3
    const-string v3, "AppsFilter"

    .line 135
    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p2, ", fromIndex="

    .line 145
    .line 146
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-static {v3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_4
    invoke-virtual {p0, p0}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 164
    .line 165
    .line 166
    move-result-wide v2

    .line 167
    sub-long v6, v2, v0

    .line 168
    .line 169
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    array-length v8, p2

    .line 174
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 183
    .line 184
    iget v10, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 185
    .line 186
    const/16 v4, 0x221

    .line 187
    .line 188
    const/4 v5, 0x3

    .line 189
    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJIII)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :goto_5
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 195
    .line 196
    throw p0
.end method

.method public final registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeAppIdFromVisibilityCache(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 8
    .line 9
    iget v3, v2, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 10
    .line 11
    if-ge v1, v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 17
    .line 18
    aget v2, v2, v1

    .line 19
    .line 20
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ne v2, p1, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeAt(I)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 41
    .line 42
    return-void

    .line 43
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 45
    .line 46
    throw p0
.end method

.method public final removePackageInternal(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 6
    .line 7
    .line 8
    move-result-object v9

    .line 9
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v10

    .line 13
    array-length v2, v10

    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v12, 0x1

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    if-nez p4, :cond_5

    .line 19
    .line 20
    :cond_0
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 21
    .line 22
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 23
    .line 24
    monitor-enter v3

    .line 25
    move v4, v11

    .line 26
    :goto_0
    if-ge v4, v2, :cond_4

    .line 27
    .line 28
    :try_start_0
    aget-object v5, v10, v4

    .line 29
    .line 30
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 31
    .line 32
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    iget-object v6, v0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 41
    .line 42
    invoke-virtual {v6, v5}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 43
    .line 44
    .line 45
    iget-object v6, v0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 46
    .line 47
    iget-object v6, v6, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 48
    .line 49
    invoke-virtual {v6}, Landroid/util/SparseSetArray;->size()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    sub-int/2addr v6, v12

    .line 54
    :goto_1
    if-ltz v6, :cond_1

    .line 55
    .line 56
    iget-object v7, v0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 57
    .line 58
    iget-object v8, v7, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 59
    .line 60
    invoke-virtual {v8, v6}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    invoke-virtual {v7, v8, v13}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v6, v6, -0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto/16 :goto_17

    .line 76
    .line 77
    :cond_1
    if-eqz p3, :cond_2

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_2
    iget-object v6, v0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 81
    .line 82
    invoke-virtual {v6, v5}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 83
    .line 84
    .line 85
    iget-object v6, v0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 86
    .line 87
    iget-object v6, v6, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 88
    .line 89
    invoke-virtual {v6}, Landroid/util/SparseSetArray;->size()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    sub-int/2addr v6, v12

    .line 94
    :goto_2
    if-ltz v6, :cond_3

    .line 95
    .line 96
    iget-object v7, v0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 97
    .line 98
    iget-object v8, v7, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 99
    .line 100
    invoke-virtual {v8, v6}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    invoke-virtual {v7, v8, v13}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v6, v6, -0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    :goto_3
    add-int/2addr v4, v12

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 118
    .line 119
    :cond_5
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_7

    .line 126
    .line 127
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 128
    .line 129
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 130
    .line 131
    monitor-enter v2

    .line 132
    :try_start_1
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 133
    .line 134
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 139
    .line 140
    .line 141
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 142
    .line 143
    iget-object v3, v3, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 144
    .line 145
    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    sub-int/2addr v3, v12

    .line 150
    :goto_4
    if-ltz v3, :cond_6

    .line 151
    .line 152
    iget-object v4, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 153
    .line 154
    iget-object v5, v4, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 155
    .line 156
    invoke-virtual {v5, v3}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v4, v5, v6}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    add-int/lit8 v3, v3, -0x1

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :catchall_1
    move-exception v0

    .line 175
    goto :goto_5

    .line 176
    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :goto_5
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 182
    .line 183
    throw v0

    .line 184
    :cond_7
    :goto_6
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 185
    .line 186
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 187
    .line 188
    monitor-enter v2

    .line 189
    :try_start_3
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 190
    .line 191
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 196
    .line 197
    .line 198
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 199
    .line 200
    iget-object v3, v3, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 201
    .line 202
    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    sub-int/2addr v3, v12

    .line 207
    :goto_7
    if-ltz v3, :cond_8

    .line 208
    .line 209
    iget-object v4, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 210
    .line 211
    iget-object v5, v4, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 212
    .line 213
    invoke-virtual {v5, v3}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-virtual {v4, v5, v6}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    add-int/lit8 v3, v3, -0x1

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :catchall_2
    move-exception v0

    .line 232
    goto/16 :goto_16

    .line 233
    .line 234
    :cond_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 235
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 236
    .line 237
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 238
    .line 239
    monitor-enter v3

    .line 240
    :try_start_4
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 241
    .line 242
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    invoke-virtual {v2, v4}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 247
    .line 248
    .line 249
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 250
    .line 251
    iget-object v2, v2, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 252
    .line 253
    invoke-virtual {v2}, Landroid/util/SparseSetArray;->size()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    sub-int/2addr v2, v12

    .line 258
    :goto_8
    if-ltz v2, :cond_9

    .line 259
    .line 260
    iget-object v4, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 261
    .line 262
    iget-object v5, v4, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 263
    .line 264
    invoke-virtual {v5, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-virtual {v4, v5, v6}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    add-int/lit8 v2, v2, -0x1

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :catchall_3
    move-exception v0

    .line 283
    goto/16 :goto_15

    .line 284
    .line 285
    :cond_9
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 286
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 287
    .line 288
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 289
    .line 290
    monitor-enter v2

    .line 291
    :try_start_5
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    if-eqz v3, :cond_b

    .line 296
    .line 297
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPermissions()Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-nez v3, :cond_b

    .line 310
    .line 311
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPermissions()Ljava/util/List;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    :cond_a
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-eqz v4, :cond_b

    .line 328
    .line 329
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 334
    .line 335
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    .line 340
    .line 341
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    if-eqz v5, :cond_a

    .line 346
    .line 347
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    .line 348
    .line 349
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    check-cast v5, Landroid/util/ArraySet;

    .line 354
    .line 355
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    .line 367
    .line 368
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    check-cast v5, Landroid/util/ArraySet;

    .line 373
    .line 374
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    if-eqz v5, :cond_a

    .line 379
    .line 380
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    .line 381
    .line 382
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    goto :goto_9

    .line 386
    :catchall_4
    move-exception v0

    .line 387
    goto/16 :goto_14

    .line 388
    .line 389
    :cond_b
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    if-eqz v3, :cond_d

    .line 394
    .line 395
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesPermissions()Ljava/util/List;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    if-nez v3, :cond_d

    .line 408
    .line 409
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesPermissions()Ljava/util/List;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    :cond_c
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    if-eqz v4, :cond_d

    .line 426
    .line 427
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 432
    .line 433
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    .line 438
    .line 439
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v5

    .line 443
    if-eqz v5, :cond_c

    .line 444
    .line 445
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    .line 446
    .line 447
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    check-cast v5, Landroid/util/ArraySet;

    .line 452
    .line 453
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 454
    .line 455
    .line 456
    move-result v6

    .line 457
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 458
    .line 459
    .line 460
    move-result-object v6

    .line 461
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    .line 465
    .line 466
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    check-cast v5, Landroid/util/ArraySet;

    .line 471
    .line 472
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    .line 473
    .line 474
    .line 475
    move-result v5

    .line 476
    if-eqz v5, :cond_c

    .line 477
    .line 478
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    .line 479
    .line 480
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    goto :goto_a

    .line 484
    :cond_d
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 485
    .line 486
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 491
    .line 492
    .line 493
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 494
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 495
    .line 496
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 497
    .line 498
    monitor-enter v3

    .line 499
    :try_start_6
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 500
    .line 501
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 502
    .line 503
    .line 504
    move-result v4

    .line 505
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    invoke-virtual {v2, v4}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 513
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 514
    .line 515
    monitor-enter v2

    .line 516
    :try_start_7
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    if-eqz v3, :cond_f

    .line 521
    .line 522
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProtectedBroadcasts()Ljava/util/List;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 531
    .line 532
    .line 533
    move-result v3

    .line 534
    if-nez v3, :cond_f

    .line 535
    .line 536
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    new-instance v4, Ljava/util/ArrayList;

    .line 545
    .line 546
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 547
    .line 548
    iget-object v5, v5, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 549
    .line 550
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0, v9, v3}, Lcom/android/server/pm/AppsFilterImpl;->collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    move v3, v11

    .line 557
    :goto_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    if-ge v3, v5, :cond_f

    .line 562
    .line 563
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 564
    .line 565
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v6

    .line 569
    iget-object v5, v5, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 570
    .line 571
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v5

    .line 575
    if-nez v5, :cond_e

    .line 576
    .line 577
    move v3, v12

    .line 578
    goto :goto_c

    .line 579
    :cond_e
    add-int/2addr v3, v12

    .line 580
    goto :goto_b

    .line 581
    :catchall_5
    move-exception v0

    .line 582
    goto/16 :goto_13

    .line 583
    .line 584
    :cond_f
    move v3, v11

    .line 585
    :goto_c
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 586
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 587
    .line 588
    if-eqz v3, :cond_10

    .line 589
    .line 590
    const-string v2, "AppsFilter"

    .line 591
    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    .line 593
    .line 594
    const-string v4, "Protected-Broadcast is changed by Removing "

    .line 595
    .line 596
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v4

    .line 603
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .line 612
    .line 613
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 614
    .line 615
    invoke-virtual {v2, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 616
    .line 617
    .line 618
    :cond_10
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 619
    .line 620
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v3

    .line 624
    invoke-virtual {v2, v3}, Lcom/android/server/om/OverlayReferenceMapper;->removePkg(Ljava/lang/String;)Landroid/util/ArraySet;

    .line 625
    .line 626
    .line 627
    move-result-object v13

    .line 628
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 629
    .line 630
    invoke-interface {v2, v1, v12}, Lcom/android/server/pm/FeatureConfig;->updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    .line 631
    .line 632
    .line 633
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    .line 634
    .line 635
    .line 636
    move-result v2

    .line 637
    if-eqz v2, :cond_11

    .line 638
    .line 639
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    .line 640
    .line 641
    .line 642
    move-result v2

    .line 643
    move-object/from16 v14, p1

    .line 644
    .line 645
    invoke-interface {v14, v2}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/SharedUserSetting;

    .line 646
    .line 647
    .line 648
    move-result-object v2

    .line 649
    goto :goto_d

    .line 650
    :cond_11
    move-object/from16 v14, p1

    .line 651
    .line 652
    const/4 v2, 0x0

    .line 653
    :goto_d
    if-eqz v2, :cond_13

    .line 654
    .line 655
    iget-object v3, v2, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 656
    .line 657
    iget-object v3, v3, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 658
    .line 659
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 660
    .line 661
    .line 662
    move-result v4

    .line 663
    sub-int/2addr v4, v12

    .line 664
    :goto_e
    if-ltz v4, :cond_13

    .line 665
    .line 666
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v5

    .line 670
    if-ne v5, v1, :cond_12

    .line 671
    .line 672
    goto :goto_f

    .line 673
    :cond_12
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v5

    .line 677
    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 678
    .line 679
    invoke-virtual {v0, v9, v5}, Lcom/android/server/pm/AppsFilterImpl;->addPackageInternal(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)Landroid/util/ArraySet;

    .line 680
    .line 681
    .line 682
    :goto_f
    add-int/lit8 v4, v4, -0x1

    .line 683
    .line 684
    goto :goto_e

    .line 685
    :cond_13
    iget-boolean v3, v0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 686
    .line 687
    if-eqz v3, :cond_17

    .line 688
    .line 689
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 690
    .line 691
    .line 692
    move-result v3

    .line 693
    invoke-virtual {v0, v3}, Lcom/android/server/pm/AppsFilterImpl;->removeAppIdFromVisibilityCache(I)V

    .line 694
    .line 695
    .line 696
    if-eqz v2, :cond_15

    .line 697
    .line 698
    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 699
    .line 700
    iget-object v2, v2, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 701
    .line 702
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 703
    .line 704
    .line 705
    move-result v3

    .line 706
    sub-int/2addr v3, v12

    .line 707
    :goto_10
    if-ltz v3, :cond_15

    .line 708
    .line 709
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 714
    .line 715
    if-ne v4, v1, :cond_14

    .line 716
    .line 717
    add-int/lit8 v3, v3, -0x1

    .line 718
    .line 719
    goto :goto_10

    .line 720
    :cond_14
    iget-object v15, v0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 721
    .line 722
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 723
    .line 724
    monitor-enter v15

    .line 725
    :try_start_8
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 730
    .line 731
    .line 732
    move-result v8

    .line 733
    const/4 v7, -0x1

    .line 734
    move-object/from16 v1, p0

    .line 735
    .line 736
    move-object/from16 v2, p1

    .line 737
    .line 738
    move-object v5, v9

    .line 739
    move-object v6, v10

    .line 740
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 741
    .line 742
    .line 743
    monitor-exit v15

    .line 744
    goto :goto_11

    .line 745
    :catchall_6
    move-exception v0

    .line 746
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 747
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 748
    .line 749
    throw v0

    .line 750
    :cond_15
    :goto_11
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    if-ge v11, v1, :cond_18

    .line 755
    .line 756
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    check-cast v1, Ljava/lang/String;

    .line 761
    .line 762
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    move-object v4, v1

    .line 767
    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 768
    .line 769
    if-nez v4, :cond_16

    .line 770
    .line 771
    goto :goto_12

    .line 772
    :cond_16
    iget-object v15, v0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 773
    .line 774
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 775
    .line 776
    monitor-enter v15

    .line 777
    :try_start_9
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 778
    .line 779
    .line 780
    move-result v8

    .line 781
    const/4 v3, 0x0

    .line 782
    const/4 v7, -0x1

    .line 783
    move-object/from16 v1, p0

    .line 784
    .line 785
    move-object/from16 v2, p1

    .line 786
    .line 787
    move-object v5, v9

    .line 788
    move-object v6, v10

    .line 789
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 790
    .line 791
    .line 792
    monitor-exit v15

    .line 793
    :goto_12
    add-int/2addr v11, v12

    .line 794
    goto :goto_11

    .line 795
    :catchall_7
    move-exception v0

    .line 796
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 797
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 798
    .line 799
    throw v0

    .line 800
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 801
    .line 802
    const-string/jumbo v3, "removePackage: "

    .line 803
    .line 804
    .line 805
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v1

    .line 819
    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppsFilterImpl;->invalidateCache(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    :cond_18
    invoke-virtual {v0, v0}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 823
    .line 824
    .line 825
    return-void

    .line 826
    :goto_13
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 827
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 828
    .line 829
    throw v0

    .line 830
    :catchall_8
    move-exception v0

    .line 831
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 832
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 833
    .line 834
    throw v0

    .line 835
    :goto_14
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 836
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 837
    .line 838
    throw v0

    .line 839
    :goto_15
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 840
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 841
    .line 842
    throw v0

    .line 843
    :goto_16
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 844
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 845
    .line 846
    throw v0

    .line 847
    :goto_17
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 848
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 849
    .line 850
    throw v0
.end method

.method public final shouldFilterApplicationUsingCache(III)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationUsingCache(III)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 15
    .line 16
    throw p0
.end method

.method public final snapshot()Lcom/android/server/pm/AppsFilterBase;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mSnapshot:Lcom/android/server/pm/AppsFilterImpl$1;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/AppsFilterBase;

    return-object p0
.end method

.method public final bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->snapshot()Lcom/android/server/pm/AppsFilterBase;

    move-result-object p0

    return-object p0
.end method

.method public final unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateEntireShouldFilterCacheInner(Lcom/android/server/pm/Computer;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V
    .locals 11

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 3
    .line 4
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    if-ne p4, v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput v3, v2, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 13
    .line 14
    iget-object v4, v2, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 15
    .line 16
    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v2}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_3

    .line 25
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 26
    .line 27
    array-length v3, p3

    .line 28
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    mul-int/2addr v3, v4

    .line 33
    iget v4, v2, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 34
    .line 35
    if-gt v3, v4, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    rem-int/lit8 v4, v3, 0x40

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    div-int/lit8 v3, v3, 0x40

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    mul-int/lit8 v3, v3, 0x40

    .line 47
    .line 48
    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    add-int/lit8 v2, v2, -0x1

    .line 56
    .line 57
    :goto_2
    if-ltz v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    move-object v6, v3

    .line 64
    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    move-object v3, p0

    .line 68
    move-object v4, p1

    .line 69
    move-object v7, p2

    .line 70
    move-object v8, p3

    .line 71
    move v9, p4

    .line 72
    move v10, v2

    .line 73
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 74
    .line 75
    .line 76
    add-int/2addr v2, v0

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 80
    .line 81
    return-void

    .line 82
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 84
    .line 85
    throw p0
.end method

.method public final updateShouldFilterCacheForImplicitAccess(Lcom/android/server/utils/WatchedSparseSetArray;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    :try_start_0
    iget-object v3, p1, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 9
    .line 10
    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    iget-object v3, p1, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    iget-object v4, p1, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Ljava/lang/Integer;

    .line 43
    .line 44
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {v6, v3, v5, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 61
    .line 62
    return-void

    .line 63
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 65
    .line 66
    throw p0
.end method

.method public final updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V
    .locals 8

    .line 1
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    invoke-static {p7, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result p7

    .line 11
    :goto_0
    if-ltz p7, :cond_4

    .line 12
    .line 13
    invoke-virtual {p4, p7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 18
    .line 19
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eq v1, p2, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-ne v1, p2, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const/4 v1, -0x1

    .line 44
    if-ne p6, v1, :cond_2

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    move v7, v1

    .line 48
    :goto_1
    array-length v1, p5

    .line 49
    if-ge v7, v1, :cond_3

    .line 50
    .line 51
    aget-object v1, p5, v7

    .line 52
    .line 53
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    .line 54
    .line 55
    move-object v1, p0

    .line 56
    move-object v2, p1

    .line 57
    move-object v3, p3

    .line 58
    move-object v4, p5

    .line 59
    move-object v5, v0

    .line 60
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForUser(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v7, v7, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v1, p0

    .line 67
    move-object v2, p1

    .line 68
    move-object v3, p3

    .line 69
    move-object v4, p5

    .line 70
    move-object v5, v0

    .line 71
    move v6, p6

    .line 72
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForUser(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_2
    add-int/lit8 p7, p7, -0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    return-void
.end method

.method public final updateShouldFilterCacheForUser(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .locals 13

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v7, p3

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move v8, v0

    .line 6
    :goto_0
    array-length v0, v7

    .line 7
    if-ge v8, v0, :cond_0

    .line 8
    .line 9
    aget-object v0, v7, v8

    .line 10
    .line 11
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    .line 12
    .line 13
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    move/from16 v9, p5

    .line 18
    .line 19
    invoke-static {v9, v0}, Landroid/os/UserHandle;->getUid(II)I

    .line 20
    .line 21
    .line 22
    move-result v10

    .line 23
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v5, v0}, Landroid/os/UserHandle;->getUid(II)I

    .line 28
    .line 29
    .line 30
    move-result v11

    .line 31
    move-object v0, p0

    .line 32
    move-object v1, p1

    .line 33
    move v2, v10

    .line 34
    move-object v3, p2

    .line 35
    move-object/from16 v4, p4

    .line 36
    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    .line 38
    .line 39
    .line 40
    move-result v12

    .line 41
    move v2, v11

    .line 42
    move-object/from16 v3, p4

    .line 43
    .line 44
    move-object v4, p2

    .line 45
    move/from16 v5, p5

    .line 46
    .line 47
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, v6, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 52
    .line 53
    invoke-virtual {v1, v10, v11, v12}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v6, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 57
    .line 58
    invoke-virtual {v1, v11, v10, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v8, v8, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
