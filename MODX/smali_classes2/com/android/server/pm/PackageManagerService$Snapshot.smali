.class public final Lcom/android/server/pm/PackageManagerService$Snapshot;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final androidApplication:Landroid/content/pm/ApplicationInfo;

.field public final appPredictionServicePackage:Ljava/lang/String;

.field public final appsFilter:Lcom/android/server/pm/AppsFilterBase;

.field public final componentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

.field public final frozenPackages:Lcom/android/server/utils/WatchedArrayMap;

.field public final instantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

.field public final instantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

.field public final instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

.field public final instrumentation:Lcom/android/server/utils/WatchedArrayMap;

.field public final isolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

.field public final packages:Lcom/android/server/utils/WatchedArrayMap;

.field public final resolveActivity:Landroid/content/pm/ActivityInfo;

.field public final resolveComponentName:Landroid/content/ComponentName;

.field public final service:Lcom/android/server/pm/PackageManagerService;

.field public final settings:Lcom/android/server/pm/Settings;

.field public final sharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

.field public final webInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p2, v0, :cond_3

    .line 6
    .line 7
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 8
    .line 9
    iget-object p2, p2, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/android/server/pm/Settings;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->settings:Lcom/android/server/pm/Settings;

    .line 18
    .line 19
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/android/server/utils/WatchedSparseIntArray;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->isolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 28
    .line 29
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/android/server/utils/WatchedArrayMap;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->packages:Lcom/android/server/utils/WatchedArrayMap;

    .line 38
    .line 39
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Lcom/android/server/utils/WatchedArrayMap;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 48
    .line 49
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    if-nez p2, :cond_0

    .line 53
    .line 54
    move-object p2, v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    :goto_0
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveComponentName:Landroid/content/ComponentName;

    .line 61
    .line 62
    new-instance p2, Landroid/content/pm/ActivityInfo;

    .line 63
    .line 64
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 65
    .line 66
    invoke-direct {p2, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveActivity:Landroid/content/pm/ActivityInfo;

    .line 70
    .line 71
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 72
    .line 73
    if-nez p2, :cond_1

    .line 74
    .line 75
    move-object p2, v0

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    new-instance p2, Landroid/content/pm/ActivityInfo;

    .line 78
    .line 79
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 80
    .line 81
    invoke-direct {p2, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 85
    .line 86
    new-instance p2, Landroid/content/pm/ResolveInfo;

    .line 87
    .line 88
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 89
    .line 90
    invoke-direct {p2, v1}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 91
    .line 92
    .line 93
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 94
    .line 95
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 101
    .line 102
    invoke-direct {v1, p2}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>(Lcom/android/server/utils/WatchedSparseBooleanArray;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/android/server/utils/WatchableImpl;->seal()V

    .line 106
    .line 107
    .line 108
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->webInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 109
    .line 110
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 111
    .line 112
    iget-object p2, p2, Lcom/android/server/pm/InstantAppRegistry;->mSnapshot:Lcom/android/server/pm/InstantAppRegistry$2;

    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Lcom/android/server/pm/InstantAppRegistry;

    .line 119
    .line 120
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 121
    .line 122
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 123
    .line 124
    if-nez p2, :cond_2

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_2
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    .line 128
    .line 129
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 130
    .line 131
    invoke-direct {v0, p2}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->androidApplication:Landroid/content/pm/ApplicationInfo;

    .line 135
    .line 136
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 137
    .line 138
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->appPredictionServicePackage:Ljava/lang/String;

    .line 139
    .line 140
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 141
    .line 142
    invoke-virtual {p2}, Lcom/android/server/pm/AppsFilterImpl;->snapshot()Lcom/android/server/pm/AppsFilterBase;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->appsFilter:Lcom/android/server/pm/AppsFilterBase;

    .line 147
    .line 148
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 149
    .line 150
    iget-object p2, p2, Lcom/android/server/pm/resolution/ComponentResolver;->mSnapshot:Lcom/android/server/pm/resolution/ComponentResolver$1;

    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 157
    .line 158
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->componentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 159
    .line 160
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

    .line 161
    .line 162
    invoke-virtual {p2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    check-cast p2, Lcom/android/server/utils/WatchedArrayMap;

    .line 167
    .line 168
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->frozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 169
    .line 170
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 171
    .line 172
    iget-object p2, p2, Lcom/android/server/pm/SharedLibrariesImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 173
    .line 174
    invoke-virtual {p2}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    check-cast p2, Lcom/android/server/pm/SharedLibrariesImpl;

    .line 179
    .line 180
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->sharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_3
    const/4 v0, 0x1

    .line 184
    if-ne p2, v0, :cond_4

    .line 185
    .line 186
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 187
    .line 188
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->settings:Lcom/android/server/pm/Settings;

    .line 189
    .line 190
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 191
    .line 192
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->isolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 193
    .line 194
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 195
    .line 196
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->packages:Lcom/android/server/utils/WatchedArrayMap;

    .line 197
    .line 198
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 199
    .line 200
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 201
    .line 202
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 203
    .line 204
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveComponentName:Landroid/content/ComponentName;

    .line 205
    .line 206
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 207
    .line 208
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveActivity:Landroid/content/pm/ActivityInfo;

    .line 209
    .line 210
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 211
    .line 212
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 213
    .line 214
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 215
    .line 216
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 217
    .line 218
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 219
    .line 220
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->webInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 221
    .line 222
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 223
    .line 224
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 225
    .line 226
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 227
    .line 228
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->androidApplication:Landroid/content/pm/ApplicationInfo;

    .line 229
    .line 230
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 231
    .line 232
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->appPredictionServicePackage:Ljava/lang/String;

    .line 233
    .line 234
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 235
    .line 236
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->appsFilter:Lcom/android/server/pm/AppsFilterBase;

    .line 237
    .line 238
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 239
    .line 240
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->componentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 241
    .line 242
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 243
    .line 244
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->frozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 245
    .line 246
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 247
    .line 248
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->sharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 249
    .line 250
    :goto_3
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    .line 251
    .line 252
    return-void

    .line 253
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 254
    .line 255
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 256
    .line 257
    .line 258
    throw p0
.end method
