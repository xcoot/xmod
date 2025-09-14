.class public final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;
.implements Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;


# static fields
.field public static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field public static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;


# instance fields
.field public final mAppIds:Lcom/android/server/pm/AppIdSettingMap;

.field public final mBackupStoppedPackagesFilename:Ljava/io/File;

.field public final mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

.field public final mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

.field public final mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

.field final mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

.field public final mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

.field public final mKernelMappingFilename:Ljava/io/File;

.field public final mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

.field public final mObserver:Lcom/android/server/pm/Settings$1;

.field public final mPackageListFilename:Ljava/io/File;

.field public final mPackageRestrictionsLock:Ljava/lang/Object;

.field final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field public final mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

.field public final mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

.field public final mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

.field public final mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

.field public final mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

.field public final mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

.field public final mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPreviousSettingsFilename:Ljava/io/File;

.field public final mReadMessages:Ljava/lang/StringBuilder;

.field public final mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

.field public final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field public final mSettingsFilename:Ljava/io/File;

.field public final mSettingsReserveCopyFilename:Ljava/io/File;

.field public final mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mStoppedPackagesFilename:Ljava/io/File;

.field public final mSystemDir:Ljava/io/File;

.field public mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

.field public final mVersion:Lcom/android/server/utils/WatchedArrayMap;

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 81

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    move-object/from16 v51, v1

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    move-object/from16 v43, v3

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    move-object/from16 v61, v7

    .line 27
    .line 28
    const/16 v0, 0x10

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    move-object/from16 v49, v9

    .line 35
    .line 36
    const/16 v0, 0x20

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    move-object/from16 v45, v11

    .line 43
    .line 44
    const/16 v0, 0x40

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    move-object/from16 v47, v13

    .line 51
    .line 52
    const/16 v0, 0x80

    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v15

    .line 58
    move-object/from16 v53, v15

    .line 59
    .line 60
    const/16 v0, 0x100

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v17

    .line 66
    move-object/from16 v59, v17

    .line 67
    .line 68
    const/16 v0, 0x4000

    .line 69
    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v19

    .line 74
    move-object/from16 v65, v19

    .line 75
    .line 76
    const v0, 0x8000

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v21

    .line 83
    move-object/from16 v55, v21

    .line 84
    .line 85
    const/high16 v0, 0x10000

    .line 86
    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v23

    .line 91
    move-object/from16 v73, v23

    .line 92
    .line 93
    const/high16 v0, 0x20000

    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v25

    .line 99
    move-object/from16 v57, v25

    .line 100
    .line 101
    const/high16 v0, 0x40000

    .line 102
    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v27

    .line 107
    move-object/from16 v67, v27

    .line 108
    .line 109
    const/high16 v0, 0x100000

    .line 110
    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v29

    .line 115
    const-string v30, "LARGE_HEAP"

    .line 116
    .line 117
    const-string v2, "SYSTEM"

    .line 118
    .line 119
    const-string v4, "DEBUGGABLE"

    .line 120
    .line 121
    const-string v6, "HAS_CODE"

    .line 122
    .line 123
    const-string v8, "PERSISTENT"

    .line 124
    .line 125
    const-string v10, "FACTORY_TEST"

    .line 126
    .line 127
    const-string v12, "ALLOW_TASK_REPARENTING"

    .line 128
    .line 129
    const-string v14, "ALLOW_CLEAR_USER_DATA"

    .line 130
    .line 131
    const-string v16, "UPDATED_SYSTEM_APP"

    .line 132
    .line 133
    const-string v18, "TEST_ONLY"

    .line 134
    .line 135
    const-string v20, "VM_SAFE_MODE"

    .line 136
    .line 137
    const-string v22, "ALLOW_BACKUP"

    .line 138
    .line 139
    const-string v24, "KILL_AFTER_RESTORE"

    .line 140
    .line 141
    const-string v26, "RESTORE_ANY_VERSION"

    .line 142
    .line 143
    const-string v28, "EXTERNAL_STORAGE"

    .line 144
    .line 145
    filled-new-array/range {v1 .. v30}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sput-object v0, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 150
    .line 151
    const/16 v0, 0x400

    .line 152
    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v31

    .line 157
    const/16 v0, 0x1000

    .line 158
    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v33

    .line 163
    const/16 v0, 0x800

    .line 164
    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v35

    .line 169
    const/high16 v0, 0x8000000

    .line 170
    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v37

    .line 175
    const/high16 v0, 0x20000000

    .line 176
    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v39

    .line 181
    const/16 v0, 0x2000

    .line 182
    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v41

    .line 187
    const/16 v0, 0x200

    .line 188
    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v63

    .line 193
    const/high16 v0, 0x80000

    .line 194
    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v69

    .line 199
    const/high16 v0, 0x200000

    .line 200
    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v71

    .line 205
    const/high16 v0, 0x40000000    # 2.0f

    .line 206
    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v75

    .line 211
    const/high16 v0, -0x80000000

    .line 212
    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v77

    .line 217
    const/high16 v0, 0x1000000

    .line 218
    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v79

    .line 223
    const-string v80, "PRIVATE_FLAG_HAS_FRAGILE_USER_DATA"

    .line 224
    .line 225
    const-string v32, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    .line 226
    .line 227
    const-string v34, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    .line 228
    .line 229
    const-string v36, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    .line 230
    .line 231
    const-string v38, "ALLOW_AUDIO_PLAYBACK_CAPTURE"

    .line 232
    .line 233
    const-string v40, "PRIVATE_FLAG_REQUEST_LEGACY_EXTERNAL_STORAGE"

    .line 234
    .line 235
    const-string v42, "BACKUP_IN_FOREGROUND"

    .line 236
    .line 237
    const-string v44, "CANT_SAVE_STATE"

    .line 238
    .line 239
    const-string v46, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    .line 240
    .line 241
    const-string v48, "DIRECT_BOOT_AWARE"

    .line 242
    .line 243
    const-string v50, "HAS_DOMAIN_URLS"

    .line 244
    .line 245
    const-string v52, "HIDDEN"

    .line 246
    .line 247
    const-string v54, "EPHEMERAL"

    .line 248
    .line 249
    const-string v56, "ISOLATED_SPLIT_LOADING"

    .line 250
    .line 251
    const-string v58, "OEM"

    .line 252
    .line 253
    const-string v60, "PARTIALLY_DIRECT_BOOT_AWARE"

    .line 254
    .line 255
    const-string v62, "PRIVILEGED"

    .line 256
    .line 257
    const-string v64, "REQUIRED_FOR_SYSTEM_USER"

    .line 258
    .line 259
    const-string v66, "STATIC_SHARED_LIBRARY"

    .line 260
    .line 261
    const-string v68, "VENDOR"

    .line 262
    .line 263
    const-string v70, "PRODUCT"

    .line 264
    .line 265
    const-string v72, "SYSTEM_EXT"

    .line 266
    .line 267
    const-string v74, "VIRTUAL_PRELOAD"

    .line 268
    .line 269
    const-string v76, "ODM"

    .line 270
    .line 271
    const-string v78, "PRIVATE_FLAG_ALLOW_NATIVE_HEAP_POINTER_TAGGING"

    .line 272
    .line 273
    filled-new-array/range {v31 .. v80}, [Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    sput-object v0, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 278
    .line 279
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Settings;)V
    .locals 10

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    .line 163
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 164
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    const/4 v1, 0x0

    .line 165
    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 166
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 167
    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 168
    new-instance v3, Lcom/android/server/utils/WatchedArrayMap;

    .line 169
    invoke-direct {v3, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 170
    iput-object v3, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 171
    new-instance v4, Lcom/android/server/utils/WatchedArrayMap;

    .line 172
    invoke-direct {v4, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 173
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 174
    new-instance v5, Lcom/android/server/utils/WatchedArrayMap;

    .line 175
    invoke-direct {v5, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 176
    iput-object v5, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 177
    new-instance v6, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v6}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 178
    new-instance v6, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v6}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 180
    new-instance v7, Lcom/android/server/pm/Settings$1;

    invoke-direct {v7, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/pm/Settings$1;

    .line 181
    iget-object v7, p1, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v7}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 182
    new-instance v8, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 183
    invoke-direct {v8}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 184
    iput-object v8, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 185
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v8}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 186
    new-instance v8, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 187
    invoke-direct {v8}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 188
    iput-object v8, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 189
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v8}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/utils/WatchedArraySet;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 190
    new-instance v8, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 191
    invoke-direct {v8}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 192
    iput-object v8, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 193
    new-instance v8, Lcom/android/server/pm/KeySetManagerService;

    iget-object v9, p1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v8, v9, v7}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    const/4 v7, 0x0

    .line 194
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 195
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 196
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 197
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 198
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    .line 199
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    .line 200
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 201
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 202
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 203
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 204
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 205
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 206
    invoke-static {v0, v8}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    .line 207
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 208
    invoke-static {v2, v0}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    .line 209
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v0}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 210
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 211
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 212
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 213
    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 214
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 215
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 216
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 217
    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 218
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 219
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 220
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 221
    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 222
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 223
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 224
    invoke-static {v4, v0}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    .line 225
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    new-instance v2, Lcom/android/server/pm/AppIdSettingMap;

    invoke-direct {v2, v0}, Lcom/android/server/pm/AppIdSettingMap;-><init>(Lcom/android/server/pm/AppIdSettingMap;)V

    .line 227
    iput-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 228
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 229
    invoke-static {v5, v0}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    .line 230
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 231
    iget-object v2, v6, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    .line 232
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 233
    iget-object v2, v0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    .line 234
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 235
    iget-object v3, v6, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    .line 236
    iget-object v4, v0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 237
    iget-object v5, v0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 238
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/utils/WatchableImpl;->seal()V

    .line 240
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p1, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    invoke-static {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    .line 242
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayList;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 243
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 244
    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 245
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 246
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 247
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 248
    iget-object p1, p1, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 249
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 250
    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void

    .line 252
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V
    .locals 7

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 84
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    const/4 v1, 0x0

    .line 85
    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 86
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 87
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 88
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    .line 89
    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 90
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 91
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    .line 92
    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 93
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 94
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    .line 95
    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 96
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 97
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 98
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Lcom/android/server/pm/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/pm/Settings$1;

    .line 101
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    .line 102
    invoke-direct {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 103
    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 104
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 105
    const-string v4, "Settings.mPackages"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 106
    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 107
    new-instance v3, Lcom/android/server/utils/WatchedArrayMap;

    .line 108
    invoke-direct {v3, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 109
    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 110
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 111
    const-string v5, "Settings.mKernelMapping"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 112
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 113
    new-instance v3, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 114
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 115
    const-string v5, "Settings.mInstallerPackages"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 116
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 117
    new-instance v3, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 118
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 119
    const-string v5, "Settings.mPreferredActivities"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 120
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 121
    new-instance v3, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 122
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 123
    const-string v5, "Settings.mPersistentPreferredActivities"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 124
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 125
    new-instance v3, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 126
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 127
    const-string v5, "Settings.mCrossProfileIntentResolvers"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 128
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 129
    new-instance v3, Lcom/android/server/utils/WatchedArrayList;

    .line 130
    invoke-direct {v3, v1}, Lcom/android/server/utils/WatchedArrayList;-><init>(I)V

    .line 131
    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 132
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 133
    const-string v5, "Settings.mPendingPackages"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 134
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 135
    new-instance v3, Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v3, v2}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 136
    iput-object p5, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 137
    iput-object p6, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 138
    new-instance p5, Lcom/android/server/pm/AppIdSettingMap;

    invoke-direct {p5}, Lcom/android/server/pm/AppIdSettingMap;-><init>()V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 139
    new-instance p5, Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-direct {p5}, Lcom/android/server/pm/permission/LegacyPermissionSettings;-><init>()V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 140
    new-instance p5, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    new-instance p6, Lcom/android/server/pm/Settings$3;

    invoke-direct {p6, p0}, Lcom/android/server/pm/Settings$3;-><init>(Lcom/android/server/pm/Settings;)V

    invoke-direct {p5, p2, p6}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/Settings$3;)V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 141
    iput-object p3, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 142
    new-instance p2, Ljava/io/File;

    const-string/jumbo p3, "system"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 143
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 144
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x1fd

    const/4 p5, -0x1

    invoke-static {p1, p3, p5, p5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 145
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 146
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages.xml.reservecopy"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    .line 147
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-backup.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    .line 148
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages.list"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 p3, 0x408

    const/16 p5, 0x1a0

    const/16 p6, 0x3e8

    .line 149
    invoke-static {p1, p5, p6, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 150
    new-instance p1, Ljava/io/File;

    const-string p3, "/config/sdcardfs"

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    const/4 p5, 0x0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p5

    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 152
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-stopped.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 153
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-stopped-backup.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 154
    iput-object p4, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 155
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->registerObservers$1()V

    .line 156
    invoke-static {p0, v0, v1}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;Z)V

    .line 157
    new-instance p1, Lcom/android/server/pm/Settings$2;

    .line 158
    invoke-direct {p1, p0, p0, p5}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 5
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 7
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 8
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 9
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    .line 10
    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 11
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 12
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    .line 13
    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 14
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 15
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    .line 16
    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 17
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 18
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 19
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 21
    new-instance v0, Lcom/android/server/pm/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/pm/Settings$1;

    .line 22
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    .line 23
    invoke-direct {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 24
    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 25
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 26
    const-string v4, "Settings.mPackages"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 27
    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 28
    new-instance v3, Lcom/android/server/utils/WatchedArrayMap;

    .line 29
    invoke-direct {v3, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 30
    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 31
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 32
    const-string v5, "Settings.mKernelMapping"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 33
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 34
    new-instance v3, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 35
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 36
    const-string v5, "Settings.mInstallerPackages"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 37
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 38
    new-instance v3, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 39
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 40
    const-string v5, "Settings.mPreferredActivities"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 41
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 42
    new-instance v3, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 43
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 44
    const-string v5, "Settings.mPersistentPreferredActivities"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 45
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 46
    new-instance v3, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 47
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 48
    const-string v5, "Settings.mCrossProfileIntentResolvers"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 49
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 50
    new-instance v3, Lcom/android/server/utils/WatchedArrayList;

    .line 51
    invoke-direct {v3, v1}, Lcom/android/server/utils/WatchedArrayList;-><init>(I)V

    .line 52
    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 53
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 54
    const-string v5, "Settings.mPendingPackages"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 55
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 56
    new-instance v3, Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v3, v2}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 57
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v3, Lcom/android/server/pm/PackageManagerTracedLock;

    const/4 v4, 0x0

    .line 59
    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 60
    iput-object v3, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 61
    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 62
    new-instance p1, Lcom/android/server/pm/AppIdSettingMap;

    invoke-direct {p1}, Lcom/android/server/pm/AppIdSettingMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 63
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 64
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 65
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 66
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 67
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 68
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    .line 69
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    .line 70
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 71
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 72
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 73
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 74
    iput-object v4, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 75
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->registerObservers$1()V

    .line 76
    invoke-static {p0, v0, v1}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;Z)V

    .line 77
    new-instance p1, Lcom/android/server/pm/Settings$2;

    .line 78
    invoke-direct {p1, p0, p0, v4}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public static dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    :goto_0
    if-ge p2, v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "  "

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 p2, p2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public static dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "gids="

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-boolean p1, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const/16 v0, 0x80

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x5b

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_0
    array-length v1, p2

    .line 33
    if-ge v0, v1, :cond_1

    .line 34
    .line 35
    if-lez v0, :cond_0

    .line 36
    .line 37
    const-string v1, ", "

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_0
    aget v1, p2, v0

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/16 p2, 0x5d

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public static dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p4, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 23
    .line 24
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 25
    .line 26
    invoke-virtual {p3, v2}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 45
    .line 46
    iget-boolean v4, v3, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v3, v3, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const/4 v0, 0x0

    .line 71
    move v1, v0

    .line 72
    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_d

    .line 77
    .line 78
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 88
    .line 89
    .line 90
    iget-object v3, p3, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 91
    .line 92
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    .line 97
    .line 98
    const/4 v4, 0x0

    .line 99
    if-nez v3, :cond_5

    .line 100
    .line 101
    move-object v3, v4

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    iget-object v3, v3, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->mPermissionStates:Landroid/util/ArrayMap;

    .line 104
    .line 105
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 110
    .line 111
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-eqz v6, :cond_4

    .line 120
    .line 121
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    check-cast v6, Landroid/content/pm/UserInfo;

    .line 126
    .line 127
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 128
    .line 129
    if-nez v6, :cond_6

    .line 130
    .line 131
    move-object v7, v3

    .line 132
    goto :goto_4

    .line 133
    :cond_6
    invoke-static {v6}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 134
    .line 135
    .line 136
    iget-object v7, p3, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 137
    .line 138
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    check-cast v7, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    .line 143
    .line 144
    if-nez v7, :cond_7

    .line 145
    .line 146
    move-object v7, v4

    .line 147
    goto :goto_3

    .line 148
    :cond_7
    iget-object v7, v7, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->mPermissionStates:Landroid/util/ArrayMap;

    .line 149
    .line 150
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    check-cast v7, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 155
    .line 156
    :goto_3
    invoke-static {v7, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    if-eqz v8, :cond_8

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_8
    :goto_4
    const/4 v8, 0x1

    .line 164
    if-nez v1, :cond_9

    .line 165
    .line 166
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string v1, "install permissions:"

    .line 170
    .line 171
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    move v1, v8

    .line 175
    :cond_9
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v9, "  "

    .line 179
    .line 180
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v9, ": granted="

    .line 187
    .line 188
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    if-eqz v7, :cond_a

    .line 192
    .line 193
    iget-boolean v9, v7, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    .line 194
    .line 195
    if-eqz v9, :cond_a

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_a
    move v8, v0

    .line 199
    :goto_5
    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 200
    .line 201
    .line 202
    if-eqz v7, :cond_b

    .line 203
    .line 204
    iget v7, v7, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_b
    move v7, v0

    .line 208
    :goto_6
    invoke-static {v7}, Lcom/android/server/pm/Settings;->permissionFlagsToString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    if-nez v6, :cond_c

    .line 216
    .line 217
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_c
    const-string v7, ", userId="

    .line 222
    .line 223
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_d
    return-void
.end method

.method public static dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V
    .locals 2

    .line 1
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 16
    .line 17
    iget-boolean v1, v1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-eqz p4, :cond_4

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo p4, "runtime permissions:"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    if-eqz p4, :cond_4

    .line 42
    .line 43
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    check-cast p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 48
    .line 49
    iget-boolean v0, p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-object v0, p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz p2, :cond_3

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v1, "  "

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v0, ": granted="

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-boolean v0, p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 84
    .line 85
    .line 86
    iget p4, p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    .line 87
    .line 88
    invoke-static {p4}, Lcom/android/server/pm/Settings;->permissionFlagsToString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p4

    .line 92
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    return-void
.end method

.method public static getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public static parseArchiveState(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/pkg/ArchiveState;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "installer-title"

    .line 5
    .line 6
    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "archive-time"

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    invoke-interface {v0, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    new-instance v5, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    const/4 v8, 0x1

    .line 32
    const-string v9, "PackageSettings"

    .line 33
    .line 34
    if-eq v7, v8, :cond_8

    .line 35
    .line 36
    const/4 v10, 0x3

    .line 37
    if-ne v7, v10, :cond_1

    .line 38
    .line 39
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 40
    .line 41
    .line 42
    move-result v11

    .line 43
    if-le v11, v6, :cond_8

    .line 44
    .line 45
    :cond_1
    if-eq v7, v10, :cond_0

    .line 46
    .line 47
    const/4 v8, 0x4

    .line 48
    if-ne v7, v8, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    const-string v8, "archive-activity-info"

    .line 56
    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_0

    .line 62
    .line 63
    const-string v7, "activity-title"

    .line 64
    .line 65
    invoke-interface {v0, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    const-string/jumbo v7, "original-component-name"

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v14

    .line 76
    const-string v7, "icon-path"

    .line 77
    .line 78
    invoke-interface {v0, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    const/4 v8, 0x0

    .line 83
    if-nez v7, :cond_3

    .line 84
    .line 85
    move-object v7, v1

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    new-array v10, v8, [Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v7, v10}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    :goto_1
    const-string/jumbo v10, "monochrome-icon-path"

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    if-nez v10, :cond_4

    .line 101
    .line 102
    move-object v8, v1

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    new-array v8, v8, [Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v10, v8}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    :goto_2
    if-eqz v12, :cond_7

    .line 111
    .line 112
    if-eqz v14, :cond_7

    .line 113
    .line 114
    if-nez v7, :cond_5

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    if-nez v10, :cond_6

    .line 122
    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v8, "Incorrect component name: "

    .line 126
    .line 127
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v8, " from the attributes"

    .line 134
    .line 135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-static {v9, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_6
    new-instance v9, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 147
    .line 148
    invoke-direct {v9, v12, v10, v7, v8}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_7
    :goto_3
    const-string/jumbo v13, "original-component-name"

    .line 156
    .line 157
    .line 158
    const-string v15, "icon-path"

    .line 159
    .line 160
    const-string v10, "archive-activity-info"

    .line 161
    .line 162
    const-string v11, "activity-title"

    .line 163
    .line 164
    move-object/from16 v16, v7

    .line 165
    .line 166
    filled-new-array/range {v10 .. v16}, [Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    const-string v8, "Missing attributes in tag %s. %s: %s, %s: %s, %s: %s"

    .line 171
    .line 172
    invoke-static {v8, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-static {v9, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_8
    if-nez v2, :cond_9

    .line 182
    .line 183
    const-string/jumbo v0, "parseArchiveState: installerTitle is null"

    .line 184
    .line 185
    .line 186
    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    return-object v1

    .line 190
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-ge v0, v8, :cond_a

    .line 195
    .line 196
    const-string/jumbo v0, "parseArchiveState: activityInfos is empty"

    .line 197
    .line 198
    .line 199
    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    return-object v1

    .line 203
    :cond_a
    new-instance v0, Lcom/android/server/pm/pkg/ArchiveState;

    .line 204
    .line 205
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/pm/pkg/ArchiveState;-><init>(Ljava/lang/String;JLjava/util/List;)V

    .line 206
    .line 207
    .line 208
    return-object v0
.end method

.method public static permissionFlagsToString(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const-string v0, ", flags=[ "

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_1
    const/4 v1, 0x1

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    shl-int/2addr v1, v2

    .line 18
    not-int v2, v1

    .line 19
    and-int/2addr p0, v2

    .line 20
    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const/16 v1, 0x7c

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const/16 p0, 0x5d

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_3
    const-string p0, ""

    .line 48
    .line 49
    return-object p0
.end method

.method public static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "[ "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v1, p2

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    aget-object v1, p2, v0

    .line 11
    .line 12
    check-cast v1, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    and-int/2addr v1, p1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    add-int/lit8 v1, v0, 0x1

    .line 22
    .line 23
    aget-object v1, p2, v1

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const-string v1, " "

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p1, "]"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static readComponentsLPr(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/ArraySet;
    .locals 6

    .line 1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v2, v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eq v3, v4, :cond_4

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    if-ne v3, v4, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-le v5, v0, :cond_4

    .line 22
    .line 23
    :cond_1
    if-eq v3, v4, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    if-ne v3, v4, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "item"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    const-string/jumbo v3, "name"

    .line 42
    .line 43
    .line 44
    invoke-interface {p0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    new-instance v2, Landroid/util/ArraySet;

    .line 53
    .line 54
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    return-object v2
.end method

.method public static readDefaultApps(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v2, v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eq v3, v4, :cond_5

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    if-ne v3, v4, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-le v5, v0, :cond_5

    .line 22
    .line 23
    :cond_1
    if-eq v3, v4, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    if-ne v3, v4, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "default-browser"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    const-string/jumbo v2, "packageName"

    .line 42
    .line 43
    .line 44
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const-string v4, "default-dialer"

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v4, "Unknown element under default-apps: "

    .line 61
    .line 62
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 77
    .line 78
    const/4 v4, 0x5

    .line 79
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    return-object v2
.end method

.method public static readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V
    .locals 8

    .line 1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_4

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    if-ne v1, v3, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-le v4, v0, :cond_4

    .line 20
    .line 21
    :cond_1
    if-eq v1, v3, :cond_0

    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    if-ne v1, v3, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v3, "item"

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    const-string/jumbo v3, "name"

    .line 41
    .line 42
    .line 43
    invoke-interface {p0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "granted"

    .line 48
    .line 49
    invoke-interface {p0, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const-string v4, "flags"

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-interface {p0, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_0

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Landroid/content/pm/UserInfo;

    .line 75
    .line 76
    new-instance v7, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 77
    .line 78
    invoke-direct {v7, v3, v5, v2, v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 79
    .line 80
    .line 81
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 82
    .line 83
    invoke-virtual {p1, v7, v6}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v2, "Unknown element under <permissions>: "

    .line 90
    .line 91
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "PackageManager"

    .line 106
    .line 107
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    return-void
.end method

.method public static readSuspensionParamsLPr(ILcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/Map$Entry;
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, -0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const-string/jumbo v5, "suspending-package"

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    const-string p0, "PackageSettings"

    .line 16
    .line 17
    const-string p1, "No suspendingPackage found inside tag suspend-params"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-object v4

    .line 23
    :cond_0
    invoke-static {}, Landroid/app/admin/flags/Flags;->crossUserSuspensionEnabledRo()Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_5

    .line 28
    .line 29
    const-string/jumbo v6, "suspending-user"

    .line 30
    .line 31
    .line 32
    const/16 v7, -0x2710

    .line 33
    .line 34
    invoke-interface {p1, v4, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-ne v6, v7, :cond_4

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    sparse-switch v6, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    :goto_0
    move v6, v2

    .line 48
    goto :goto_1

    .line 49
    :sswitch_0
    const-string v6, "com.android.shell"

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v6, v0

    .line 59
    goto :goto_1

    .line 60
    :sswitch_1
    const-string/jumbo v6, "root"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-nez v6, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move v6, v1

    .line 71
    goto :goto_1

    .line 72
    :sswitch_2
    const-string v6, "android"

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-nez v6, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    move v6, v3

    .line 82
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :pswitch_0
    move p0, v3

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    move p0, v6

    .line 89
    :cond_5
    :goto_2
    invoke-static {p0, v5}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const-string v5, "FrameworkPackageUserState"

    .line 94
    .line 95
    const-string/jumbo v6, "quarantined"

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v4, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    move-object v8, v4

    .line 107
    move-object v9, v8

    .line 108
    :cond_6
    :goto_3
    :try_start_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    if-eq v10, v1, :cond_10

    .line 113
    .line 114
    const/4 v11, 0x3

    .line 115
    if-ne v10, v11, :cond_7

    .line 116
    .line 117
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    if-le v12, v7, :cond_10

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :catch_0
    move-exception p1

    .line 125
    goto/16 :goto_7

    .line 126
    .line 127
    :cond_7
    :goto_4
    if-eq v10, v11, :cond_6

    .line 128
    .line 129
    const/4 v11, 0x4

    .line 130
    if-ne v10, v11, :cond_8

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_8
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    const v12, -0x20149871

    .line 142
    .line 143
    .line 144
    if-eq v11, v12, :cond_b

    .line 145
    .line 146
    const v12, -0x15b69ed

    .line 147
    .line 148
    .line 149
    if-eq v11, v12, :cond_a

    .line 150
    .line 151
    const v12, 0x61017530

    .line 152
    .line 153
    .line 154
    if-eq v11, v12, :cond_9

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_9
    const-string v11, "launcher-extras"

    .line 158
    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    if-eqz v10, :cond_c

    .line 164
    .line 165
    move v10, v0

    .line 166
    goto :goto_6

    .line 167
    :cond_a
    const-string v11, "dialog-info"

    .line 168
    .line 169
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    if-eqz v10, :cond_c

    .line 174
    .line 175
    move v10, v3

    .line 176
    goto :goto_6

    .line 177
    :cond_b
    const-string v11, "app-extras"

    .line 178
    .line 179
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    if-eqz v10, :cond_c

    .line 184
    .line 185
    move v10, v1

    .line 186
    goto :goto_6

    .line 187
    :cond_c
    :goto_5
    move v10, v2

    .line 188
    :goto_6
    if-eqz v10, :cond_f

    .line 189
    .line 190
    if-eq v10, v1, :cond_e

    .line 191
    .line 192
    if-eq v10, v0, :cond_d

    .line 193
    .line 194
    new-instance v10, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v11, "Unknown tag "

    .line 200
    .line 201
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v11, " in SuspendParams. Ignoring"

    .line 212
    .line 213
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_d
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    goto :goto_3

    .line 229
    :cond_e
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    goto :goto_3

    .line 234
    :cond_f
    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    .line 235
    .line 236
    .line 237
    move-result-object v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto/16 :goto_3

    .line 239
    .line 240
    :goto_7
    const-string v0, "Exception while trying to parse SuspendParams, some fields may default"

    .line 241
    .line 242
    invoke-static {v5, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .line 244
    .line 245
    :cond_10
    new-instance p1, Lcom/android/server/pm/pkg/SuspendParams;

    .line 246
    .line 247
    invoke-direct {p1, v4, v8, v9, v6}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V

    .line 248
    .line 249
    .line 250
    invoke-static {p0, p1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    return-object p0

    .line 255
    :sswitch_data_0
    .sparse-switch
        -0x3357c991 -> :sswitch_2
        0x3580e2 -> :sswitch_1
        0x5c363844 -> :sswitch_0
    .end sparse-switch

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static readUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "name"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string/jumbo v2, "version"

    .line 10
    .line 11
    .line 12
    const-wide/16 v3, -0x1

    .line 13
    .line 14
    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    const-string/jumbo v4, "optional"

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-interface {p0, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    cmp-long v4, v2, v4

    .line 31
    .line 32
    if-ltz v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-class v5, Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v5, v4, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, [Ljava/lang/String;

    .line 45
    .line 46
    iput-object v1, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->appendBoolean([ZZ)[Z

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static readUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "name"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string/jumbo v2, "version"

    .line 10
    .line 11
    .line 12
    const-wide/16 v3, -0x1

    .line 13
    .line 14
    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    cmp-long v0, v2, v4

    .line 23
    .line 24
    if-ltz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-class v4, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v4, v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, [Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0, v2, v3}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/pm/PreferredActivity;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "Removing preference<replace>"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/android/server/pm/PreferredActivityLog;->logPreferenceChange(Lcom/android/server/pm/PreferredActivity;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public static restorePackages(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Ljava/io/FileInputStream;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    iget v1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getLatestBackupItemDir()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    new-instance v2, Ljava/io/File;

    .line 23
    .line 24
    const-string/jumbo v3, "packages.xml"

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "!@Invalid file or not exists in "

    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "PmBackupController"

    .line 52
    .line 53
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-object v2, v0

    .line 57
    :goto_0
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    const-string v0, "Restoring "

    .line 66
    .line 67
    invoke-static {v2, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 72
    .line 73
    const/4 v1, 0x4

    .line 74
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    add-int/2addr v0, v1

    .line 81
    iput v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    .line 82
    .line 83
    const-string/jumbo v3, "reboot_cnt_by_packages"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0, v3, v1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(ILjava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    new-instance p0, Ljava/io/FileInputStream;

    .line 90
    .line 91
    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static restorePackagesState(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;I)Ljava/io/FileInputStream;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    iget v1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getLatestBackupItemDir()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    new-instance v2, Ljava/io/File;

    .line 23
    .line 24
    const-string/jumbo v3, "users/"

    .line 25
    .line 26
    .line 27
    const-string v4, "/package-restrictions.xml"

    .line 28
    .line 29
    invoke-static {p1, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v3, "!@Invalid dir or not exists in "

    .line 46
    .line 47
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " for user "

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v1, "PmBackupController"

    .line 66
    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-object v2, v0

    .line 71
    :goto_0
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    const-string p1, "Restoring "

    .line 80
    .line 81
    invoke-static {v2, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 86
    .line 87
    const/4 v0, 0x4

    .line 88
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget p1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    add-int/2addr p1, v0

    .line 95
    iput p1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    .line 96
    .line 97
    const-string/jumbo v1, "reboot_cnt_by_packages"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(ILjava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    new-instance p0, Ljava/io/FileInputStream;

    .line 104
    .line 105
    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static writeArchiveStateLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/pkg/ArchiveState;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    const-string v1, "archive-state"

    .line 6
    .line 7
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    .line 9
    .line 10
    const-string v2, "installer-title"

    .line 11
    .line 12
    iget-object v3, p1, Lcom/android/server/pm/pkg/ArchiveState;->mInstallerTitle:Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    .line 16
    .line 17
    const-string v2, "archive-time"

    .line 18
    .line 19
    iget-wide v3, p1, Lcom/android/server/pm/pkg/ArchiveState;->mArchiveTimeMillis:J

    .line 20
    .line 21
    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 41
    .line 42
    const-string v3, "archive-activity-info"

    .line 43
    .line 44
    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    .line 46
    .line 47
    iget-object v4, v2, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mTitle:Ljava/lang/String;

    .line 48
    .line 49
    const-string v5, "activity-title"

    .line 50
    .line 51
    invoke-interface {p0, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    .line 53
    .line 54
    iget-object v4, v2, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-string/jumbo v5, "original-component-name"

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    .line 65
    .line 66
    iget-object v4, v2, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mIconBitmap:Ljava/nio/file/Path;

    .line 67
    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const-string v5, "icon-path"

    .line 79
    .line 80
    invoke-interface {p0, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v2, v2, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mMonochromeIconBitmap:Ljava/nio/file/Path;

    .line 84
    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-string/jumbo v4, "monochrome-icon-path"

    .line 96
    .line 97
    .line 98
    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public static writeDefaultApps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "default-apps"

    .line 3
    .line 4
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string v2, "default-browser"

    .line 14
    .line 15
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    .line 17
    .line 18
    const-string/jumbo v3, "packageName"

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v0, v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static writeDisabledSysPackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "updated-package"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v3, "name"

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    .line 15
    .line 16
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const-string/jumbo v3, "realName"

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 27
    .line 28
    const-string v3, "codePath"

    .line 29
    .line 30
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .line 32
    .line 33
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 34
    .line 35
    const-string v4, "ft"

    .line 36
    .line 37
    invoke-interface {p0, v0, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    .line 39
    .line 40
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 41
    .line 42
    const-string/jumbo v4, "ut"

    .line 43
    .line 44
    .line 45
    invoke-interface {p0, v0, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    .line 47
    .line 48
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 49
    .line 50
    const-string/jumbo v4, "version"

    .line 51
    .line 52
    .line 53
    invoke-interface {p0, v0, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    .line 55
    .line 56
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 57
    .line 58
    const-string/jumbo v3, "targetSdkVersion"

    .line 59
    .line 60
    .line 61
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    .line 63
    .line 64
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    const-string/jumbo v3, "restrictUpdateHash"

    .line 69
    .line 70
    .line 71
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    .line 73
    .line 74
    :cond_1
    const/16 v2, 0x8

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    const-string/jumbo v3, "scannedAsStoppedSystemApp"

    .line 81
    .line 82
    .line 83
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    .line 85
    .line 86
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    const-string/jumbo v3, "nativeLibraryPath"

    .line 91
    .line 92
    .line 93
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    .line 95
    .line 96
    :cond_2
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    const-string/jumbo v3, "primaryCpuAbi"

    .line 101
    .line 102
    .line 103
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v2, :cond_4

    .line 109
    .line 110
    const-string/jumbo v3, "secondaryCpuAbi"

    .line 111
    .line 112
    .line 113
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    .line 115
    .line 116
    :cond_4
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 117
    .line 118
    if-eqz v2, :cond_5

    .line 119
    .line 120
    const-string v3, "cpuAbiOverride"

    .line 121
    .line 122
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-nez v2, :cond_6

    .line 130
    .line 131
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 132
    .line 133
    const-string/jumbo v3, "userId"

    .line 134
    .line 135
    .line 136
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 141
    .line 142
    const-string/jumbo v3, "sharedUserId"

    .line 143
    .line 144
    .line 145
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    .line 147
    .line 148
    :goto_0
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 149
    .line 150
    const-string v3, "loadingProgress"

    .line 151
    .line 152
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    .line 154
    .line 155
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    .line 156
    .line 157
    const-string v4, "loadingCompletedTime"

    .line 158
    .line 159
    invoke-interface {p0, v0, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    .line 161
    .line 162
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 163
    .line 164
    if-eqz v2, :cond_7

    .line 165
    .line 166
    const-string v3, "appMetadataFilePath"

    .line 167
    .line 168
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    .line 170
    .line 171
    :cond_7
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 172
    .line 173
    const-string v3, "appMetadataSource"

    .line 174
    .line 175
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-static {p0, v2, v3, v4}, Lcom/android/server/pm/Settings;->writeUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J[Z)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {p0, v2, p1}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J)V

    .line 202
    .line 203
    .line 204
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public static writeIntToFile(Ljava/io/File;I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const-string v0, "Couldn\'t write "

    .line 20
    .line 21
    const-string v1, " to "

    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string p1, "PackageSettings"

    .line 39
    .line 40
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public static writePackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/ArrayList;Lcom/android/server/pm/PackageSetting;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "package"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v3, "name"

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    .line 15
    .line 16
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const-string/jumbo v4, "realName"

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 27
    .line 28
    const-string v4, "codePath"

    .line 29
    .line 30
    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .line 32
    .line 33
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const-string/jumbo v4, "nativeLibraryPath"

    .line 38
    .line 39
    .line 40
    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    const-string/jumbo v4, "primaryCpuAbi"

    .line 48
    .line 49
    .line 50
    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    const-string/jumbo v4, "secondaryCpuAbi"

    .line 58
    .line 59
    .line 60
    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    const-string v4, "cpuAbiOverride"

    .line 68
    .line 69
    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    .line 71
    .line 72
    :cond_4
    iget v2, p2, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 73
    .line 74
    const-string/jumbo v4, "publicFlags"

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    .line 79
    .line 80
    iget v2, p2, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 81
    .line 82
    const-string/jumbo v4, "privateFlags"

    .line 83
    .line 84
    .line 85
    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    .line 87
    .line 88
    iget-wide v4, p2, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 89
    .line 90
    const-string v2, "ft"

    .line 91
    .line 92
    invoke-interface {p0, v0, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    .line 94
    .line 95
    iget-wide v4, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 96
    .line 97
    const-string/jumbo v2, "ut"

    .line 98
    .line 99
    .line 100
    invoke-interface {p0, v0, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    .line 102
    .line 103
    iget-wide v4, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 104
    .line 105
    const-string/jumbo v2, "version"

    .line 106
    .line 107
    .line 108
    invoke-interface {p0, v0, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    .line 110
    .line 111
    iget v4, p2, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 112
    .line 113
    const-string/jumbo v5, "targetSdkVersion"

    .line 114
    .line 115
    .line 116
    invoke-interface {p0, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    .line 118
    .line 119
    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 120
    .line 121
    if-eqz v4, :cond_5

    .line 122
    .line 123
    const-string/jumbo v5, "restrictUpdateHash"

    .line 124
    .line 125
    .line 126
    invoke-interface {p0, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    .line 128
    .line 129
    :cond_5
    const/16 v4, 0x8

    .line 130
    .line 131
    invoke-virtual {p2, v4}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    const-string/jumbo v5, "scannedAsStoppedSystemApp"

    .line 136
    .line 137
    .line 138
    invoke-interface {p0, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    const/4 v5, 0x1

    .line 146
    const/4 v6, 0x0

    .line 147
    if-nez v4, :cond_7

    .line 148
    .line 149
    iget v4, p2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 150
    .line 151
    const-string/jumbo v7, "userId"

    .line 152
    .line 153
    .line 154
    invoke-interface {p0, v0, v7, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    .line 156
    .line 157
    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 158
    .line 159
    if-eqz v4, :cond_6

    .line 160
    .line 161
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isSdkLibrary()Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_6

    .line 166
    .line 167
    move v4, v5

    .line 168
    goto :goto_0

    .line 169
    :cond_6
    move v4, v6

    .line 170
    :goto_0
    const-string v7, "isSdkLibrary"

    .line 171
    .line 172
    invoke-interface {p0, v0, v7, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_7
    iget v4, p2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 177
    .line 178
    const-string/jumbo v7, "sharedUserId"

    .line 179
    .line 180
    .line 181
    invoke-interface {p0, v0, v7, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    .line 183
    .line 184
    :goto_1
    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 185
    .line 186
    iget-object v7, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 187
    .line 188
    if-eqz v7, :cond_8

    .line 189
    .line 190
    const-string v8, "installer"

    .line 191
    .line 192
    invoke-interface {p0, v0, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    .line 194
    .line 195
    :cond_8
    const/4 v7, -0x1

    .line 196
    iget v8, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    .line 197
    .line 198
    if-eq v8, v7, :cond_9

    .line 199
    .line 200
    const-string v9, "installerUid"

    .line 201
    .line 202
    invoke-interface {p0, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    .line 204
    .line 205
    :cond_9
    iget-object v8, v4, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 206
    .line 207
    if-eqz v8, :cond_a

    .line 208
    .line 209
    const-string/jumbo v9, "updateOwner"

    .line 210
    .line 211
    .line 212
    invoke-interface {p0, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    .line 214
    .line 215
    :cond_a
    iget-object v8, v4, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    .line 216
    .line 217
    if-eqz v8, :cond_b

    .line 218
    .line 219
    const-string v9, "installerAttributionTag"

    .line 220
    .line 221
    invoke-interface {p0, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    .line 223
    .line 224
    :cond_b
    const-string/jumbo v8, "packageSource"

    .line 225
    .line 226
    .line 227
    iget v9, v4, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    .line 228
    .line 229
    invoke-interface {p0, v0, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    .line 231
    .line 232
    iget-boolean v8, v4, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    .line 233
    .line 234
    if-eqz v8, :cond_c

    .line 235
    .line 236
    const-string v8, "isOrphaned"

    .line 237
    .line 238
    invoke-interface {p0, v0, v8, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    .line 240
    .line 241
    :cond_c
    iget-object v8, v4, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 242
    .line 243
    if-eqz v8, :cond_d

    .line 244
    .line 245
    const-string v9, "installInitiator"

    .line 246
    .line 247
    invoke-interface {p0, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    .line 249
    .line 250
    :cond_d
    iget-boolean v8, v4, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    .line 251
    .line 252
    if-eqz v8, :cond_e

    .line 253
    .line 254
    const-string v8, "installInitiatorUninstalled"

    .line 255
    .line 256
    invoke-interface {p0, v0, v8, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    .line 258
    .line 259
    :cond_e
    iget-object v8, v4, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 260
    .line 261
    if-eqz v8, :cond_f

    .line 262
    .line 263
    const-string v9, "installOriginator"

    .line 264
    .line 265
    invoke-interface {p0, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    .line 267
    .line 268
    :cond_f
    iget-object v8, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 269
    .line 270
    if-eqz v8, :cond_10

    .line 271
    .line 272
    const-string/jumbo v9, "volumeUuid"

    .line 273
    .line 274
    .line 275
    invoke-interface {p0, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    .line 277
    .line 278
    :cond_10
    iget v8, p2, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 279
    .line 280
    if-eq v8, v7, :cond_11

    .line 281
    .line 282
    const-string v7, "categoryHint"

    .line 283
    .line 284
    invoke-interface {p0, v0, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    .line 286
    .line 287
    :cond_11
    const/4 v7, 0x2

    .line 288
    invoke-virtual {p2, v7}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    if-eqz v7, :cond_12

    .line 293
    .line 294
    const-string/jumbo v7, "updateAvailable"

    .line 295
    .line 296
    .line 297
    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 298
    .line 299
    .line 300
    :cond_12
    const/4 v7, 0x4

    .line 301
    invoke-virtual {p2, v7}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-eqz v7, :cond_13

    .line 306
    .line 307
    const-string v7, "forceQueryable"

    .line 308
    .line 309
    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    .line 311
    .line 312
    :cond_13
    const/16 v7, 0x10

    .line 313
    .line 314
    invoke-virtual {p2, v7}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    if-eqz v7, :cond_14

    .line 319
    .line 320
    const-string/jumbo v7, "pendingRestore"

    .line 321
    .line 322
    .line 323
    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    .line 325
    .line 326
    :cond_14
    const/16 v7, 0x20

    .line 327
    .line 328
    invoke-virtual {p2, v7}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    if-eqz v7, :cond_15

    .line 333
    .line 334
    const-string v7, "debuggable"

    .line 335
    .line 336
    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    .line 338
    .line 339
    :cond_15
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    if-eqz v7, :cond_16

    .line 344
    .line 345
    const-string v7, "isLoading"

    .line 346
    .line 347
    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    .line 349
    .line 350
    :cond_16
    iget v5, p2, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    .line 351
    .line 352
    if-eqz v5, :cond_17

    .line 353
    .line 354
    const-string v7, "baseRevisionCode"

    .line 355
    .line 356
    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    .line 358
    .line 359
    :cond_17
    iget v5, p2, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 360
    .line 361
    const-string v7, "loadingProgress"

    .line 362
    .line 363
    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 364
    .line 365
    .line 366
    iget-wide v7, p2, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    .line 367
    .line 368
    const-string v5, "loadingCompletedTime"

    .line 369
    .line 370
    invoke-interface {p0, v0, v5, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 371
    .line 372
    .line 373
    iget-object v5, p2, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 374
    .line 375
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    const-string v7, "domainSetId"

    .line 380
    .line 381
    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    .line 383
    .line 384
    iget-object v5, p2, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 385
    .line 386
    if-eqz v5, :cond_18

    .line 387
    .line 388
    const-string v7, "appMetadataFilePath"

    .line 389
    .line 390
    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 391
    .line 392
    .line 393
    :cond_18
    iget v5, p2, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 394
    .line 395
    const-string v7, "appMetadataSource"

    .line 396
    .line 397
    invoke-interface {p0, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    .line 405
    .line 406
    .line 407
    move-result-object v7

    .line 408
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    invoke-static {p0, v5, v7, v8}, Lcom/android/server/pm/Settings;->writeUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J[Z)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    invoke-static {p0, v5, v7}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J)V

    .line 424
    .line 425
    .line 426
    iget-object v5, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 427
    .line 428
    const-string/jumbo v7, "sigs"

    .line 429
    .line 430
    .line 431
    invoke-virtual {v5, p0, v7, p1}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 432
    .line 433
    .line 434
    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 435
    .line 436
    if-eqz v4, :cond_19

    .line 437
    .line 438
    const-string v5, "install-initiator-sigs"

    .line 439
    .line 440
    invoke-virtual {v4, p0, v5, p1}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 441
    .line 442
    .line 443
    :cond_19
    iget-object p1, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 444
    .line 445
    const-string/jumbo v4, "proper-signing-keyset"

    .line 446
    .line 447
    .line 448
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    .line 450
    .line 451
    iget-wide v7, p1, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    .line 452
    .line 453
    const-string p1, "identifier"

    .line 454
    .line 455
    invoke-interface {p0, v0, p1, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 456
    .line 457
    .line 458
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 459
    .line 460
    .line 461
    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 462
    .line 463
    iget-object v4, v4, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 464
    .line 465
    if-eqz v4, :cond_1a

    .line 466
    .line 467
    array-length v5, v4

    .line 468
    if-lez v5, :cond_1a

    .line 469
    .line 470
    array-length v5, v4

    .line 471
    move v7, v6

    .line 472
    :goto_2
    if-ge v7, v5, :cond_1a

    .line 473
    .line 474
    aget-wide v8, v4, v7

    .line 475
    .line 476
    const-string/jumbo v10, "upgrade-keyset"

    .line 477
    .line 478
    .line 479
    invoke-interface {p0, v0, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 480
    .line 481
    .line 482
    invoke-interface {p0, v0, p1, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    .line 484
    .line 485
    invoke-interface {p0, v0, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    .line 487
    .line 488
    add-int/lit8 v7, v7, 0x1

    .line 489
    .line 490
    goto :goto_2

    .line 491
    :cond_1a
    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 492
    .line 493
    iget-object v4, v4, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    .line 494
    .line 495
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    if-eqz v5, :cond_1b

    .line 508
    .line 509
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    check-cast v5, Ljava/util/Map$Entry;

    .line 514
    .line 515
    const-string v7, "defined-keyset"

    .line 516
    .line 517
    invoke-interface {p0, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    .line 519
    .line 520
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    check-cast v8, Ljava/lang/String;

    .line 525
    .line 526
    const-string v9, "alias"

    .line 527
    .line 528
    invoke-interface {p0, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 529
    .line 530
    .line 531
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    check-cast v5, Ljava/lang/Long;

    .line 536
    .line 537
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 538
    .line 539
    .line 540
    move-result-wide v8

    .line 541
    invoke-interface {p0, v0, p1, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 542
    .line 543
    .line 544
    invoke-interface {p0, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    .line 546
    .line 547
    goto :goto_3

    .line 548
    :cond_1b
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getMimeGroups()Ljava/util/Map;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    if-nez p1, :cond_1c

    .line 553
    .line 554
    goto :goto_6

    .line 555
    :cond_1c
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 564
    .line 565
    .line 566
    move-result v5

    .line 567
    if-eqz v5, :cond_1e

    .line 568
    .line 569
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v5

    .line 573
    check-cast v5, Ljava/lang/String;

    .line 574
    .line 575
    const-string/jumbo v7, "mime-group"

    .line 576
    .line 577
    .line 578
    invoke-interface {p0, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 579
    .line 580
    .line 581
    invoke-interface {p0, v0, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    .line 583
    .line 584
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v5

    .line 588
    check-cast v5, Ljava/util/Set;

    .line 589
    .line 590
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 591
    .line 592
    .line 593
    move-result-object v5

    .line 594
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 595
    .line 596
    .line 597
    move-result v8

    .line 598
    if-eqz v8, :cond_1d

    .line 599
    .line 600
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v8

    .line 604
    check-cast v8, Ljava/lang/String;

    .line 605
    .line 606
    const-string/jumbo v9, "mime-type"

    .line 607
    .line 608
    .line 609
    invoke-interface {p0, v0, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 610
    .line 611
    .line 612
    const-string/jumbo v10, "value"

    .line 613
    .line 614
    .line 615
    invoke-interface {p0, v0, v10, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 616
    .line 617
    .line 618
    invoke-interface {p0, v0, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 619
    .line 620
    .line 621
    goto :goto_5

    .line 622
    :cond_1d
    invoke-interface {p0, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    .line 624
    .line 625
    goto :goto_4

    .line 626
    :cond_1e
    :goto_6
    iget-object p1, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 627
    .line 628
    if-nez p1, :cond_20

    .line 629
    .line 630
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitRevisionCodes()[I

    .line 635
    .line 636
    .line 637
    move-result-object p2

    .line 638
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v4

    .line 642
    if-nez v4, :cond_20

    .line 643
    .line 644
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 645
    .line 646
    .line 647
    move-result v4

    .line 648
    if-nez v4, :cond_20

    .line 649
    .line 650
    array-length v4, p1

    .line 651
    array-length v5, p2

    .line 652
    if-eq v4, v5, :cond_1f

    .line 653
    .line 654
    goto :goto_8

    .line 655
    :cond_1f
    array-length v4, p1

    .line 656
    :goto_7
    if-ge v6, v4, :cond_20

    .line 657
    .line 658
    aget-object v5, p1, v6

    .line 659
    .line 660
    aget v7, p2, v6

    .line 661
    .line 662
    const-string/jumbo v8, "split-version"

    .line 663
    .line 664
    .line 665
    invoke-interface {p0, v0, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 666
    .line 667
    .line 668
    invoke-interface {p0, v0, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 669
    .line 670
    .line 671
    invoke-interface {p0, v0, v2, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 672
    .line 673
    .line 674
    invoke-interface {p0, v0, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 675
    .line 676
    .line 677
    add-int/lit8 v6, v6, 0x1

    .line 678
    .line 679
    goto :goto_7

    .line 680
    :cond_20
    :goto_8
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 681
    .line 682
    .line 683
    return-void
.end method

.method public static writeUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J[Z)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    array-length v0, p1

    .line 14
    array-length v1, p2

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    array-length v0, p1

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_1

    .line 21
    .line 22
    aget-object v2, p1, v1

    .line 23
    .line 24
    aget-wide v3, p2, v1

    .line 25
    .line 26
    aget-boolean v5, p3, v1

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    const-string/jumbo v7, "uses-sdk-lib"

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    .line 34
    .line 35
    const-string/jumbo v8, "name"

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v6, v8, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    .line 40
    .line 41
    const-string/jumbo v2, "version"

    .line 42
    .line 43
    .line 44
    invoke-interface {p0, v6, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    .line 46
    .line 47
    const-string/jumbo v2, "optional"

    .line 48
    .line 49
    .line 50
    invoke-interface {p0, v6, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    .line 52
    .line 53
    invoke-interface {p0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    return-void
.end method

.method public static writeUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    array-length v0, p1

    .line 14
    array-length v1, p2

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    array-length v0, p1

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_1

    .line 21
    .line 22
    aget-object v2, p1, v1

    .line 23
    .line 24
    aget-wide v3, p2, v1

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const-string/jumbo v6, "uses-static-lib"

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .line 32
    .line 33
    const-string/jumbo v7, "name"

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v5, v7, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    .line 38
    .line 39
    const-string/jumbo v2, "version"

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, v5, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 43
    .line 44
    .line 45
    invoke-interface {p0, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method

.method public final addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IIILjava/util/UUID;Z)Lcom/android/server/pm/PackageSetting;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v8, p1

    .line 3
    move/from16 v9, p4

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 14
    .line 15
    const/4 v10, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget v0, v1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 19
    .line 20
    if-ne v0, v9, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    const-string v0, "Adding duplicate package, keeping first: "

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v10

    .line 36
    :cond_1
    new-instance v11, Lcom/android/server/pm/PackageSetting;

    .line 37
    .line 38
    move-object v1, v11

    .line 39
    move-object v2, p1

    .line 40
    move-object v3, p2

    .line 41
    move-object v4, p3

    .line 42
    move/from16 v5, p5

    .line 43
    .line 44
    move/from16 v6, p6

    .line 45
    .line 46
    move-object/from16 v7, p7

    .line 47
    .line 48
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    .line 49
    .line 50
    .line 51
    iput v9, v11, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 52
    .line 53
    invoke-virtual {v11}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 54
    .line 55
    .line 56
    const/4 v1, -0x1

    .line 57
    if-ne v9, v1, :cond_2

    .line 58
    .line 59
    if-eqz p8, :cond_2

    .line 60
    .line 61
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->disallowSdkLibsToBeApps()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    :cond_2
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 68
    .line 69
    invoke-virtual {v1, v9, v11, p1}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    :cond_3
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 76
    .line 77
    invoke-virtual {v0, p1, v11}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    return-object v11

    .line 81
    :cond_4
    return-object v10
.end method

.method public addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "; I am not changing its files so it will probably fail!"

    .line 15
    .line 16
    const-string v2, "Package "

    .line 17
    .line 18
    const/4 v3, 0x6

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    if-eq v0, p2, :cond_0

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " was user "

    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " but is now "

    .line 42
    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 57
    .line 58
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget v4, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 70
    .line 71
    if-eq v0, v4, :cond_1

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, " was app id "

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, " but is now user "

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v2, " with app id "

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 107
    .line 108
    invoke-static {v2, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 113
    .line 114
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 118
    .line 119
    .line 120
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    .line 123
    .line 124
    .line 125
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    .line 128
    .line 129
    .line 130
    :cond_2
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 131
    .line 132
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 137
    .line 138
    if-nez p2, :cond_3

    .line 139
    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    if-eq v0, p1, :cond_4

    .line 143
    .line 144
    iget p2, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 145
    .line 146
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/AppIdSettingMap;->replaceSetting(ILcom/android/server/pm/SettingBase;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    if-eqz v0, :cond_4

    .line 151
    .line 152
    if-eq v0, p2, :cond_4

    .line 153
    .line 154
    iget p1, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 155
    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AppIdSettingMap;->replaceSetting(ILcom/android/server/pm/SettingBase;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    :goto_1
    return-void
.end method

.method public final addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget p0, v1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 15
    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    const-string p0, "Adding duplicate shared user, keeping first: "

    .line 20
    .line 21
    invoke-static {p0, p4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 26
    .line 27
    const/4 p1, 0x6

    .line 28
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_1
    new-instance v1, Lcom/android/server/pm/SharedUserSetting;

    .line 33
    .line 34
    invoke-direct {v1, p2, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput p1, v1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, p4, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_2
    return-object v2
.end method

.method public final applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .locals 19

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v6, p9

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    .line 59
    const-string v4, "PackageSettings"

    if-ge v2, v3, :cond_1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No potential matches found for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " while setting preferred "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v12, v5, [Landroid/content/ComponentName;

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v6, v2, :cond_4

    .line 64
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 65
    new-instance v13, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v18, v2

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v13, v12, v6

    .line 66
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget v14, v1, Landroid/content/pm/ResolveInfo;->match:I

    const/4 v2, 0x1

    const/16 v16, 0x1

    goto :goto_2

    .line 69
    :cond_2
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 70
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget v1, v1, Landroid/content/pm/ResolveInfo;->match:I

    if-ltz v1, :cond_3

    .line 71
    aget-object v15, v12, v6

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v3, v2

    move/from16 v2, v18

    goto :goto_1

    :cond_4
    if-eqz v15, :cond_5

    if-lez v14, :cond_5

    const/4 v15, 0x0

    :cond_5
    if-eqz v16, :cond_f

    if-nez v15, :cond_f

    .line 72
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const/high16 v1, 0x10000

    and-int/2addr v1, v8

    if-eqz v1, :cond_8

    .line 78
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    :cond_8
    if-eqz v9, :cond_9

    .line 79
    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_9
    if-eqz p6, :cond_a

    .line 80
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v2

    .line 81
    iget-object v3, v0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    :cond_a
    if-eqz v10, :cond_b

    .line 83
    iget-object v1, v0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 84
    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    :cond_b
    if-eqz v11, :cond_c

    .line 85
    iget-object v1, v0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 86
    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 87
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 88
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    :goto_4
    move/from16 v3, p9

    goto :goto_6

    .line 89
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed mimetype "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object/from16 v1, p0

    goto :goto_4

    :cond_d
    move-object/from16 v2, p4

    goto :goto_5

    .line 90
    :goto_6
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 92
    invoke-static {v1, v3}, Lcom/android/server/pm/Settings;->removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Ljava/util/List;)V

    .line 93
    :cond_e
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    const/4 v11, 0x1

    move-object v6, v3

    move-object v7, v0

    move v8, v14

    move-object v9, v12

    move-object/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    const/4 v0, 0x0

    .line 94
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_8

    :cond_f
    move-object/from16 v2, p4

    if-nez v15, :cond_12

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No component "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, " found setting preferred "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "; possible matches are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v5, :cond_11

    if-lez v1, :cond_10

    .line 100
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_10
    aget-object v2, v12, v1

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 102
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 103
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not setting preferred "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; found third party match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void
.end method

.method public final applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .locals 24

    move-object/from16 v0, p2

    .line 1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0xc0000

    move v4, v1

    .line 3
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 4
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v5

    .line 5
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/high16 v3, 0xd0000

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v14

    const/4 v15, 0x1

    move v13, v1

    move/from16 v16, v13

    move v4, v15

    :goto_2
    if-ge v13, v14, :cond_a

    .line 8
    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 9
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    move/from16 v16, v15

    .line 10
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v11

    move v10, v1

    move v4, v15

    :goto_3
    if-ge v10, v11, :cond_3

    .line 11
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 12
    invoke-virtual {v4, v12}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 13
    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v17

    .line 14
    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 15
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 16
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v3

    move-object/from16 v8, p3

    move-object v9, v12

    move/from16 v20, v10

    move-object/from16 v10, v17

    move/from16 v17, v11

    move-object/from16 v11, v18

    move-object v1, v12

    move-object/from16 v12, v19

    move/from16 v19, v13

    move/from16 v13, p4

    .line 17
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    add-int/lit8 v10, v20, 0x1

    move-object v12, v1

    move/from16 v11, v17

    move/from16 v13, v19

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    move-object v1, v12

    move/from16 v19, v13

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v13

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v13, :cond_8

    .line 19
    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v17

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v11

    move v5, v15

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v11, :cond_5

    .line 21
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 22
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 24
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 25
    :cond_4
    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v20

    .line 26
    invoke-virtual/range {v20 .. v20}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 27
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 28
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v21, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v3

    move-object/from16 v8, p3

    move-object v9, v1

    move/from16 v22, v10

    move-object/from16 v10, v21

    move/from16 v21, v11

    move-object/from16 v11, v17

    move/from16 v23, v12

    move-object/from16 v12, v20

    move/from16 v20, v13

    move/from16 v13, p4

    .line 29
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    add-int/lit8 v10, v22, 0x1

    move/from16 v13, v20

    move/from16 v11, v21

    move/from16 v12, v23

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    move/from16 v23, v12

    move/from16 v20, v13

    if-eqz v5, :cond_7

    .line 30
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 31
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 32
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 33
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 34
    :cond_6
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 35
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v3

    move-object/from16 v8, p3

    move-object v9, v1

    move-object/from16 v11, v17

    move/from16 v13, p4

    .line 36
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    const/4 v4, 0x0

    :cond_7
    add-int/lit8 v12, v23, 0x1

    move/from16 v13, v20

    goto/16 :goto_4

    :cond_8
    if-eqz v4, :cond_9

    .line 37
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 38
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 39
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v3

    move-object/from16 v8, p3

    move-object v9, v1

    move/from16 v13, p4

    .line 41
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_9
    add-int/lit8 v13, v19, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v1, 0x0

    .line 42
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v5

    if-ge v1, v5, :cond_e

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v16, :cond_c

    .line 44
    new-instance v15, Landroid/net/Uri$Builder;

    invoke-direct {v15}, Landroid/net/Uri$Builder;-><init>()V

    const/4 v13, 0x0

    .line 45
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-ge v13, v4, :cond_d

    .line 46
    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 47
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 48
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {v15, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v3

    move-object/from16 v8, p3

    move/from16 v17, v13

    move/from16 v13, p4

    .line 51
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    goto :goto_8

    :cond_b
    move/from16 v17, v13

    :goto_8
    add-int/lit8 v13, v17, 0x1

    goto :goto_7

    .line 52
    :cond_c
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {v6, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v3

    move-object/from16 v8, p3

    move/from16 v13, p4

    .line 54
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    goto :goto_6

    :cond_e
    if-eqz v4, :cond_f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move/from16 v9, p4

    .line 55
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_f
    return-void
.end method

.method public final applyDefaultPreferredAppsLPw(I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "Error reading apps file "

    .line 6
    .line 7
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 14
    .line 15
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 16
    .line 17
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v7, 0x1

    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 37
    .line 38
    iget v8, v5, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 39
    .line 40
    and-int/2addr v7, v8

    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 44
    .line 45
    if-eqz v7, :cond_0

    .line 46
    .line 47
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPreferredActivityFilters()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-nez v7, :cond_0

    .line 56
    .line 57
    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 58
    .line 59
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPreferredActivityFilters()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    const/4 v6, 0x0

    .line 64
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-ge v6, v8, :cond_0

    .line 69
    .line 70
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    check-cast v8, Landroid/util/Pair;

    .line 75
    .line 76
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 79
    .line 80
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    new-instance v10, Landroid/content/ComponentName;

    .line 85
    .line 86
    iget-object v11, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v8, Ljava/lang/String;

    .line 91
    .line 92
    invoke-direct {v10, v11, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0, v9, v10, v2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v6, v6, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const/4 v5, 0x0

    .line 108
    :goto_1
    if-ge v5, v4, :cond_c

    .line 109
    .line 110
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lcom/android/server/pm/ScanPartition;

    .line 117
    .line 118
    new-instance v8, Ljava/io/File;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v9, "etc/preferred-apps"

    .line 125
    .line 126
    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_3

    .line 140
    .line 141
    :cond_2
    :goto_2
    move/from16 v16, v4

    .line 142
    .line 143
    goto/16 :goto_d

    .line 144
    .line 145
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const-string v9, " cannot be read"

    .line 150
    .line 151
    const-string v10, "PackageSettings"

    .line 152
    .line 153
    if-nez v0, :cond_4

    .line 154
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v11, "Directory "

    .line 158
    .line 159
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_5

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_5
    array-length v12, v11

    .line 188
    const/4 v13, 0x0

    .line 189
    :goto_3
    if-ge v13, v12, :cond_2

    .line 190
    .line 191
    aget-object v14, v11, v13

    .line 192
    .line 193
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const-string v15, ".xml"

    .line 198
    .line 199
    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_6

    .line 204
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v15, "Non-xml file "

    .line 208
    .line 209
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v14, " in "

    .line 216
    .line 217
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v14, " directory, ignoring"

    .line 224
    .line 225
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    :goto_4
    move/from16 v16, v4

    .line 236
    .line 237
    goto/16 :goto_c

    .line 238
    .line 239
    :cond_6
    invoke-virtual {v14}, Ljava/io/File;->canRead()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    const-string v15, "Preferred apps file "

    .line 244
    .line 245
    if-nez v0, :cond_7

    .line 246
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_7
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    .line 267
    .line 268
    invoke-direct {v6, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 269
    .line 270
    .line 271
    :try_start_1
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    :goto_5
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 276
    .line 277
    .line 278
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 279
    move/from16 v16, v4

    .line 280
    .line 281
    const/4 v4, 0x2

    .line 282
    if-eq v7, v4, :cond_9

    .line 283
    .line 284
    const/4 v4, 0x1

    .line 285
    if-eq v7, v4, :cond_8

    .line 286
    .line 287
    move/from16 v4, v16

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_8
    const/4 v4, 0x2

    .line 291
    :cond_9
    if-eq v7, v4, :cond_a

    .line 292
    .line 293
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v4, " does not have start tag"

    .line 305
    .line 306
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    .line 315
    .line 316
    :goto_6
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 317
    .line 318
    .line 319
    goto/16 :goto_c

    .line 320
    .line 321
    :catch_0
    move-exception v0

    .line 322
    goto :goto_a

    .line 323
    :catch_1
    move-exception v0

    .line 324
    goto :goto_b

    .line 325
    :catchall_0
    move-exception v0

    .line 326
    :goto_7
    move-object v4, v0

    .line 327
    goto :goto_8

    .line 328
    :cond_a
    :try_start_4
    const-string/jumbo v4, "preferred-activities"

    .line 329
    .line 330
    .line 331
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    if-nez v4, :cond_b

    .line 340
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v4, " does not start with \'preferred-activities\'"

    .line 353
    .line 354
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_b
    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 366
    .line 367
    .line 368
    goto :goto_6

    .line 369
    :catchall_1
    move-exception v0

    .line 370
    move/from16 v16, v4

    .line 371
    .line 372
    goto :goto_7

    .line 373
    :goto_8
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 374
    .line 375
    .line 376
    goto :goto_9

    .line 377
    :catchall_2
    move-exception v0

    .line 378
    move-object v6, v0

    .line 379
    :try_start_6
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 380
    .line 381
    .line 382
    :goto_9
    throw v4
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 383
    :catch_2
    move-exception v0

    .line 384
    move/from16 v16, v4

    .line 385
    .line 386
    goto :goto_a

    .line 387
    :catch_3
    move-exception v0

    .line 388
    move/from16 v16, v4

    .line 389
    .line 390
    goto :goto_b

    .line 391
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    invoke-static {v10, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    .line 405
    .line 406
    goto :goto_c

    .line 407
    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    invoke-static {v10, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .line 421
    .line 422
    :goto_c
    add-int/lit8 v13, v13, 0x1

    .line 423
    .line 424
    move/from16 v4, v16

    .line 425
    .line 426
    const/4 v7, 0x1

    .line 427
    goto/16 :goto_3

    .line 428
    .line 429
    :goto_d
    add-int/lit8 v5, v5, 0x1

    .line 430
    .line 431
    move/from16 v4, v16

    .line 432
    .line 433
    const/4 v7, 0x1

    .line 434
    goto/16 :goto_1

    .line 435
    .line 436
    :cond_c
    return-void
.end method

.method public final checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p1, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p1, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object p2, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iget p1, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public final clearPackagePersistentPreferredActivities(ILjava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 6
    .line 7
    iget-object v5, v4, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    if-ge v2, v5, :cond_6

    .line 14
    .line 15
    iget-object v5, v4, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    iget-object v4, v4, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 28
    .line 29
    if-eq p1, v5, :cond_0

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/IntentResolver;->filterIterator()Lcom/android/server/IntentResolver$IteratorWrapper;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    :cond_1
    :goto_1
    iget-object v6, v5, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    .line 37
    .line 38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_3

    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/android/server/IntentResolver$IteratorWrapper;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 49
    .line 50
    iget-object v7, v6, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    .line 51
    .line 52
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_1

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    if-eqz v0, :cond_5

    .line 74
    .line 75
    move v3, v1

    .line 76
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-ge v3, v5, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    const/4 v3, 0x1

    .line 95
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    if-eqz v3, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 101
    .line 102
    .line 103
    :cond_7
    return v3
.end method

.method public final clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/server/IntentResolver;->filterIterator()Lcom/android/server/IntentResolver$IteratorWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/IntentResolver$IteratorWrapper;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 29
    .line 30
    iget-object v3, v2, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 31
    .line 32
    invoke-static {v3, p1}, Landroid/content/IntentFilter;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 p1, 0x0

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-ge p1, v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const/4 p1, 0x1

    .line 71
    :cond_4
    if-eqz p1, :cond_5

    .line 72
    .line 73
    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 74
    .line 75
    .line 76
    :cond_5
    return p1
.end method

.method public final convertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 11
    .line 12
    iget v2, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 15
    .line 16
    invoke-virtual {v3, v2, v0}, Lcom/android/server/pm/AppIdSettingMap;->replaceSetting(ILcom/android/server/pm/SettingBase;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/util/Set;[Ljava/lang/String;)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v10, p3

    .line 6
    .line 7
    new-instance v11, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 8
    .line 9
    const-string v2, "PackageSettingsTiming"

    .line 10
    .line 11
    const-wide/32 v3, 0x40000

    .line 12
    .line 13
    .line 14
    invoke-direct {v11, v3, v4, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "createNewUser-"

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v12, Lcom/android/server/pm/Installer$Batch;

    .line 35
    .line 36
    invoke-direct {v12}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v14, 0x0

    .line 40
    if-nez p4, :cond_0

    .line 41
    .line 42
    const/4 v15, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v15, v14

    .line 45
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v8

    .line 49
    iget-object v7, v1, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 50
    .line 51
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 52
    .line 53
    monitor-enter v7

    .line 54
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getGuestUsers()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    const/4 v2, -0x1

    .line 71
    :goto_1
    move v6, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 78
    .line 79
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v2, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 96
    .line 97
    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    move v3, v14

    .line 104
    :goto_3
    if-ge v3, v4, :cond_12

    .line 105
    .line 106
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 107
    .line 108
    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 115
    .line 116
    iget-object v13, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 117
    .line 118
    if-nez v13, :cond_2

    .line 119
    .line 120
    invoke-virtual {v2, v10, v14}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 124
    .line 125
    .line 126
    move-object/from16 v14, p5

    .line 127
    .line 128
    move/from16 v16, v3

    .line 129
    .line 130
    move/from16 v17, v4

    .line 131
    .line 132
    move-object/from16 v18, v5

    .line 133
    .line 134
    :goto_4
    move/from16 v21, v6

    .line 135
    .line 136
    move-object v13, v7

    .line 137
    move-wide/from16 v22, v8

    .line 138
    .line 139
    :goto_5
    const/4 v0, 0x1

    .line 140
    goto/16 :goto_d

    .line 141
    .line 142
    :catchall_0
    move-exception v0

    .line 143
    move-object v13, v7

    .line 144
    goto/16 :goto_f

    .line 145
    .line 146
    :cond_2
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 147
    .line 148
    iget-object v14, v13, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 149
    .line 150
    move/from16 v16, v3

    .line 151
    .line 152
    iget-object v3, v13, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 153
    .line 154
    iget-object v13, v13, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 155
    .line 156
    invoke-virtual {v13, v3, v14}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    .line 161
    .line 162
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->applyInstallPolicyPackageInternalLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/List;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v10}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 170
    .line 171
    .line 172
    move-result v13

    .line 173
    if-eqz v13, :cond_3

    .line 174
    .line 175
    iget-object v13, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 176
    .line 177
    move-object/from16 v14, p5

    .line 178
    .line 179
    invoke-static {v14, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v13

    .line 183
    if-nez v13, :cond_4

    .line 184
    .line 185
    if-eqz v3, :cond_4

    .line 186
    .line 187
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 188
    .line 189
    iget-boolean v3, v3, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 190
    .line 191
    if-nez v3, :cond_4

    .line 192
    .line 193
    const/4 v3, 0x1

    .line 194
    goto :goto_6

    .line 195
    :cond_3
    move-object/from16 v14, p5

    .line 196
    .line 197
    :cond_4
    const/4 v3, 0x0

    .line 198
    :goto_6
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 199
    .line 200
    .line 201
    move-result v13

    .line 202
    if-eqz v13, :cond_9

    .line 203
    .line 204
    if-eqz v3, :cond_7

    .line 205
    .line 206
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 207
    .line 208
    sget-object v13, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 209
    .line 210
    if-eqz v3, :cond_7

    .line 211
    .line 212
    const-string v13, ""

    .line 213
    .line 214
    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    if-eqz v13, :cond_5

    .line 219
    .line 220
    goto :goto_8

    .line 221
    :cond_5
    sget-object v13, Lcom/android/server/DualAppManagerService;->DUALAPP_DEFAULT_PACKAGES:[Ljava/lang/String;

    .line 222
    .line 223
    move/from16 v17, v4

    .line 224
    .line 225
    move-object/from16 v18, v5

    .line 226
    .line 227
    const/4 v4, 0x0

    .line 228
    :goto_7
    const/16 v5, 0x1a

    .line 229
    .line 230
    if-ge v4, v5, :cond_8

    .line 231
    .line 232
    aget-object v5, v13, v4

    .line 233
    .line 234
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-eqz v5, :cond_6

    .line 239
    .line 240
    const/4 v3, 0x1

    .line 241
    goto :goto_9

    .line 242
    :cond_6
    const/4 v5, 0x1

    .line 243
    add-int/2addr v4, v5

    .line 244
    goto :goto_7

    .line 245
    :cond_7
    :goto_8
    move/from16 v17, v4

    .line 246
    .line 247
    move-object/from16 v18, v5

    .line 248
    .line 249
    :cond_8
    const/4 v3, 0x0

    .line 250
    goto :goto_9

    .line 251
    :cond_9
    move/from16 v17, v4

    .line 252
    .line 253
    move-object/from16 v18, v5

    .line 254
    .line 255
    :goto_9
    if-eqz v3, :cond_b

    .line 256
    .line 257
    if-nez v15, :cond_a

    .line 258
    .line 259
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 260
    .line 261
    move-object/from16 v5, p4

    .line 262
    .line 263
    check-cast v5, Landroid/util/ArraySet;

    .line 264
    .line 265
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_b

    .line 270
    .line 271
    :cond_a
    const/4 v4, 0x1

    .line 272
    goto :goto_a

    .line 273
    :cond_b
    const/4 v4, 0x0

    .line 274
    :goto_a
    invoke-virtual {v2, v10, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 275
    .line 276
    .line 277
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->fixSystemAppsFirstInstallTime()Z

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    if-eqz v5, :cond_c

    .line 282
    .line 283
    if-eqz v4, :cond_c

    .line 284
    .line 285
    invoke-virtual {v2, v10, v8, v9}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(IJ)V

    .line 286
    .line 287
    .line 288
    :cond_c
    iget-boolean v5, v0, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    .line 289
    .line 290
    if-eqz v5, :cond_d

    .line 291
    .line 292
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    if-eqz v5, :cond_d

    .line 297
    .line 298
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isApex()Z

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    if-nez v5, :cond_d

    .line 303
    .line 304
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 305
    .line 306
    iget-object v13, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 307
    .line 308
    invoke-interface {v5, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    if-nez v5, :cond_d

    .line 313
    .line 314
    const/4 v5, 0x1

    .line 315
    goto :goto_b

    .line 316
    :cond_d
    const/4 v5, 0x0

    .line 317
    :goto_b
    if-eqz v5, :cond_e

    .line 318
    .line 319
    new-instance v13, Landroid/content/Intent;

    .line 320
    .line 321
    const-string v0, "android.intent.action.MAIN"

    .line 322
    .line 323
    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const-string v0, "android.intent.category.LAUNCHER"

    .line 327
    .line 328
    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    .line 330
    .line 331
    iget-object v0, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    .line 335
    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 337
    .line 338
    .line 339
    move-result-object v19

    .line 340
    const/16 v24, 0x0

    .line 341
    .line 342
    const/16 v21, 0x0

    .line 343
    .line 344
    const-wide/32 v22, 0xc0000

    .line 345
    .line 346
    .line 347
    move-object/from16 v20, v13

    .line 348
    .line 349
    invoke-interface/range {v19 .. v24}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_e

    .line 358
    .line 359
    const/4 v5, 0x0

    .line 360
    :cond_e
    invoke-virtual {v2, v10}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    const/4 v13, 0x2

    .line 365
    invoke-virtual {v0, v13, v5}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 372
    .line 373
    .line 374
    if-eqz v3, :cond_f

    .line 375
    .line 376
    if-nez v4, :cond_f

    .line 377
    .line 378
    const/4 v0, 0x1

    .line 379
    goto :goto_c

    .line 380
    :cond_f
    const/4 v0, 0x0

    .line 381
    :goto_c
    invoke-virtual {v2, v0, v10}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 382
    .line 383
    .line 384
    if-eqz v4, :cond_11

    .line 385
    .line 386
    iget v0, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 387
    .line 388
    if-gez v0, :cond_10

    .line 389
    .line 390
    goto/16 :goto_4

    .line 391
    .line 392
    :cond_10
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 397
    .line 398
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesSdkLibraries()Ljava/util/List;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    const/4 v4, 0x1

    .line 407
    xor-int/lit8 v5, v3, 0x1

    .line 408
    .line 409
    iget-object v13, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 410
    .line 411
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 412
    .line 413
    iget v3, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 414
    .line 415
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 416
    .line 417
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    .line 418
    .line 419
    .line 420
    move-result v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    const/16 v20, 0x1

    .line 422
    .line 423
    move/from16 v2, p3

    .line 424
    .line 425
    move/from16 v21, v3

    .line 426
    .line 427
    move/from16 v3, v20

    .line 428
    .line 429
    move-object/from16 v20, v4

    .line 430
    .line 431
    move v4, v5

    .line 432
    move/from16 v5, v21

    .line 433
    .line 434
    move/from16 v21, v6

    .line 435
    .line 436
    move-object v6, v13

    .line 437
    move-object v13, v7

    .line 438
    move-object/from16 v7, v20

    .line 439
    .line 440
    move-wide/from16 v22, v8

    .line 441
    .line 442
    move-object v8, v0

    .line 443
    move/from16 v9, v19

    .line 444
    .line 445
    :try_start_1
    invoke-static/range {v2 .. v9}, Lcom/android/server/pm/Installer;->buildCreateAppDataArgs(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/CreateAppDataArgs;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v12, v0}, Lcom/android/server/pm/Installer$Batch;->createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;

    .line 450
    .line 451
    .line 452
    goto/16 :goto_5

    .line 453
    .line 454
    :catchall_1
    move-exception v0

    .line 455
    goto :goto_f

    .line 456
    :cond_11
    move/from16 v21, v6

    .line 457
    .line 458
    move-object v13, v7

    .line 459
    move-wide/from16 v22, v8

    .line 460
    .line 461
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_5

    .line 465
    .line 466
    :goto_d
    add-int/lit8 v3, v16, 0x1

    .line 467
    .line 468
    move-object/from16 v0, p1

    .line 469
    .line 470
    move-object v7, v13

    .line 471
    move/from16 v4, v17

    .line 472
    .line 473
    move-object/from16 v5, v18

    .line 474
    .line 475
    move/from16 v6, v21

    .line 476
    .line 477
    move-wide/from16 v8, v22

    .line 478
    .line 479
    const/4 v14, 0x0

    .line 480
    goto/16 :goto_3

    .line 481
    .line 482
    :cond_12
    move-object v13, v7

    .line 483
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 484
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 485
    .line 486
    const-string v0, "createAppData"

    .line 487
    .line 488
    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    move-object/from16 v0, p2

    .line 492
    .line 493
    :try_start_2
    invoke-virtual {v12, v0}, Lcom/android/server/pm/Installer$Batch;->execute(Lcom/android/server/pm/Installer;)V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 494
    .line 495
    .line 496
    goto :goto_e

    .line 497
    :catch_0
    move-exception v0

    .line 498
    move-object v2, v0

    .line 499
    const-string v0, "PackageSettings"

    .line 500
    .line 501
    const-string v3, "Failed to prepare app data"

    .line 502
    .line 503
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    .line 505
    .line 506
    :goto_e
    invoke-virtual {v11}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 507
    .line 508
    .line 509
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 510
    .line 511
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 512
    .line 513
    monitor-enter v2

    .line 514
    :try_start_3
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    .line 515
    .line 516
    .line 517
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 518
    invoke-virtual {v11}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    :catchall_2
    move-exception v0

    .line 523
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 524
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 525
    .line 526
    throw v0

    .line 527
    :goto_f
    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 528
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 529
    .line 530
    throw v0
.end method

.method public final disableSystemPackageLPw(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "Package "

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, " is not an installed package"

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "PackageManager"

    .line 34
    .line 35
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return v1

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 48
    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 62
    .line 63
    iget-boolean v3, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 64
    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    .line 68
    .line 69
    invoke-direct {v3, v0, v1}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    invoke-virtual {v2, v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 77
    .line 78
    invoke-virtual {v1, p1, v3}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-eqz p0, :cond_1

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 88
    .line 89
    invoke-virtual {p0, v3}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_1
    return v0

    .line 93
    :cond_2
    return v1
.end method

.method public final dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V
    .locals 18
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    .line 1
    iget-object v8, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz p2, :cond_10

    .line 2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 6
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget v2, v3, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 9
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 10
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget-wide v4, v3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 12
    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 13
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    iget-wide v4, v3, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 15
    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 16
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 18
    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    const-string v4, "?"

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 20
    iget v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 21
    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 22
    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 24
    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 27
    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    const-string v7, ")"

    .line 28
    invoke-static {v2, v5, v7}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 29
    :cond_3
    const-string v2, ""

    .line 30
    :goto_3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 33
    iget v2, v2, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 34
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 35
    const-string v2, "-"

    if-eqz v8, :cond_4

    .line 36
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "splt,"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    const-string v7, "base,"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 39
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v7

    const/4 v9, 0x0

    .line 40
    :goto_4
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_4

    .line 41
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    aget v10, v7, v9

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 44
    :cond_4
    move-object v5, v6

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 45
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    .line 46
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v8, "usr"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 51
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "I"

    goto :goto_6

    :cond_5
    const-string v8, "i"

    :goto_6
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "B"

    goto :goto_7

    :cond_6
    const-string v8, "b"

    :goto_7
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "SU"

    goto :goto_8

    :cond_7
    const-string/jumbo v8, "su"

    :goto_8
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "S"

    goto :goto_9

    :cond_8
    const-string/jumbo v8, "s"

    :goto_9
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "l"

    goto :goto_a

    :cond_9
    const-string v8, "L"

    :goto_a
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "IA"

    goto :goto_b

    :cond_a
    const-string v8, "ia"

    :goto_b
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "VPI"

    goto :goto_c

    :cond_b
    const-string/jumbo v8, "vpi"

    :goto_c
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "Q"

    goto :goto_d

    :cond_c
    const-string/jumbo v8, "q"

    :goto_d
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 61
    const-string v8, "HA"

    goto :goto_e

    :cond_d
    const-string v8, "ha"

    :goto_e
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 64
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v7, :cond_e

    goto :goto_f

    :cond_e
    move-object v7, v4

    .line 66
    :goto_f
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 69
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_5

    :cond_f
    return-void

    .line 71
    :cond_10
    const-string v10, "  "

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "Package ["

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    if-eqz v11, :cond_11

    goto :goto_10

    .line 73
    :cond_11
    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 74
    :goto_10
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    const-string v11, "] ("

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    invoke-static/range {p4 .. p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    const-string v11, "):"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    if-eqz v11, :cond_12

    .line 79
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  compat name="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 81
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    :cond_12
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  appId="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget v11, v3, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 84
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 85
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 86
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  sharedUser="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 87
    :cond_13
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  pkg="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  codePath="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 90
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    if-eqz v11, :cond_14

    .line 92
    invoke-virtual {v11}, Ljava/util/LinkedHashSet;->size()I

    move-result v11

    if-lez v11, :cond_14

    .line 93
    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 94
    invoke-virtual {v11}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 95
    const-string v13, "    oldCodePath="

    .line 96
    invoke-static {v1, v10, v13}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 97
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    :cond_14
    if-nez v2, :cond_16

    .line 98
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  resourcePath="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 100
    const-string v12, "  legacyNativeLibraryDir="

    .line 101
    invoke-static {v1, v11, v10, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 103
    const-string v12, "  extractNativeLibs="

    .line 104
    invoke-static {v1, v11, v10, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget v11, v3, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    const/high16 v12, 0x10000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_15

    .line 106
    const-string/jumbo v11, "true"

    goto :goto_12

    :cond_15
    const-string v11, "false"

    .line 107
    :goto_12
    const-string v12, "  primaryCpuAbi="

    .line 108
    invoke-static {v1, v11, v10, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 110
    const-string v12, "  secondaryCpuAbi="

    .line 111
    invoke-static {v1, v11, v10, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 113
    const-string v12, "  cpuAbiOverride="

    .line 114
    invoke-static {v1, v11, v10, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v11, v3, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 116
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    :cond_16
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  versionCode="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    iget-wide v11, v3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 119
    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    if-eqz v8, :cond_17

    .line 120
    const-string v11, " minSdk="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getMinSdkVersion()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 122
    :cond_17
    const-string v11, " targetSdk="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    iget v11, v3, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 124
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 125
    const-string v11, "]"

    const-string v12, ", "

    if-eqz v8, :cond_1a

    .line 126
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getMinExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v13

    .line 127
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "  minExtensionVersions=["

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v13, :cond_19

    .line 128
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    const/4 v9, 0x0

    :goto_13
    if-ge v9, v15, :cond_18

    move/from16 p2, v15

    .line 130
    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 131
    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    move-object/from16 v16, v13

    .line 132
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v15, p2

    move-object/from16 v13, v16

    goto :goto_13

    .line 133
    :cond_18
    invoke-static {v12, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    :cond_19
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 136
    sget-object v0, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    sget-object v9, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    const-string v13, "    "

    const-string v15, "  pendingRestore=true"

    if-eqz v8, :cond_3c

    .line 137
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "  versionName="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "  hiddenApiEnforcementPolicy="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    iget-object v14, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 140
    invoke-static {v14, v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getHiddenApiEnforcementPolicy(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v14

    .line 141
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(I)V

    .line 142
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "  usesNonSdkApi="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isNonSdkApiRequested()Z

    move-result v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Z)V

    .line 143
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "  splits="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    const-string v14, "["

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    const-string v14, "base"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v14

    const-string v4, ":"

    if-eqz v14, :cond_1b

    .line 147
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 148
    :cond_1b
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v14

    .line 149
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v6, v17

    .line 150
    :goto_14
    array-length v7, v14

    if-ge v6, v7, :cond_1d

    .line 151
    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    aget-object v7, v14, v6

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    aget v7, v16, v6

    if-eqz v7, :cond_1c

    .line 154
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v7, v16, v6

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 155
    :cond_1d
    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 157
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v4

    .line 158
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  apkSigningVersion="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 159
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  flags="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    invoke-static {v8, v3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v4

    invoke-static {v1, v4, v9}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 161
    invoke-static {v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v4

    if-eqz v4, :cond_1e

    .line 162
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  privateFlags="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v4, v0}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 163
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_1e
    const/16 v4, 0x10

    .line 164
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 165
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 167
    :cond_1f
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isUpdatableSystem()Z

    move-result v4

    if-nez v4, :cond_20

    .line 168
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  updatableSystem=false"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 170
    :cond_20
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getEmergencyInstaller()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 171
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  emergencyInstaller="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getEmergencyInstaller()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    :cond_21
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->hasPreserveLegacyExternalStorage()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 174
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  hasPreserveLegacyExternalStorage=true"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 176
    :cond_22
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  forceQueryable="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 178
    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isForceQueryable()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 179
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->isForceQueryableOverride()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 180
    const-string v4, " (override=true)"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    :cond_23
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 182
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    .line 183
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "  queriesPackages="

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    .line 184
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesPackages()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 185
    :cond_24
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesIntents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    .line 186
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "  queriesIntents="

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    .line 187
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesIntents()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 188
    :cond_25
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  scannedAsStoppedSystemApp="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->isScannedAsStoppedSystemApp()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 190
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  supportsScreens=["

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isSmallScreensSupported()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 192
    const-string/jumbo v4, "small"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_15

    :cond_26
    const/4 v4, 0x1

    .line 193
    :goto_15
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isNormalScreensSupported()Z

    move-result v6

    if-eqz v6, :cond_28

    if-nez v4, :cond_27

    .line 194
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    :cond_27
    const-string/jumbo v4, "medium"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 196
    :cond_28
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeScreensSupported()Z

    move-result v6

    if-eqz v6, :cond_2a

    if-nez v4, :cond_29

    .line 197
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    :cond_29
    const-string v4, "large"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 199
    :cond_2a
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtraLargeScreensSupported()Z

    move-result v6

    if-eqz v6, :cond_2c

    if-nez v4, :cond_2b

    .line 200
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    :cond_2b
    const-string/jumbo v4, "xlarge"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 202
    :cond_2c
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeable()Z

    move-result v6

    if-eqz v6, :cond_2e

    if-nez v4, :cond_2d

    .line 203
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    :cond_2d
    const-string/jumbo v4, "resizeable"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 205
    :cond_2e
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isAnyDensity()Z

    move-result v6

    if-eqz v6, :cond_30

    if-nez v4, :cond_2f

    .line 206
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    :cond_2f
    const-string v4, "anyDensity"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    :cond_30
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 210
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_31

    .line 211
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  dynamic libraries:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 212
    :goto_16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_31

    .line 213
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 215
    :cond_31
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "name:"

    const-string v7, " version:"

    if-eqz v4, :cond_32

    .line 216
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  static library:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->println(J)V

    .line 220
    :cond_32
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 221
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  SDK library:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    const-string v4, " versionMajor:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 225
    :cond_33
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v4

    .line 226
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_34

    .line 227
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  usesLibraries:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 228
    :goto_17
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_34

    .line 229
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 230
    :cond_34
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v4

    .line 231
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v6

    .line 232
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_35

    .line 233
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  usesStaticLibraries:"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 234
    :goto_18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_35

    .line 235
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v12, v15

    .line 237
    aget-wide v14, v6, v11

    invoke-virtual {v1, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    add-int/lit8 v11, v11, 0x1

    move-object v15, v12

    goto :goto_18

    :cond_35
    move-object v12, v15

    .line 238
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v4

    .line 239
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v6

    .line 240
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibrariesOptional()[Z

    move-result-object v11

    .line 241
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_36

    .line 242
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "  usesSdkLibraries:"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_19
    if-ge v15, v14, :cond_36

    .line 244
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v4

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    aget-wide v4, v6, v15

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    const-string v4, " optional:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    aget-boolean v4, v11, v15

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, p7

    move-object/from16 v4, v17

    goto :goto_19

    .line 248
    :cond_36
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v4

    .line 249
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_37

    .line 250
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  usesOptionalLibraries:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 251
    :goto_1a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_37

    .line 252
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 254
    :cond_37
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v4

    .line 255
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_38

    .line 256
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  usesNativeLibraries:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 257
    :goto_1b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_38

    .line 258
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 259
    :cond_38
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalNativeLibraries()Ljava/util/List;

    move-result-object v4

    .line 260
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_39

    .line 261
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  usesOptionalNativeLibraries:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 262
    :goto_1c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_39

    .line 263
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 265
    :cond_39
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v4, v4, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 266
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3a

    .line 267
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  usesLibraryFiles:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 268
    :goto_1d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3a

    .line 269
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 270
    :cond_3a
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v4

    .line 271
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 272
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  processes:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    .line 274
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_3b

    .line 276
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 277
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "      deny: "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e

    :cond_3c
    move-object v12, v15

    .line 279
    :cond_3d
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  timeStamp="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v4

    move-object/from16 v6, p7

    invoke-virtual {v6, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 281
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  lastUpdateTime="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 284
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  installerPackageName="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  installerPackageUid="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget v4, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 289
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  initiatingPackageName="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  originatingPackageName="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_3e

    .line 294
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  updateOwnerPackageName="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    :cond_3e
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    if-eqz v4, :cond_3f

    .line 297
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  installerAttributionTag="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    :cond_3f
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getCategoryOverride()I

    move-result v4

    const/4 v5, -0x1

    if-eqz v8, :cond_40

    .line 300
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getCategory()I

    move-result v7

    goto :goto_1f

    :cond_40
    move v7, v5

    .line 301
    :goto_1f
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "  category=manifest: "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, ", override: "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, ", by user: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    sget-object v7, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 306
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/server/pm/AppCategoryHintHelper;->getAppCategoryHintUser(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 307
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 309
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/server/pm/AppCategoryHintHelper;->getAppCategoryHintDeveloper(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_41

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, ", by dev: "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    :cond_41
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 312
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 313
    iget-object v4, v4, Lcom/android/server/pm/AppCategoryHintHelper;->mAppCategoryFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 314
    invoke-virtual {v4, v7}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->getPackageCategory(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_42

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, ", by scpm: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    :cond_42
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 317
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  packageSource="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget v4, v4, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 319
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 320
    const-string v4, "  loadingProgress="

    .line 321
    invoke-static {v1, v10, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 322
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getLoadingProgress()F

    move-result v5

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getLoadingCompletedTime()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 325
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  loadingCompletedTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    :cond_43
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  appMetadataFilePath="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  appMetadataSource="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getAppMetadataSource()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 330
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 331
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  volumeUuid="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    :cond_44
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  signatures="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 335
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 336
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  installPermissionsFixed="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->isInstallPermissionsFixed()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 338
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 339
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  pkgFlags="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v4

    invoke-static {v1, v4, v9}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 340
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 341
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  privatePkgFlags="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v4

    invoke-static {v1, v4, v0}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 342
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 343
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 344
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v12

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    :cond_45
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  apexModuleName="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getApexModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v8, :cond_46

    .line 346
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 347
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayTarget="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayCategory="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_46
    if-eqz v8, :cond_47

    .line 349
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  componentsDeclared="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v0

    .line 351
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v4

    .line 352
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_47
    if-eqz v8, :cond_4c

    .line 353
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 354
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 355
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  declared permissions:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 356
    :goto_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4c

    .line 357
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    if-eqz v2, :cond_48

    .line 358
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_48

    const/4 v9, 0x1

    goto :goto_21

    .line 359
    :cond_48
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    const-string v7, ": prot="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v7

    invoke-static {v7}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v7

    const/4 v9, 0x1

    and-int/2addr v7, v9

    if-eqz v7, :cond_49

    .line 363
    const-string v7, ", COSTS_MONEY"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    :cond_49
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4a

    .line 365
    const-string v7, ", HIDDEN"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    :cond_4a
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v5, v7

    if-eqz v5, :cond_4b

    .line 367
    const-string v5, ", INSTALLED"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    :cond_4b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :goto_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_4c
    move/from16 v0, p9

    if-nez v2, :cond_4d

    if-eqz v0, :cond_4f

    :cond_4d
    if-eqz v8, :cond_4f

    .line 369
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 370
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_4f

    .line 371
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    .line 372
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  requested permissions:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v2, :cond_4e

    .line 374
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    goto :goto_22

    .line 375
    :cond_4e
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22

    .line 376
    :cond_4f
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v4

    if-eqz v4, :cond_50

    if-nez v2, :cond_50

    if-eqz v0, :cond_51

    :cond_50
    move-object/from16 v4, p5

    move-object/from16 v5, p8

    goto :goto_23

    :cond_51
    move-object/from16 v4, p5

    move-object/from16 v5, p8

    goto :goto_24

    .line 377
    :goto_23
    invoke-static {v1, v13, v2, v4, v5}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    :goto_24
    if-eqz p10, :cond_52

    .line 378
    iget-object v7, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 379
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getActivities()Ljava/util/List;

    move-result-object v7

    const-string v8, "activities:"

    invoke-static {v1, v13, v8, v7}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 380
    iget-object v7, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 381
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getServices()Ljava/util/List;

    move-result-object v7

    const-string/jumbo v8, "services:"

    invoke-static {v1, v13, v8, v7}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 382
    iget-object v7, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 383
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getReceivers()Ljava/util/List;

    move-result-object v7

    const-string/jumbo v8, "receivers:"

    invoke-static {v1, v13, v8, v7}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 384
    iget-object v7, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 385
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProviders()Ljava/util/List;

    move-result-object v7

    const-string/jumbo v8, "providers:"

    invoke-static {v1, v13, v8, v7}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 386
    iget-object v7, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 387
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getInstrumentations()Ljava/util/List;

    move-result-object v7

    const-string v8, "instrumentations:"

    invoke-static {v1, v13, v8, v7}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 388
    :cond_52
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 389
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 390
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "  User "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, ": "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    const-string v9, "ceDataInode="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    .line 393
    const-string v9, " deDataInode="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    .line 395
    const-string v9, " installed="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 397
    const-string v9, " hidden="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 398
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 399
    const-string v9, " suspended="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 401
    const-string v9, " distractionFlags="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 403
    const-string v9, " stopped="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 405
    const-string v9, " notLaunched="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 407
    const-string v9, " enabled="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 409
    const-string v9, " instant="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 411
    const-string v9, " virtual="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 412
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 413
    const-string v9, " quarantined="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 415
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 416
    const-string v11, "      installReason="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 418
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDataDir(Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/io/File;

    move-result-object v11

    .line 419
    const-string v12, "      dataDir="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v11, :cond_53

    .line 420
    const-string/jumbo v11, "null"

    goto :goto_26

    :cond_53
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    :goto_26
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v11}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    .line 422
    const-string v12, "      firstInstallTime="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/util/Date;->setTime(J)V

    .line 424
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v12

    if-eqz v12, :cond_54

    .line 426
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v11

    .line 427
    const-string v12, "      archiveTime="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    iget-wide v14, v11, Lcom/android/server/pm/pkg/ArchiveState;->mArchiveTimeMillis:J

    .line 429
    invoke-virtual {v6, v14, v15}, Ljava/util/Date;->setTime(J)V

    .line 430
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    const-string v12, "      unarchiveInstallerTitle="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    iget-object v12, v11, Lcom/android/server/pm/pkg/ArchiveState;->mInstallerTitle:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    iget-object v11, v11, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    .line 434
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_27
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_54

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 435
    const-string v14, "        archiveActivityInfo="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v12}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_27

    .line 437
    :cond_54
    const-string v11, "      uninstallReason="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 439
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v11

    if-eqz v11, :cond_56

    .line 440
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    const-string v11, "  Suspend params:"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 442
    :goto_28
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_56

    .line 443
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    const-string v12, "    suspendingPackage="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    .line 446
    iget-object v12, v12, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 447
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 448
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 449
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    .line 450
    iget-object v12, v12, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 451
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 452
    check-cast v12, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz v12, :cond_55

    .line 453
    const-string v14, " dialogInfo="

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 454
    iget-object v14, v12, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 455
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 456
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    iget-boolean v12, v12, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 458
    :cond_55
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_28

    .line 459
    :cond_56
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v9

    .line 460
    const-string v11, "      "

    if-eqz v9, :cond_58

    .line 461
    invoke-virtual {v9}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_57

    .line 462
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    const-string v12, "    overlay paths:"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v9}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_29
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_57

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 465
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_29

    .line 468
    :cond_57
    invoke-virtual {v9}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_58

    .line 469
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    const-string v12, "    legacy overlay paths:"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v9}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_58

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 472
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a

    .line 475
    :cond_58
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getSharedLibraryOverlayPaths()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_5c

    .line 476
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 477
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/overlay/OverlayPaths;

    if-nez v14, :cond_59

    goto :goto_2b

    .line 478
    :cond_59
    invoke-virtual {v14}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5a

    .line 479
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 482
    const-string v15, " overlay paths:"

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v14}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    .line 484
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 p2, v5

    .line 485
    const-string v5, "        "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v5, p2

    move-object/from16 v3, p4

    goto :goto_2c

    :cond_5a
    move-object/from16 p2, v5

    .line 487
    invoke-virtual {v14}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 488
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 491
    const-string v3, " legacy overlay paths:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v14}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 493
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d

    :cond_5b
    move-object/from16 v5, p2

    move-object/from16 v3, p4

    goto/16 :goto_2b

    :cond_5c
    move-object/from16 p2, v5

    .line 496
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 497
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    lastDisabledCaller: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    :cond_5d
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v3

    if-nez v3, :cond_5e

    .line 500
    iget v3, v7, Landroid/content/pm/UserInfo;->id:I

    .line 501
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    invoke-static {v3, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    move-object/from16 v5, p0

    .line 502
    iget-object v9, v5, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-virtual {v9, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->getGidsForUid(I)[I

    move-result-object v3

    invoke-static {v1, v11, v3}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 503
    iget v3, v7, Landroid/content/pm/UserInfo;->id:I

    .line 504
    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v3

    .line 505
    invoke-static {v1, v11, v2, v3, v0}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V

    goto :goto_2e

    :cond_5e
    move-object/from16 v5, p0

    .line 506
    :goto_2e
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 507
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "      harmfulAppWarning: "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5f
    if-nez v2, :cond_61

    .line 509
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 510
    iget-object v7, v3, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_60

    .line 511
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "    disabledComponents:"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 512
    :goto_2f
    iget-object v9, v3, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v7, v9, :cond_60

    .line 513
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 514
    iget-object v9, v3, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 515
    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 516
    :cond_60
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 517
    iget-object v7, v3, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_61

    .line 518
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "    enabledComponents:"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 519
    :goto_30
    iget-object v8, v3, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_61

    .line 520
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 521
    iget-object v8, v3, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    .line 522
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_61
    move-object/from16 v5, p2

    move-object/from16 v3, p4

    goto/16 :goto_25

    :cond_62
    return-void
.end method

.method public final editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public final editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public final enableSystemPackageLPw(Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "Package "

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, " is not disabled"

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "PackageManager"

    .line 33
    .line 34
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 56
    .line 57
    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 60
    .line 61
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 62
    .line 63
    iget v8, v0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 64
    .line 65
    iget v9, v0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 68
    .line 69
    check-cast v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    move v11, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isSdkLibrary()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    move v11, v1

    .line 87
    :goto_0
    move-object v3, p0

    .line 88
    move-object v4, p1

    .line 89
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IIILjava/util/UUID;Z)Lcom/android/server/pm/PackageSetting;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 96
    .line 97
    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 100
    .line 101
    .line 102
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 103
    .line 104
    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 107
    .line 108
    .line 109
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 110
    .line 111
    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 114
    .line 115
    .line 116
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 117
    .line 118
    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 121
    .line 122
    .line 123
    iget-wide v3, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 124
    .line 125
    iput-wide v3, v1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getMimeGroups()Ljava/util/Map;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    if-eqz v3, :cond_3

    .line 180
    .line 181
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 185
    .line 186
    .line 187
    :cond_3
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget v3, v0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 193
    .line 194
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    .line 195
    .line 196
    .line 197
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 198
    .line 199
    invoke-virtual {v3, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)V

    .line 200
    .line 201
    .line 202
    iget v2, v0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 203
    .line 204
    iput v2, v1, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 205
    .line 206
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 207
    .line 208
    .line 209
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 210
    .line 211
    iput-object v2, v1, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 214
    .line 215
    .line 216
    const/16 v2, 0x8

    .line 217
    .line 218
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 226
    .line 227
    .line 228
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 229
    .line 230
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    iput-object v0, v1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 234
    .line 235
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 236
    .line 237
    .line 238
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 239
    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    return-void
.end method

.method public final findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public final getAllSharedUsersLPw()Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getLegacyPermissionsState(I)Lcom/android/permission/persistence/RuntimePermissionsState;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    new-instance v2, Lcom/android/permission/persistence/RuntimePermissionsState;

    .line 27
    .line 28
    invoke-static {p1, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getPackagePermissions(ILcom/android/server/utils/WatchedArrayMap;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {p1, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getShareUsersPermissions(ILcom/android/server/utils/WatchedArrayMap;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v2, v3, v0, v1, p0}, Lcom/android/permission/persistence/RuntimePermissionsState;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0
.end method

.method public final getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getSettingLPr(I)Lcom/android/server/pm/SettingBase;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 2
    .line 3
    const/16 v0, 0x2710

    .line 4
    .line 5
    if-lt p1, v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr p1, v0

    .line 16
    if-ge p1, v1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/server/pm/SettingBase;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/android/server/pm/SettingBase;

    .line 38
    .line 39
    :goto_0
    return-object p0
.end method

.method public final getSharedUserLPw(Ljava/lang/String;Z)Lcom/android/server/pm/SharedUserSetting;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/pm/SharedUserSetting;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {v1, p2, p2, p1}, Lcom/android/server/pm/SharedUserSetting;-><init>(IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/android/server/pm/AppIdSettingMap;->acquireAndRegisterNewAppId(Lcom/android/server/pm/SettingBase;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    iput p0, v1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 28
    .line 29
    if-ltz p0, :cond_0

    .line 30
    .line 31
    const-string p0, "New shared user "

    .line 32
    .line 33
    const-string p2, ": id="

    .line 34
    .line 35
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget p2, v1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 40
    .line 41
    const-string v2, "PackageManager"

    .line 42
    .line 43
    invoke-static {p0, p2, v2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 51
    .line 52
    const-string p2, "Creating shared user "

    .line 53
    .line 54
    const-string v0, " failed"

    .line 55
    .line 56
    invoke-static {p2, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 p2, -0x4

    .line 61
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p1, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;
    .locals 7

    .line 1
    new-instance v1, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v2, "package-restrictions.xml"

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string/jumbo v3, "package-restrictions-backup.xml"

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Ljava/io/File;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string/jumbo v0, "package-restrictions.xml.reservecopy"

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/android/server/pm/ResilientAtomicFile;

    .line 38
    .line 39
    const/16 v4, 0x1b0

    .line 40
    .line 41
    const-string/jumbo v5, "package restrictions"

    .line 42
    .line 43
    .line 44
    move-object v0, p1

    .line 45
    move-object v6, p0

    .line 46
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    .line 47
    .line 48
    .line 49
    return-object p1
.end method

.method public final getUserSystemDirectory(I)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 6
    .line 7
    const-string/jumbo v2, "users"

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 26
    .line 27
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v0
.end method

.method public final isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

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

.method public final logEvent(ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final readBlockUninstallPackagesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v2, v3, :cond_4

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-le v4, v0, :cond_4

    .line 25
    .line 26
    :cond_1
    if-eq v2, v3, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "block-uninstall"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    const-string/jumbo v3, "packageName"

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v3, "Unknown element under block-uninstall-packages: "

    .line 59
    .line 60
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p2, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 68
    .line 69
    const/4 v3, 0x5

    .line 70
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 82
    .line 83
    if-eqz p2, :cond_5

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    return-void
.end method

.method public final readCrossProfileIntentFiltersLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_4

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-le v3, v0, :cond_4

    .line 20
    .line 21
    :cond_1
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    if-ne v1, v2, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "item"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    new-instance v1, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 40
    .line 41
    invoke-direct {v1, p2}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const-string v2, "Unknown element under crossProfile-intent-filters: "

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    return-void
.end method

.method public final readDefaultPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 6

    .line 1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eq v2, v3, :cond_5

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    .line 23
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-le v4, v1, :cond_5

    .line 28
    .line 29
    :cond_1
    if-eq v2, v3, :cond_0

    .line 30
    .line 31
    const/4 v3, 0x4

    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "item"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x5

    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    new-instance v2, Lcom/android/server/pm/PreferredActivity;

    .line 49
    .line 50
    invoke-direct {v2, p2}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 51
    .line 52
    .line 53
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 54
    .line 55
    iget-object v5, v4, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v5, :cond_3

    .line 58
    .line 59
    iget-object v2, v2, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 60
    .line 61
    iget-object v3, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 62
    .line 63
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v5, "Error in package manager settings: <preferred-activity> "

    .line 70
    .line 71
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v4, " at "

    .line 80
    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 96
    .line 97
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v4, "Unknown element under <preferred-activities>: "

    .line 104
    .line 105
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p2, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 113
    .line 114
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_5
    return-void
.end method

.method public final readDisabledSysPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/List;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string/jumbo v3, "name"

    .line 7
    .line 8
    .line 9
    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string/jumbo v4, "realName"

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    const-string v4, "codePath"

    .line 21
    .line 22
    invoke-interface {v1, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const-string/jumbo v5, "requiredCpuAbi"

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string/jumbo v7, "nativeLibraryPath"

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v2, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v11

    .line 40
    const-string/jumbo v7, "primaryCpuAbi"

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v2, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    const-string/jumbo v8, "secondaryCpuAbi"

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    const-string v8, "cpuAbiOverride"

    .line 55
    .line 56
    invoke-interface {v1, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    if-nez v7, :cond_0

    .line 61
    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    move-object v14, v5

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move-object v14, v7

    .line 67
    :goto_0
    const-string/jumbo v5, "version"

    .line 68
    .line 69
    .line 70
    const-wide/16 v9, 0x0

    .line 71
    .line 72
    invoke-interface {v1, v2, v5, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v7

    .line 76
    const-string/jumbo v5, "targetSdkVersion"

    .line 77
    .line 78
    .line 79
    const/4 v15, 0x0

    .line 80
    invoke-interface {v1, v2, v5, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    const-string/jumbo v9, "restrictUpdateHash"

    .line 85
    .line 86
    .line 87
    invoke-interface {v1, v2, v9, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    const-string/jumbo v9, "scannedAsStoppedSystemApp"

    .line 92
    .line 93
    .line 94
    invoke-interface {v1, v2, v9, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    const-string v15, "/priv-app/"

    .line 99
    .line 100
    invoke-virtual {v4, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    if-eqz v15, :cond_1

    .line 105
    .line 106
    const/16 v15, 0x8

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    const/4 v15, 0x0

    .line 110
    :goto_1
    sget-object v16, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->DISABLED_ID:Ljava/util/UUID;

    .line 111
    .line 112
    new-instance v2, Lcom/android/server/pm/PackageSetting;

    .line 113
    .line 114
    move-wide/from16 v17, v7

    .line 115
    .line 116
    new-instance v7, Ljava/io/File;

    .line 117
    .line 118
    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const/4 v8, 0x1

    .line 122
    move-object v4, v2

    .line 123
    move/from16 v19, v5

    .line 124
    .line 125
    move-object v5, v3

    .line 126
    move-wide/from16 v0, v17

    .line 127
    .line 128
    move/from16 v20, v9

    .line 129
    .line 130
    move v9, v15

    .line 131
    move-object v15, v10

    .line 132
    move-object/from16 v10, v16

    .line 133
    .line 134
    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    .line 135
    .line 136
    .line 137
    iput-object v11, v2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 140
    .line 141
    .line 142
    iput-object v14, v2, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 145
    .line 146
    .line 147
    iput-object v12, v2, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 150
    .line 151
    .line 152
    iput-object v13, v2, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 155
    .line 156
    .line 157
    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 160
    .line 161
    .line 162
    move/from16 v0, v19

    .line 163
    .line 164
    iput v0, v2, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 167
    .line 168
    .line 169
    iput-object v15, v2, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 172
    .line 173
    .line 174
    move/from16 v0, v20

    .line 175
    .line 176
    const/16 v1, 0x8

    .line 177
    .line 178
    invoke-virtual {v2, v1, v0}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 182
    .line 183
    .line 184
    const-string v0, "ft"

    .line 185
    .line 186
    move-object/from16 v1, p1

    .line 187
    .line 188
    const/4 v4, 0x0

    .line 189
    const-wide/16 v5, 0x0

    .line 190
    .line 191
    invoke-interface {v1, v4, v0, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    .line 192
    .line 193
    .line 194
    move-result-wide v7

    .line 195
    cmp-long v0, v7, v5

    .line 196
    .line 197
    if-nez v0, :cond_2

    .line 198
    .line 199
    const-string/jumbo v0, "ts"

    .line 200
    .line 201
    .line 202
    invoke-interface {v1, v4, v0, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 203
    .line 204
    .line 205
    move-result-wide v7

    .line 206
    :cond_2
    iput-wide v7, v2, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 207
    .line 208
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 209
    .line 210
    .line 211
    const-string/jumbo v0, "ut"

    .line 212
    .line 213
    .line 214
    invoke-interface {v1, v4, v0, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    .line 215
    .line 216
    .line 217
    move-result-wide v5

    .line 218
    invoke-virtual {v2, v5, v6}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    .line 219
    .line 220
    .line 221
    const-string/jumbo v0, "userId"

    .line 222
    .line 223
    .line 224
    const/4 v5, 0x0

    .line 225
    invoke-interface {v1, v4, v0, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    .line 230
    .line 231
    .line 232
    iget v0, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 233
    .line 234
    if-gtz v0, :cond_3

    .line 235
    .line 236
    const-string/jumbo v0, "sharedUserId"

    .line 237
    .line 238
    .line 239
    invoke-interface {v1, v4, v0, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    .line 247
    .line 248
    .line 249
    :cond_3
    const-string v0, "appMetadataFilePath"

    .line 250
    .line 251
    invoke-interface {v1, v4, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const-string v0, "appMetadataSource"

    .line 259
    .line 260
    invoke-interface {v1, v4, v0, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    .line 265
    .line 266
    .line 267
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    :cond_4
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    const/4 v6, 0x1

    .line 276
    if-eq v5, v6, :cond_5

    .line 277
    .line 278
    const/4 v6, 0x3

    .line 279
    if-ne v5, v6, :cond_6

    .line 280
    .line 281
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    if-le v7, v0, :cond_5

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_5
    move-object/from16 v6, p0

    .line 289
    .line 290
    goto/16 :goto_5

    .line 291
    .line 292
    :cond_6
    :goto_3
    if-eq v5, v6, :cond_d

    .line 293
    .line 294
    const/4 v6, 0x4

    .line 295
    if-ne v5, v6, :cond_7

    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    const-string/jumbo v6, "perms"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    if-eqz v5, :cond_a

    .line 310
    .line 311
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-eqz v5, :cond_9

    .line 316
    .line 317
    iget v5, v2, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 318
    .line 319
    move-object/from16 v6, p0

    .line 320
    .line 321
    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    if-eqz v5, :cond_8

    .line 326
    .line 327
    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    goto :goto_4

    .line 332
    :cond_8
    move-object v5, v4

    .line 333
    goto :goto_4

    .line 334
    :cond_9
    move-object/from16 v6, p0

    .line 335
    .line 336
    iget-object v5, v2, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 337
    .line 338
    :goto_4
    move-object/from16 v7, p2

    .line 339
    .line 340
    if-eqz v5, :cond_4

    .line 341
    .line 342
    invoke-static {v1, v5, v7}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    .line 343
    .line 344
    .line 345
    goto :goto_2

    .line 346
    :cond_a
    move-object/from16 v6, p0

    .line 347
    .line 348
    move-object/from16 v7, p2

    .line 349
    .line 350
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    const-string/jumbo v8, "uses-static-lib"

    .line 355
    .line 356
    .line 357
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    if-eqz v5, :cond_b

    .line 362
    .line 363
    invoke-static {v1, v2}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    .line 364
    .line 365
    .line 366
    goto :goto_2

    .line 367
    :cond_b
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    const-string/jumbo v8, "uses-sdk-lib"

    .line 372
    .line 373
    .line 374
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    if-eqz v5, :cond_c

    .line 379
    .line 380
    invoke-static {v1, v2}, Lcom/android/server/pm/Settings;->readUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    .line 381
    .line 382
    .line 383
    goto :goto_2

    .line 384
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v8, "Unknown element under <updated-package>: "

    .line 387
    .line 388
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-static {v1, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 396
    .line 397
    const/4 v8, 0x5

    .line 398
    invoke-static {v8, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_2

    .line 405
    .line 406
    :cond_d
    move-object/from16 v6, p0

    .line 407
    .line 408
    move-object/from16 v7, p2

    .line 409
    .line 410
    goto/16 :goto_2

    .line 411
    .line 412
    :goto_5
    iget-object v0, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 413
    .line 414
    invoke-virtual {v0, v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    return-void
.end method

.method public final readLPw(Lcom/android/server/pm/ComputerLocked;Ljava/util/List;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "No external VersionInfo found in settings, using current."

    .line 7
    .line 8
    const-string v4, "No internal VersionInfo found in settings, using current."

    .line 9
    .line 10
    const-string/jumbo v5, "primary_physical"

    .line 11
    .line 12
    .line 13
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 14
    .line 15
    const-string v7, "PackageManager"

    .line 16
    .line 17
    new-instance v8, Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 20
    .line 21
    .line 22
    move-object/from16 v9, p1

    .line 23
    .line 24
    move-object/from16 v10, p2

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v1, v9, v10, v8, v0}, Lcom/android/server/pm/Settings;->readSettingsLPw(Lcom/android/server/pm/ComputerLocked;Ljava/util/List;Landroid/util/ArrayMap;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Z

    .line 27
    .line 28
    .line 29
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const/4 v11, 0x0

    .line 31
    if-nez v9, :cond_2

    .line 32
    .line 33
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v2, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v0, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 69
    .line 70
    .line 71
    :cond_1
    return v11

    .line 72
    :cond_2
    sget-object v9, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v12, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    if-nez v12, :cond_3

    .line 81
    .line 82
    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 90
    .line 91
    .line 92
    :cond_3
    iget-object v4, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-nez v4, :cond_4

    .line 99
    .line 100
    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 108
    .line 109
    .line 110
    :cond_4
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 111
    .line 112
    iget-object v4, v3, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    move v5, v11

    .line 119
    :goto_0
    const/4 v6, 0x6

    .line 120
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 121
    .line 122
    if-ge v5, v4, :cond_8

    .line 123
    .line 124
    iget-object v12, v3, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 131
    .line 132
    iget v13, v12, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 133
    .line 134
    if-gtz v13, :cond_5

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    invoke-virtual {v1, v13}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    .line 138
    .line 139
    .line 140
    move-result-object v14

    .line 141
    instance-of v15, v14, Lcom/android/server/pm/SharedUserSetting;

    .line 142
    .line 143
    if-eqz v15, :cond_6

    .line 144
    .line 145
    check-cast v14, Lcom/android/server/pm/SharedUserSetting;

    .line 146
    .line 147
    invoke-virtual {v1, v12, v14}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_6
    const-string v15, " has shared uid "

    .line 152
    .line 153
    const-string v11, "Bad package setting: package "

    .line 154
    .line 155
    if-eqz v14, :cond_7

    .line 156
    .line 157
    new-instance v14, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v11, v12, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 163
    .line 164
    const-string v12, " that is not a shared uid\n"

    .line 165
    .line 166
    invoke-static {v13, v11, v15, v12, v14}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 174
    .line 175
    invoke-static {v6, v11}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object v11, v12, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 185
    .line 186
    const-string v12, " that is not defined\n"

    .line 187
    .line 188
    invoke-static {v13, v11, v15, v12, v14}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 196
    .line 197
    invoke-static {v6, v11}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :goto_1
    add-int/2addr v5, v2

    .line 201
    const/4 v11, 0x0

    .line 202
    goto :goto_0

    .line 203
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 204
    .line 205
    .line 206
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-nez v3, :cond_a

    .line 213
    .line 214
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_9

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_19

    .line 232
    .line 233
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 238
    .line 239
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 240
    .line 241
    invoke-virtual {v1, v4, v8, v0}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(ILandroid/util/ArrayMap;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_a
    :goto_3
    const-string v0, "Cleaning up stopped packages file "

    .line 246
    .line 247
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 248
    .line 249
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    const/4 v4, 0x4

    .line 254
    const/4 v5, 0x0

    .line 255
    if-eqz v3, :cond_b

    .line 256
    .line 257
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    .line 258
    .line 259
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 260
    .line 261
    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    .line 263
    .line 264
    :try_start_2
    const-string v8, "Reading from backup stopped packages file\n"

    .line 265
    .line 266
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v8, "Need to read from backup stopped packages file"

    .line 270
    .line 271
    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 272
    .line 273
    invoke-static {v4, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 277
    .line 278
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    if-eqz v8, :cond_c

    .line 283
    .line 284
    new-instance v8, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 290
    .line 291
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 304
    .line 305
    .line 306
    goto :goto_4

    .line 307
    :catch_0
    :cond_b
    move-object v3, v5

    .line 308
    :catch_1
    :cond_c
    :goto_4
    const/4 v0, 0x2

    .line 309
    const-string v8, "Error reading package manager stopped packages"

    .line 310
    .line 311
    const-string v11, "!@Error reading stopped packages: "

    .line 312
    .line 313
    const-string v12, "Error reading: "

    .line 314
    .line 315
    if-nez v3, :cond_e

    .line 316
    .line 317
    :try_start_3
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 318
    .line 319
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    if-nez v3, :cond_d

    .line 324
    .line 325
    const-string v3, "No stopped packages file found\n"

    .line 326
    .line 327
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v3, "No stopped packages file file; assuming all started"

    .line 331
    .line 332
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 333
    .line 334
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 338
    .line 339
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    if-eqz v5, :cond_18

    .line 352
    .line 353
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 358
    .line 359
    const/4 v13, 0x0

    .line 360
    invoke-virtual {v5, v13}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 361
    .line 362
    .line 363
    move-result-object v14

    .line 364
    invoke-virtual {v14, v0, v13}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v14}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v5, v13}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 374
    .line 375
    .line 376
    move-result-object v14

    .line 377
    invoke-virtual {v14, v4, v13}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v14}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 384
    .line 385
    .line 386
    goto :goto_5

    .line 387
    :catch_2
    move-exception v0

    .line 388
    goto/16 :goto_a

    .line 389
    .line 390
    :catch_3
    move-exception v0

    .line 391
    goto/16 :goto_b

    .line 392
    .line 393
    :cond_d
    new-instance v3, Ljava/io/FileInputStream;

    .line 394
    .line 395
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 396
    .line 397
    invoke-direct {v3, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 398
    .line 399
    .line 400
    :cond_e
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 401
    .line 402
    .line 403
    move-result-object v13

    .line 404
    :goto_6
    invoke-interface {v13}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 405
    .line 406
    .line 407
    move-result v14

    .line 408
    if-eq v14, v0, :cond_f

    .line 409
    .line 410
    if-eq v14, v2, :cond_f

    .line 411
    .line 412
    goto :goto_6

    .line 413
    :cond_f
    if-eq v14, v0, :cond_10

    .line 414
    .line 415
    const-string v0, "No start tag found in stopped packages file\n"

    .line 416
    .line 417
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v0, "No start tag found in package manager stopped packages"

    .line 421
    .line 422
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 423
    .line 424
    const/4 v3, 0x5

    .line 425
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_c

    .line 429
    .line 430
    :cond_10
    invoke-interface {v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 431
    .line 432
    .line 433
    move-result v14

    .line 434
    :goto_7
    invoke-interface {v13}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 435
    .line 436
    .line 437
    move-result v15

    .line 438
    if-eq v15, v2, :cond_17

    .line 439
    .line 440
    const/4 v6, 0x3

    .line 441
    if-ne v15, v6, :cond_11

    .line 442
    .line 443
    invoke-interface {v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-le v0, v14, :cond_17

    .line 448
    .line 449
    :cond_11
    if-eq v15, v6, :cond_12

    .line 450
    .line 451
    if-ne v15, v4, :cond_13

    .line 452
    .line 453
    :cond_12
    :goto_8
    const/4 v0, 0x2

    .line 454
    const/4 v6, 0x6

    .line 455
    goto :goto_7

    .line 456
    :cond_13
    invoke-interface {v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    const-string/jumbo v6, "pkg"

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    if-eqz v0, :cond_16

    .line 468
    .line 469
    const-string/jumbo v0, "name"

    .line 470
    .line 471
    .line 472
    invoke-interface {v13, v5, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 477
    .line 478
    iget-object v6, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 479
    .line 480
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 485
    .line 486
    if-eqz v6, :cond_14

    .line 487
    .line 488
    const/4 v15, 0x0

    .line 489
    invoke-virtual {v6, v15}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    const/4 v15, 0x2

    .line 494
    invoke-virtual {v0, v15, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 501
    .line 502
    .line 503
    const-string v0, "1"

    .line 504
    .line 505
    const-string/jumbo v15, "nl"

    .line 506
    .line 507
    .line 508
    invoke-interface {v13, v5, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v15

    .line 512
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-eqz v0, :cond_15

    .line 517
    .line 518
    const/4 v15, 0x0

    .line 519
    invoke-virtual {v6, v15}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual {v0, v4, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 530
    .line 531
    .line 532
    goto :goto_9

    .line 533
    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    .line 537
    .line 538
    const-string v15, "No package known for stopped package "

    .line 539
    .line 540
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    :cond_15
    :goto_9
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 554
    .line 555
    .line 556
    goto :goto_8

    .line 557
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .line 561
    .line 562
    const-string v6, "Unknown element under <stopped-packages>: "

    .line 563
    .line 564
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-interface {v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v6

    .line 571
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 582
    .line 583
    .line 584
    goto/16 :goto_8

    .line 585
    .line 586
    :cond_17
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 587
    .line 588
    .line 589
    goto :goto_c

    .line 590
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 591
    .line 592
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v4

    .line 599
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 622
    .line 623
    const/4 v4, 0x6

    .line 624
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 625
    .line 626
    .line 627
    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    .line 629
    .line 630
    goto :goto_c

    .line 631
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 632
    .line 633
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v4

    .line 640
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    new-instance v3, Ljava/lang/StringBuilder;

    .line 651
    .line 652
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 663
    .line 664
    const/4 v4, 0x6

    .line 665
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    .line 670
    .line 671
    :cond_18
    :goto_c
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 672
    .line 673
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 674
    .line 675
    .line 676
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 677
    .line 678
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 679
    .line 680
    .line 681
    const/4 v3, 0x0

    .line 682
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    .line 683
    .line 684
    .line 685
    :cond_19
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 690
    .line 691
    .line 692
    move-result v3

    .line 693
    if-eqz v3, :cond_1a

    .line 694
    .line 695
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v3

    .line 699
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 700
    .line 701
    iget v11, v3, Landroid/content/pm/UserInfo;->id:I

    .line 702
    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    .line 704
    .line 705
    .line 706
    move-result-object v12

    .line 707
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 708
    .line 709
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 710
    .line 711
    new-instance v15, Ljava/io/File;

    .line 712
    .line 713
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    .line 714
    .line 715
    .line 716
    move-result-object v3

    .line 717
    const-string/jumbo v4, "runtime-permissions.xml"

    .line 718
    .line 719
    .line 720
    invoke-direct {v15, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 724
    .line 725
    iget-object v14, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 726
    .line 727
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSync(ILcom/android/server/pm/Settings$VersionInfo;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Ljava/io/File;)V

    .line 728
    .line 729
    .line 730
    goto :goto_d

    .line 731
    :cond_1a
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 732
    .line 733
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    :cond_1b
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 742
    .line 743
    .line 744
    move-result v3

    .line 745
    if-eqz v3, :cond_1c

    .line 746
    .line 747
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v3

    .line 751
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 752
    .line 753
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 754
    .line 755
    invoke-virtual {v1, v4}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    .line 756
    .line 757
    .line 758
    move-result-object v4

    .line 759
    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    .line 760
    .line 761
    if-eqz v5, :cond_1b

    .line 762
    .line 763
    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 764
    .line 765
    iget-object v5, v4, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 766
    .line 767
    invoke-virtual {v5, v3}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    iget v4, v4, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 771
    .line 772
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    .line 773
    .line 774
    .line 775
    goto :goto_e

    .line 776
    :cond_1c
    const-string v0, "Read completed successfully: "

    .line 777
    .line 778
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 782
    .line 783
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 784
    .line 785
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 786
    .line 787
    .line 788
    move-result v0

    .line 789
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    const-string v0, " packages, "

    .line 793
    .line 794
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 798
    .line 799
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 800
    .line 801
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 802
    .line 803
    .line 804
    move-result v0

    .line 805
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    const-string v0, " shared uids\n"

    .line 809
    .line 810
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 814
    .line 815
    .line 816
    return v2

    .line 817
    :catchall_0
    move-exception v0

    .line 818
    move-object v2, v0

    .line 819
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 820
    .line 821
    iget-object v8, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 822
    .line 823
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v8

    .line 827
    if-nez v8, :cond_1d

    .line 828
    .line 829
    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    .line 831
    .line 832
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 837
    .line 838
    .line 839
    :cond_1d
    iget-object v0, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 840
    .line 841
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    move-result v0

    .line 845
    if-nez v0, :cond_1e

    .line 846
    .line 847
    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    .line 849
    .line 850
    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 855
    .line 856
    .line 857
    :cond_1e
    throw v2
.end method

.method public final readPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/List;Landroid/util/ArrayMap;)V
    .locals 73

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move-object/from16 v11, p2

    .line 6
    .line 7
    move-object/from16 v12, p3

    .line 8
    .line 9
    const-string v15, "Failure adding appId "

    .line 10
    .line 11
    const-string v1, "Error in package manager settings: package "

    .line 12
    .line 13
    const-string v2, "Error in package manager settings: package "

    .line 14
    .line 15
    const-string v3, "Error in package manager settings: <package> has no codePath at "

    .line 16
    .line 17
    const-string v4, "Error in package manager settings: <package> has no name at "

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    :try_start_0
    const-string/jumbo v14, "name"

    .line 22
    .line 23
    .line 24
    invoke-interface {v10, v6, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_30

    .line 28
    :try_start_1
    const-string/jumbo v5, "realName"

    .line 29
    .line 30
    .line 31
    invoke-interface {v10, v6, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const-string/jumbo v7, "userId"

    .line 36
    .line 37
    .line 38
    invoke-interface {v10, v6, v7, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2f

    .line 42
    :try_start_2
    const-string v7, "isSdkLibrary"

    .line 43
    .line 44
    invoke-interface {v10, v6, v7, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v22

    .line 48
    const-string/jumbo v7, "sharedUserId"

    .line 49
    .line 50
    .line 51
    invoke-interface {v10, v6, v7, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    const-string v13, "codePath"

    .line 56
    .line 57
    invoke-interface {v10, v6, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v13

    .line 61
    const-string/jumbo v9, "requiredCpuAbi"

    .line 62
    .line 63
    .line 64
    invoke-interface {v10, v6, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    const-string/jumbo v12, "nativeLibraryPath"

    .line 69
    .line 70
    .line 71
    invoke-interface {v10, v6, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2e

    .line 75
    :try_start_3
    const-string/jumbo v11, "primaryCpuAbi"

    .line 76
    .line 77
    .line 78
    invoke-interface {v10, v6, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v11
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2d

    .line 82
    move-object/from16 v25, v15

    .line 83
    .line 84
    :try_start_4
    const-string/jumbo v15, "secondaryCpuAbi"

    .line 85
    .line 86
    .line 87
    invoke-interface {v10, v6, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v15
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2c

    .line 91
    move-object/from16 v26, v1

    .line 92
    .line 93
    :try_start_5
    const-string v1, "cpuAbiOverride"

    .line 94
    .line 95
    invoke-interface {v10, v6, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    move-object/from16 v27, v2

    .line 100
    .line 101
    const-string/jumbo v2, "updateAvailable"

    .line 102
    .line 103
    .line 104
    move-object/from16 v28, v1

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-interface {v10, v6, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 108
    .line 109
    .line 110
    move-result v29
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2b

    .line 111
    :try_start_6
    const-string v2, "forceQueryable"

    .line 112
    .line 113
    invoke-interface {v10, v6, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 114
    .line 115
    .line 116
    move-result v30
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2a

    .line 117
    :try_start_7
    const-string/jumbo v2, "pendingRestore"

    .line 118
    .line 119
    .line 120
    invoke-interface {v10, v6, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 121
    .line 122
    .line 123
    move-result v31
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_29

    .line 124
    :try_start_8
    const-string v2, "debuggable"

    .line 125
    .line 126
    invoke-interface {v10, v6, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 127
    .line 128
    .line 129
    move-result v32
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_28

    .line 130
    :try_start_9
    const-string v1, "loadingProgress"
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_27

    .line 131
    .line 132
    const/4 v2, 0x0

    .line 133
    :try_start_a
    invoke-interface {v10, v6, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 134
    .line 135
    .line 136
    move-result v23
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_26

    .line 137
    :try_start_b
    const-string v1, "loadingCompletedTime"
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_25

    .line 138
    .line 139
    move/from16 v34, v7

    .line 140
    .line 141
    move/from16 v33, v8

    .line 142
    .line 143
    const-wide/16 v7, 0x0

    .line 144
    .line 145
    :try_start_c
    invoke-interface {v10, v6, v1, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    .line 146
    .line 147
    .line 148
    move-result-wide v35
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_24

    .line 149
    if-nez v11, :cond_0

    .line 150
    .line 151
    if-eqz v9, :cond_0

    .line 152
    .line 153
    move-object v11, v9

    .line 154
    :cond_0
    :try_start_d
    const-string/jumbo v1, "version"

    .line 155
    .line 156
    .line 157
    invoke-interface {v10, v6, v1, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 158
    .line 159
    .line 160
    move-result-wide v1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_23

    .line 161
    :try_start_e
    const-string/jumbo v7, "targetSdkVersion"

    .line 162
    .line 163
    .line 164
    const/4 v8, 0x0

    .line 165
    invoke-interface {v10, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 166
    .line 167
    .line 168
    move-result v37
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_22

    .line 169
    :try_start_f
    const-string/jumbo v7, "restrictUpdateHash"

    .line 170
    .line 171
    .line 172
    invoke-interface {v10, v6, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B

    .line 173
    .line 174
    .line 175
    move-result-object v38
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_21

    .line 176
    :try_start_10
    const-string v7, "installer"

    .line 177
    .line 178
    invoke-interface {v10, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v39
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_20

    .line 182
    :try_start_11
    const-string v7, "installerUid"

    .line 183
    .line 184
    const/4 v8, -0x1

    .line 185
    invoke-interface {v10, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v40
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_1f

    .line 189
    :try_start_12
    const-string/jumbo v7, "updateOwner"

    .line 190
    .line 191
    .line 192
    invoke-interface {v10, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v41
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_1e

    .line 196
    :try_start_13
    const-string v7, "installerAttributionTag"

    .line 197
    .line 198
    invoke-interface {v10, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v42
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_1d

    .line 202
    :try_start_14
    const-string/jumbo v7, "packageSource"

    .line 203
    .line 204
    .line 205
    const/4 v8, 0x0

    .line 206
    invoke-interface {v10, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 207
    .line 208
    .line 209
    move-result v43
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_1c

    .line 210
    :try_start_15
    const-string v7, "isOrphaned"

    .line 211
    .line 212
    invoke-interface {v10, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 213
    .line 214
    .line 215
    move-result v44
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_1b

    .line 216
    :try_start_16
    const-string v7, "installInitiator"

    .line 217
    .line 218
    invoke-interface {v10, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v45
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_1a

    .line 222
    :try_start_17
    const-string v7, "installOriginator"

    .line 223
    .line 224
    invoke-interface {v10, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v46
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_19

    .line 228
    :try_start_18
    const-string v7, "installInitiatorUninstalled"

    .line 229
    .line 230
    const/4 v8, 0x0

    .line 231
    invoke-interface {v10, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 232
    .line 233
    .line 234
    move-result v47
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_18

    .line 235
    :try_start_19
    const-string/jumbo v7, "volumeUuid"

    .line 236
    .line 237
    .line 238
    invoke-interface {v10, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v48
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_17

    .line 242
    :try_start_1a
    const-string v7, "categoryHint"

    .line 243
    .line 244
    const/4 v8, -0x1

    .line 245
    invoke-interface {v10, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 246
    .line 247
    .line 248
    move-result v49
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_16

    .line 249
    :try_start_1b
    const-string v7, "appMetadataFilePath"

    .line 250
    .line 251
    invoke-interface {v10, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v50
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_15

    .line 255
    :try_start_1c
    const-string v7, "appMetadataSource"

    .line 256
    .line 257
    const/4 v9, 0x0

    .line 258
    invoke-interface {v10, v6, v7, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 259
    .line 260
    .line 261
    move-result v24
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_14

    .line 262
    :try_start_1d
    const-string v7, "baseRevisionCode"

    .line 263
    .line 264
    invoke-interface {v10, v6, v7, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 265
    .line 266
    .line 267
    move-result v51
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_13

    .line 268
    :try_start_1e
    const-string/jumbo v7, "scannedAsStoppedSystemApp"

    .line 269
    .line 270
    .line 271
    invoke-interface {v10, v6, v7, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 272
    .line 273
    .line 274
    move-result v52
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_12

    .line 275
    :try_start_1f
    const-string v7, "domainSetId"

    .line 276
    .line 277
    invoke-interface {v10, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 282
    .line 283
    .line 284
    move-result v8
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_11

    .line 285
    if-eqz v8, :cond_1

    .line 286
    .line 287
    :try_start_20
    iget-object v7, v0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 288
    .line 289
    check-cast v7, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 290
    .line 291
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 295
    .line 296
    .line 297
    move-result-object v7
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_0

    .line 298
    :goto_0
    move-object/from16 v59, v7

    .line 299
    .line 300
    goto :goto_1

    .line 301
    :catch_0
    move-object v2, v6

    .line 302
    move-object v6, v14

    .line 303
    move/from16 v13, v23

    .line 304
    .line 305
    move/from16 v9, v33

    .line 306
    .line 307
    move/from16 v5, v40

    .line 308
    .line 309
    const/4 v0, 0x5

    .line 310
    const-wide/16 v7, 0x0

    .line 311
    .line 312
    const-wide/16 v27, 0x0

    .line 313
    .line 314
    goto/16 :goto_31

    .line 315
    .line 316
    :cond_1
    :try_start_21
    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    goto :goto_0

    .line 321
    :goto_1
    const-string/jumbo v7, "publicFlags"

    .line 322
    .line 323
    .line 324
    invoke-interface {v10, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v7
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_11

    .line 328
    if-eqz v7, :cond_3

    .line 329
    .line 330
    :try_start_22
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    move-result v7
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_1

    .line 334
    goto :goto_2

    .line 335
    :catch_1
    move v7, v9

    .line 336
    :goto_2
    :try_start_23
    const-string/jumbo v8, "privateFlags"

    .line 337
    .line 338
    .line 339
    invoke-interface {v10, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v8
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_0

    .line 343
    if-eqz v8, :cond_2

    .line 344
    .line 345
    :try_start_24
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    move-result v8
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_2

    .line 349
    :goto_3
    move/from16 v57, v7

    .line 350
    .line 351
    move/from16 v58, v8

    .line 352
    .line 353
    goto :goto_7

    .line 354
    :catch_2
    :cond_2
    :goto_4
    move/from16 v57, v7

    .line 355
    .line 356
    move/from16 v58, v9

    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_3
    :try_start_25
    const-string v7, "flags"

    .line 360
    .line 361
    invoke-interface {v10, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v7
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_11

    .line 365
    if-eqz v7, :cond_7

    .line 366
    .line 367
    :try_start_26
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    move-result v7
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_3

    .line 371
    goto :goto_5

    .line 372
    :catch_3
    move v7, v9

    .line 373
    :goto_5
    const/high16 v8, 0x8000000

    .line 374
    .line 375
    and-int/2addr v8, v7

    .line 376
    if-eqz v8, :cond_4

    .line 377
    .line 378
    const/4 v8, 0x1

    .line 379
    goto :goto_6

    .line 380
    :cond_4
    move v8, v9

    .line 381
    :goto_6
    const/high16 v53, 0x10000000

    .line 382
    .line 383
    and-int v53, v7, v53

    .line 384
    .line 385
    if-eqz v53, :cond_5

    .line 386
    .line 387
    const/16 v18, 0x2

    .line 388
    .line 389
    or-int/lit8 v8, v8, 0x2

    .line 390
    .line 391
    :cond_5
    const/high16 v53, 0x40000000    # 2.0f

    .line 392
    .line 393
    and-int v53, v7, v53

    .line 394
    .line 395
    if-eqz v53, :cond_6

    .line 396
    .line 397
    const/16 v17, 0x8

    .line 398
    .line 399
    or-int/lit8 v8, v8, 0x8

    .line 400
    .line 401
    :cond_6
    const v53, -0x58000001

    .line 402
    .line 403
    .line 404
    and-int v7, v7, v53

    .line 405
    .line 406
    goto :goto_3

    .line 407
    :cond_7
    :try_start_27
    const-string/jumbo v7, "system"

    .line 408
    .line 409
    .line 410
    invoke-interface {v10, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v7
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_27} :catch_11

    .line 414
    if-eqz v7, :cond_8

    .line 415
    .line 416
    :try_start_28
    const-string/jumbo v8, "true"

    .line 417
    .line 418
    .line 419
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 420
    .line 421
    .line 422
    move-result v7
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_28} :catch_0

    .line 423
    goto :goto_4

    .line 424
    :cond_8
    move/from16 v58, v9

    .line 425
    .line 426
    const/16 v57, 0x1

    .line 427
    .line 428
    :goto_7
    :try_start_29
    const-string v7, "ft"
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_29} :catch_11

    .line 429
    .line 430
    const-wide/16 v8, 0x0

    .line 431
    .line 432
    :try_start_2a
    invoke-interface {v10, v6, v7, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    .line 433
    .line 434
    .line 435
    move-result-wide v20
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2a} :catch_10

    .line 436
    cmp-long v7, v20, v8

    .line 437
    .line 438
    if-nez v7, :cond_9

    .line 439
    .line 440
    :try_start_2b
    const-string/jumbo v7, "ts"

    .line 441
    .line 442
    .line 443
    invoke-interface {v10, v6, v7, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 444
    .line 445
    .line 446
    move-result-wide v20
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2b} :catch_4

    .line 447
    :cond_9
    move-wide/from16 v60, v20

    .line 448
    .line 449
    goto :goto_8

    .line 450
    :catch_4
    move-object v2, v6

    .line 451
    move-wide/from16 v27, v8

    .line 452
    .line 453
    move-object v6, v14

    .line 454
    move/from16 v13, v23

    .line 455
    .line 456
    move/from16 v5, v40

    .line 457
    .line 458
    const/4 v0, 0x5

    .line 459
    move-wide/from16 v7, v27

    .line 460
    .line 461
    move/from16 v9, v33

    .line 462
    .line 463
    goto/16 :goto_31

    .line 464
    .line 465
    :goto_8
    :try_start_2c
    const-string v7, "it"

    .line 466
    .line 467
    invoke-interface {v10, v6, v7, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    .line 468
    .line 469
    .line 470
    move-result-wide v20
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2c} :catch_10

    .line 471
    :try_start_2d
    const-string/jumbo v7, "ut"

    .line 472
    .line 473
    .line 474
    move-wide/from16 v62, v1

    .line 475
    .line 476
    invoke-interface {v10, v6, v7, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    .line 477
    .line 478
    .line 479
    move-result-wide v0
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_2d} :catch_f

    .line 480
    if-eqz v5, :cond_a

    .line 481
    .line 482
    :try_start_2e
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    move-object/from16 v55, v2

    .line 487
    .line 488
    goto :goto_9

    .line 489
    :catch_5
    move-object v2, v6

    .line 490
    move-wide/from16 v27, v8

    .line 491
    .line 492
    move-object v6, v14

    .line 493
    move-wide/from16 v7, v20

    .line 494
    .line 495
    move/from16 v13, v23

    .line 496
    .line 497
    move/from16 v9, v33

    .line 498
    .line 499
    move/from16 v5, v40

    .line 500
    .line 501
    const/4 v0, 0x5

    .line 502
    goto/16 :goto_31

    .line 503
    .line 504
    :cond_a
    move-object/from16 v55, v5

    .line 505
    .line 506
    :goto_9
    if-nez v14, :cond_b

    .line 507
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 525
    .line 526
    const/4 v1, 0x5

    .line 527
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 528
    .line 529
    .line 530
    :goto_a
    move-object/from16 v0, p0

    .line 531
    .line 532
    const/4 v4, 0x5

    .line 533
    const/4 v5, -0x1

    .line 534
    goto/16 :goto_e

    .line 535
    .line 536
    :cond_b
    if-nez v13, :cond_c

    .line 537
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    .line 539
    .line 540
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 555
    .line 556
    const/4 v1, 0x5

    .line 557
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_2e} :catch_5

    .line 558
    .line 559
    .line 560
    goto :goto_a

    .line 561
    :cond_c
    if-gtz v33, :cond_10

    .line 562
    .line 563
    move/from16 v7, v33

    .line 564
    .line 565
    const/4 v5, -0x1

    .line 566
    if-ne v7, v5, :cond_d

    .line 567
    .line 568
    if-eqz v22, :cond_d

    .line 569
    .line 570
    :try_start_2f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->disallowSdkLibsToBeApps()Z

    .line 571
    .line 572
    .line 573
    move-result v2
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_2f} :catch_6

    .line 574
    if-eqz v2, :cond_d

    .line 575
    .line 576
    move-wide/from16 v66, v0

    .line 577
    .line 578
    move-object/from16 v3, v28

    .line 579
    .line 580
    move-wide/from16 v64, v60

    .line 581
    .line 582
    move-wide/from16 v1, v62

    .line 583
    .line 584
    const/4 v4, 0x5

    .line 585
    :goto_b
    move-object/from16 v0, p0

    .line 586
    .line 587
    goto/16 :goto_f

    .line 588
    .line 589
    :catch_6
    :goto_c
    move-object v2, v6

    .line 590
    :catch_7
    move-wide/from16 v27, v8

    .line 591
    .line 592
    move-object v6, v14

    .line 593
    move/from16 v13, v23

    .line 594
    .line 595
    move/from16 v5, v40

    .line 596
    .line 597
    const/4 v0, 0x5

    .line 598
    :goto_d
    move v9, v7

    .line 599
    move-wide/from16 v7, v20

    .line 600
    .line 601
    goto/16 :goto_31

    .line 602
    .line 603
    :cond_d
    if-eqz v34, :cond_f

    .line 604
    .line 605
    if-lez v34, :cond_e

    .line 606
    .line 607
    :try_start_30
    new-instance v2, Lcom/android/server/pm/PackageSetting;

    .line 608
    .line 609
    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v54

    .line 613
    new-instance v3, Ljava/io/File;

    .line 614
    .line 615
    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    move-object/from16 v53, v2

    .line 619
    .line 620
    move-object/from16 v56, v3

    .line 621
    .line 622
    invoke-direct/range {v53 .. v59}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    .line 623
    .line 624
    .line 625
    iput-object v12, v2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 626
    .line 627
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 628
    .line 629
    .line 630
    iput-object v11, v2, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 631
    .line 632
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 633
    .line 634
    .line 635
    iput-object v15, v2, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 636
    .line 637
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 638
    .line 639
    .line 640
    move-object/from16 v3, v28

    .line 641
    .line 642
    iput-object v3, v2, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 643
    .line 644
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 645
    .line 646
    .line 647
    move-wide/from16 v3, v62

    .line 648
    .line 649
    iput-wide v3, v2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 650
    .line 651
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 652
    .line 653
    .line 654
    move/from16 v3, v34

    .line 655
    .line 656
    iput v3, v2, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 657
    .line 658
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 659
    .line 660
    .line 661
    move-wide/from16 v3, v60

    .line 662
    .line 663
    iput-wide v3, v2, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 664
    .line 665
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 666
    .line 667
    .line 668
    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 669
    .line 670
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_30} :catch_8

    .line 671
    .line 672
    .line 673
    move-object/from16 v0, p0

    .line 674
    .line 675
    :try_start_31
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 676
    .line 677
    iget-object v3, v1, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 678
    .line 679
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v1, v1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_31} :catch_7

    .line 686
    .line 687
    .line 688
    move-object v6, v2

    .line 689
    move-wide/from16 v27, v8

    .line 690
    .line 691
    move-object/from16 v19, v14

    .line 692
    .line 693
    const/4 v0, 0x5

    .line 694
    goto/16 :goto_10

    .line 695
    .line 696
    :catch_8
    move-object/from16 v0, p0

    .line 697
    .line 698
    goto :goto_c

    .line 699
    :cond_e
    move-object/from16 v0, p0

    .line 700
    .line 701
    move/from16 v3, v34

    .line 702
    .line 703
    :try_start_32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 704
    .line 705
    move-object/from16 v2, v27

    .line 706
    .line 707
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    const-string v2, " has bad sharedUserAppId "

    .line 714
    .line 715
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    const-string v2, " at "

    .line 722
    .line 723
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 738
    .line 739
    const/4 v2, 0x5

    .line 740
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 741
    .line 742
    .line 743
    const/4 v4, 0x5

    .line 744
    goto :goto_e

    .line 745
    :cond_f
    move-object/from16 v0, p0

    .line 746
    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    .line 748
    .line 749
    move-object/from16 v2, v26

    .line 750
    .line 751
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    const-string v2, " has bad appId "

    .line 758
    .line 759
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    const-string v2, " at "

    .line 766
    .line 767
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v1
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_32} :catch_6

    .line 781
    :try_start_33
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_33} :catch_9

    .line 782
    .line 783
    const/4 v4, 0x5

    .line 784
    :try_start_34
    invoke-static {v4, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_34} :catch_a

    .line 785
    .line 786
    .line 787
    :goto_e
    move v0, v4

    .line 788
    move-wide/from16 v27, v8

    .line 789
    .line 790
    move-object/from16 v19, v14

    .line 791
    .line 792
    goto/16 :goto_10

    .line 793
    .line 794
    :catch_9
    const/4 v4, 0x5

    .line 795
    :catch_a
    move v0, v4

    .line 796
    move-object v2, v6

    .line 797
    move-wide/from16 v27, v8

    .line 798
    .line 799
    move-object v6, v14

    .line 800
    move/from16 v13, v23

    .line 801
    .line 802
    move/from16 v5, v40

    .line 803
    .line 804
    goto/16 :goto_d

    .line 805
    .line 806
    :cond_10
    move-wide/from16 v66, v0

    .line 807
    .line 808
    move-object/from16 v3, v28

    .line 809
    .line 810
    move/from16 v7, v33

    .line 811
    .line 812
    move-wide/from16 v64, v60

    .line 813
    .line 814
    move-wide/from16 v1, v62

    .line 815
    .line 816
    const/4 v4, 0x5

    .line 817
    const/4 v5, -0x1

    .line 818
    goto/16 :goto_b

    .line 819
    .line 820
    :goto_f
    :try_start_35
    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v16
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_35} :catch_e

    .line 824
    :try_start_36
    new-instance v4, Ljava/io/File;

    .line 825
    .line 826
    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_36} :catch_d

    .line 827
    .line 828
    .line 829
    move-object v13, v3

    .line 830
    move-wide v2, v1

    .line 831
    move-object/from16 v1, p0

    .line 832
    .line 833
    move-wide/from16 v68, v2

    .line 834
    .line 835
    move-object/from16 v2, v16

    .line 836
    .line 837
    move-object/from16 v3, v55

    .line 838
    .line 839
    const/16 v16, 0x5

    .line 840
    .line 841
    move-object/from16 v19, v14

    .line 842
    .line 843
    move v14, v5

    .line 844
    move v5, v7

    .line 845
    move-object v14, v6

    .line 846
    move/from16 v6, v57

    .line 847
    .line 848
    move-wide/from16 v27, v8

    .line 849
    .line 850
    move/from16 v9, v16

    .line 851
    .line 852
    move v8, v7

    .line 853
    move/from16 v7, v58

    .line 854
    .line 855
    move v14, v8

    .line 856
    move-object/from16 v8, v59

    .line 857
    .line 858
    move v0, v9

    .line 859
    move/from16 v9, v22

    .line 860
    .line 861
    :try_start_37
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IIILjava/util/UUID;Z)Lcom/android/server/pm/PackageSetting;

    .line 862
    .line 863
    .line 864
    move-result-object v6
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_37} :catch_c

    .line 865
    if-nez v6, :cond_11

    .line 866
    .line 867
    :try_start_38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 868
    .line 869
    move-object/from16 v2, v25

    .line 870
    .line 871
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    const-string v2, " while parsing settings at "

    .line 878
    .line 879
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v1

    .line 893
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 894
    .line 895
    const/4 v2, 0x6

    .line 896
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 897
    .line 898
    .line 899
    goto :goto_10

    .line 900
    :catch_b
    move-object v2, v6

    .line 901
    move v9, v14

    .line 902
    move-object/from16 v6, v19

    .line 903
    .line 904
    move-wide/from16 v7, v20

    .line 905
    .line 906
    move/from16 v13, v23

    .line 907
    .line 908
    move/from16 v5, v40

    .line 909
    .line 910
    goto/16 :goto_31

    .line 911
    .line 912
    :cond_11
    iput-object v12, v6, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 913
    .line 914
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 915
    .line 916
    .line 917
    iput-object v11, v6, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 918
    .line 919
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 920
    .line 921
    .line 922
    iput-object v15, v6, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 923
    .line 924
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 925
    .line 926
    .line 927
    iput-object v13, v6, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 928
    .line 929
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 930
    .line 931
    .line 932
    move-wide/from16 v1, v68

    .line 933
    .line 934
    iput-wide v1, v6, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 935
    .line 936
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 937
    .line 938
    .line 939
    move-wide/from16 v1, v64

    .line 940
    .line 941
    iput-wide v1, v6, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 942
    .line 943
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 944
    .line 945
    .line 946
    move-wide/from16 v1, v66

    .line 947
    .line 948
    invoke-virtual {v6, v1, v2}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_38} :catch_b

    .line 949
    .line 950
    .line 951
    :goto_10
    move/from16 v13, v23

    .line 952
    .line 953
    move/from16 v1, v24

    .line 954
    .line 955
    move/from16 v2, v29

    .line 956
    .line 957
    move/from16 v3, v30

    .line 958
    .line 959
    move/from16 v4, v31

    .line 960
    .line 961
    move/from16 v5, v32

    .line 962
    .line 963
    move-wide/from16 v7, v35

    .line 964
    .line 965
    move/from16 v9, v37

    .line 966
    .line 967
    move-object/from16 v22, v38

    .line 968
    .line 969
    move-object/from16 v31, v39

    .line 970
    .line 971
    move/from16 v32, v40

    .line 972
    .line 973
    move-object/from16 v33, v41

    .line 974
    .line 975
    move-object/from16 v34, v42

    .line 976
    .line 977
    move/from16 v35, v43

    .line 978
    .line 979
    move/from16 v36, v44

    .line 980
    .line 981
    move-object/from16 v29, v45

    .line 982
    .line 983
    move-object/from16 v30, v46

    .line 984
    .line 985
    move/from16 v37, v47

    .line 986
    .line 987
    move-object/from16 v14, v48

    .line 988
    .line 989
    move/from16 v10, v49

    .line 990
    .line 991
    move-object/from16 v0, v50

    .line 992
    .line 993
    move/from16 v70, v51

    .line 994
    .line 995
    move/from16 v71, v52

    .line 996
    .line 997
    goto/16 :goto_32

    .line 998
    .line 999
    :catch_c
    :goto_11
    move v9, v14

    .line 1000
    move-object/from16 v6, v19

    .line 1001
    .line 1002
    move-wide/from16 v7, v20

    .line 1003
    .line 1004
    move/from16 v13, v23

    .line 1005
    .line 1006
    :goto_12
    move/from16 v5, v40

    .line 1007
    .line 1008
    const/4 v2, 0x0

    .line 1009
    goto/16 :goto_31

    .line 1010
    .line 1011
    :catch_d
    move-wide/from16 v27, v8

    .line 1012
    .line 1013
    move-object/from16 v19, v14

    .line 1014
    .line 1015
    const/4 v0, 0x5

    .line 1016
    :goto_13
    move v14, v7

    .line 1017
    goto :goto_11

    .line 1018
    :catch_e
    move v0, v4

    .line 1019
    move-wide/from16 v27, v8

    .line 1020
    .line 1021
    move-object/from16 v19, v14

    .line 1022
    .line 1023
    goto :goto_13

    .line 1024
    :catch_f
    move-wide/from16 v27, v8

    .line 1025
    .line 1026
    move-object/from16 v19, v14

    .line 1027
    .line 1028
    move/from16 v14, v33

    .line 1029
    .line 1030
    const/4 v0, 0x5

    .line 1031
    goto :goto_11

    .line 1032
    :catch_10
    move-wide/from16 v27, v8

    .line 1033
    .line 1034
    move-object/from16 v19, v14

    .line 1035
    .line 1036
    move/from16 v14, v33

    .line 1037
    .line 1038
    const/4 v0, 0x5

    .line 1039
    :goto_14
    move v9, v14

    .line 1040
    move-object/from16 v6, v19

    .line 1041
    .line 1042
    move/from16 v13, v23

    .line 1043
    .line 1044
    move-wide/from16 v7, v27

    .line 1045
    .line 1046
    goto :goto_12

    .line 1047
    :catch_11
    move-object/from16 v19, v14

    .line 1048
    .line 1049
    move/from16 v14, v33

    .line 1050
    .line 1051
    const/4 v0, 0x5

    .line 1052
    const-wide/16 v27, 0x0

    .line 1053
    .line 1054
    goto :goto_14

    .line 1055
    :catch_12
    move-object/from16 v19, v14

    .line 1056
    .line 1057
    move/from16 v14, v33

    .line 1058
    .line 1059
    const/4 v0, 0x5

    .line 1060
    const-wide/16 v27, 0x0

    .line 1061
    .line 1062
    move v9, v14

    .line 1063
    move-object/from16 v6, v19

    .line 1064
    .line 1065
    move/from16 v13, v23

    .line 1066
    .line 1067
    move-wide/from16 v7, v27

    .line 1068
    .line 1069
    move/from16 v5, v40

    .line 1070
    .line 1071
    const/4 v2, 0x0

    .line 1072
    :goto_15
    const/16 v52, 0x0

    .line 1073
    .line 1074
    goto/16 :goto_31

    .line 1075
    .line 1076
    :catch_13
    move-object/from16 v19, v14

    .line 1077
    .line 1078
    move/from16 v14, v33

    .line 1079
    .line 1080
    const/4 v0, 0x5

    .line 1081
    const-wide/16 v27, 0x0

    .line 1082
    .line 1083
    move v9, v14

    .line 1084
    move-object/from16 v6, v19

    .line 1085
    .line 1086
    move/from16 v13, v23

    .line 1087
    .line 1088
    move-wide/from16 v7, v27

    .line 1089
    .line 1090
    move/from16 v5, v40

    .line 1091
    .line 1092
    const/4 v2, 0x0

    .line 1093
    :goto_16
    const/16 v51, 0x0

    .line 1094
    .line 1095
    goto :goto_15

    .line 1096
    :catch_14
    move-object/from16 v19, v14

    .line 1097
    .line 1098
    move/from16 v14, v33

    .line 1099
    .line 1100
    const/4 v0, 0x5

    .line 1101
    const-wide/16 v27, 0x0

    .line 1102
    .line 1103
    move v9, v14

    .line 1104
    move-object/from16 v6, v19

    .line 1105
    .line 1106
    move/from16 v13, v23

    .line 1107
    .line 1108
    move-wide/from16 v7, v27

    .line 1109
    .line 1110
    move/from16 v5, v40

    .line 1111
    .line 1112
    const/4 v2, 0x0

    .line 1113
    const/16 v24, 0x0

    .line 1114
    .line 1115
    goto :goto_16

    .line 1116
    :catch_15
    move-object/from16 v19, v14

    .line 1117
    .line 1118
    move/from16 v14, v33

    .line 1119
    .line 1120
    const/4 v0, 0x5

    .line 1121
    const-wide/16 v27, 0x0

    .line 1122
    .line 1123
    move v9, v14

    .line 1124
    move-object/from16 v6, v19

    .line 1125
    .line 1126
    move/from16 v13, v23

    .line 1127
    .line 1128
    move-wide/from16 v7, v27

    .line 1129
    .line 1130
    move/from16 v5, v40

    .line 1131
    .line 1132
    const/4 v2, 0x0

    .line 1133
    const/16 v24, 0x0

    .line 1134
    .line 1135
    :goto_17
    const/16 v50, 0x0

    .line 1136
    .line 1137
    goto :goto_16

    .line 1138
    :catch_16
    move-object/from16 v19, v14

    .line 1139
    .line 1140
    move/from16 v14, v33

    .line 1141
    .line 1142
    const/4 v0, 0x5

    .line 1143
    const-wide/16 v27, 0x0

    .line 1144
    .line 1145
    move v9, v14

    .line 1146
    move-object/from16 v6, v19

    .line 1147
    .line 1148
    move/from16 v13, v23

    .line 1149
    .line 1150
    move-wide/from16 v7, v27

    .line 1151
    .line 1152
    move/from16 v5, v40

    .line 1153
    .line 1154
    const/4 v2, 0x0

    .line 1155
    const/16 v24, 0x0

    .line 1156
    .line 1157
    :goto_18
    const/16 v49, -0x1

    .line 1158
    .line 1159
    goto :goto_17

    .line 1160
    :catch_17
    move-object/from16 v19, v14

    .line 1161
    .line 1162
    move/from16 v14, v33

    .line 1163
    .line 1164
    const/4 v0, 0x5

    .line 1165
    const-wide/16 v27, 0x0

    .line 1166
    .line 1167
    move v9, v14

    .line 1168
    move-object/from16 v6, v19

    .line 1169
    .line 1170
    move/from16 v13, v23

    .line 1171
    .line 1172
    move-wide/from16 v7, v27

    .line 1173
    .line 1174
    move/from16 v5, v40

    .line 1175
    .line 1176
    const/4 v2, 0x0

    .line 1177
    const/16 v24, 0x0

    .line 1178
    .line 1179
    :goto_19
    const/16 v48, 0x0

    .line 1180
    .line 1181
    goto :goto_18

    .line 1182
    :catch_18
    move-object/from16 v19, v14

    .line 1183
    .line 1184
    move/from16 v14, v33

    .line 1185
    .line 1186
    const/4 v0, 0x5

    .line 1187
    const-wide/16 v27, 0x0

    .line 1188
    .line 1189
    move v9, v14

    .line 1190
    move-object/from16 v6, v19

    .line 1191
    .line 1192
    move/from16 v13, v23

    .line 1193
    .line 1194
    move-wide/from16 v7, v27

    .line 1195
    .line 1196
    move/from16 v5, v40

    .line 1197
    .line 1198
    const/4 v2, 0x0

    .line 1199
    const/16 v24, 0x0

    .line 1200
    .line 1201
    :goto_1a
    const/16 v47, 0x0

    .line 1202
    .line 1203
    goto :goto_19

    .line 1204
    :catch_19
    move-object/from16 v19, v14

    .line 1205
    .line 1206
    move/from16 v14, v33

    .line 1207
    .line 1208
    const/4 v0, 0x5

    .line 1209
    const-wide/16 v27, 0x0

    .line 1210
    .line 1211
    move v9, v14

    .line 1212
    move-object/from16 v6, v19

    .line 1213
    .line 1214
    move/from16 v13, v23

    .line 1215
    .line 1216
    move-wide/from16 v7, v27

    .line 1217
    .line 1218
    move/from16 v5, v40

    .line 1219
    .line 1220
    const/4 v2, 0x0

    .line 1221
    const/16 v24, 0x0

    .line 1222
    .line 1223
    :goto_1b
    const/16 v46, 0x0

    .line 1224
    .line 1225
    goto :goto_1a

    .line 1226
    :catch_1a
    move-object/from16 v19, v14

    .line 1227
    .line 1228
    move/from16 v14, v33

    .line 1229
    .line 1230
    const/4 v0, 0x5

    .line 1231
    const-wide/16 v27, 0x0

    .line 1232
    .line 1233
    move v9, v14

    .line 1234
    move-object/from16 v6, v19

    .line 1235
    .line 1236
    move/from16 v13, v23

    .line 1237
    .line 1238
    move-wide/from16 v7, v27

    .line 1239
    .line 1240
    move/from16 v5, v40

    .line 1241
    .line 1242
    const/4 v2, 0x0

    .line 1243
    const/16 v24, 0x0

    .line 1244
    .line 1245
    :goto_1c
    const/16 v45, 0x0

    .line 1246
    .line 1247
    goto :goto_1b

    .line 1248
    :catch_1b
    move-object/from16 v19, v14

    .line 1249
    .line 1250
    move/from16 v14, v33

    .line 1251
    .line 1252
    const/4 v0, 0x5

    .line 1253
    const-wide/16 v27, 0x0

    .line 1254
    .line 1255
    move v9, v14

    .line 1256
    move-object/from16 v6, v19

    .line 1257
    .line 1258
    move/from16 v13, v23

    .line 1259
    .line 1260
    move-wide/from16 v7, v27

    .line 1261
    .line 1262
    move/from16 v5, v40

    .line 1263
    .line 1264
    const/4 v2, 0x0

    .line 1265
    const/16 v24, 0x0

    .line 1266
    .line 1267
    :goto_1d
    const/16 v44, 0x0

    .line 1268
    .line 1269
    goto :goto_1c

    .line 1270
    :catch_1c
    move-object/from16 v19, v14

    .line 1271
    .line 1272
    move/from16 v14, v33

    .line 1273
    .line 1274
    const/4 v0, 0x5

    .line 1275
    const-wide/16 v27, 0x0

    .line 1276
    .line 1277
    move v9, v14

    .line 1278
    move-object/from16 v6, v19

    .line 1279
    .line 1280
    move/from16 v13, v23

    .line 1281
    .line 1282
    move-wide/from16 v7, v27

    .line 1283
    .line 1284
    move/from16 v5, v40

    .line 1285
    .line 1286
    const/4 v2, 0x0

    .line 1287
    const/16 v24, 0x0

    .line 1288
    .line 1289
    :goto_1e
    const/16 v43, 0x0

    .line 1290
    .line 1291
    goto :goto_1d

    .line 1292
    :catch_1d
    move-object/from16 v19, v14

    .line 1293
    .line 1294
    move/from16 v14, v33

    .line 1295
    .line 1296
    const/4 v0, 0x5

    .line 1297
    const-wide/16 v27, 0x0

    .line 1298
    .line 1299
    move v9, v14

    .line 1300
    move-object/from16 v6, v19

    .line 1301
    .line 1302
    move/from16 v13, v23

    .line 1303
    .line 1304
    move-wide/from16 v7, v27

    .line 1305
    .line 1306
    move/from16 v5, v40

    .line 1307
    .line 1308
    const/4 v2, 0x0

    .line 1309
    const/16 v24, 0x0

    .line 1310
    .line 1311
    :goto_1f
    const/16 v42, 0x0

    .line 1312
    .line 1313
    goto :goto_1e

    .line 1314
    :catch_1e
    move-object/from16 v19, v14

    .line 1315
    .line 1316
    move/from16 v14, v33

    .line 1317
    .line 1318
    const/4 v0, 0x5

    .line 1319
    const-wide/16 v27, 0x0

    .line 1320
    .line 1321
    move v9, v14

    .line 1322
    move-object/from16 v6, v19

    .line 1323
    .line 1324
    move/from16 v13, v23

    .line 1325
    .line 1326
    move-wide/from16 v7, v27

    .line 1327
    .line 1328
    move/from16 v5, v40

    .line 1329
    .line 1330
    const/4 v2, 0x0

    .line 1331
    :goto_20
    const/16 v24, 0x0

    .line 1332
    .line 1333
    :goto_21
    const/16 v41, 0x0

    .line 1334
    .line 1335
    goto :goto_1f

    .line 1336
    :catch_1f
    move-object/from16 v19, v14

    .line 1337
    .line 1338
    move/from16 v14, v33

    .line 1339
    .line 1340
    const/4 v0, 0x5

    .line 1341
    const-wide/16 v27, 0x0

    .line 1342
    .line 1343
    move v9, v14

    .line 1344
    move-object/from16 v6, v19

    .line 1345
    .line 1346
    move/from16 v13, v23

    .line 1347
    .line 1348
    move-wide/from16 v7, v27

    .line 1349
    .line 1350
    const/4 v2, 0x0

    .line 1351
    const/4 v5, -0x1

    .line 1352
    goto :goto_20

    .line 1353
    :catch_20
    move-object/from16 v19, v14

    .line 1354
    .line 1355
    move/from16 v14, v33

    .line 1356
    .line 1357
    const/4 v0, 0x5

    .line 1358
    const-wide/16 v27, 0x0

    .line 1359
    .line 1360
    move v9, v14

    .line 1361
    move-object/from16 v6, v19

    .line 1362
    .line 1363
    move/from16 v13, v23

    .line 1364
    .line 1365
    move-wide/from16 v7, v27

    .line 1366
    .line 1367
    const/4 v2, 0x0

    .line 1368
    const/4 v5, -0x1

    .line 1369
    const/16 v24, 0x0

    .line 1370
    .line 1371
    :goto_22
    const/16 v39, 0x0

    .line 1372
    .line 1373
    goto :goto_21

    .line 1374
    :catch_21
    move-object/from16 v19, v14

    .line 1375
    .line 1376
    move/from16 v14, v33

    .line 1377
    .line 1378
    const/4 v0, 0x5

    .line 1379
    const-wide/16 v27, 0x0

    .line 1380
    .line 1381
    move v9, v14

    .line 1382
    move-object/from16 v6, v19

    .line 1383
    .line 1384
    move/from16 v13, v23

    .line 1385
    .line 1386
    move-wide/from16 v7, v27

    .line 1387
    .line 1388
    const/4 v2, 0x0

    .line 1389
    const/4 v5, -0x1

    .line 1390
    const/16 v24, 0x0

    .line 1391
    .line 1392
    :goto_23
    const/16 v38, 0x0

    .line 1393
    .line 1394
    goto :goto_22

    .line 1395
    :catch_22
    move-object/from16 v19, v14

    .line 1396
    .line 1397
    move/from16 v14, v33

    .line 1398
    .line 1399
    const/4 v0, 0x5

    .line 1400
    const-wide/16 v27, 0x0

    .line 1401
    .line 1402
    move v9, v14

    .line 1403
    move-object/from16 v6, v19

    .line 1404
    .line 1405
    move/from16 v13, v23

    .line 1406
    .line 1407
    move-wide/from16 v7, v27

    .line 1408
    .line 1409
    :goto_24
    const/4 v2, 0x0

    .line 1410
    const/4 v5, -0x1

    .line 1411
    const/16 v24, 0x0

    .line 1412
    .line 1413
    :goto_25
    const/16 v37, 0x0

    .line 1414
    .line 1415
    goto :goto_23

    .line 1416
    :catch_23
    move-wide/from16 v27, v7

    .line 1417
    .line 1418
    move-object/from16 v19, v14

    .line 1419
    .line 1420
    move/from16 v14, v33

    .line 1421
    .line 1422
    const/4 v0, 0x5

    .line 1423
    move v9, v14

    .line 1424
    move-object/from16 v6, v19

    .line 1425
    .line 1426
    move/from16 v13, v23

    .line 1427
    .line 1428
    goto :goto_24

    .line 1429
    :catch_24
    move-wide/from16 v27, v7

    .line 1430
    .line 1431
    move-object/from16 v19, v14

    .line 1432
    .line 1433
    move/from16 v14, v33

    .line 1434
    .line 1435
    const/4 v0, 0x5

    .line 1436
    move v9, v14

    .line 1437
    move-object/from16 v6, v19

    .line 1438
    .line 1439
    move/from16 v13, v23

    .line 1440
    .line 1441
    :goto_26
    move-wide/from16 v35, v7

    .line 1442
    .line 1443
    goto :goto_24

    .line 1444
    :catch_25
    move-object/from16 v19, v14

    .line 1445
    .line 1446
    const/4 v0, 0x5

    .line 1447
    const-wide/16 v27, 0x0

    .line 1448
    .line 1449
    move v14, v8

    .line 1450
    move v9, v14

    .line 1451
    move-object/from16 v6, v19

    .line 1452
    .line 1453
    move/from16 v13, v23

    .line 1454
    .line 1455
    :goto_27
    move-wide/from16 v7, v27

    .line 1456
    .line 1457
    goto :goto_26

    .line 1458
    :catch_26
    move-object/from16 v19, v14

    .line 1459
    .line 1460
    const/4 v0, 0x5

    .line 1461
    :goto_28
    const-wide/16 v27, 0x0

    .line 1462
    .line 1463
    move v14, v8

    .line 1464
    move v13, v2

    .line 1465
    move v9, v14

    .line 1466
    move-object/from16 v6, v19

    .line 1467
    .line 1468
    goto :goto_27

    .line 1469
    :catch_27
    move-object/from16 v19, v14

    .line 1470
    .line 1471
    const/4 v0, 0x5

    .line 1472
    const/4 v2, 0x0

    .line 1473
    goto :goto_28

    .line 1474
    :catch_28
    move-object/from16 v19, v14

    .line 1475
    .line 1476
    const/4 v0, 0x5

    .line 1477
    const/4 v2, 0x0

    .line 1478
    const-wide/16 v27, 0x0

    .line 1479
    .line 1480
    move v14, v8

    .line 1481
    move v13, v2

    .line 1482
    move v9, v14

    .line 1483
    move-object/from16 v6, v19

    .line 1484
    .line 1485
    move-wide/from16 v7, v27

    .line 1486
    .line 1487
    move-wide/from16 v35, v7

    .line 1488
    .line 1489
    const/4 v2, 0x0

    .line 1490
    const/4 v5, -0x1

    .line 1491
    const/16 v24, 0x0

    .line 1492
    .line 1493
    :goto_29
    const/16 v32, 0x0

    .line 1494
    .line 1495
    goto :goto_25

    .line 1496
    :catch_29
    move-object/from16 v19, v14

    .line 1497
    .line 1498
    const/4 v0, 0x5

    .line 1499
    const/4 v2, 0x0

    .line 1500
    const-wide/16 v27, 0x0

    .line 1501
    .line 1502
    move v14, v8

    .line 1503
    move v13, v2

    .line 1504
    move v9, v14

    .line 1505
    move-object/from16 v6, v19

    .line 1506
    .line 1507
    move-wide/from16 v7, v27

    .line 1508
    .line 1509
    move-wide/from16 v35, v7

    .line 1510
    .line 1511
    const/4 v2, 0x0

    .line 1512
    const/4 v5, -0x1

    .line 1513
    const/16 v24, 0x0

    .line 1514
    .line 1515
    :goto_2a
    const/16 v31, 0x0

    .line 1516
    .line 1517
    goto :goto_29

    .line 1518
    :catch_2a
    move-object/from16 v19, v14

    .line 1519
    .line 1520
    const/4 v0, 0x5

    .line 1521
    const/4 v2, 0x0

    .line 1522
    const-wide/16 v27, 0x0

    .line 1523
    .line 1524
    move v14, v8

    .line 1525
    move v13, v2

    .line 1526
    move v9, v14

    .line 1527
    move-object/from16 v6, v19

    .line 1528
    .line 1529
    move-wide/from16 v7, v27

    .line 1530
    .line 1531
    move-wide/from16 v35, v7

    .line 1532
    .line 1533
    const/4 v2, 0x0

    .line 1534
    const/4 v5, -0x1

    .line 1535
    const/16 v24, 0x0

    .line 1536
    .line 1537
    :goto_2b
    const/16 v30, 0x0

    .line 1538
    .line 1539
    goto :goto_2a

    .line 1540
    :catch_2b
    move-object/from16 v19, v14

    .line 1541
    .line 1542
    const/4 v0, 0x5

    .line 1543
    const/4 v2, 0x0

    .line 1544
    const-wide/16 v27, 0x0

    .line 1545
    .line 1546
    move v14, v8

    .line 1547
    move v13, v2

    .line 1548
    move v9, v14

    .line 1549
    move-object/from16 v6, v19

    .line 1550
    .line 1551
    move-wide/from16 v7, v27

    .line 1552
    .line 1553
    move-wide/from16 v35, v7

    .line 1554
    .line 1555
    const/4 v2, 0x0

    .line 1556
    const/4 v5, -0x1

    .line 1557
    :goto_2c
    const/16 v24, 0x0

    .line 1558
    .line 1559
    const/16 v29, 0x0

    .line 1560
    .line 1561
    goto :goto_2b

    .line 1562
    :catch_2c
    move-object/from16 v19, v14

    .line 1563
    .line 1564
    const/4 v0, 0x5

    .line 1565
    const/4 v2, 0x0

    .line 1566
    const-wide/16 v27, 0x0

    .line 1567
    .line 1568
    move v14, v8

    .line 1569
    move v13, v2

    .line 1570
    move v9, v14

    .line 1571
    move-object/from16 v6, v19

    .line 1572
    .line 1573
    move-wide/from16 v7, v27

    .line 1574
    .line 1575
    move-wide/from16 v35, v7

    .line 1576
    .line 1577
    const/4 v2, 0x0

    .line 1578
    const/4 v5, -0x1

    .line 1579
    :goto_2d
    const/4 v15, 0x0

    .line 1580
    goto :goto_2c

    .line 1581
    :catch_2d
    move-object/from16 v19, v14

    .line 1582
    .line 1583
    const/4 v0, 0x5

    .line 1584
    const/4 v2, 0x0

    .line 1585
    const-wide/16 v27, 0x0

    .line 1586
    .line 1587
    move v14, v8

    .line 1588
    move v13, v2

    .line 1589
    move v9, v14

    .line 1590
    move-object/from16 v6, v19

    .line 1591
    .line 1592
    move-wide/from16 v7, v27

    .line 1593
    .line 1594
    move-wide/from16 v35, v7

    .line 1595
    .line 1596
    const/4 v2, 0x0

    .line 1597
    const/4 v5, -0x1

    .line 1598
    const/4 v11, 0x0

    .line 1599
    goto :goto_2d

    .line 1600
    :catch_2e
    move-object/from16 v19, v14

    .line 1601
    .line 1602
    const/4 v0, 0x5

    .line 1603
    const/4 v2, 0x0

    .line 1604
    const-wide/16 v27, 0x0

    .line 1605
    .line 1606
    move v14, v8

    .line 1607
    move v13, v2

    .line 1608
    move v9, v14

    .line 1609
    move-object/from16 v6, v19

    .line 1610
    .line 1611
    move-wide/from16 v7, v27

    .line 1612
    .line 1613
    move-wide/from16 v35, v7

    .line 1614
    .line 1615
    const/4 v2, 0x0

    .line 1616
    const/4 v5, -0x1

    .line 1617
    :goto_2e
    const/4 v11, 0x0

    .line 1618
    const/4 v12, 0x0

    .line 1619
    goto :goto_2d

    .line 1620
    :goto_2f
    move v13, v2

    .line 1621
    move-object/from16 v6, v19

    .line 1622
    .line 1623
    move-wide/from16 v7, v27

    .line 1624
    .line 1625
    move-wide/from16 v35, v7

    .line 1626
    .line 1627
    const/4 v2, 0x0

    .line 1628
    const/4 v5, -0x1

    .line 1629
    :goto_30
    const/4 v9, 0x0

    .line 1630
    goto :goto_2e

    .line 1631
    :catch_2f
    move-object/from16 v19, v14

    .line 1632
    .line 1633
    const/4 v0, 0x5

    .line 1634
    const/4 v2, 0x0

    .line 1635
    const-wide/16 v27, 0x0

    .line 1636
    .line 1637
    goto :goto_2f

    .line 1638
    :catch_30
    const/4 v0, 0x5

    .line 1639
    const/4 v2, 0x0

    .line 1640
    const-wide/16 v27, 0x0

    .line 1641
    .line 1642
    move v13, v2

    .line 1643
    move-wide/from16 v7, v27

    .line 1644
    .line 1645
    move-wide/from16 v35, v7

    .line 1646
    .line 1647
    const/4 v2, 0x0

    .line 1648
    const/4 v5, -0x1

    .line 1649
    const/4 v6, 0x0

    .line 1650
    goto :goto_30

    .line 1651
    :goto_31
    const-string v1, "Error in package manager settings: package "

    .line 1652
    .line 1653
    const-string v3, " has bad appId "

    .line 1654
    .line 1655
    const-string v4, " at "

    .line 1656
    .line 1657
    invoke-static {v9, v1, v6, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v1

    .line 1661
    invoke-static {v10, v1}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v1

    .line 1665
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1666
    .line 1667
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1668
    .line 1669
    .line 1670
    move-object/from16 v19, v6

    .line 1671
    .line 1672
    move-wide/from16 v20, v7

    .line 1673
    .line 1674
    move/from16 v1, v24

    .line 1675
    .line 1676
    move/from16 v3, v30

    .line 1677
    .line 1678
    move/from16 v4, v31

    .line 1679
    .line 1680
    move-wide/from16 v7, v35

    .line 1681
    .line 1682
    move/from16 v9, v37

    .line 1683
    .line 1684
    move-object/from16 v22, v38

    .line 1685
    .line 1686
    move-object/from16 v31, v39

    .line 1687
    .line 1688
    move-object/from16 v33, v41

    .line 1689
    .line 1690
    move-object/from16 v34, v42

    .line 1691
    .line 1692
    move/from16 v35, v43

    .line 1693
    .line 1694
    move/from16 v36, v44

    .line 1695
    .line 1696
    move-object/from16 v30, v46

    .line 1697
    .line 1698
    move/from16 v37, v47

    .line 1699
    .line 1700
    move-object/from16 v14, v48

    .line 1701
    .line 1702
    move/from16 v10, v49

    .line 1703
    .line 1704
    move-object/from16 v0, v50

    .line 1705
    .line 1706
    move/from16 v70, v51

    .line 1707
    .line 1708
    move/from16 v71, v52

    .line 1709
    .line 1710
    move-object v6, v2

    .line 1711
    move/from16 v2, v29

    .line 1712
    .line 1713
    move-object/from16 v29, v45

    .line 1714
    .line 1715
    move/from16 v72, v32

    .line 1716
    .line 1717
    move/from16 v32, v5

    .line 1718
    .line 1719
    move/from16 v5, v72

    .line 1720
    .line 1721
    :goto_32
    if-eqz v6, :cond_45

    .line 1722
    .line 1723
    move/from16 v23, v9

    .line 1724
    .line 1725
    invoke-static/range {v29 .. v37}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v9

    .line 1729
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    .line 1731
    .line 1732
    iput-object v9, v6, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 1733
    .line 1734
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1735
    .line 1736
    .line 1737
    iput-object v14, v6, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 1738
    .line 1739
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1740
    .line 1741
    .line 1742
    iput v10, v6, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 1743
    .line 1744
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1745
    .line 1746
    .line 1747
    iput-object v12, v6, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 1748
    .line 1749
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1750
    .line 1751
    .line 1752
    iput-object v11, v6, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 1753
    .line 1754
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1755
    .line 1756
    .line 1757
    iput-object v15, v6, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 1758
    .line 1759
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1760
    .line 1761
    .line 1762
    const/4 v10, 0x2

    .line 1763
    invoke-virtual {v6, v10, v2}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 1764
    .line 1765
    .line 1766
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1767
    .line 1768
    .line 1769
    const/4 v2, 0x4

    .line 1770
    invoke-virtual {v6, v2, v3}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 1771
    .line 1772
    .line 1773
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1774
    .line 1775
    .line 1776
    const/16 v3, 0x10

    .line 1777
    .line 1778
    invoke-virtual {v6, v3, v4}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 1779
    .line 1780
    .line 1781
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1782
    .line 1783
    .line 1784
    const/16 v3, 0x20

    .line 1785
    .line 1786
    invoke-virtual {v6, v3, v5}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 1787
    .line 1788
    .line 1789
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1790
    .line 1791
    .line 1792
    iget v3, v6, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 1793
    .line 1794
    cmpg-float v3, v3, v13

    .line 1795
    .line 1796
    if-gez v3, :cond_12

    .line 1797
    .line 1798
    iput v13, v6, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 1799
    .line 1800
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1801
    .line 1802
    .line 1803
    :cond_12
    iput-wide v7, v6, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    .line 1804
    .line 1805
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1806
    .line 1807
    .line 1808
    iput-object v0, v6, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 1809
    .line 1810
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1811
    .line 1812
    .line 1813
    iput v1, v6, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 1814
    .line 1815
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1816
    .line 1817
    .line 1818
    move/from16 v0, v23

    .line 1819
    .line 1820
    iput v0, v6, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 1821
    .line 1822
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1823
    .line 1824
    .line 1825
    move/from16 v0, v70

    .line 1826
    .line 1827
    iput v0, v6, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    .line 1828
    .line 1829
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1830
    .line 1831
    .line 1832
    move-object/from16 v0, v22

    .line 1833
    .line 1834
    iput-object v0, v6, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 1835
    .line 1836
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1837
    .line 1838
    .line 1839
    move/from16 v0, v71

    .line 1840
    .line 1841
    const/16 v1, 0x8

    .line 1842
    .line 1843
    invoke-virtual {v6, v1, v0}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 1844
    .line 1845
    .line 1846
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1847
    .line 1848
    .line 1849
    const-string v0, "enabled"

    .line 1850
    .line 1851
    move-object/from16 v1, p1

    .line 1852
    .line 1853
    const/4 v3, 0x0

    .line 1854
    invoke-interface {v1, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v0

    .line 1858
    if-eqz v0, :cond_16

    .line 1859
    .line 1860
    :try_start_39
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1861
    .line 1862
    .line 1863
    move-result v3

    .line 1864
    const-string/jumbo v4, "settings"
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_39} :catch_31

    .line 1865
    .line 1866
    .line 1867
    const/4 v5, 0x0

    .line 1868
    :try_start_3a
    invoke-virtual {v6, v3, v5, v4}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3a} :catch_32

    .line 1869
    .line 1870
    .line 1871
    move-object/from16 v0, p0

    .line 1872
    .line 1873
    move v4, v5

    .line 1874
    const/4 v3, 0x1

    .line 1875
    goto :goto_35

    .line 1876
    :catch_31
    const/4 v5, 0x0

    .line 1877
    :catch_32
    const-string/jumbo v3, "true"

    .line 1878
    .line 1879
    .line 1880
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1881
    .line 1882
    .line 1883
    move-result v3

    .line 1884
    if-eqz v3, :cond_13

    .line 1885
    .line 1886
    const-string/jumbo v0, "settings"

    .line 1887
    .line 1888
    .line 1889
    const/4 v3, 0x1

    .line 1890
    invoke-virtual {v6, v3, v5, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 1891
    .line 1892
    .line 1893
    goto :goto_33

    .line 1894
    :cond_13
    const/4 v3, 0x1

    .line 1895
    const-string v4, "false"

    .line 1896
    .line 1897
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1898
    .line 1899
    .line 1900
    move-result v4

    .line 1901
    if-eqz v4, :cond_14

    .line 1902
    .line 1903
    const-string/jumbo v0, "settings"

    .line 1904
    .line 1905
    .line 1906
    const/4 v4, 0x2

    .line 1907
    invoke-virtual {v6, v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 1908
    .line 1909
    .line 1910
    goto :goto_33

    .line 1911
    :cond_14
    const-string v4, "default"

    .line 1912
    .line 1913
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1914
    .line 1915
    .line 1916
    move-result v4

    .line 1917
    if-eqz v4, :cond_15

    .line 1918
    .line 1919
    const-string/jumbo v0, "settings"

    .line 1920
    .line 1921
    .line 1922
    invoke-virtual {v6, v5, v5, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 1923
    .line 1924
    .line 1925
    goto :goto_33

    .line 1926
    :cond_15
    const-string v4, "Error in package manager settings: package "

    .line 1927
    .line 1928
    const-string v5, " has bad enabled value: "

    .line 1929
    .line 1930
    const-string v7, " at "

    .line 1931
    .line 1932
    move-object/from16 v8, v19

    .line 1933
    .line 1934
    invoke-static {v4, v8, v5, v0, v7}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v0

    .line 1938
    invoke-static {v1, v0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v0

    .line 1942
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1943
    .line 1944
    const/4 v4, 0x5

    .line 1945
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1946
    .line 1947
    .line 1948
    :goto_33
    const/4 v4, 0x0

    .line 1949
    :goto_34
    move-object/from16 v0, p0

    .line 1950
    .line 1951
    goto :goto_35

    .line 1952
    :cond_16
    const/4 v3, 0x1

    .line 1953
    const-string/jumbo v0, "settings"

    .line 1954
    .line 1955
    .line 1956
    const/4 v4, 0x0

    .line 1957
    invoke-virtual {v6, v4, v4, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 1958
    .line 1959
    .line 1960
    goto :goto_34

    .line 1961
    :goto_35
    invoke-virtual {v0, v9}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 1962
    .line 1963
    .line 1964
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 1965
    .line 1966
    .line 1967
    move-result v5

    .line 1968
    :goto_36
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1969
    .line 1970
    .line 1971
    move-result v7

    .line 1972
    if-eq v7, v3, :cond_44

    .line 1973
    .line 1974
    const/4 v8, 0x3

    .line 1975
    if-ne v7, v8, :cond_17

    .line 1976
    .line 1977
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 1978
    .line 1979
    .line 1980
    move-result v9

    .line 1981
    if-le v9, v5, :cond_44

    .line 1982
    .line 1983
    :cond_17
    if-eq v7, v8, :cond_43

    .line 1984
    .line 1985
    if-ne v7, v2, :cond_18

    .line 1986
    .line 1987
    goto :goto_36

    .line 1988
    :cond_18
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 1989
    .line 1990
    .line 1991
    move-result-object v7

    .line 1992
    const-string v9, "disabled-components"

    .line 1993
    .line 1994
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1995
    .line 1996
    .line 1997
    move-result v9

    .line 1998
    if-eqz v9, :cond_1f

    .line 1999
    .line 2000
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 2001
    .line 2002
    .line 2003
    move-result v7

    .line 2004
    :cond_19
    :goto_37
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 2005
    .line 2006
    .line 2007
    move-result v9

    .line 2008
    if-eq v9, v3, :cond_1e

    .line 2009
    .line 2010
    if-ne v9, v8, :cond_1a

    .line 2011
    .line 2012
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 2013
    .line 2014
    .line 2015
    move-result v10

    .line 2016
    if-le v10, v7, :cond_1e

    .line 2017
    .line 2018
    :cond_1a
    if-eq v9, v8, :cond_19

    .line 2019
    .line 2020
    if-ne v9, v2, :cond_1b

    .line 2021
    .line 2022
    goto :goto_37

    .line 2023
    :cond_1b
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v9

    .line 2027
    const-string v10, "item"

    .line 2028
    .line 2029
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2030
    .line 2031
    .line 2032
    move-result v9

    .line 2033
    if-eqz v9, :cond_1d

    .line 2034
    .line 2035
    const-string/jumbo v9, "name"

    .line 2036
    .line 2037
    .line 2038
    const/4 v10, 0x0

    .line 2039
    invoke-interface {v1, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2040
    .line 2041
    .line 2042
    move-result-object v9

    .line 2043
    if-eqz v9, :cond_1c

    .line 2044
    .line 2045
    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 2046
    .line 2047
    .line 2048
    move-result-object v9

    .line 2049
    invoke-virtual {v6, v4, v3, v4}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 2050
    .line 2051
    .line 2052
    move-result-object v10

    .line 2053
    iget-object v10, v10, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 2054
    .line 2055
    invoke-virtual {v10, v9}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 2056
    .line 2057
    .line 2058
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2059
    .line 2060
    .line 2061
    const/4 v10, 0x5

    .line 2062
    goto :goto_38

    .line 2063
    :cond_1c
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2064
    .line 2065
    const-string v10, "Error in package manager settings: <disabled-components> has no name at "

    .line 2066
    .line 2067
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2068
    .line 2069
    .line 2070
    invoke-static {v1, v9}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v9

    .line 2074
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2075
    .line 2076
    const/4 v10, 0x5

    .line 2077
    invoke-static {v10, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2078
    .line 2079
    .line 2080
    goto :goto_38

    .line 2081
    :cond_1d
    const/4 v10, 0x5

    .line 2082
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2083
    .line 2084
    const-string v11, "Unknown element under <disabled-components>: "

    .line 2085
    .line 2086
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2087
    .line 2088
    .line 2089
    invoke-static {v1, v9}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v9

    .line 2093
    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2094
    .line 2095
    invoke-static {v10, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2096
    .line 2097
    .line 2098
    :goto_38
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2099
    .line 2100
    .line 2101
    goto :goto_37

    .line 2102
    :cond_1e
    move-object/from16 v9, p2

    .line 2103
    .line 2104
    :goto_39
    move-object/from16 v13, p3

    .line 2105
    .line 2106
    move-object/from16 v10, p4

    .line 2107
    .line 2108
    :goto_3a
    move v11, v2

    .line 2109
    move v7, v3

    .line 2110
    move/from16 v18, v5

    .line 2111
    .line 2112
    const/4 v3, 0x0

    .line 2113
    const/4 v4, 0x5

    .line 2114
    const/4 v5, -0x1

    .line 2115
    goto/16 :goto_48

    .line 2116
    .line 2117
    :cond_1f
    const-string v9, "enabled-components"

    .line 2118
    .line 2119
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2120
    .line 2121
    .line 2122
    move-result v9

    .line 2123
    if-eqz v9, :cond_25

    .line 2124
    .line 2125
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 2126
    .line 2127
    .line 2128
    move-result v7

    .line 2129
    :cond_20
    :goto_3b
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 2130
    .line 2131
    .line 2132
    move-result v9

    .line 2133
    if-eq v9, v3, :cond_1e

    .line 2134
    .line 2135
    if-ne v9, v8, :cond_21

    .line 2136
    .line 2137
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 2138
    .line 2139
    .line 2140
    move-result v10

    .line 2141
    if-le v10, v7, :cond_1e

    .line 2142
    .line 2143
    :cond_21
    if-eq v9, v8, :cond_20

    .line 2144
    .line 2145
    if-ne v9, v2, :cond_22

    .line 2146
    .line 2147
    goto :goto_3b

    .line 2148
    :cond_22
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 2149
    .line 2150
    .line 2151
    move-result-object v9

    .line 2152
    const-string v10, "item"

    .line 2153
    .line 2154
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2155
    .line 2156
    .line 2157
    move-result v9

    .line 2158
    if-eqz v9, :cond_24

    .line 2159
    .line 2160
    const-string/jumbo v9, "name"

    .line 2161
    .line 2162
    .line 2163
    const/4 v10, 0x0

    .line 2164
    invoke-interface {v1, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2165
    .line 2166
    .line 2167
    move-result-object v9

    .line 2168
    if-eqz v9, :cond_23

    .line 2169
    .line 2170
    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 2171
    .line 2172
    .line 2173
    move-result-object v9

    .line 2174
    invoke-virtual {v6, v4, v4, v3}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 2175
    .line 2176
    .line 2177
    move-result-object v10

    .line 2178
    iget-object v10, v10, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 2179
    .line 2180
    invoke-virtual {v10, v9}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 2181
    .line 2182
    .line 2183
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2184
    .line 2185
    .line 2186
    const/4 v10, 0x5

    .line 2187
    goto :goto_3c

    .line 2188
    :cond_23
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2189
    .line 2190
    const-string v10, "Error in package manager settings: <enabled-components> has no name at "

    .line 2191
    .line 2192
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2193
    .line 2194
    .line 2195
    invoke-static {v1, v9}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2196
    .line 2197
    .line 2198
    move-result-object v9

    .line 2199
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2200
    .line 2201
    const/4 v10, 0x5

    .line 2202
    invoke-static {v10, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2203
    .line 2204
    .line 2205
    goto :goto_3c

    .line 2206
    :cond_24
    const/4 v10, 0x5

    .line 2207
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2208
    .line 2209
    const-string v11, "Unknown element under <enabled-components>: "

    .line 2210
    .line 2211
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2212
    .line 2213
    .line 2214
    invoke-static {v1, v9}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2215
    .line 2216
    .line 2217
    move-result-object v9

    .line 2218
    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2219
    .line 2220
    invoke-static {v10, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2221
    .line 2222
    .line 2223
    :goto_3c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2224
    .line 2225
    .line 2226
    goto :goto_3b

    .line 2227
    :cond_25
    const-string/jumbo v9, "sigs"

    .line 2228
    .line 2229
    .line 2230
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2231
    .line 2232
    .line 2233
    move-result v9

    .line 2234
    if-eqz v9, :cond_26

    .line 2235
    .line 2236
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 2237
    .line 2238
    move-object/from16 v9, p2

    .line 2239
    .line 2240
    invoke-virtual {v7, v1, v9}, Lcom/android/server/pm/PackageSignatures;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)V

    .line 2241
    .line 2242
    .line 2243
    goto/16 :goto_39

    .line 2244
    .line 2245
    :cond_26
    move-object/from16 v9, p2

    .line 2246
    .line 2247
    const-string/jumbo v10, "perms"

    .line 2248
    .line 2249
    .line 2250
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2251
    .line 2252
    .line 2253
    move-result v10

    .line 2254
    if-eqz v10, :cond_2a

    .line 2255
    .line 2256
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    .line 2257
    .line 2258
    .line 2259
    move-result v7

    .line 2260
    if-eqz v7, :cond_28

    .line 2261
    .line 2262
    iget v7, v6, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 2263
    .line 2264
    invoke-virtual {v0, v7}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    .line 2265
    .line 2266
    .line 2267
    move-result-object v7

    .line 2268
    if-eqz v7, :cond_27

    .line 2269
    .line 2270
    invoke-virtual {v7}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 2271
    .line 2272
    .line 2273
    move-result-object v7

    .line 2274
    goto :goto_3d

    .line 2275
    :cond_27
    const/4 v7, 0x0

    .line 2276
    goto :goto_3d

    .line 2277
    :cond_28
    iget-object v7, v6, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 2278
    .line 2279
    :goto_3d
    move-object/from16 v10, p4

    .line 2280
    .line 2281
    if-eqz v7, :cond_29

    .line 2282
    .line 2283
    invoke-static {v1, v7, v10}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    .line 2284
    .line 2285
    .line 2286
    invoke-virtual {v6, v3, v3}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 2287
    .line 2288
    .line 2289
    :cond_29
    move-object/from16 v13, p3

    .line 2290
    .line 2291
    goto/16 :goto_3a

    .line 2292
    .line 2293
    :cond_2a
    move-object/from16 v10, p4

    .line 2294
    .line 2295
    const-string/jumbo v11, "proper-signing-keyset"

    .line 2296
    .line 2297
    .line 2298
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2299
    .line 2300
    .line 2301
    move-result v11

    .line 2302
    if-eqz v11, :cond_2c

    .line 2303
    .line 2304
    const-string v7, "identifier"

    .line 2305
    .line 2306
    const/4 v8, 0x0

    .line 2307
    invoke-interface {v1, v8, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 2308
    .line 2309
    .line 2310
    move-result-wide v11

    .line 2311
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2312
    .line 2313
    .line 2314
    move-result-object v7

    .line 2315
    move-object/from16 v13, p3

    .line 2316
    .line 2317
    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2318
    .line 2319
    .line 2320
    move-result-object v7

    .line 2321
    check-cast v7, Ljava/lang/Integer;

    .line 2322
    .line 2323
    if-eqz v7, :cond_2b

    .line 2324
    .line 2325
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2326
    .line 2327
    .line 2328
    move-result-object v8

    .line 2329
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 2330
    .line 2331
    .line 2332
    move-result v7

    .line 2333
    add-int/2addr v7, v3

    .line 2334
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2335
    .line 2336
    .line 2337
    move-result-object v7

    .line 2338
    invoke-virtual {v13, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2339
    .line 2340
    .line 2341
    goto :goto_3e

    .line 2342
    :cond_2b
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2343
    .line 2344
    .line 2345
    move-result-object v7

    .line 2346
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2347
    .line 2348
    .line 2349
    move-result-object v8

    .line 2350
    invoke-virtual {v13, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    .line 2352
    .line 2353
    :goto_3e
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 2354
    .line 2355
    iput-wide v11, v7, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    .line 2356
    .line 2357
    goto/16 :goto_3a

    .line 2358
    .line 2359
    :cond_2c
    move-object/from16 v13, p3

    .line 2360
    .line 2361
    const-string/jumbo v11, "signing-keyset"

    .line 2362
    .line 2363
    .line 2364
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2365
    .line 2366
    .line 2367
    move-result v11

    .line 2368
    if-eqz v11, :cond_2d

    .line 2369
    .line 2370
    goto/16 :goto_3a

    .line 2371
    .line 2372
    :cond_2d
    const-string/jumbo v11, "upgrade-keyset"

    .line 2373
    .line 2374
    .line 2375
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2376
    .line 2377
    .line 2378
    move-result v11

    .line 2379
    if-eqz v11, :cond_2e

    .line 2380
    .line 2381
    const-string v7, "identifier"

    .line 2382
    .line 2383
    const/4 v8, 0x0

    .line 2384
    invoke-interface {v1, v8, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 2385
    .line 2386
    .line 2387
    move-result-wide v11

    .line 2388
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 2389
    .line 2390
    iget-object v8, v7, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 2391
    .line 2392
    invoke-static {v8, v11, v12}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    .line 2393
    .line 2394
    .line 2395
    move-result-object v8

    .line 2396
    iput-object v8, v7, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 2397
    .line 2398
    goto/16 :goto_3a

    .line 2399
    .line 2400
    :cond_2e
    const-string v11, "defined-keyset"

    .line 2401
    .line 2402
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2403
    .line 2404
    .line 2405
    move-result v11

    .line 2406
    if-eqz v11, :cond_30

    .line 2407
    .line 2408
    const-string v7, "identifier"

    .line 2409
    .line 2410
    const/4 v8, 0x0

    .line 2411
    invoke-interface {v1, v8, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 2412
    .line 2413
    .line 2414
    move-result-wide v11

    .line 2415
    const-string v7, "alias"

    .line 2416
    .line 2417
    invoke-interface {v1, v8, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2418
    .line 2419
    .line 2420
    move-result-object v7

    .line 2421
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2422
    .line 2423
    .line 2424
    move-result-object v8

    .line 2425
    invoke-virtual {v13, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2426
    .line 2427
    .line 2428
    move-result-object v8

    .line 2429
    check-cast v8, Ljava/lang/Integer;

    .line 2430
    .line 2431
    if-eqz v8, :cond_2f

    .line 2432
    .line 2433
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2434
    .line 2435
    .line 2436
    move-result-object v14

    .line 2437
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 2438
    .line 2439
    .line 2440
    move-result v8

    .line 2441
    add-int/2addr v8, v3

    .line 2442
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2443
    .line 2444
    .line 2445
    move-result-object v8

    .line 2446
    invoke-virtual {v13, v14, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    .line 2448
    .line 2449
    goto :goto_3f

    .line 2450
    :cond_2f
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2451
    .line 2452
    .line 2453
    move-result-object v8

    .line 2454
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2455
    .line 2456
    .line 2457
    move-result-object v14

    .line 2458
    invoke-virtual {v13, v8, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2459
    .line 2460
    .line 2461
    :goto_3f
    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 2462
    .line 2463
    iget-object v8, v8, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    .line 2464
    .line 2465
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2466
    .line 2467
    .line 2468
    move-result-object v11

    .line 2469
    invoke-virtual {v8, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2470
    .line 2471
    .line 2472
    goto/16 :goto_3a

    .line 2473
    .line 2474
    :cond_30
    const-string v11, "install-initiator-sigs"

    .line 2475
    .line 2476
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2477
    .line 2478
    .line 2479
    move-result v11

    .line 2480
    if-eqz v11, :cond_32

    .line 2481
    .line 2482
    new-instance v7, Lcom/android/server/pm/PackageSignatures;

    .line 2483
    .line 2484
    invoke-direct {v7}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    .line 2485
    .line 2486
    .line 2487
    invoke-virtual {v7, v1, v9}, Lcom/android/server/pm/PackageSignatures;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)V

    .line 2488
    .line 2489
    .line 2490
    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 2491
    .line 2492
    iget-object v11, v8, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 2493
    .line 2494
    if-ne v7, v11, :cond_31

    .line 2495
    .line 2496
    move/from16 v18, v5

    .line 2497
    .line 2498
    goto :goto_40

    .line 2499
    :cond_31
    iget-boolean v11, v8, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    .line 2500
    .line 2501
    iget-boolean v12, v8, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    .line 2502
    .line 2503
    iget-object v14, v8, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 2504
    .line 2505
    iget-object v15, v8, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 2506
    .line 2507
    iget-object v4, v8, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 2508
    .line 2509
    iget v2, v8, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    .line 2510
    .line 2511
    iget-object v3, v8, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 2512
    .line 2513
    move/from16 v18, v5

    .line 2514
    .line 2515
    iget-object v5, v8, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    .line 2516
    .line 2517
    iget v8, v8, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    .line 2518
    .line 2519
    move/from16 v29, v2

    .line 2520
    .line 2521
    move/from16 v30, v8

    .line 2522
    .line 2523
    move-object/from16 v31, v7

    .line 2524
    .line 2525
    move-object/from16 v32, v14

    .line 2526
    .line 2527
    move-object/from16 v33, v15

    .line 2528
    .line 2529
    move-object/from16 v34, v4

    .line 2530
    .line 2531
    move-object/from16 v35, v3

    .line 2532
    .line 2533
    move-object/from16 v36, v5

    .line 2534
    .line 2535
    move/from16 v37, v11

    .line 2536
    .line 2537
    move/from16 v38, v12

    .line 2538
    .line 2539
    invoke-static/range {v29 .. v38}, Lcom/android/server/pm/InstallSource;->createInternal(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    .line 2540
    .line 2541
    .line 2542
    move-result-object v8

    .line 2543
    :goto_40
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2544
    .line 2545
    .line 2546
    iput-object v8, v6, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 2547
    .line 2548
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2549
    .line 2550
    .line 2551
    :goto_41
    const/4 v3, 0x0

    .line 2552
    const/4 v4, 0x5

    .line 2553
    const/4 v5, -0x1

    .line 2554
    const/4 v7, 0x1

    .line 2555
    const/4 v11, 0x4

    .line 2556
    goto/16 :goto_48

    .line 2557
    .line 2558
    :cond_32
    move/from16 v18, v5

    .line 2559
    .line 2560
    const-string v2, "domain-verification"

    .line 2561
    .line 2562
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2563
    .line 2564
    .line 2565
    move-result v2

    .line 2566
    if-eqz v2, :cond_33

    .line 2567
    .line 2568
    new-instance v2, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 2569
    .line 2570
    invoke-direct {v2, v1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 2571
    .line 2572
    .line 2573
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 2574
    .line 2575
    iget-object v4, v6, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 2576
    .line 2577
    check-cast v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 2578
    .line 2579
    iget-object v3, v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    .line 2580
    .line 2581
    iget-object v5, v3, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    .line 2582
    .line 2583
    monitor-enter v5

    .line 2584
    :try_start_3b
    invoke-virtual {v3, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    .line 2585
    .line 2586
    .line 2587
    move-result-object v3

    .line 2588
    iput-object v2, v3, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 2589
    .line 2590
    monitor-exit v5

    .line 2591
    goto :goto_41

    .line 2592
    :catchall_0
    move-exception v0

    .line 2593
    monitor-exit v5
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    .line 2594
    throw v0

    .line 2595
    :cond_33
    const-string/jumbo v2, "mime-group"

    .line 2596
    .line 2597
    .line 2598
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2599
    .line 2600
    .line 2601
    move-result v2

    .line 2602
    if-eqz v2, :cond_3d

    .line 2603
    .line 2604
    const-string/jumbo v2, "name"

    .line 2605
    .line 2606
    .line 2607
    const/4 v3, 0x0

    .line 2608
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2609
    .line 2610
    .line 2611
    move-result-object v2

    .line 2612
    if-nez v2, :cond_34

    .line 2613
    .line 2614
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2615
    .line 2616
    .line 2617
    const/4 v2, 0x0

    .line 2618
    const/4 v11, 0x4

    .line 2619
    goto :goto_45

    .line 2620
    :cond_34
    new-instance v3, Landroid/util/ArraySet;

    .line 2621
    .line 2622
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2623
    .line 2624
    .line 2625
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 2626
    .line 2627
    .line 2628
    move-result v4

    .line 2629
    :cond_35
    :goto_42
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 2630
    .line 2631
    .line 2632
    move-result v5

    .line 2633
    const/4 v7, 0x1

    .line 2634
    if-eq v5, v7, :cond_36

    .line 2635
    .line 2636
    if-ne v5, v8, :cond_37

    .line 2637
    .line 2638
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 2639
    .line 2640
    .line 2641
    move-result v7

    .line 2642
    if-le v7, v4, :cond_36

    .line 2643
    .line 2644
    goto :goto_43

    .line 2645
    :cond_36
    const/4 v11, 0x4

    .line 2646
    goto :goto_44

    .line 2647
    :cond_37
    :goto_43
    if-eq v5, v8, :cond_35

    .line 2648
    .line 2649
    const/4 v11, 0x4

    .line 2650
    if-ne v5, v11, :cond_38

    .line 2651
    .line 2652
    goto :goto_42

    .line 2653
    :cond_38
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 2654
    .line 2655
    .line 2656
    move-result-object v5

    .line 2657
    const-string/jumbo v7, "mime-type"

    .line 2658
    .line 2659
    .line 2660
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2661
    .line 2662
    .line 2663
    move-result v5

    .line 2664
    if-eqz v5, :cond_39

    .line 2665
    .line 2666
    const-string/jumbo v5, "value"

    .line 2667
    .line 2668
    .line 2669
    const/4 v7, 0x0

    .line 2670
    invoke-interface {v1, v7, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2671
    .line 2672
    .line 2673
    move-result-object v5

    .line 2674
    if-eqz v5, :cond_35

    .line 2675
    .line 2676
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2677
    .line 2678
    .line 2679
    goto :goto_42

    .line 2680
    :cond_39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2681
    .line 2682
    const-string v7, "Unknown element under <mime-group>: "

    .line 2683
    .line 2684
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2685
    .line 2686
    .line 2687
    invoke-static {v1, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2688
    .line 2689
    .line 2690
    move-result-object v5

    .line 2691
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2692
    .line 2693
    const/4 v7, 0x5

    .line 2694
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2695
    .line 2696
    .line 2697
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2698
    .line 2699
    .line 2700
    goto :goto_42

    .line 2701
    :goto_44
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 2702
    .line 2703
    .line 2704
    move-result-object v2

    .line 2705
    :goto_45
    if-eqz v2, :cond_3c

    .line 2706
    .line 2707
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2708
    .line 2709
    check-cast v3, Ljava/lang/String;

    .line 2710
    .line 2711
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2712
    .line 2713
    check-cast v2, Ljava/util/Set;

    .line 2714
    .line 2715
    iget-object v4, v6, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 2716
    .line 2717
    if-nez v4, :cond_3a

    .line 2718
    .line 2719
    new-instance v4, Landroid/util/ArrayMap;

    .line 2720
    .line 2721
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 2722
    .line 2723
    .line 2724
    iput-object v4, v6, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 2725
    .line 2726
    :cond_3a
    iget-object v4, v6, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 2727
    .line 2728
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2729
    .line 2730
    .line 2731
    move-result-object v4

    .line 2732
    check-cast v4, Ljava/util/Set;

    .line 2733
    .line 2734
    if-nez v4, :cond_3b

    .line 2735
    .line 2736
    new-instance v4, Landroid/util/ArraySet;

    .line 2737
    .line 2738
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 2739
    .line 2740
    .line 2741
    iget-object v5, v6, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 2742
    .line 2743
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2744
    .line 2745
    .line 2746
    :cond_3b
    invoke-interface {v4, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2747
    .line 2748
    .line 2749
    :cond_3c
    :goto_46
    const/4 v3, 0x0

    .line 2750
    const/4 v4, 0x5

    .line 2751
    const/4 v5, -0x1

    .line 2752
    const/4 v7, 0x1

    .line 2753
    goto/16 :goto_48

    .line 2754
    .line 2755
    :cond_3d
    const/4 v11, 0x4

    .line 2756
    const-string/jumbo v2, "uses-static-lib"

    .line 2757
    .line 2758
    .line 2759
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2760
    .line 2761
    .line 2762
    move-result v2

    .line 2763
    if-eqz v2, :cond_3e

    .line 2764
    .line 2765
    invoke-static {v1, v6}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    .line 2766
    .line 2767
    .line 2768
    goto :goto_46

    .line 2769
    :cond_3e
    const-string/jumbo v2, "uses-sdk-lib"

    .line 2770
    .line 2771
    .line 2772
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2773
    .line 2774
    .line 2775
    move-result v2

    .line 2776
    if-eqz v2, :cond_3f

    .line 2777
    .line 2778
    invoke-static {v1, v6}, Lcom/android/server/pm/Settings;->readUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    .line 2779
    .line 2780
    .line 2781
    goto :goto_46

    .line 2782
    :cond_3f
    const-string/jumbo v2, "split-version"

    .line 2783
    .line 2784
    .line 2785
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2786
    .line 2787
    .line 2788
    move-result v2

    .line 2789
    if-eqz v2, :cond_42

    .line 2790
    .line 2791
    const-string/jumbo v2, "name"

    .line 2792
    .line 2793
    .line 2794
    const/4 v3, 0x0

    .line 2795
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2796
    .line 2797
    .line 2798
    move-result-object v2

    .line 2799
    const-string/jumbo v4, "version"

    .line 2800
    .line 2801
    .line 2802
    const/4 v5, -0x1

    .line 2803
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2804
    .line 2805
    .line 2806
    move-result v4

    .line 2807
    if-eqz v2, :cond_40

    .line 2808
    .line 2809
    if-ltz v4, :cond_40

    .line 2810
    .line 2811
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    .line 2812
    .line 2813
    .line 2814
    move-result-object v7

    .line 2815
    array-length v7, v7

    .line 2816
    const-class v8, Ljava/lang/String;

    .line 2817
    .line 2818
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    .line 2819
    .line 2820
    .line 2821
    move-result-object v12

    .line 2822
    invoke-static {v8, v12, v2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2823
    .line 2824
    .line 2825
    move-result-object v8

    .line 2826
    check-cast v8, [Ljava/lang/String;

    .line 2827
    .line 2828
    iput-object v8, v6, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    .line 2829
    .line 2830
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2831
    .line 2832
    .line 2833
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    .line 2834
    .line 2835
    .line 2836
    move-result-object v8

    .line 2837
    array-length v8, v8

    .line 2838
    if-ne v7, v8, :cond_41

    .line 2839
    .line 2840
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    .line 2841
    .line 2842
    .line 2843
    move-result-object v7

    .line 2844
    invoke-static {v7, v2}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 2845
    .line 2846
    .line 2847
    move-result v2

    .line 2848
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSplitRevisionCodes()[I

    .line 2849
    .line 2850
    .line 2851
    move-result-object v7

    .line 2852
    aput v4, v7, v2

    .line 2853
    .line 2854
    iput-object v7, v6, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    .line 2855
    .line 2856
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2857
    .line 2858
    .line 2859
    :cond_40
    const/4 v7, 0x1

    .line 2860
    goto :goto_47

    .line 2861
    :cond_41
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSplitRevisionCodes()[I

    .line 2862
    .line 2863
    .line 2864
    move-result-object v2

    .line 2865
    const/4 v7, 0x1

    .line 2866
    invoke-static {v2, v4, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([IIZ)[I

    .line 2867
    .line 2868
    .line 2869
    move-result-object v2

    .line 2870
    iput-object v2, v6, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    .line 2871
    .line 2872
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2873
    .line 2874
    .line 2875
    :goto_47
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2876
    .line 2877
    .line 2878
    const/4 v4, 0x5

    .line 2879
    goto :goto_48

    .line 2880
    :cond_42
    const/4 v3, 0x0

    .line 2881
    const/4 v5, -0x1

    .line 2882
    const/4 v7, 0x1

    .line 2883
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2884
    .line 2885
    const-string v4, "Unknown element under <package>: "

    .line 2886
    .line 2887
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2888
    .line 2889
    .line 2890
    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2891
    .line 2892
    .line 2893
    move-result-object v2

    .line 2894
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2895
    .line 2896
    const/4 v4, 0x5

    .line 2897
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2898
    .line 2899
    .line 2900
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2901
    .line 2902
    .line 2903
    :goto_48
    move v3, v7

    .line 2904
    move v2, v11

    .line 2905
    move/from16 v5, v18

    .line 2906
    .line 2907
    const/4 v4, 0x0

    .line 2908
    goto/16 :goto_36

    .line 2909
    .line 2910
    :cond_43
    move-object/from16 v9, p2

    .line 2911
    .line 2912
    move-object/from16 v13, p3

    .line 2913
    .line 2914
    move-object/from16 v10, p4

    .line 2915
    .line 2916
    move v7, v3

    .line 2917
    goto/16 :goto_36

    .line 2918
    .line 2919
    :cond_44
    cmp-long v0, v20, v27

    .line 2920
    .line 2921
    if-eqz v0, :cond_46

    .line 2922
    .line 2923
    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 2924
    .line 2925
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2926
    .line 2927
    .line 2928
    move-result-object v1

    .line 2929
    move-object/from16 v2, p5

    .line 2930
    .line 2931
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2932
    .line 2933
    .line 2934
    goto :goto_49

    .line 2935
    :cond_45
    move-object/from16 v1, p1

    .line 2936
    .line 2937
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2938
    .line 2939
    .line 2940
    :cond_46
    :goto_49
    return-void
.end method

.method public final readPackageRestrictionsLPr(ILandroid/util/ArrayMap;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)V
    .locals 55

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v6, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    .line 6
    .line 7
    .line 8
    move-result-object v7

    .line 9
    const/4 v15, 0x0

    .line 10
    :try_start_0
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 13
    :try_start_1
    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    move-object/from16 v5, p3

    .line 20
    .line 21
    :try_start_2
    invoke-static {v5, v6}, Lcom/android/server/pm/Settings;->restorePackagesState(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;I)Ljava/io/FileInputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :goto_0
    move-object/from16 v28, v2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    move-object v15, v2

    .line 30
    move-object/from16 v33, v4

    .line 31
    .line 32
    move v3, v6

    .line 33
    move-object/from16 v29, v7

    .line 34
    .line 35
    goto/16 :goto_19

    .line 36
    .line 37
    :cond_0
    move-object/from16 v5, p3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_1
    if-nez v28, :cond_2

    .line 41
    .line 42
    :try_start_3
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 63
    .line 64
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    .line 69
    .line 70
    .line 71
    move-result-wide v29

    .line 72
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    .line 77
    .line 78
    .line 79
    move-result-wide v31
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 80
    const/16 v23, 0x0

    .line 81
    .line 82
    const-wide/16 v24, 0x0

    .line 83
    .line 84
    const/16 v26, 0x0

    .line 85
    .line 86
    const/16 v27, 0x0

    .line 87
    .line 88
    const/4 v8, 0x0

    .line 89
    const/4 v9, 0x1

    .line 90
    const/4 v10, 0x0

    .line 91
    const/4 v11, 0x0

    .line 92
    const/4 v12, 0x0

    .line 93
    const/4 v13, 0x0

    .line 94
    const/4 v14, 0x0

    .line 95
    const/4 v15, 0x0

    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    const/16 v17, 0x0

    .line 99
    .line 100
    const/16 v18, 0x0

    .line 101
    .line 102
    const/16 v19, 0x0

    .line 103
    .line 104
    const/16 v20, 0x0

    .line 105
    .line 106
    const/16 v21, 0x0

    .line 107
    .line 108
    const/16 v22, 0x0

    .line 109
    .line 110
    move/from16 v3, p1

    .line 111
    .line 112
    move-object/from16 v33, v4

    .line 113
    .line 114
    move-wide/from16 v4, v29

    .line 115
    .line 116
    move-object/from16 v29, v7

    .line 117
    .line 118
    move-wide/from16 v6, v31

    .line 119
    .line 120
    :try_start_4
    invoke-virtual/range {v2 .. v27}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    .line 121
    .line 122
    .line 123
    move/from16 v6, p1

    .line 124
    .line 125
    move-object/from16 v5, p3

    .line 126
    .line 127
    move-object/from16 v7, v29

    .line 128
    .line 129
    move-object/from16 v4, v33

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :catchall_1
    move-exception v0

    .line 133
    :goto_3
    move/from16 v3, p1

    .line 134
    .line 135
    move-object/from16 v15, v28

    .line 136
    .line 137
    goto/16 :goto_19

    .line 138
    .line 139
    :catchall_2
    move-exception v0

    .line 140
    move-object/from16 v33, v4

    .line 141
    .line 142
    move-object/from16 v29, v7

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_1
    move-object/from16 v33, v4

    .line 146
    .line 147
    move-object/from16 v29, v7

    .line 148
    .line 149
    monitor-exit v33
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 150
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_2
    move-object/from16 v33, v4

    .line 155
    .line 156
    move-object/from16 v29, v7

    .line 157
    .line 158
    :try_start_5
    monitor-exit v33
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 159
    :try_start_6
    invoke-static/range {v28 .. v28}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    :goto_4
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    const/4 v14, 0x2

    .line 168
    const/4 v13, 0x1

    .line 169
    if-eq v2, v14, :cond_3

    .line 170
    .line 171
    if-eq v2, v13, :cond_3

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_3
    const/4 v12, 0x5

    .line 175
    if-eq v2, v14, :cond_4

    .line 176
    .line 177
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v2, "No start tag found in package restrictions file\n"

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v0, "No start tag found in package manager package restrictions file"

    .line 185
    .line 186
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 187
    .line 188
    invoke-static {v12, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 189
    .line 190
    .line 191
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :goto_5
    move-object v1, v0

    .line 196
    move-object/from16 v2, v29

    .line 197
    .line 198
    goto/16 :goto_1c

    .line 199
    .line 200
    :goto_6
    move/from16 v3, p1

    .line 201
    .line 202
    :goto_7
    move-object/from16 v15, v28

    .line 203
    .line 204
    :goto_8
    move-object/from16 v2, v29

    .line 205
    .line 206
    goto/16 :goto_1a

    .line 207
    .line 208
    :catchall_3
    move-exception v0

    .line 209
    goto :goto_5

    .line 210
    :catch_0
    move-exception v0

    .line 211
    goto :goto_6

    .line 212
    :cond_4
    :try_start_7
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    :goto_9
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eq v2, v13, :cond_1d

    .line 221
    .line 222
    const/4 v3, 0x3

    .line 223
    if-ne v2, v3, :cond_5

    .line 224
    .line 225
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-le v4, v11, :cond_1d

    .line 230
    .line 231
    :cond_5
    if-eq v2, v3, :cond_1c

    .line 232
    .line 233
    const/4 v4, 0x4

    .line 234
    if-ne v2, v4, :cond_6

    .line 235
    .line 236
    goto :goto_9

    .line 237
    :cond_6
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    const-string/jumbo v5, "pkg"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_15

    .line 249
    .line 250
    const-string/jumbo v2, "name"

    .line 251
    .line 252
    .line 253
    invoke-interface {v0, v15, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 258
    .line 259
    :try_start_8
    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 260
    .line 261
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 265
    :try_start_9
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 266
    .line 267
    if-nez v2, :cond_7

    .line 268
    .line 269
    const-string v2, "PackageManager"

    .line 270
    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v4, "No package known for package restrictions "

    .line 277
    .line 278
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 292
    .line 293
    .line 294
    goto :goto_9

    .line 295
    :cond_7
    const-string v5, "ceDataInode"

    .line 296
    .line 297
    const-wide/16 v6, 0x0

    .line 298
    .line 299
    invoke-interface {v0, v15, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 300
    .line 301
    .line 302
    move-result-wide v8

    .line 303
    const-string v5, "deDataInode"

    .line 304
    .line 305
    invoke-interface {v0, v15, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 306
    .line 307
    .line 308
    move-result-wide v16

    .line 309
    const-string v5, "inst"

    .line 310
    .line 311
    invoke-interface {v0, v15, v5, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 312
    .line 313
    .line 314
    move-result v18

    .line 315
    const-string/jumbo v5, "stopped"

    .line 316
    .line 317
    .line 318
    const/4 v12, 0x0

    .line 319
    invoke-interface {v0, v15, v5, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 320
    .line 321
    .line 322
    move-result v20

    .line 323
    const-string/jumbo v5, "nl"

    .line 324
    .line 325
    .line 326
    invoke-interface {v0, v15, v5, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 327
    .line 328
    .line 329
    move-result v21

    .line 330
    const-string v5, "hidden"

    .line 331
    .line 332
    invoke-interface {v0, v15, v5, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-nez v5, :cond_8

    .line 337
    .line 338
    const-string v5, "blocked"

    .line 339
    .line 340
    invoke-interface {v0, v15, v5, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    :cond_8
    move/from16 v22, v5

    .line 345
    .line 346
    const-string v5, "distraction_flags"

    .line 347
    .line 348
    invoke-interface {v0, v15, v5, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 349
    .line 350
    .line 351
    move-result v23

    .line 352
    const-string/jumbo v5, "suspended"

    .line 353
    .line 354
    .line 355
    invoke-interface {v0, v15, v5, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    const-string/jumbo v14, "suspending-package"

    .line 360
    .line 361
    .line 362
    invoke-interface {v0, v15, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v14

    .line 366
    const-string/jumbo v4, "suspend_dialog_message"

    .line 367
    .line 368
    .line 369
    invoke-interface {v0, v15, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    if-eqz v5, :cond_9

    .line 374
    .line 375
    if-nez v14, :cond_9

    .line 376
    .line 377
    const-string v14, "android"

    .line 378
    .line 379
    :cond_9
    const-string v3, "blockUninstall"

    .line 380
    .line 381
    invoke-interface {v0, v15, v3, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    const-string v13, "instant-app"

    .line 386
    .line 387
    invoke-interface {v0, v15, v13, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 388
    .line 389
    .line 390
    move-result v30

    .line 391
    const-string/jumbo v13, "virtual-preload"

    .line 392
    .line 393
    .line 394
    invoke-interface {v0, v15, v13, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 395
    .line 396
    .line 397
    move-result v31

    .line 398
    const-string v13, "enabled"

    .line 399
    .line 400
    invoke-interface {v0, v15, v13, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 401
    .line 402
    .line 403
    move-result v13

    .line 404
    const-string v6, "enabledCaller"

    .line 405
    .line 406
    invoke-interface {v0, v15, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v34

    .line 410
    const-string v6, "harmful-app-warning"

    .line 411
    .line 412
    invoke-interface {v0, v15, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v35

    .line 416
    const-string v6, "domainVerificationStatus"

    .line 417
    .line 418
    invoke-interface {v0, v15, v6, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    const-string v7, "install-reason"

    .line 423
    .line 424
    invoke-interface {v0, v15, v7, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 425
    .line 426
    .line 427
    move-result v36

    .line 428
    const-string/jumbo v7, "uninstall-reason"

    .line 429
    .line 430
    .line 431
    invoke-interface {v0, v15, v7, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 432
    .line 433
    .line 434
    move-result v37

    .line 435
    const-string/jumbo v7, "splash-screen-theme"

    .line 436
    .line 437
    .line 438
    invoke-interface {v0, v15, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v38

    .line 442
    const-string v7, "first-install-time"

    .line 443
    .line 444
    move/from16 v40, v13

    .line 445
    .line 446
    const-wide/16 v12, 0x0

    .line 447
    .line 448
    invoke-interface {v0, v15, v7, v12, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    .line 449
    .line 450
    .line 451
    move-result-wide v41

    .line 452
    const-string/jumbo v7, "min-aspect-ratio"

    .line 453
    .line 454
    .line 455
    const/4 v12, 0x0

    .line 456
    invoke-interface {v0, v15, v7, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 457
    .line 458
    .line 459
    move-result v43

    .line 460
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 461
    .line 462
    .line 463
    move-result v7

    .line 464
    move/from16 v49, v6

    .line 465
    .line 466
    move-object v12, v15

    .line 467
    move-object v13, v12

    .line 468
    move-object/from16 v44, v13

    .line 469
    .line 470
    move-object/from16 v45, v44

    .line 471
    .line 472
    move-object/from16 v46, v45

    .line 473
    .line 474
    move-object/from16 v48, v46

    .line 475
    .line 476
    :goto_a
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 477
    .line 478
    .line 479
    move-result v6

    .line 480
    move/from16 v50, v11

    .line 481
    .line 482
    const/4 v11, 0x1

    .line 483
    if-eq v6, v11, :cond_a

    .line 484
    .line 485
    const/4 v11, 0x3

    .line 486
    if-ne v6, v11, :cond_b

    .line 487
    .line 488
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 489
    .line 490
    .line 491
    move-result v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 492
    if-le v11, v7, :cond_a

    .line 493
    .line 494
    const/4 v11, 0x3

    .line 495
    goto :goto_b

    .line 496
    :cond_a
    move/from16 v11, p1

    .line 497
    .line 498
    move-wide/from16 v52, v8

    .line 499
    .line 500
    goto/16 :goto_13

    .line 501
    .line 502
    :cond_b
    :goto_b
    if-eq v6, v11, :cond_c

    .line 503
    .line 504
    const/4 v11, 0x4

    .line 505
    if-ne v6, v11, :cond_d

    .line 506
    .line 507
    :cond_c
    move/from16 v11, p1

    .line 508
    .line 509
    move/from16 v51, v7

    .line 510
    .line 511
    goto/16 :goto_f

    .line 512
    .line 513
    :cond_d
    :try_start_a
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 518
    .line 519
    .line 520
    move-result v25
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 521
    sparse-switch v25, :sswitch_data_0

    .line 522
    .line 523
    .line 524
    goto :goto_c

    .line 525
    :sswitch_0
    :try_start_b
    const-string/jumbo v11, "suspended-dialog-info"

    .line 526
    .line 527
    .line 528
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v6

    .line 532
    if-eqz v6, :cond_e

    .line 533
    .line 534
    const/4 v6, 0x2

    .line 535
    goto :goto_d

    .line 536
    :sswitch_1
    const-string/jumbo v11, "suspend-params"

    .line 537
    .line 538
    .line 539
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v6

    .line 543
    if-eqz v6, :cond_e

    .line 544
    .line 545
    const/4 v6, 0x5

    .line 546
    goto :goto_d

    .line 547
    :sswitch_2
    const-string/jumbo v11, "suspended-launcher-extras"

    .line 548
    .line 549
    .line 550
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v6

    .line 554
    if-eqz v6, :cond_e

    .line 555
    .line 556
    const/4 v6, 0x4

    .line 557
    goto :goto_d

    .line 558
    :sswitch_3
    const-string/jumbo v11, "suspended-app-extras"

    .line 559
    .line 560
    .line 561
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v6

    .line 565
    if-eqz v6, :cond_e

    .line 566
    .line 567
    const/4 v6, 0x3

    .line 568
    goto :goto_d

    .line 569
    :sswitch_4
    const-string v11, "enabled-components"

    .line 570
    .line 571
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v6

    .line 575
    if-eqz v6, :cond_e

    .line 576
    .line 577
    const/4 v6, 0x0

    .line 578
    goto :goto_d

    .line 579
    :sswitch_5
    const-string v11, "disabled-components"

    .line 580
    .line 581
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 585
    if-eqz v6, :cond_e

    .line 586
    .line 587
    const/4 v6, 0x1

    .line 588
    goto :goto_d

    .line 589
    :sswitch_6
    :try_start_c
    const-string v11, "archive-state"

    .line 590
    .line 591
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v6
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 595
    if-eqz v6, :cond_e

    .line 596
    .line 597
    const/4 v6, 0x6

    .line 598
    goto :goto_d

    .line 599
    :cond_e
    :goto_c
    const/4 v6, -0x1

    .line 600
    :goto_d
    packed-switch v6, :pswitch_data_0

    .line 601
    .line 602
    .line 603
    :try_start_d
    const-string v6, "PackageSettings"

    .line 604
    .line 605
    new-instance v11, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .line 609
    .line 610
    move/from16 v51, v7

    .line 611
    .line 612
    const-string v7, "Unknown tag "

    .line 613
    .line 614
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v7

    .line 621
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    const-string v7, " under tag "

    .line 625
    .line 626
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    const-string/jumbo v7, "pkg"

    .line 630
    .line 631
    .line 632
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v7

    .line 639
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    :goto_e
    move/from16 v11, p1

    .line 643
    .line 644
    :goto_f
    move-wide/from16 v52, v8

    .line 645
    .line 646
    goto/16 :goto_12

    .line 647
    .line 648
    :pswitch_0
    move/from16 v51, v7

    .line 649
    .line 650
    invoke-static {v0}, Lcom/android/server/pm/Settings;->parseArchiveState(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/pkg/ArchiveState;

    .line 651
    .line 652
    .line 653
    move-result-object v46
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 654
    goto :goto_e

    .line 655
    :pswitch_1
    move/from16 v11, p1

    .line 656
    .line 657
    move/from16 v51, v7

    .line 658
    .line 659
    :try_start_e
    invoke-static {v11, v0}, Lcom/android/server/pm/Settings;->readSuspensionParamsLPr(ILcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/Map$Entry;

    .line 660
    .line 661
    .line 662
    move-result-object v6

    .line 663
    if-nez v6, :cond_f

    .line 664
    .line 665
    goto :goto_f

    .line 666
    :cond_f
    if-nez v48, :cond_10

    .line 667
    .line 668
    new-instance v48, Landroid/util/ArrayMap;

    .line 669
    .line 670
    invoke-direct/range {v48 .. v48}, Landroid/util/ArrayMap;-><init>()V

    .line 671
    .line 672
    .line 673
    :cond_10
    move-object/from16 v7, v48

    .line 674
    .line 675
    goto :goto_11

    .line 676
    :catch_1
    move-exception v0

    .line 677
    :goto_10
    move v3, v11

    .line 678
    goto/16 :goto_7

    .line 679
    .line 680
    :goto_11
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v48

    .line 684
    move-wide/from16 v52, v8

    .line 685
    .line 686
    move-object/from16 v8, v48

    .line 687
    .line 688
    check-cast v8, Landroid/content/pm/UserPackage;

    .line 689
    .line 690
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v6

    .line 694
    check-cast v6, Lcom/android/server/pm/pkg/SuspendParams;

    .line 695
    .line 696
    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-object/from16 v48, v7

    .line 700
    .line 701
    goto :goto_12

    .line 702
    :pswitch_2
    move/from16 v11, p1

    .line 703
    .line 704
    move/from16 v51, v7

    .line 705
    .line 706
    move-wide/from16 v52, v8

    .line 707
    .line 708
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    .line 709
    .line 710
    .line 711
    move-result-object v6

    .line 712
    move-object v15, v6

    .line 713
    goto :goto_12

    .line 714
    :pswitch_3
    move/from16 v11, p1

    .line 715
    .line 716
    move/from16 v51, v7

    .line 717
    .line 718
    move-wide/from16 v52, v8

    .line 719
    .line 720
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    .line 721
    .line 722
    .line 723
    move-result-object v6

    .line 724
    move-object v13, v6

    .line 725
    goto :goto_12

    .line 726
    :pswitch_4
    move/from16 v11, p1

    .line 727
    .line 728
    move/from16 v51, v7

    .line 729
    .line 730
    move-wide/from16 v52, v8

    .line 731
    .line 732
    invoke-static {v0}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    .line 733
    .line 734
    .line 735
    move-result-object v6

    .line 736
    move-object v12, v6

    .line 737
    goto :goto_12

    .line 738
    :pswitch_5
    move/from16 v11, p1

    .line 739
    .line 740
    move/from16 v51, v7

    .line 741
    .line 742
    move-wide/from16 v52, v8

    .line 743
    .line 744
    invoke-static {v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/ArraySet;

    .line 745
    .line 746
    .line 747
    move-result-object v45

    .line 748
    goto :goto_12

    .line 749
    :pswitch_6
    move/from16 v11, p1

    .line 750
    .line 751
    move/from16 v51, v7

    .line 752
    .line 753
    move-wide/from16 v52, v8

    .line 754
    .line 755
    invoke-static {v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/ArraySet;

    .line 756
    .line 757
    .line 758
    move-result-object v44

    .line 759
    :goto_12
    move/from16 v11, v50

    .line 760
    .line 761
    move/from16 v7, v51

    .line 762
    .line 763
    move-wide/from16 v8, v52

    .line 764
    .line 765
    goto/16 :goto_a

    .line 766
    .line 767
    :catch_2
    move-exception v0

    .line 768
    move/from16 v11, p1

    .line 769
    .line 770
    goto :goto_10

    .line 771
    :goto_13
    if-nez v12, :cond_11

    .line 772
    .line 773
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 774
    .line 775
    .line 776
    move-result v6

    .line 777
    if-nez v6, :cond_11

    .line 778
    .line 779
    new-instance v6, Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 780
    .line 781
    invoke-direct {v6}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v6, v4}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 785
    .line 786
    .line 787
    move-result-object v4

    .line 788
    invoke-virtual {v4}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    .line 789
    .line 790
    .line 791
    move-result-object v12

    .line 792
    :cond_11
    if-eqz v5, :cond_12

    .line 793
    .line 794
    if-nez v48, :cond_12

    .line 795
    .line 796
    new-instance v4, Lcom/android/server/pm/pkg/SuspendParams;

    .line 797
    .line 798
    const/4 v5, 0x0

    .line 799
    invoke-direct {v4, v12, v13, v15, v5}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V

    .line 800
    .line 801
    .line 802
    new-instance v5, Landroid/util/ArrayMap;

    .line 803
    .line 804
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 805
    .line 806
    .line 807
    invoke-static {v11, v14}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 808
    .line 809
    .line 810
    move-result-object v6

    .line 811
    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-object v14, v5

    .line 815
    goto :goto_14

    .line 816
    :cond_12
    move-object/from16 v14, v48

    .line 817
    .line 818
    :goto_14
    if-eqz v3, :cond_13

    .line 819
    .line 820
    const/4 v13, 0x1

    .line 821
    invoke-virtual {v1, v11, v10, v13}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V

    .line 822
    .line 823
    .line 824
    :goto_15
    const-wide/16 v3, 0x0

    .line 825
    .line 826
    goto :goto_16

    .line 827
    :cond_13
    const/4 v13, 0x1

    .line 828
    goto :goto_15

    .line 829
    :goto_16
    cmp-long v5, v41, v3

    .line 830
    .line 831
    if-eqz v5, :cond_14

    .line 832
    .line 833
    move-object/from16 v15, p2

    .line 834
    .line 835
    goto :goto_17

    .line 836
    :cond_14
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 837
    .line 838
    .line 839
    move-result-object v3

    .line 840
    move-object/from16 v15, p2

    .line 841
    .line 842
    invoke-virtual {v15, v10, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    check-cast v3, Ljava/lang/Long;

    .line 847
    .line 848
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 849
    .line 850
    .line 851
    move-result-wide v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 852
    move-wide/from16 v41, v3

    .line 853
    .line 854
    :goto_17
    move/from16 v3, p1

    .line 855
    .line 856
    move-wide/from16 v4, v52

    .line 857
    .line 858
    move/from16 v12, v49

    .line 859
    .line 860
    move-wide/from16 v6, v16

    .line 861
    .line 862
    move/from16 v8, v40

    .line 863
    .line 864
    move/from16 v9, v18

    .line 865
    .line 866
    move-object/from16 v32, v0

    .line 867
    .line 868
    move-object v0, v10

    .line 869
    move/from16 v10, v20

    .line 870
    .line 871
    move/from16 v33, v50

    .line 872
    .line 873
    move/from16 v11, v21

    .line 874
    .line 875
    move/from16 v54, v12

    .line 876
    .line 877
    const/16 v39, 0x5

    .line 878
    .line 879
    move/from16 v12, v22

    .line 880
    .line 881
    move/from16 v40, v13

    .line 882
    .line 883
    move/from16 v13, v23

    .line 884
    .line 885
    const/16 v48, 0x2

    .line 886
    .line 887
    const/16 v47, 0x0

    .line 888
    .line 889
    move/from16 v15, v30

    .line 890
    .line 891
    move/from16 v16, v31

    .line 892
    .line 893
    move-object/from16 v17, v34

    .line 894
    .line 895
    move-object/from16 v18, v44

    .line 896
    .line 897
    move-object/from16 v19, v45

    .line 898
    .line 899
    move/from16 v20, v36

    .line 900
    .line 901
    move/from16 v21, v37

    .line 902
    .line 903
    move-object/from16 v22, v35

    .line 904
    .line 905
    move-object/from16 v23, v38

    .line 906
    .line 907
    move-wide/from16 v24, v41

    .line 908
    .line 909
    move/from16 v26, v43

    .line 910
    .line 911
    move-object/from16 v27, v46

    .line 912
    .line 913
    :try_start_f
    invoke-virtual/range {v2 .. v27}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    .line 914
    .line 915
    .line 916
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 917
    .line 918
    :try_start_10
    check-cast v2, Lcom/android/server/pm/verify/domain/DomainVerificationService;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 919
    .line 920
    move/from16 v3, p1

    .line 921
    .line 922
    move/from16 v4, v54

    .line 923
    .line 924
    :try_start_11
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setLegacyUserState(IILjava/lang/String;)Z

    .line 925
    .line 926
    .line 927
    move-object/from16 v0, v32

    .line 928
    .line 929
    goto/16 :goto_18

    .line 930
    .line 931
    :catch_3
    move-exception v0

    .line 932
    goto/16 :goto_6

    .line 933
    .line 934
    :cond_15
    move/from16 v3, p1

    .line 935
    .line 936
    move-object/from16 v32, v0

    .line 937
    .line 938
    move/from16 v33, v11

    .line 939
    .line 940
    move/from16 v39, v12

    .line 941
    .line 942
    move/from16 v40, v13

    .line 943
    .line 944
    move/from16 v48, v14

    .line 945
    .line 946
    move-object/from16 v47, v15

    .line 947
    .line 948
    const-string/jumbo v0, "preferred-activities"

    .line 949
    .line 950
    .line 951
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 952
    .line 953
    .line 954
    move-result v0

    .line 955
    if-eqz v0, :cond_16

    .line 956
    .line 957
    move-object/from16 v0, v32

    .line 958
    .line 959
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    .line 960
    .line 961
    .line 962
    goto :goto_18

    .line 963
    :catch_4
    move-exception v0

    .line 964
    goto/16 :goto_7

    .line 965
    .line 966
    :cond_16
    move-object/from16 v0, v32

    .line 967
    .line 968
    const-string/jumbo v4, "persistent-preferred-activities"

    .line 969
    .line 970
    .line 971
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 972
    .line 973
    .line 974
    move-result v4

    .line 975
    if-eqz v4, :cond_17

    .line 976
    .line 977
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    .line 978
    .line 979
    .line 980
    goto :goto_18

    .line 981
    :cond_17
    const-string v4, "crossProfile-intent-filters"

    .line 982
    .line 983
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    move-result v4

    .line 987
    if-eqz v4, :cond_18

    .line 988
    .line 989
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    .line 990
    .line 991
    .line 992
    goto :goto_18

    .line 993
    :cond_18
    const-string v4, "default-apps"

    .line 994
    .line 995
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 996
    .line 997
    .line 998
    move-result v4

    .line 999
    if-eqz v4, :cond_19

    .line 1000
    .line 1001
    invoke-static {v0}, Lcom/android/server/pm/Settings;->readDefaultApps(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v2

    .line 1005
    if-eqz v2, :cond_1b

    .line 1006
    .line 1007
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 1008
    .line 1009
    invoke-virtual {v4, v3, v2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 1010
    .line 1011
    .line 1012
    goto :goto_18

    .line 1013
    :cond_19
    const-string v4, "block-uninstall-packages"

    .line 1014
    .line 1015
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v2

    .line 1019
    if-eqz v2, :cond_1a

    .line 1020
    .line 1021
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    .line 1022
    .line 1023
    .line 1024
    goto :goto_18

    .line 1025
    :cond_1a
    const-string v2, "PackageManager"

    .line 1026
    .line 1027
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1030
    .line 1031
    .line 1032
    const-string v5, "Unknown element under <stopped-packages>: "

    .line 1033
    .line 1034
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v5

    .line 1041
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v4

    .line 1048
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    .line 1050
    .line 1051
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1052
    .line 1053
    .line 1054
    :cond_1b
    :goto_18
    move/from16 v11, v33

    .line 1055
    .line 1056
    move/from16 v12, v39

    .line 1057
    .line 1058
    move/from16 v13, v40

    .line 1059
    .line 1060
    move-object/from16 v15, v47

    .line 1061
    .line 1062
    move/from16 v14, v48

    .line 1063
    .line 1064
    goto/16 :goto_9

    .line 1065
    .line 1066
    :cond_1c
    move/from16 v3, p1

    .line 1067
    .line 1068
    goto/16 :goto_9

    .line 1069
    .line 1070
    :cond_1d
    move-object/from16 v2, v29

    .line 1071
    .line 1072
    goto :goto_1b

    .line 1073
    :catchall_4
    move-exception v0

    .line 1074
    move-object/from16 v33, v4

    .line 1075
    .line 1076
    move v3, v6

    .line 1077
    move-object/from16 v29, v7

    .line 1078
    .line 1079
    move-object/from16 v47, v15

    .line 1080
    .line 1081
    :goto_19
    :try_start_12
    monitor-exit v33
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 1082
    :try_start_13
    throw v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1083
    :catch_5
    move-exception v0

    .line 1084
    goto/16 :goto_8

    .line 1085
    .line 1086
    :catchall_5
    move-exception v0

    .line 1087
    goto :goto_19

    .line 1088
    :catchall_6
    move-exception v0

    .line 1089
    move-object/from16 v29, v7

    .line 1090
    .line 1091
    goto/16 :goto_5

    .line 1092
    .line 1093
    :catch_6
    move-exception v0

    .line 1094
    move v3, v6

    .line 1095
    move-object/from16 v29, v7

    .line 1096
    .line 1097
    move-object/from16 v47, v15

    .line 1098
    .line 1099
    goto/16 :goto_8

    .line 1100
    .line 1101
    :goto_1a
    :try_start_14
    iget-object v4, v2, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 1102
    .line 1103
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 1104
    .line 1105
    .line 1106
    move-result v4

    .line 1107
    if-nez v4, :cond_1e

    .line 1108
    .line 1109
    iget-object v4, v2, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 1110
    .line 1111
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 1112
    .line 1113
    .line 1114
    move-result v4

    .line 1115
    if-nez v4, :cond_1e

    .line 1116
    .line 1117
    iget-object v4, v2, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 1118
    .line 1119
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 1120
    .line 1121
    .line 1122
    move-result v4

    .line 1123
    if-eqz v4, :cond_1f

    .line 1124
    .line 1125
    :cond_1e
    invoke-virtual {v2, v15, v0}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 1126
    .line 1127
    .line 1128
    :cond_1f
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(ILandroid/util/ArrayMap;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 1129
    .line 1130
    .line 1131
    :goto_1b
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 1132
    .line 1133
    .line 1134
    return-void

    .line 1135
    :catchall_7
    move-exception v0

    .line 1136
    move-object v1, v0

    .line 1137
    :goto_1c
    :try_start_15
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 1138
    .line 1139
    .line 1140
    goto :goto_1d

    .line 1141
    :catchall_8
    move-exception v0

    .line 1142
    move-object v2, v0

    .line 1143
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1144
    .line 1145
    .line 1146
    :goto_1d
    throw v1

    .line 1147
    :sswitch_data_0
    .sparse-switch
        -0x7cf1603a -> :sswitch_6
        -0x78da70f9 -> :sswitch_5
        -0x75017ede -> :sswitch_4
        -0x5ee8613f -> :sswitch_3
        -0x54ce12c2 -> :sswitch_2
        -0x3326b7c9 -> :sswitch_1
        0x62ff4521 -> :sswitch_0
    .end sparse-switch

    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readPersistentPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_5

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-le v3, v0, :cond_5

    .line 20
    .line 21
    :cond_1
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    if-ne v1, v2, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "item"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    new-instance v1, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 40
    .line 41
    invoke-direct {v1, p2}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 45
    .line 46
    iget-object v3, v2, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 53
    .line 54
    if-nez v3, :cond_3

    .line 55
    .line 56
    new-instance v3, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 57
    .line 58
    invoke-direct {v3}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p1, v3}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    const/4 v2, 0x0

    .line 65
    invoke-virtual {v3, v2, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "Unknown element under <persistent-preferred-activities>: "

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p2, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 81
    .line 82
    const/4 v2, 0x5

    .line 83
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    return-void
.end method

.method public final readPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eq v3, v1, :cond_c

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    if-ne v3, v4, :cond_1

    .line 16
    .line 17
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-le v5, v2, :cond_c

    .line 22
    .line 23
    :cond_1
    if-eq v3, v4, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    if-ne v3, v4, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "item"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x5

    .line 40
    if-eqz v3, :cond_b

    .line 41
    .line 42
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    .line 43
    .line 44
    invoke-direct {v3, v0}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 45
    .line 46
    .line 47
    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 48
    .line 49
    iget-object v6, v5, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v6, :cond_a

    .line 52
    .line 53
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4, v3}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    if-eqz v6, :cond_9

    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_3

    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_3
    iget-boolean v7, v5, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 72
    .line 73
    if-nez v7, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    const/4 v9, 0x0

    .line 81
    :goto_1
    if-ge v9, v7, :cond_9

    .line 82
    .line 83
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    check-cast v10, Lcom/android/server/pm/PreferredActivity;

    .line 88
    .line 89
    iget-object v10, v10, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 90
    .line 91
    iget-boolean v11, v10, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 92
    .line 93
    if-eqz v11, :cond_8

    .line 94
    .line 95
    iget v11, v5, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 96
    .line 97
    const/high16 v12, 0xfff0000

    .line 98
    .line 99
    and-int/2addr v11, v12

    .line 100
    iget v12, v10, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 101
    .line 102
    if-ne v12, v11, :cond_8

    .line 103
    .line 104
    iget-object v11, v10, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v11, :cond_8

    .line 107
    .line 108
    iget-object v12, v5, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v12, :cond_8

    .line 111
    .line 112
    iget-object v13, v5, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 113
    .line 114
    iget-object v14, v10, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 115
    .line 116
    if-eqz v14, :cond_8

    .line 117
    .line 118
    if-nez v13, :cond_5

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    if-eqz v14, :cond_8

    .line 134
    .line 135
    iget-object v14, v10, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 136
    .line 137
    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v14

    .line 141
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-eqz v13, :cond_8

    .line 150
    .line 151
    array-length v13, v12

    .line 152
    array-length v14, v11

    .line 153
    if-eq v13, v14, :cond_6

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_6
    const/4 v13, 0x0

    .line 157
    :goto_2
    if-ge v13, v14, :cond_0

    .line 158
    .line 159
    aget-object v15, v11, v13

    .line 160
    .line 161
    aget-object v8, v12, v13

    .line 162
    .line 163
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-eqz v8, :cond_8

    .line 168
    .line 169
    iget-object v8, v10, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 170
    .line 171
    aget-object v8, v8, v13

    .line 172
    .line 173
    iget-object v15, v5, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 174
    .line 175
    aget-object v15, v15, v13

    .line 176
    .line 177
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    if-nez v8, :cond_7

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    add-int/2addr v13, v1

    .line 185
    goto :goto_2

    .line 186
    :cond_8
    :goto_3
    add-int/2addr v9, v1

    .line 187
    goto :goto_1

    .line 188
    :cond_9
    :goto_4
    const/4 v5, 0x0

    .line 189
    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v6, "Error in package manager settings: <preferred-activity> "

    .line 197
    .line 198
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v5, v5, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v5, " at "

    .line 207
    .line 208
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 223
    .line 224
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v5, "Unknown element under <preferred-activities>: "

    .line 232
    .line 233
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-static {v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 241
    .line 242
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_c
    return-void
.end method

.method public final readSettingsLPw(Lcom/android/server/pm/ComputerLocked;Ljava/util/List;Landroid/util/ArrayMap;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Z
    .locals 17

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    const-string v0, "No start tag found in package manager settings"

    .line 6
    .line 7
    iget-object v1, v8, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v8, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->clear()V

    .line 18
    .line 19
    .line 20
    new-instance v10, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v11, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v12, Lcom/android/server/pm/ResilientAtomicFile;

    .line 31
    .line 32
    iget-object v2, v8, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 33
    .line 34
    iget-object v3, v8, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    .line 35
    .line 36
    iget-object v4, v8, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    .line 37
    .line 38
    const/16 v5, 0x1b0

    .line 39
    .line 40
    const-string/jumbo v6, "package manager settings"

    .line 41
    .line 42
    .line 43
    move-object v1, v12

    .line 44
    move-object/from16 v7, p0

    .line 45
    .line 46
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    .line 47
    .line 48
    .line 49
    const/4 v7, 0x1

    .line 50
    :try_start_0
    invoke-virtual {v12}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    :try_start_1
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/Settings;->restorePackages(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Ljava/io/FileInputStream;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :cond_0
    move-object v14, v1

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    move-object v1, v0

    .line 64
    goto/16 :goto_c

    .line 65
    .line 66
    :catch_0
    move-exception v0

    .line 67
    move-object/from16 v2, p1

    .line 68
    .line 69
    move-object v13, v1

    .line 70
    goto/16 :goto_a

    .line 71
    .line 72
    :goto_0
    const-string/jumbo v15, "primary_physical"

    .line 73
    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    if-nez v14, :cond_1

    .line 77
    .line 78
    :try_start_2
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v8, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8, v15}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v12}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 95
    .line 96
    .line 97
    return v6

    .line 98
    :catch_1
    move-exception v0

    .line 99
    :goto_1
    move-object/from16 v2, p1

    .line 100
    .line 101
    :goto_2
    move-object v13, v14

    .line 102
    goto/16 :goto_a

    .line 103
    .line 104
    :cond_1
    :try_start_3
    invoke-static {v14}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    :goto_3
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 109
    .line 110
    .line 111
    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    const/4 v2, 0x2

    .line 113
    if-eq v1, v2, :cond_2

    .line 114
    .line 115
    if-eq v1, v7, :cond_2

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_2
    const-string v4, "PackageManager"

    .line 119
    .line 120
    if-eq v1, v2, :cond_3

    .line 121
    .line 122
    :try_start_4
    iget-object v1, v8, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v2, "No start tag found in settings file\n"

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 130
    .line 131
    const/4 v1, 0x5

    .line 132
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    .line 137
    .line 138
    invoke-virtual {v12}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 139
    .line 140
    .line 141
    return v6

    .line 142
    :cond_3
    :try_start_5
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    :goto_4
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eq v1, v7, :cond_4

    .line 151
    .line 152
    const/4 v2, 0x3

    .line 153
    if-ne v1, v2, :cond_5

    .line 154
    .line 155
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-le v3, v0, :cond_4

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_4
    move-object/from16 v2, p1

    .line 163
    .line 164
    goto/16 :goto_9

    .line 165
    .line 166
    :cond_5
    :goto_5
    if-eq v1, v2, :cond_1b

    .line 167
    .line 168
    const/4 v2, 0x4

    .line 169
    if-ne v1, v2, :cond_6

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_6
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const-string/jumbo v2, "package"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_8

    .line 184
    .line 185
    move-object/from16 v1, p0

    .line 186
    .line 187
    move-object v2, v5

    .line 188
    move-object v3, v11

    .line 189
    move-object v7, v4

    .line 190
    move-object v4, v10

    .line 191
    move-object v13, v5

    .line 192
    move-object/from16 v5, p2

    .line 193
    .line 194
    move/from16 v16, v0

    .line 195
    .line 196
    move v0, v6

    .line 197
    move-object/from16 v6, p3

    .line 198
    .line 199
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->readPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/List;Landroid/util/ArrayMap;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    :goto_6
    move-object/from16 v2, p1

    .line 203
    .line 204
    const/4 v5, 0x0

    .line 205
    goto/16 :goto_7

    .line 206
    .line 207
    :cond_8
    move/from16 v16, v0

    .line 208
    .line 209
    move-object v7, v4

    .line 210
    move-object v13, v5

    .line 211
    move v0, v6

    .line 212
    const-string/jumbo v2, "permissions"

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 219
    iget-object v3, v8, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 220
    .line 221
    if-eqz v2, :cond_9

    .line 222
    .line 223
    :try_start_6
    invoke-virtual {v3, v13}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissions(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 224
    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_9
    const-string/jumbo v2, "permission-trees"

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eqz v2, :cond_a

    .line 235
    .line 236
    invoke-virtual {v3, v13}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissionTrees(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 237
    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_a
    const-string/jumbo v2, "shared-user"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_b

    .line 248
    .line 249
    invoke-virtual {v8, v13, v11, v9}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 250
    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_b
    const-string/jumbo v2, "preferred-packages"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_c

    .line 261
    .line 262
    goto :goto_6

    .line 263
    :cond_c
    const-string/jumbo v2, "preferred-activities"

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_d

    .line 271
    .line 272
    invoke-virtual {v8, v0, v13}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    .line 273
    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_d
    const-string/jumbo v2, "persistent-preferred-activities"

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-eqz v2, :cond_e

    .line 284
    .line 285
    invoke-virtual {v8, v0, v13}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_e
    const-string v2, "crossProfile-intent-filters"

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-eqz v2, :cond_f

    .line 296
    .line 297
    invoke-virtual {v8, v0, v13}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    .line 298
    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_f
    const-string v2, "default-browser"

    .line 302
    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_10

    .line 308
    .line 309
    invoke-static {v13}, Lcom/android/server/pm/Settings;->readDefaultApps(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    if-eqz v1, :cond_7

    .line 314
    .line 315
    iget-object v2, v8, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 316
    .line 317
    invoke-virtual {v2, v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_10
    const-string/jumbo v2, "updated-package"

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_11

    .line 329
    .line 330
    invoke-virtual {v8, v13, v9}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/List;)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_6

    .line 334
    .line 335
    :cond_11
    const-string/jumbo v2, "renamed-package"

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-eqz v2, :cond_12

    .line 343
    .line 344
    const-string/jumbo v1, "new"

    .line 345
    .line 346
    .line 347
    const/4 v2, 0x0

    .line 348
    invoke-interface {v13, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    const-string/jumbo v3, "old"

    .line 353
    .line 354
    .line 355
    invoke-interface {v13, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    if-eqz v1, :cond_7

    .line 360
    .line 361
    if-eqz v3, :cond_7

    .line 362
    .line 363
    iget-object v2, v8, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 364
    .line 365
    invoke-virtual {v2, v1, v3}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    goto/16 :goto_6

    .line 369
    .line 370
    :cond_12
    const-string v2, "last-platform-version"

    .line 371
    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 376
    const-string v3, "fingerprint"

    .line 377
    .line 378
    const-string v4, "buildFingerprint"

    .line 379
    .line 380
    const-string v5, "external"

    .line 381
    .line 382
    const-string v6, "internal"

    .line 383
    .line 384
    if-eqz v2, :cond_13

    .line 385
    .line 386
    :try_start_7
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v8, v1}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-virtual {v8, v15}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    const/4 v9, 0x0

    .line 397
    invoke-interface {v13, v9, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    iput v6, v1, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 402
    .line 403
    invoke-interface {v13, v9, v5, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    iput v5, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 408
    .line 409
    invoke-static {v13, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    iput-object v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    .line 414
    .line 415
    iput-object v4, v1, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    .line 416
    .line 417
    invoke-static {v13, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    iput-object v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 422
    .line 423
    iput-object v3, v1, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 424
    .line 425
    goto/16 :goto_6

    .line 426
    .line 427
    :cond_13
    const-string v2, "database-version"

    .line 428
    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    if-eqz v2, :cond_14

    .line 434
    .line 435
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v8, v1}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-virtual {v8, v15}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    const/4 v3, 0x0

    .line 446
    invoke-interface {v13, v3, v6, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    iput v4, v1, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 451
    .line 452
    invoke-interface {v13, v3, v5, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    iput v1, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 457
    .line 458
    goto/16 :goto_6

    .line 459
    .line 460
    :cond_14
    const-string/jumbo v2, "verifier"

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-eqz v2, :cond_15

    .line 468
    .line 469
    const-string v1, "device"

    .line 470
    .line 471
    const/4 v2, 0x0

    .line 472
    invoke-interface {v13, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-static {v1}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    iput-object v1, v8, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 481
    .line 482
    goto/16 :goto_6

    .line 483
    .line 484
    :cond_15
    const-string/jumbo v2, "read-external-storage"

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    if-eqz v2, :cond_16

    .line 492
    .line 493
    goto/16 :goto_6

    .line 494
    .line 495
    :cond_16
    const-string v2, "keyset-settings"

    .line 496
    .line 497
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    if-eqz v2, :cond_17

    .line 502
    .line 503
    iget-object v1, v8, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 504
    .line 505
    invoke-virtual {v1, v10, v13}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Landroid/util/ArrayMap;Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 506
    .line 507
    .line 508
    goto/16 :goto_6

    .line 509
    .line 510
    :cond_17
    const-string/jumbo v2, "version"

    .line 511
    .line 512
    .line 513
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    if-eqz v2, :cond_18

    .line 518
    .line 519
    const-string/jumbo v1, "volumeUuid"

    .line 520
    .line 521
    .line 522
    invoke-static {v13, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-virtual {v8, v1}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    const-string/jumbo v2, "sdkVersion"

    .line 531
    .line 532
    .line 533
    const/4 v5, 0x0

    .line 534
    invoke-interface {v13, v5, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    iput v2, v1, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 539
    .line 540
    const-string v2, "databaseVersion"

    .line 541
    .line 542
    invoke-interface {v13, v5, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    iput v2, v1, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 547
    .line 548
    invoke-static {v13, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    iput-object v2, v1, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    .line 553
    .line 554
    invoke-static {v13, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    iput-object v2, v1, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 559
    .line 560
    move-object/from16 v2, p1

    .line 561
    .line 562
    goto :goto_7

    .line 563
    :cond_18
    const/4 v5, 0x0

    .line 564
    const-string v2, "domain-verifications"

    .line 565
    .line 566
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 570
    iget-object v3, v8, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 571
    .line 572
    if-eqz v2, :cond_19

    .line 573
    .line 574
    :try_start_8
    check-cast v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 575
    .line 576
    move-object/from16 v2, p1

    .line 577
    .line 578
    :try_start_9
    invoke-virtual {v3, v2, v13}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->readSettings(Lcom/android/server/pm/ComputerLocked;Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 579
    .line 580
    .line 581
    goto :goto_7

    .line 582
    :catch_2
    move-exception v0

    .line 583
    goto/16 :goto_1

    .line 584
    .line 585
    :cond_19
    move-object/from16 v2, p1

    .line 586
    .line 587
    const-string v4, "domain-verifications-legacy"

    .line 588
    .line 589
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    if-eqz v1, :cond_1a

    .line 594
    .line 595
    check-cast v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 596
    .line 597
    invoke-virtual {v3, v13}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->readLegacySettings(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 598
    .line 599
    .line 600
    goto :goto_7

    .line 601
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .line 605
    .line 606
    const-string v3, "Unknown element under <packages>: "

    .line 607
    .line 608
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-interface {v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    .line 624
    .line 625
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 626
    .line 627
    .line 628
    :goto_7
    move-object/from16 v9, p2

    .line 629
    .line 630
    move v6, v0

    .line 631
    move-object v4, v7

    .line 632
    move-object v5, v13

    .line 633
    move/from16 v0, v16

    .line 634
    .line 635
    :goto_8
    const/4 v7, 0x1

    .line 636
    goto/16 :goto_4

    .line 637
    .line 638
    :catch_3
    move-exception v0

    .line 639
    goto/16 :goto_2

    .line 640
    .line 641
    :cond_1b
    move-object/from16 v2, p1

    .line 642
    .line 643
    move-object v13, v5

    .line 644
    const/4 v5, 0x0

    .line 645
    move-object/from16 v9, p2

    .line 646
    .line 647
    move-object v5, v13

    .line 648
    goto :goto_8

    .line 649
    :goto_9
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 650
    .line 651
    .line 652
    goto :goto_b

    .line 653
    :catch_4
    move-exception v0

    .line 654
    move-object/from16 v2, p1

    .line 655
    .line 656
    const/4 v5, 0x0

    .line 657
    move-object v13, v5

    .line 658
    :goto_a
    :try_start_a
    iget-object v1, v12, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 659
    .line 660
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 661
    .line 662
    .line 663
    move-result v1

    .line 664
    if-nez v1, :cond_1c

    .line 665
    .line 666
    iget-object v1, v12, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 667
    .line 668
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    if-nez v1, :cond_1c

    .line 673
    .line 674
    iget-object v1, v12, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 675
    .line 676
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 677
    .line 678
    .line 679
    move-result v1

    .line 680
    if-eqz v1, :cond_1d

    .line 681
    .line 682
    :cond_1c
    invoke-virtual {v12, v13, v0}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 683
    .line 684
    .line 685
    :cond_1d
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/pm/Settings;->readSettingsLPw(Lcom/android/server/pm/ComputerLocked;Ljava/util/List;Landroid/util/ArrayMap;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 686
    .line 687
    .line 688
    :goto_b
    invoke-virtual {v12}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 689
    .line 690
    .line 691
    const/4 v1, 0x1

    .line 692
    return v1

    .line 693
    :goto_c
    :try_start_b
    invoke-virtual {v12}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 694
    .line 695
    .line 696
    goto :goto_d

    .line 697
    :catchall_1
    move-exception v0

    .line 698
    move-object v2, v0

    .line 699
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 700
    .line 701
    .line 702
    :goto_d
    throw v1
.end method

.method public final readSharedUserLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "name"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string/jumbo v2, "userId"

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-string/jumbo v4, "system"

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v5, 0x5

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "Error in package manager settings: <shared-user> has no name at "

    .line 30
    .line 31
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 39
    .line 40
    invoke-static {v5, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    if-nez v2, :cond_1

    .line 45
    .line 46
    const-string p0, "Error in package manager settings: shared-user "

    .line 47
    .line 48
    const-string v3, " has bad appId "

    .line 49
    .line 50
    const-string v4, " at "

    .line 51
    .line 52
    invoke-static {v2, p0, v1, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p1, p0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 61
    .line 62
    invoke-static {v5, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    new-instance p0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v1, "Occurred while parsing settings at "

    .line 79
    .line 80
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 88
    .line 89
    const/4 v1, 0x6

    .line 90
    invoke-static {v1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_0
    if-eqz v0, :cond_8

    .line 94
    .line 95
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const/4 v2, 0x1

    .line 104
    if-eq v1, v2, :cond_9

    .line 105
    .line 106
    const/4 v2, 0x3

    .line 107
    if-ne v1, v2, :cond_4

    .line 108
    .line 109
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-le v3, p0, :cond_9

    .line 114
    .line 115
    :cond_4
    if-eq v1, v2, :cond_3

    .line 116
    .line 117
    const/4 v2, 0x4

    .line 118
    if-ne v1, v2, :cond_5

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const-string/jumbo v2, "sigs"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_6

    .line 133
    .line 134
    iget-object v1, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 135
    .line 136
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/PackageSignatures;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    const-string/jumbo v2, "perms"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_7

    .line 148
    .line 149
    iget-object v1, v0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 150
    .line 151
    invoke-static {p1, v1, p3}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v2, "Unknown element under <shared-user>: "

    .line 158
    .line 159
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-static {p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 167
    .line 168
    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_8
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 176
    .line 177
    .line 178
    :cond_9
    return-void
.end method

.method public final registerAppIdLPw(Lcom/android/server/pm/PackageSetting;)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppIdSettingMap;->acquireAndRegisterNewAppId(Lcom/android/server/pm/SettingBase;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    :goto_0
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 23
    .line 24
    if-ltz v0, :cond_1

    .line 25
    .line 26
    return p0

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "Package "

    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 35
    .line 36
    const-string v2, " could not be assigned a valid UID"

    .line 37
    .line 38
    invoke-static {p0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 43
    .line 44
    const/4 v1, 0x5

    .line 45
    invoke-static {v1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, p1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 v0, -0x4

    .line 62
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final registerObservers$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/pm/Settings$1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 54
    .line 55
    iget-object v2, v0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayList;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArrayList;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final removeAppIdLPw(I)V
    .locals 3

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 4
    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit16 v2, p1, -0x2710

    .line 16
    .line 17
    if-ge v2, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    iget v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    .line 32
    .line 33
    if-le p1, v0, :cond_2

    .line 34
    .line 35
    iput p1, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public final removePackageAndAppIdLPw(Ljava/lang/String;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_c

    .line 15
    .line 16
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 17
    .line 18
    iget-object v5, v4, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    const/4 v6, 0x1

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto/16 :goto_6

    .line 28
    .line 29
    :cond_0
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 30
    .line 31
    iget-object v5, v5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const-string v7, "com.sec.android.app.samsungapps"

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_a

    .line 46
    .line 47
    const-string v5, "com.android.vending"

    .line 48
    .line 49
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_1
    sget-boolean v5, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    .line 58
    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 68
    .line 69
    iget-object v5, v5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_2
    move v5, v3

    .line 80
    :goto_0
    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 81
    .line 82
    iget-object v7, v7, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 83
    .line 84
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-ge v5, v7, :cond_9

    .line 89
    .line 90
    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 91
    .line 92
    iget-object v7, v7, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 93
    .line 94
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 99
    .line 100
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 101
    .line 102
    if-nez v1, :cond_3

    .line 103
    .line 104
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    goto/16 :goto_5

    .line 108
    .line 109
    :cond_3
    iget-object v9, v8, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    iget-boolean v10, v8, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    .line 116
    .line 117
    if-eqz v9, :cond_4

    .line 118
    .line 119
    if-nez v10, :cond_4

    .line 120
    .line 121
    move v9, v6

    .line 122
    move/from16 v20, v9

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    move v9, v3

    .line 126
    move/from16 v20, v10

    .line 127
    .line 128
    :goto_1
    iget-object v10, v8, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    const/4 v12, 0x0

    .line 135
    if-eqz v11, :cond_5

    .line 136
    .line 137
    move v9, v6

    .line 138
    move-object v15, v12

    .line 139
    goto :goto_2

    .line 140
    :cond_5
    move-object v15, v10

    .line 141
    :goto_2
    iget-object v10, v8, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    if-eqz v11, :cond_6

    .line 148
    .line 149
    const/4 v9, -0x1

    .line 150
    move/from16 v19, v6

    .line 151
    .line 152
    move v11, v9

    .line 153
    move-object/from16 v16, v12

    .line 154
    .line 155
    move/from16 v9, v19

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    iget v11, v8, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    .line 159
    .line 160
    iget-boolean v13, v8, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    .line 161
    .line 162
    move-object/from16 v16, v10

    .line 163
    .line 164
    move/from16 v19, v13

    .line 165
    .line 166
    :goto_3
    iget-object v10, v8, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v13

    .line 172
    if-eqz v13, :cond_7

    .line 173
    .line 174
    move v9, v6

    .line 175
    move-object/from16 v17, v12

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_7
    move-object/from16 v17, v10

    .line 179
    .line 180
    :goto_4
    if-nez v9, :cond_8

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_8
    iget v12, v8, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    .line 184
    .line 185
    iget-object v13, v8, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 186
    .line 187
    iget-object v14, v8, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 188
    .line 189
    const/16 v18, 0x0

    .line 190
    .line 191
    invoke-static/range {v11 .. v20}, Lcom/android/server/pm/InstallSource;->createInternal(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    :goto_5
    iput-object v8, v7, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 196
    .line 197
    invoke-virtual {v7}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 198
    .line 199
    .line 200
    add-int/lit8 v5, v5, 0x1

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_9
    invoke-virtual {v4, v1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    :cond_a
    :goto_6
    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    if-eqz v1, :cond_b

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    return v0

    .line 220
    :cond_b
    iget v1, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 223
    .line 224
    .line 225
    return v6

    .line 226
    :cond_c
    return v3
.end method

.method public final removeUserLPw(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, v1, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 53
    .line 54
    .line 55
    iget-object v2, v1, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 58
    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 68
    .line 69
    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 71
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 72
    .line 73
    monitor-enter v1

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/4 v2, 0x0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto/16 :goto_5

    .line 96
    .line 97
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    move v3, v2

    .line 106
    :goto_2
    if-ge v3, v0, :cond_5

    .line 107
    .line 108
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 109
    .line 110
    iget-object v4, v4, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 111
    .line 112
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 117
    .line 118
    iget-object v5, v5, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 119
    .line 120
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    check-cast v5, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 125
    .line 126
    new-instance v6, Landroid/util/ArraySet;

    .line 127
    .line 128
    iget-object v7, v5, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 129
    .line 130
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    move v7, v2

    .line 142
    :cond_2
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-eqz v8, :cond_3

    .line 147
    .line 148
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    check-cast v8, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 153
    .line 154
    iget v9, v8, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 155
    .line 156
    if-ne v9, p1, :cond_2

    .line 157
    .line 158
    invoke-virtual {v5, v8}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 159
    .line 160
    .line 161
    const/4 v7, 0x1

    .line 162
    goto :goto_3

    .line 163
    :cond_3
    if-eqz v7, :cond_4

    .line 164
    .line 165
    invoke-virtual {p0, v4, v2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    .line 166
    .line 167
    .line 168
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 173
    .line 174
    iget-object v2, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 175
    .line 176
    monitor-enter v2

    .line 177
    :try_start_2
    iget-object v1, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    .line 178
    .line 179
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    .line 183
    .line 184
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 188
    .line 189
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 190
    .line 191
    .line 192
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 193
    .line 194
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 195
    .line 196
    .line 197
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 199
    .line 200
    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 201
    .line 202
    invoke-virtual {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->clearUser(I)V

    .line 203
    .line 204
    .line 205
    const/4 v0, -0x1

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 210
    .line 211
    if-nez v0, :cond_6

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_6
    new-instance v0, Ljava/io/File;

    .line 215
    .line 216
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 217
    .line 218
    const-string/jumbo v1, "remove_userid"

    .line 219
    .line 220
    .line 221
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 225
    .line 226
    .line 227
    :goto_4
    return-void

    .line 228
    :catchall_1
    move-exception p0

    .line 229
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    throw p0

    .line 231
    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    throw p0

    .line 233
    :catchall_2
    move-exception p0

    .line 234
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 235
    throw p0
.end method

.method public final setBlockUninstallLPw(ILjava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/util/ArraySet;

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public final setPermissionControllerVersion(J)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v3, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, "?pc_version="

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mExtendedFingerprint:Ljava/lang/String;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    :goto_0
    if-ge p1, v1, :cond_0

    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/String;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mExtendedFingerprint:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    xor-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 p1, p1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/pm/Settings;

    .line 8
    .line 9
    return-object p0
.end method

.method public final systemReady(Lcom/android/server/pm/resolution/ComponentResolver;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 15
    .line 16
    iget-object v5, v5, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-ge v4, v5, :cond_5

    .line 23
    .line 24
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 25
    .line 26
    iget-object v5, v5, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lcom/android/server/pm/PreferredIntentResolver;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    iget-object v6, v5, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 38
    .line 39
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_2

    .line 52
    .line 53
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Lcom/android/server/pm/PreferredActivity;

    .line 58
    .line 59
    iget-object v8, v7, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 60
    .line 61
    iget-object v8, v8, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 62
    .line 63
    iget-object v9, p1, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 64
    .line 65
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 66
    .line 67
    monitor-enter v9

    .line 68
    :try_start_0
    iget-object v10, p1, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 69
    .line 70
    iget-object v10, v10, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    if-eqz v8, :cond_1

    .line 77
    .line 78
    move v8, v0

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    move v8, v3

    .line 81
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    if-nez v8, :cond_0

    .line 83
    .line 84
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 91
    .line 92
    throw p0

    .line 93
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-lez v6, :cond_4

    .line 98
    .line 99
    move v6, v3

    .line 100
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-ge v6, v7, :cond_3

    .line 105
    .line 106
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    check-cast v7, Lcom/android/server/pm/PreferredActivity;

    .line 111
    .line 112
    const-string v8, "PackageSettings"

    .line 113
    .line 114
    new-instance v9, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v10, "Removing dangling preferred activity: "

    .line 117
    .line 118
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v10, v7, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 122
    .line 123
    iget-object v10, v10, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 124
    .line 125
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v7}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 136
    .line 137
    .line 138
    add-int/2addr v6, v0

    .line 139
    goto :goto_3

    .line 140
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 141
    .line 142
    iget-object v5, v5, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 143
    .line 144
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :cond_4
    add-int/2addr v4, v0

    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_5
    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 159
    .line 160
    .line 161
    return-object v1
.end method

.method public final unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final writeAllUsersPackageRestrictionsLPr(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1, v1}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 21
    .line 22
    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    const/16 v2, 0x1e

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0

    .line 35
    :cond_1
    :goto_0
    check-cast v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 52
    .line 53
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 54
    .line 55
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    return-void
.end method

.method public final writeBlockUninstallPackagesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/util/ArraySet;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    const-string v0, "block-uninstall-packages"

    .line 15
    .line 16
    invoke-interface {p1, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_0

    .line 25
    .line 26
    const-string v2, "block-uninstall"

    .line 27
    .line 28
    invoke-interface {p1, p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    const-string/jumbo v4, "packageName"

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, p2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {p1, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final writeCrossProfileIntentFiltersLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "crossProfile-intent-filters"

    .line 3
    .line 4
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 20
    .line 21
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 40
    .line 41
    const-string v2, "item"

    .line 42
    .line 43
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    .line 45
    .line 46
    iget v3, p2, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 47
    .line 48
    const-string/jumbo v4, "targetUserId"

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    .line 53
    .line 54
    const-string v3, "flags"

    .line 55
    .line 56
    iget v4, p2, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 57
    .line 58
    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    .line 60
    .line 61
    const-string/jumbo v3, "ownerPackage"

    .line 62
    .line 63
    .line 64
    iget-object v4, p2, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    .line 68
    .line 69
    const-string v3, "accessControl"

    .line 70
    .line 71
    iget v4, p2, Lcom/android/server/pm/CrossProfileIntentFilter;->mAccessControlLevel:I

    .line 72
    .line 73
    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    .line 75
    .line 76
    const-string v3, "filter"

    .line 77
    .line 78
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    .line 80
    .line 81
    iget-object p2, p2, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final writeKernelMappingLPr()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 5
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 7
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 11
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .locals 8

    .line 14
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 15
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 16
    :cond_0
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 17
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object p1

    .line 18
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 20
    check-cast v3, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    if-nez v6, :cond_3

    .line 21
    iget-object v7, v3, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 22
    invoke-static {p1, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    .line 23
    :cond_3
    :goto_1
    new-instance v7, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v7, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v6, :cond_4

    .line 24
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 25
    new-instance v3, Lcom/android/server/pm/Settings$KernelPackageState;

    .line 26
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {v2, v0, v3}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_5

    .line 29
    new-instance p0, Ljava/io/File;

    const-string v0, "appid"

    invoke-direct {p0, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    invoke-static {p0, v1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_5
    if-eqz v4, :cond_b

    move p0, v5

    .line 31
    :goto_2
    array-length v0, p1

    if-ge p0, v0, :cond_8

    .line 32
    iget-object v0, v3, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v0, :cond_6

    aget v1, p1, p0

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 33
    :cond_6
    new-instance v0, Ljava/io/File;

    const-string v1, "excluded_userids"

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v1, p1, p0

    invoke-static {v0, v1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 34
    :cond_8
    iget-object p0, v3, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz p0, :cond_a

    .line 35
    :goto_3
    iget-object p0, v3, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length v0, p0

    if-ge v5, v0, :cond_a

    .line 36
    aget p0, p0, v5

    invoke-static {p1, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-nez p0, :cond_9

    .line 37
    new-instance p0, Ljava/io/File;

    const-string v0, "clear_userid"

    invoke-direct {p0, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v0, v0, v5

    invoke-static {p0, v0}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 38
    :cond_a
    iput-object p1, v3, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    :cond_b
    :goto_4
    return-void
.end method

.method public final writeLPr(Lcom/android/server/pm/Computer;Z)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string/jumbo v8, "renamed-package"

    .line 4
    .line 5
    .line 6
    iget-object v9, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 7
    .line 8
    const-string/jumbo v10, "shared-user"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v11, "permissions"

    .line 12
    .line 13
    .line 14
    iget-object v12, v0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 15
    .line 16
    const-string/jumbo v13, "permission-trees"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v14, "verifier"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v15, "version"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v7, "packages"

    .line 26
    .line 27
    .line 28
    iget-object v6, v0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v16

    .line 34
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 41
    .line 42
    .line 43
    new-instance v5, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v4, Lcom/android/server/pm/ResilientAtomicFile;

    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 51
    .line 52
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    .line 55
    .line 56
    const/16 v18, 0x1b0

    .line 57
    .line 58
    const-string/jumbo v19, "package manager settings"

    .line 59
    .line 60
    .line 61
    move-object/from16 v20, v1

    .line 62
    .line 63
    move-object v1, v4

    .line 64
    move-object/from16 v21, v4

    .line 65
    .line 66
    move-object/from16 v4, v20

    .line 67
    .line 68
    move-object/from16 v20, v8

    .line 69
    .line 70
    move-object v8, v5

    .line 71
    move/from16 v5, v18

    .line 72
    .line 73
    move-object/from16 v22, v6

    .line 74
    .line 75
    move-object/from16 v6, v19

    .line 76
    .line 77
    move-object/from16 v18, v9

    .line 78
    .line 79
    move-object v9, v7

    .line 80
    move-object/from16 v7, p0

    .line 81
    .line 82
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    .line 83
    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    :try_start_0
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 87
    .line 88
    .line 89
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 90
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 97
    .line 98
    .line 99
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 100
    .line 101
    const/4 v5, 0x1

    .line 102
    invoke-interface {v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    .line 107
    .line 108
    move-object/from16 v5, v22

    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    :goto_0
    iget-object v7, v5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 112
    .line 113
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 114
    .line 115
    .line 116
    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 117
    if-ge v6, v7, :cond_0

    .line 118
    .line 119
    :try_start_2
    iget-object v7, v5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 120
    .line 121
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    check-cast v7, Ljava/lang/String;

    .line 126
    .line 127
    iget-object v4, v5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 128
    .line 129
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Lcom/android/server/pm/Settings$VersionInfo;

    .line 134
    .line 135
    invoke-interface {v3, v1, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    .line 137
    .line 138
    const-string/jumbo v1, "volumeUuid"

    .line 139
    .line 140
    .line 141
    invoke-static {v3, v1, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    const-string/jumbo v1, "sdkVersion"

    .line 145
    .line 146
    .line 147
    iget v7, v4, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 148
    .line 149
    move-object/from16 v23, v5

    .line 150
    .line 151
    const/4 v5, 0x0

    .line 152
    invoke-interface {v3, v5, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    .line 154
    .line 155
    const-string v1, "databaseVersion"

    .line 156
    .line 157
    iget v7, v4, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 158
    .line 159
    invoke-interface {v3, v5, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    .line 161
    .line 162
    const-string v1, "buildFingerprint"

    .line 163
    .line 164
    iget-object v5, v4, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v3, v1, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    const-string v1, "fingerprint"

    .line 170
    .line 171
    iget-object v4, v4, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v3, v1, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    const/4 v1, 0x0

    .line 177
    invoke-interface {v3, v1, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    .line 179
    .line 180
    add-int/lit8 v6, v6, 0x1

    .line 181
    .line 182
    move-object/from16 v5, v23

    .line 183
    .line 184
    const/4 v1, 0x0

    .line 185
    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    .line 187
    move-object v1, v0

    .line 188
    move-object/from16 v3, v21

    .line 189
    .line 190
    goto/16 :goto_a

    .line 191
    .line 192
    :catch_0
    move-exception v0

    .line 193
    move-object v1, v2

    .line 194
    :goto_1
    move-object/from16 v3, v21

    .line 195
    .line 196
    goto/16 :goto_9

    .line 197
    .line 198
    :cond_0
    :try_start_3
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 199
    .line 200
    if-eqz v1, :cond_1

    .line 201
    .line 202
    const/4 v1, 0x0

    .line 203
    :try_start_4
    invoke-interface {v3, v1, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    .line 205
    .line 206
    const-string v4, "device"

    .line 207
    .line 208
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 209
    .line 210
    invoke-virtual {v5}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-interface {v3, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    .line 216
    .line 217
    invoke-interface {v3, v1, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    .line 219
    .line 220
    :cond_1
    const/4 v1, 0x0

    .line 221
    :try_start_5
    invoke-interface {v3, v1, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v12, v3}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->writePermissionTrees(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v3, v1, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    .line 229
    .line 230
    invoke-interface {v3, v1, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v12, v3}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->writePermissions(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 234
    .line 235
    .line 236
    invoke-interface {v3, v1, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    .line 238
    .line 239
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 240
    .line 241
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 253
    if-eqz v4, :cond_3

    .line 254
    .line 255
    :try_start_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 260
    .line 261
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 262
    .line 263
    if-eqz v5, :cond_2

    .line 264
    .line 265
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    if-eqz v5, :cond_2

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_2
    invoke-static {v3, v8, v4}, Lcom/android/server/pm/Settings;->writePackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/ArrayList;Lcom/android/server/pm/PackageSetting;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_3
    :try_start_7
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 277
    .line 278
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 290
    if-eqz v4, :cond_5

    .line 291
    .line 292
    :try_start_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 297
    .line 298
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 299
    .line 300
    if-eqz v5, :cond_4

    .line 301
    .line 302
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    if-eqz v5, :cond_4

    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_4
    invoke-static {v3, v4}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_5
    :try_start_9
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 314
    .line 315
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    .line 325
    .line 326
    move-result v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 327
    if-eqz v4, :cond_6

    .line 328
    .line 329
    :try_start_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 334
    .line 335
    const/4 v5, 0x0

    .line 336
    invoke-interface {v3, v5, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    .line 338
    .line 339
    const-string/jumbo v6, "name"

    .line 340
    .line 341
    .line 342
    iget-object v7, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 343
    .line 344
    invoke-interface {v3, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 345
    .line 346
    .line 347
    const-string/jumbo v6, "userId"

    .line 348
    .line 349
    .line 350
    iget v7, v4, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 351
    .line 352
    invoke-interface {v3, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    .line 354
    .line 355
    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 356
    .line 357
    const-string/jumbo v6, "sigs"

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4, v3, v6, v8}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 361
    .line 362
    .line 363
    invoke-interface {v3, v5, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 364
    .line 365
    .line 366
    goto :goto_4

    .line 367
    :cond_6
    move-object/from16 v1, v18

    .line 368
    .line 369
    :try_start_b
    iget-object v4, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 370
    .line 371
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 372
    .line 373
    .line 374
    move-result v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 375
    if-lez v4, :cond_7

    .line 376
    .line 377
    :try_start_c
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    if-eqz v4, :cond_7

    .line 390
    .line 391
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    check-cast v4, Ljava/util/Map$Entry;

    .line 396
    .line 397
    move-object/from16 v5, v20

    .line 398
    .line 399
    const/4 v6, 0x0

    .line 400
    invoke-interface {v3, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    .line 402
    .line 403
    const-string/jumbo v7, "new"

    .line 404
    .line 405
    .line 406
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v8

    .line 410
    check-cast v8, Ljava/lang/String;

    .line 411
    .line 412
    invoke-interface {v3, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    .line 414
    .line 415
    const-string/jumbo v7, "old"

    .line 416
    .line 417
    .line 418
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    check-cast v4, Ljava/lang/String;

    .line 423
    .line 424
    invoke-interface {v3, v6, v7, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    .line 426
    .line 427
    invoke-interface {v3, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 428
    .line 429
    .line 430
    move-object/from16 v20, v5

    .line 431
    .line 432
    goto :goto_5

    .line 433
    :cond_7
    :try_start_d
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 434
    .line 435
    check-cast v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 436
    .line 437
    const/4 v4, -0x1

    .line 438
    move-object/from16 v5, p1

    .line 439
    .line 440
    const/4 v6, 0x0

    .line 441
    invoke-virtual {v1, v5, v3, v6, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->writeSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlSerializer;ZI)V

    .line 442
    .line 443
    .line 444
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 445
    .line 446
    invoke-virtual {v1, v3}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 447
    .line 448
    .line 449
    const/4 v1, 0x0

    .line 450
    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    .line 452
    .line 453
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 454
    .line 455
    .line 456
    move-object/from16 v3, v21

    .line 457
    .line 458
    :try_start_e
    invoke-virtual {v3, v2}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 465
    .line 466
    .line 467
    move/from16 v1, p2

    .line 468
    .line 469
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr(Z)V

    .line 470
    .line 471
    .line 472
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    array-length v4, v1

    .line 481
    :goto_6
    if-ge v6, v4, :cond_8

    .line 482
    .line 483
    aget v5, v1, v6

    .line 484
    .line 485
    iget-object v7, v0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 486
    .line 487
    invoke-virtual {v7, v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    .line 488
    .line 489
    .line 490
    add-int/lit8 v6, v6, 0x1

    .line 491
    .line 492
    goto :goto_6

    .line 493
    :cond_8
    const-string/jumbo v0, "package"

    .line 494
    .line 495
    .line 496
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 497
    .line 498
    .line 499
    move-result-wide v4

    .line 500
    sub-long v4, v4, v16

    .line 501
    .line 502
    invoke-static {v0, v4, v5}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 503
    .line 504
    .line 505
    invoke-virtual {v3}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 506
    .line 507
    .line 508
    return-void

    .line 509
    :catchall_1
    move-exception v0

    .line 510
    :goto_7
    move-object v1, v0

    .line 511
    goto :goto_a

    .line 512
    :catch_1
    move-exception v0

    .line 513
    :goto_8
    move-object v1, v2

    .line 514
    goto :goto_9

    .line 515
    :catchall_2
    move-exception v0

    .line 516
    move-object/from16 v3, v21

    .line 517
    .line 518
    goto :goto_7

    .line 519
    :catch_2
    move-exception v0

    .line 520
    move-object/from16 v3, v21

    .line 521
    .line 522
    goto :goto_8

    .line 523
    :catch_3
    move-exception v0

    .line 524
    goto/16 :goto_1

    .line 525
    .line 526
    :goto_9
    :try_start_f
    const-string v2, "PackageManager"

    .line 527
    .line 528
    const-string v4, "Unable to write package manager settings, current changes will be lost at reboot"

    .line 529
    .line 530
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    .line 532
    .line 533
    if-eqz v1, :cond_9

    .line 534
    .line 535
    invoke-virtual {v3, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 536
    .line 537
    .line 538
    :cond_9
    invoke-virtual {v3}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 539
    .line 540
    .line 541
    return-void

    .line 542
    :goto_a
    :try_start_10
    invoke-virtual {v3}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 543
    .line 544
    .line 545
    goto :goto_b

    .line 546
    :catchall_3
    move-exception v0

    .line 547
    move-object v2, v0

    .line 548
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 549
    .line 550
    .line 551
    :goto_b
    throw v1
.end method

.method public final writePackageListLPr(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "PackageSettings"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Failed to get SELinux context for "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    const-string v0, "Failed to set packages.list SELinux context"

    .line 45
    .line 46
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageListLPrInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final writePackageListLPrInternal(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "PackageSettings"

    .line 6
    .line 7
    const-string v3, " "

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x1

    .line 14
    invoke-static {v4, v5, v5}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    new-array v7, v6, [I

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    move v9, v8

    .line 28
    :goto_0
    if-ge v9, v6, :cond_0

    .line 29
    .line 30
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    check-cast v10, Landroid/content/pm/UserInfo;

    .line 35
    .line 36
    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    .line 37
    .line 38
    aput v10, v7, v9

    .line 39
    .line 40
    add-int/lit8 v9, v9, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v4, -0x1

    .line 44
    if-eq v1, v4, :cond_1

    .line 45
    .line 46
    invoke-static {v7, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v6, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v6, ".tmp"

    .line 67
    .line 68
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Lcom/android/internal/util/JournaledFile;

    .line 79
    .line 80
    iget-object v6, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 81
    .line 82
    invoke-direct {v4, v6, v1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const/4 v6, 0x0

    .line 90
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    .line 91
    .line 92
    invoke-direct {v9, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 93
    .line 94
    .line 95
    new-instance v1, Ljava/io/BufferedWriter;

    .line 96
    .line 97
    new-instance v10, Ljava/io/OutputStreamWriter;

    .line 98
    .line 99
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    invoke-direct {v10, v9, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {v1, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    .line 108
    .line 109
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const/16 v10, 0x3e8

    .line 114
    .line 115
    const/16 v11, 0x408

    .line 116
    .line 117
    const/16 v12, 0x1a0

    .line 118
    .line 119
    invoke-static {v6, v12, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 120
    .line 121
    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object v10, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 128
    .line 129
    invoke-virtual {v10}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    if-eqz v11, :cond_10

    .line 142
    .line 143
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 148
    .line 149
    iget-object v12, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 150
    .line 151
    if-nez v12, :cond_3

    .line 152
    .line 153
    const-string v12, "android"

    .line 154
    .line 155
    iget-object v13, v11, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    if-nez v12, :cond_2

    .line 162
    .line 163
    new-instance v12, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v13, "Skipping "

    .line 169
    .line 170
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v11, " due to missing metadata"

    .line 177
    .line 178
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    move-object v6, v1

    .line 191
    goto/16 :goto_8

    .line 192
    .line 193
    :cond_3
    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    .line 194
    .line 195
    .line 196
    move-result v12

    .line 197
    if-eqz v12, :cond_4

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_4
    invoke-static {v11, v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDataDir(Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/io/File;

    .line 201
    .line 202
    .line 203
    move-result-object v12

    .line 204
    if-nez v12, :cond_5

    .line 205
    .line 206
    const-string/jumbo v12, "null"

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_5
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    :goto_2
    iget-object v13, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 215
    .line 216
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isDebuggable()Z

    .line 217
    .line 218
    .line 219
    move-result v13

    .line 220
    new-instance v14, Landroid/util/IntArray;

    .line 221
    .line 222
    invoke-direct {v14}, Landroid/util/IntArray;-><init>()V

    .line 223
    .line 224
    .line 225
    array-length v15, v7

    .line 226
    move v5, v8

    .line 227
    :goto_3
    if-ge v5, v15, :cond_6

    .line 228
    .line 229
    aget v8, v7, v5

    .line 230
    .line 231
    move-object/from16 p1, v7

    .line 232
    .line 233
    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 234
    .line 235
    iget v0, v11, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 236
    .line 237
    invoke-static {v8, v0}, Landroid/os/UserHandle;->getUid(II)I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    invoke-virtual {v7, v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->getGidsForUid(I)[I

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v14, v0}, Landroid/util/IntArray;->addAll([I)V

    .line 246
    .line 247
    .line 248
    add-int/lit8 v5, v5, 0x1

    .line 249
    .line 250
    move-object/from16 v0, p0

    .line 251
    .line 252
    move-object/from16 v7, p1

    .line 253
    .line 254
    const/4 v8, 0x0

    .line 255
    goto :goto_3

    .line 256
    :cond_6
    move-object/from16 p1, v7

    .line 257
    .line 258
    const/16 v0, 0x20

    .line 259
    .line 260
    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-ltz v0, :cond_7

    .line 265
    .line 266
    move-object/from16 v0, p0

    .line 267
    .line 268
    move-object/from16 v7, p1

    .line 269
    .line 270
    const/4 v5, 0x1

    .line 271
    const/4 v8, 0x0

    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :cond_7
    const/4 v0, 0x0

    .line 275
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 276
    .line 277
    .line 278
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 279
    .line 280
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 291
    .line 292
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUid()I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    if-eqz v13, :cond_8

    .line 300
    .line 301
    const-string v0, " 1 "

    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_8
    const-string v0, " 0 "

    .line 305
    .line 306
    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v14}, Landroid/util/IntArray;->size()I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    invoke-virtual {v14}, Landroid/util/IntArray;->size()I

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-lez v5, :cond_9

    .line 334
    .line 335
    const/4 v5, 0x0

    .line 336
    invoke-virtual {v14, v5}, Landroid/util/IntArray;->get(I)I

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const/4 v7, 0x1

    .line 344
    :goto_5
    if-ge v7, v0, :cond_a

    .line 345
    .line 346
    const-string v8, ","

    .line 347
    .line 348
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v14, v7}, Landroid/util/IntArray;->get(I)I

    .line 352
    .line 353
    .line 354
    move-result v8

    .line 355
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    add-int/lit8 v7, v7, 0x1

    .line 359
    .line 360
    goto :goto_5

    .line 361
    :cond_9
    const/4 v5, 0x0

    .line 362
    const-string/jumbo v0, "none"

    .line 363
    .line 364
    .line 365
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    :cond_a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 372
    .line 373
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isProfileableByShell()Z

    .line 374
    .line 375
    .line 376
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    const-string v7, "0"

    .line 378
    .line 379
    const-string v8, "1"

    .line 380
    .line 381
    if-eqz v0, :cond_b

    .line 382
    .line 383
    move-object v0, v8

    .line 384
    goto :goto_6

    .line 385
    :cond_b
    move-object v0, v7

    .line 386
    :goto_6
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 393
    .line 394
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getLongVersionCode()J

    .line 395
    .line 396
    .line 397
    move-result-wide v12

    .line 398
    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 405
    .line 406
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isProfileable()Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_c

    .line 411
    .line 412
    move-object v7, v8

    .line 413
    :cond_c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-eqz v0, :cond_d

    .line 424
    .line 425
    const-string v0, "@system"

    .line 426
    .line 427
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    goto :goto_7

    .line 431
    :cond_d
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isProduct()Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-eqz v0, :cond_e

    .line 436
    .line 437
    const-string v0, "@product"

    .line 438
    .line 439
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    goto :goto_7

    .line 443
    :cond_e
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 444
    .line 445
    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 446
    .line 447
    if-eqz v0, :cond_f

    .line 448
    .line 449
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-nez v0, :cond_f

    .line 454
    .line 455
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 456
    .line 457
    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 458
    .line 459
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    goto :goto_7

    .line 463
    :cond_f
    const-string v0, "@null"

    .line 464
    .line 465
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    :goto_7
    const-string v0, "\n"

    .line 469
    .line 470
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 474
    .line 475
    .line 476
    move-object/from16 v0, p0

    .line 477
    .line 478
    move-object/from16 v7, p1

    .line 479
    .line 480
    move v8, v5

    .line 481
    const/4 v5, 0x1

    .line 482
    goto/16 :goto_1

    .line 483
    .line 484
    :cond_10
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 485
    .line 486
    .line 487
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 494
    .line 495
    .line 496
    goto :goto_9

    .line 497
    :catch_1
    move-exception v0

    .line 498
    :goto_8
    const-string v1, "Failed to write packages.list"

    .line 499
    .line 500
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    .line 502
    .line 503
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 507
    .line 508
    .line 509
    :goto_9
    return-void
.end method

.method public final writePackageRestrictions(IJZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "Cancel writing package restrictions for user="

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const/4 v5, 0x0

    .line 13
    :try_start_0
    iget-object v6, v0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    const/4 v7, 0x0

    .line 17
    if-nez p4, :cond_1

    .line 18
    .line 19
    :try_start_1
    iget-object v8, v0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    invoke-virtual {v8, v1, v7}, Landroid/util/SparseIntArray;->get(II)I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    sub-int/2addr v8, v2

    .line 26
    if-gez v8, :cond_0

    .line 27
    .line 28
    const-string v0, "PackageSettings"

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-virtual {v4}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_0
    :try_start_2
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 54
    .line 55
    invoke-virtual {v3, v1, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    .line 58
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 59
    .line 60
    .line 61
    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 63
    :try_start_5
    iget-object v6, v0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 64
    .line 65
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 66
    .line 67
    monitor-enter v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 68
    :try_start_6
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-interface {v8, v5, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 75
    .line 76
    .line 77
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 78
    .line 79
    invoke-interface {v8, v9, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    const-string/jumbo v9, "package-restrictions"

    .line 83
    .line 84
    .line 85
    invoke-interface {v8, v5, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    .line 87
    .line 88
    iget-object v9, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 89
    .line 90
    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    if-eqz v10, :cond_1a

    .line 103
    .line 104
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 109
    .line 110
    invoke-virtual {v10, v1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    const-string/jumbo v12, "pkg"

    .line 115
    .line 116
    .line 117
    invoke-interface {v8, v5, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    .line 119
    .line 120
    const-string/jumbo v12, "name"

    .line 121
    .line 122
    .line 123
    iget-object v10, v10, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 124
    .line 125
    invoke-interface {v8, v5, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    .line 127
    .line 128
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    .line 129
    .line 130
    .line 131
    move-result-wide v12

    .line 132
    const-wide/16 v14, 0x0

    .line 133
    .line 134
    cmp-long v10, v12, v14

    .line 135
    .line 136
    if-eqz v10, :cond_2

    .line 137
    .line 138
    const-string v10, "ceDataInode"

    .line 139
    .line 140
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    .line 141
    .line 142
    .line 143
    move-result-wide v12

    .line 144
    invoke-interface {v8, v5, v10, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    goto/16 :goto_5

    .line 150
    .line 151
    :cond_2
    :goto_1
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    .line 152
    .line 153
    .line 154
    move-result-wide v12

    .line 155
    cmp-long v10, v12, v14

    .line 156
    .line 157
    if-eqz v10, :cond_3

    .line 158
    .line 159
    const-string v10, "deDataInode"

    .line 160
    .line 161
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    .line 162
    .line 163
    .line 164
    move-result-wide v12

    .line 165
    invoke-interface {v8, v5, v10, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    .line 167
    .line 168
    :cond_3
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    if-nez v10, :cond_4

    .line 173
    .line 174
    const-string v10, "inst"

    .line 175
    .line 176
    invoke-interface {v8, v5, v10, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    .line 178
    .line 179
    :cond_4
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    if-eqz v10, :cond_5

    .line 184
    .line 185
    const-string/jumbo v10, "stopped"

    .line 186
    .line 187
    .line 188
    invoke-interface {v8, v5, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    .line 190
    .line 191
    :cond_5
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    if-eqz v10, :cond_6

    .line 196
    .line 197
    const-string/jumbo v10, "nl"

    .line 198
    .line 199
    .line 200
    invoke-interface {v8, v5, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    .line 202
    .line 203
    :cond_6
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    if-eqz v10, :cond_7

    .line 208
    .line 209
    const-string v10, "hidden"

    .line 210
    .line 211
    invoke-interface {v8, v5, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    .line 213
    .line 214
    :cond_7
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    if-eqz v10, :cond_8

    .line 219
    .line 220
    const-string v10, "distraction_flags"

    .line 221
    .line 222
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    .line 223
    .line 224
    .line 225
    move-result v12

    .line 226
    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    .line 228
    .line 229
    :cond_8
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    if-eqz v10, :cond_9

    .line 234
    .line 235
    const-string/jumbo v10, "suspended"

    .line 236
    .line 237
    .line 238
    invoke-interface {v8, v5, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    .line 240
    .line 241
    :cond_9
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    if-eqz v10, :cond_a

    .line 246
    .line 247
    const-string v10, "instant-app"

    .line 248
    .line 249
    invoke-interface {v8, v5, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    .line 251
    .line 252
    :cond_a
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    if-eqz v10, :cond_b

    .line 257
    .line 258
    const-string/jumbo v10, "virtual-preload"

    .line 259
    .line 260
    .line 261
    invoke-interface {v8, v5, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    .line 263
    .line 264
    :cond_b
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    if-eqz v10, :cond_c

    .line 269
    .line 270
    const-string v10, "enabled"

    .line 271
    .line 272
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    .line 278
    .line 279
    :cond_c
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    if-eqz v10, :cond_d

    .line 284
    .line 285
    const-string v10, "enabledCaller"

    .line 286
    .line 287
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v12

    .line 291
    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    .line 293
    .line 294
    :cond_d
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    .line 295
    .line 296
    .line 297
    move-result v10

    .line 298
    if-eqz v10, :cond_e

    .line 299
    .line 300
    const-string v10, "install-reason"

    .line 301
    .line 302
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    .line 303
    .line 304
    .line 305
    move-result v12

    .line 306
    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 307
    .line 308
    .line 309
    :cond_e
    const-string v10, "first-install-time"

    .line 310
    .line 311
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    .line 312
    .line 313
    .line 314
    move-result-wide v12

    .line 315
    invoke-interface {v8, v5, v10, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    .line 317
    .line 318
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    if-eqz v10, :cond_f

    .line 323
    .line 324
    const-string/jumbo v10, "uninstall-reason"

    .line 325
    .line 326
    .line 327
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    .line 328
    .line 329
    .line 330
    move-result v12

    .line 331
    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    .line 333
    .line 334
    :cond_f
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    if-eqz v10, :cond_10

    .line 339
    .line 340
    const-string v10, "harmful-app-warning"

    .line 341
    .line 342
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v12

    .line 346
    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 347
    .line 348
    .line 349
    :cond_10
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    if-eqz v10, :cond_11

    .line 354
    .line 355
    const-string/jumbo v10, "splash-screen-theme"

    .line 356
    .line 357
    .line 358
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v12

    .line 362
    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    .line 364
    .line 365
    :cond_11
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getMinAspectRatio()I

    .line 366
    .line 367
    .line 368
    move-result v10

    .line 369
    if-eqz v10, :cond_12

    .line 370
    .line 371
    const-string/jumbo v10, "min-aspect-ratio"

    .line 372
    .line 373
    .line 374
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getMinAspectRatio()I

    .line 375
    .line 376
    .line 377
    move-result v12

    .line 378
    invoke-interface {v8, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    .line 380
    .line 381
    :cond_12
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    .line 382
    .line 383
    .line 384
    move-result v10

    .line 385
    if-eqz v10, :cond_15

    .line 386
    .line 387
    move v10, v7

    .line 388
    :goto_2
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    .line 389
    .line 390
    .line 391
    move-result-object v12

    .line 392
    iget-object v12, v12, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 393
    .line 394
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    .line 395
    .line 396
    .line 397
    move-result v12

    .line 398
    if-ge v10, v12, :cond_15

    .line 399
    .line 400
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    .line 401
    .line 402
    .line 403
    move-result-object v12

    .line 404
    iget-object v12, v12, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 405
    .line 406
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v12

    .line 410
    check-cast v12, Landroid/content/pm/UserPackage;

    .line 411
    .line 412
    const-string/jumbo v13, "suspend-params"

    .line 413
    .line 414
    .line 415
    invoke-interface {v8, v5, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    .line 417
    .line 418
    const-string/jumbo v13, "suspending-package"

    .line 419
    .line 420
    .line 421
    iget-object v14, v12, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 422
    .line 423
    invoke-interface {v8, v5, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    .line 425
    .line 426
    invoke-static {}, Landroid/app/admin/flags/Flags;->crossUserSuspensionEnabledRo()Z

    .line 427
    .line 428
    .line 429
    move-result v13

    .line 430
    if-eqz v13, :cond_13

    .line 431
    .line 432
    const-string/jumbo v13, "suspending-user"

    .line 433
    .line 434
    .line 435
    iget v12, v12, Landroid/content/pm/UserPackage;->userId:I

    .line 436
    .line 437
    invoke-interface {v8, v5, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    .line 439
    .line 440
    :cond_13
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    .line 441
    .line 442
    .line 443
    move-result-object v12

    .line 444
    iget-object v12, v12, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 445
    .line 446
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v12

    .line 450
    check-cast v12, Lcom/android/server/pm/pkg/SuspendParams;

    .line 451
    .line 452
    if-eqz v12, :cond_14

    .line 453
    .line 454
    invoke-virtual {v12, v8}, Lcom/android/server/pm/pkg/SuspendParams;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 455
    .line 456
    .line 457
    :cond_14
    const-string/jumbo v12, "suspend-params"

    .line 458
    .line 459
    .line 460
    invoke-interface {v8, v5, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 461
    .line 462
    .line 463
    add-int/2addr v10, v2

    .line 464
    goto :goto_2

    .line 465
    :cond_15
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    .line 466
    .line 467
    .line 468
    move-result-object v10

    .line 469
    if-eqz v10, :cond_17

    .line 470
    .line 471
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 472
    .line 473
    .line 474
    move-result v12

    .line 475
    if-lez v12, :cond_17

    .line 476
    .line 477
    const-string v12, "enabled-components"

    .line 478
    .line 479
    invoke-interface {v8, v5, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 480
    .line 481
    .line 482
    move v12, v7

    .line 483
    :goto_3
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 484
    .line 485
    .line 486
    move-result v13

    .line 487
    if-ge v12, v13, :cond_16

    .line 488
    .line 489
    const-string v13, "item"

    .line 490
    .line 491
    invoke-interface {v8, v5, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    .line 493
    .line 494
    const-string/jumbo v13, "name"

    .line 495
    .line 496
    .line 497
    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v14

    .line 501
    check-cast v14, Ljava/lang/String;

    .line 502
    .line 503
    invoke-interface {v8, v5, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    .line 505
    .line 506
    const-string v13, "item"

    .line 507
    .line 508
    invoke-interface {v8, v5, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    .line 510
    .line 511
    add-int/2addr v12, v2

    .line 512
    goto :goto_3

    .line 513
    :cond_16
    const-string v10, "enabled-components"

    .line 514
    .line 515
    invoke-interface {v8, v5, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    .line 517
    .line 518
    :cond_17
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    .line 519
    .line 520
    .line 521
    move-result-object v10

    .line 522
    if-eqz v10, :cond_19

    .line 523
    .line 524
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 525
    .line 526
    .line 527
    move-result v12

    .line 528
    if-lez v12, :cond_19

    .line 529
    .line 530
    const-string v12, "disabled-components"

    .line 531
    .line 532
    invoke-interface {v8, v5, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 533
    .line 534
    .line 535
    move v12, v7

    .line 536
    :goto_4
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 537
    .line 538
    .line 539
    move-result v13

    .line 540
    if-ge v12, v13, :cond_18

    .line 541
    .line 542
    const-string v13, "item"

    .line 543
    .line 544
    invoke-interface {v8, v5, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    .line 546
    .line 547
    const-string/jumbo v13, "name"

    .line 548
    .line 549
    .line 550
    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v14

    .line 554
    check-cast v14, Ljava/lang/String;

    .line 555
    .line 556
    invoke-interface {v8, v5, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 557
    .line 558
    .line 559
    const-string v13, "item"

    .line 560
    .line 561
    invoke-interface {v8, v5, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    .line 563
    .line 564
    add-int/2addr v12, v2

    .line 565
    goto :goto_4

    .line 566
    :cond_18
    const-string v10, "disabled-components"

    .line 567
    .line 568
    invoke-interface {v8, v5, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 569
    .line 570
    .line 571
    :cond_19
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    .line 572
    .line 573
    .line 574
    move-result-object v10

    .line 575
    invoke-static {v8, v10}, Lcom/android/server/pm/Settings;->writeArchiveStateLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/pkg/ArchiveState;)V

    .line 576
    .line 577
    .line 578
    const-string/jumbo v10, "pkg"

    .line 579
    .line 580
    .line 581
    invoke-interface {v8, v5, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    .line 583
    .line 584
    goto/16 :goto_0

    .line 585
    .line 586
    :cond_1a
    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(ILcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    .line 593
    .line 594
    .line 595
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 596
    .line 597
    iget-object v2, v2, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 598
    .line 599
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    check-cast v2, Ljava/lang/String;

    .line 604
    .line 605
    invoke-static {v8, v2}, Lcom/android/server/pm/Settings;->writeDefaultApps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    .line 609
    .line 610
    .line 611
    const-string/jumbo v0, "package-restrictions"

    .line 612
    .line 613
    .line 614
    invoke-interface {v8, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 615
    .line 616
    .line 617
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 618
    .line 619
    .line 620
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 621
    :try_start_7
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 622
    .line 623
    invoke-virtual {v4, v3}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 624
    .line 625
    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .line 630
    .line 631
    const-string/jumbo v2, "package-user-"

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 645
    .line 646
    .line 647
    move-result-wide v1

    .line 648
    sub-long v1, v1, p2

    .line 649
    .line 650
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 651
    .line 652
    .line 653
    invoke-virtual {v4}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 654
    .line 655
    .line 656
    return-void

    .line 657
    :catchall_2
    move-exception v0

    .line 658
    move-object v1, v0

    .line 659
    goto :goto_8

    .line 660
    :catch_0
    move-exception v0

    .line 661
    move-object v5, v3

    .line 662
    goto :goto_7

    .line 663
    :goto_5
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 664
    :try_start_9
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 665
    .line 666
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 667
    :catchall_3
    move-exception v0

    .line 668
    move-object v5, v3

    .line 669
    goto :goto_6

    .line 670
    :catch_1
    move-exception v0

    .line 671
    move-object v1, v0

    .line 672
    :try_start_a
    const-string v0, "PackageManager"

    .line 673
    .line 674
    const-string v2, "Unable to write package manager package restrictions,  current changes will be lost at reboot"

    .line 675
    .line 676
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    .line 678
    .line 679
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 680
    invoke-virtual {v4}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 681
    .line 682
    .line 683
    return-void

    .line 684
    :goto_6
    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 685
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 686
    :catch_2
    move-exception v0

    .line 687
    :goto_7
    :try_start_d
    const-string v1, "PackageManager"

    .line 688
    .line 689
    const-string v2, "Unable to write package manager package restrictions,  current changes will be lost at reboot"

    .line 690
    .line 691
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .line 693
    .line 694
    if-eqz v5, :cond_1b

    .line 695
    .line 696
    invoke-virtual {v4, v5}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 697
    .line 698
    .line 699
    :cond_1b
    invoke-virtual {v4}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 700
    .line 701
    .line 702
    return-void

    .line 703
    :goto_8
    :try_start_e
    invoke-virtual {v4}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 704
    .line 705
    .line 706
    goto :goto_9

    .line 707
    :catchall_4
    move-exception v0

    .line 708
    move-object v2, v0

    .line 709
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 710
    .line 711
    .line 712
    :goto_9
    throw v1
.end method

.method public final writePackageRestrictionsLPr(IZ)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictions(IJZ)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 33
    .line 34
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    .line 36
    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    new-instance v6, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    move-object v0, v6

    .line 41
    move-object v1, p0

    .line 42
    move v2, p1

    .line 43
    move v5, p2

    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Settings;IJZ)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    const/16 p1, 0x1e

    .line 50
    .line 51
    invoke-virtual {p0, p1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0
.end method

.method public final writePersistentPreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "persistent-preferred-activities"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 41
    .line 42
    const-string v2, "item"

    .line 43
    .line 44
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    .line 46
    .line 47
    iget-object v3, p2, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string/jumbo v4, "name"

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    .line 58
    .line 59
    const-string/jumbo v3, "set-by-dpm"

    .line 60
    .line 61
    .line 62
    iget-boolean v4, p2, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    .line 63
    .line 64
    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    .line 66
    .line 67
    const-string v3, "filter"

    .line 68
    .line 69
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    .line 71
    .line 72
    iget-object p2, p2, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final writePreferredActivitiesLPr(ILcom/android/modules/utils/TypedXmlSerializer;Z)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "preferred-activities"

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 17
    .line 18
    if-eqz p0, :cond_3

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/android/server/pm/PreferredActivity;

    .line 41
    .line 42
    const-string v2, "item"

    .line 43
    .line 44
    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    .line 46
    .line 47
    iget-object v3, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 48
    .line 49
    iget-object v4, v3, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    array-length v4, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    move v4, v5

    .line 57
    :goto_1
    const-string/jumbo v6, "name"

    .line 58
    .line 59
    .line 60
    iget-object v7, v3, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {p2, v0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    .line 64
    .line 65
    if-eqz p3, :cond_2

    .line 66
    .line 67
    iget v7, v3, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 68
    .line 69
    if-eqz v7, :cond_1

    .line 70
    .line 71
    const-string/jumbo v8, "match"

    .line 72
    .line 73
    .line 74
    invoke-interface {p2, v0, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    .line 76
    .line 77
    :cond_1
    const-string v7, "always"

    .line 78
    .line 79
    iget-boolean v8, v3, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 80
    .line 81
    invoke-interface {p2, v0, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    .line 83
    .line 84
    const-string/jumbo v7, "set"

    .line 85
    .line 86
    .line 87
    invoke-interface {p2, v0, v7, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    .line 89
    .line 90
    :goto_2
    if-ge v5, v4, :cond_2

    .line 91
    .line 92
    invoke-interface {p2, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    .line 94
    .line 95
    iget-object v8, v3, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 96
    .line 97
    aget-object v8, v8, v5

    .line 98
    .line 99
    invoke-interface {p2, v0, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    .line 101
    .line 102
    invoke-interface {p2, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    .line 104
    .line 105
    add-int/lit8 v5, v5, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    const-string v3, "filter"

    .line 109
    .line 110
    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    .line 112
    .line 113
    iget-object p1, p1, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    .line 120
    .line 121
    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    .line 127
    .line 128
    return-void
.end method
