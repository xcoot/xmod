.class public final Lcom/android/server/appop/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_MID:Z

.field public static final NON_PACKAGE_UIDS:[I

.field public static final OPS_RESTRICTED_ON_SUSPEND:[I

.field public static final WRITE_DELAY:J


# instance fields
.field public final dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

.field public mAcceptableLeftDistance:I

.field public final mActiveWatchers:Landroid/util/ArrayMap;

.field mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

.field public final mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

.field mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

.field public final mAsyncOpWatchers:Landroid/util/ArrayMap;

.field public final mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

.field public volatile mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

.field public mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

.field final mConstants:Lcom/android/server/appop/AppOpsService$Constants;

.field public final mContext:Landroid/content/Context;

.field public mFastWriteScheduled:Z

.field public final mHandler:Landroid/os/Handler;

.field public volatile mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

.field public mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

.field public final mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

.field public final mKnownDeviceIds:Landroid/util/SparseArray;

.field public mMessagesCollectedCount:F

.field public final mModeWatchers:Landroid/util/ArrayMap;

.field public final mNotedWatchers:Landroid/util/ArrayMap;

.field public final mOnPackageUpdatedReceiver:Lcom/android/server/appop/AppOpsService$3;

.field public final mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

.field public final mOpGlobalRestrictions:Landroid/util/ArrayMap;

.field public final mOpModeWatchers:Landroid/util/SparseArray;

.field public final mOpUserRestrictions:Landroid/util/ArrayMap;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

.field public final mPackageModeWatchers:Landroid/util/ArrayMap;

.field public final mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

.field public final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public mProfileOwners:Landroid/util/SparseIntArray;

.field public mRarelyUsedPackages:Landroid/util/ArraySet;

.field public final mRecentAccessPersistence:Lcom/android/server/appop/AppOpsRecentAccessPersistence;

.field public final mRecentAccessesFile:Landroid/util/AtomicFile;

.field public mSampledAppOpCode:I

.field public mSampledPackage:Ljava/lang/String;

.field public mSamplingStrategy:I

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mStartedWatchers:Landroid/util/ArrayMap;

.field public final mStorageFile:Landroid/util/AtomicFile;

.field public final mSwitchedOps:Landroid/util/SparseArray;

.field public mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

.field final mUidStates:Landroid/util/SparseArray;

.field public final mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

.field public mWriteScheduled:Z


# direct methods
.method public static -$$Nest$mcheckAudioOperationImpl(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    .line 2
    .line 3
    const-string/jumbo v1, "checkZenModeRestrictionLocked return mode: "

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget v2, v0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq p1, v3, :cond_0

    .line 13
    .line 14
    const/16 v4, 0x1c

    .line 15
    .line 16
    if-ne p1, v4, :cond_1

    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    :cond_0
    sget-object v2, Lcom/android/server/appop/AudioRestrictionManager;->CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const-string p2, "AudioRestriction"

    .line 37
    .line 38
    const-string/jumbo v1, "checkAudioOperation: MODE_IGNORED camera audio restrictions"

    .line 39
    .line 40
    .line 41
    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    const/4 p2, 0x1

    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_3

    .line 49
    :cond_1
    iget-object v2, v0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/util/SparseArray;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    iget-object v2, p2, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 69
    .line 70
    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    iget p2, p2, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    move p2, v3

    .line 80
    :goto_0
    if-eqz p2, :cond_3

    .line 81
    .line 82
    const-string v2, "AudioRestriction"

    .line 83
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    monitor-exit v0

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    move p2, v3

    .line 103
    :goto_1
    if-eqz p2, :cond_4

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    :goto_2
    return p2

    .line 111
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw p0
.end method

.method public static -$$Nest$mcheckOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v10, p1

    .line 4
    .line 5
    move/from16 v11, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    move/from16 v12, p5

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v9, v12}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string v1, "AppOps"

    .line 21
    .line 22
    const-string/jumbo v2, "checkOperationImpl returned MODE_IGNORED as virtualDeviceId "

    .line 23
    .line 24
    .line 25
    const-string v3, " is invalid : packageName "

    .line 26
    .line 27
    const-string v4, " uid "

    .line 28
    .line 29
    invoke-static {v12, v2, v3, v0, v4}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, " code "

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    const/4 v13, 0x1

    .line 52
    goto/16 :goto_8

    .line 53
    .line 54
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v9, v1, v0}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_4

    .line 63
    .line 64
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 65
    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    :cond_2
    const-string v1, "AppOps"

    .line 73
    .line 74
    const-string/jumbo v2, "checkOperationImpl::isIncomingPackageValid return opToDefaultMode(code): packageName "

    .line 75
    .line 76
    .line 77
    const-string v3, " uid "

    .line 78
    .line 79
    const-string v4, " code "

    .line 80
    .line 81
    invoke-static {v11, v2, v0, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0, v10, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    goto/16 :goto_8

    .line 93
    .line 94
    :cond_4
    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v14

    .line 98
    if-nez v14, :cond_6

    .line 99
    .line 100
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 101
    .line 102
    if-nez v1, :cond_5

    .line 103
    .line 104
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 105
    .line 106
    if-eqz v1, :cond_0

    .line 107
    .line 108
    :cond_5
    const-string v1, "AppOps"

    .line 109
    .line 110
    const-string/jumbo v2, "checkOperationImpl return MODE+IGNORE because resolvedPackageName is null: packageName "

    .line 111
    .line 112
    .line 113
    const-string v3, " uid "

    .line 114
    .line 115
    const-string v4, " code "

    .line 116
    .line 117
    invoke-static {v11, v2, v0, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0, v10, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    const-string/jumbo v0, "checkOperationUnchecked return MODE_IGNORED because isOpRestrictedLocked is true: packageName "

    .line 126
    .line 127
    .line 128
    const/4 v15, 0x0

    .line 129
    :try_start_0
    invoke-virtual {v9, v11, v14, v15}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 130
    .line 131
    .line 132
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    sget-object v1, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    .line 134
    .line 135
    invoke-static {v1, v10}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    const/4 v7, 0x0

    .line 140
    if-nez v1, :cond_7

    .line 141
    .line 142
    move v1, v7

    .line 143
    goto :goto_1

    .line 144
    :cond_7
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 151
    .line 152
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-virtual {v1, v2, v14}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(ILjava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    :goto_1
    if-eqz v1, :cond_9

    .line 161
    .line 162
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 163
    .line 164
    if-nez v0, :cond_8

    .line 165
    .line 166
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 167
    .line 168
    if-eqz v0, :cond_0

    .line 169
    .line 170
    :cond_8
    const-string v0, "AppOps"

    .line 171
    .line 172
    const-string/jumbo v1, "checkOperationUnchecked return MODE_IGNORED because isOpRestrictedDueToSuspend is true: packageName "

    .line 173
    .line 174
    .line 175
    const-string v2, " uid "

    .line 176
    .line 177
    const-string v3, " code "

    .line 178
    .line 179
    invoke-static {v11, v1, v14, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v1, v10, v0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_9
    monitor-enter p0

    .line 189
    :try_start_1
    iget-object v6, v8, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 190
    .line 191
    const/16 v16, 0x1

    .line 192
    .line 193
    move-object/from16 v1, p0

    .line 194
    .line 195
    move/from16 v2, p2

    .line 196
    .line 197
    move/from16 v3, p1

    .line 198
    .line 199
    move-object v4, v14

    .line 200
    move-object/from16 v5, p4

    .line 201
    .line 202
    move-object/from16 v17, v6

    .line 203
    .line 204
    move/from16 v6, p5

    .line 205
    .line 206
    move v13, v7

    .line 207
    move-object/from16 v7, v17

    .line 208
    .line 209
    move-object v15, v8

    .line 210
    move/from16 v8, v16

    .line 211
    .line 212
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_c

    .line 217
    .line 218
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 219
    .line 220
    if-nez v1, :cond_a

    .line 221
    .line 222
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 223
    .line 224
    if-eqz v1, :cond_b

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :catchall_0
    move-exception v0

    .line 228
    goto/16 :goto_7

    .line 229
    .line 230
    :cond_a
    :goto_2
    const-string v1, "AppOps"

    .line 231
    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v0, " uid "

    .line 241
    .line 242
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v0, " code "

    .line 249
    .line 250
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    :cond_b
    monitor-exit p0

    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService;->isOpAllowedForUid(I)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_d

    .line 271
    .line 272
    monitor-exit p0

    .line 273
    goto/16 :goto_8

    .line 274
    .line 275
    :cond_d
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    invoke-virtual {v9, v11, v13}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    if-eqz v1, :cond_f

    .line 284
    .line 285
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 286
    .line 287
    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 288
    .line 289
    invoke-virtual {v9, v12}, Lcom/android/server/appop/AppOpsService;->getPersistentId(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-interface {v2, v3, v0, v4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    if-eq v2, v3, :cond_f

    .line 302
    .line 303
    if-eqz p6, :cond_e

    .line 304
    .line 305
    move v13, v2

    .line 306
    goto :goto_3

    .line 307
    :cond_e
    invoke-virtual {v1, v0, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    move v13, v0

    .line 312
    :goto_3
    monitor-exit p0

    .line 313
    goto :goto_8

    .line 314
    :cond_f
    iget-object v6, v15, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 315
    .line 316
    const/4 v5, 0x0

    .line 317
    const/4 v8, 0x0

    .line 318
    const/4 v4, 0x0

    .line 319
    move-object/from16 v1, p0

    .line 320
    .line 321
    move/from16 v2, p2

    .line 322
    .line 323
    move-object v3, v14

    .line 324
    move v7, v8

    .line 325
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    if-nez v1, :cond_10

    .line 330
    .line 331
    const/4 v15, 0x0

    .line 332
    goto :goto_4

    .line 333
    :cond_10
    invoke-virtual {v9, v1, v0, v11, v8}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    .line 334
    .line 335
    .line 336
    move-result-object v15

    .line 337
    :goto_4
    if-nez v15, :cond_11

    .line 338
    .line 339
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 340
    .line 341
    .line 342
    move-result v13

    .line 343
    monitor-exit p0

    .line 344
    goto :goto_8

    .line 345
    :cond_11
    if-eqz p6, :cond_12

    .line 346
    .line 347
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 348
    .line 349
    iget-object v1, v15, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 350
    .line 351
    iget v2, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 352
    .line 353
    iget v3, v15, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 354
    .line 355
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    invoke-interface {v0, v2, v3, v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    :goto_5
    move v13, v0

    .line 364
    goto :goto_6

    .line 365
    :cond_12
    iget-object v0, v15, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 366
    .line 367
    iget v1, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 368
    .line 369
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 370
    .line 371
    iget-object v3, v15, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 372
    .line 373
    iget v4, v15, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 374
    .line 375
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    invoke-interface {v2, v1, v4, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    goto :goto_5

    .line 388
    :goto_6
    monitor-exit p0

    .line 389
    goto :goto_8

    .line 390
    :goto_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    throw v0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    move-object v1, v0

    .line 394
    const-string/jumbo v0, "checkOperation"

    .line 395
    .line 396
    .line 397
    invoke-static {v11, v1, v0}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 401
    .line 402
    .line 403
    move-result v13

    .line 404
    :goto_8
    return v13
.end method

.method public static -$$Nest$mfinishOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p6}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "finishOperationImpl was a no-op as virtualDeviceId "

    .line 14
    .line 15
    .line 16
    const-string p1, " is invalid"

    .line 17
    .line 18
    const-string p2, "AppOps"

    .line 19
    .line 20
    invoke-static {p6, p0, p1, p2}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0, v0, p4}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p3, p4}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object v1, p0

    .line 43
    move-object v2, p1

    .line 44
    move v3, p2

    .line 45
    move v4, p3

    .line 46
    move-object v6, p5

    .line 47
    move v7, p6

    .line 48
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public static -$$Nest$mfinishProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V
    .locals 13

    .line 1
    move-object v7, p0

    .line 2
    move-object/from16 v0, p3

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getDeviceId()I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v10

    .line 31
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v11

    .line 35
    if-eqz p4, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v2, 0x0

    .line 46
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    .line 47
    .line 48
    .line 49
    move v12, p2

    .line 50
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v9}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    const-string/jumbo v0, "finishProxyOperationImpl was a no-op as virtualDeviceId "

    .line 60
    .line 61
    .line 62
    const-string v1, " is invalid"

    .line 63
    .line 64
    const-string v2, "AppOps"

    .line 65
    .line 66
    invoke-static {v9, v0, v1, v2}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {p0, v0, v10}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-static {v3, v1}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-nez v4, :cond_3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    if-nez v2, :cond_4

    .line 99
    .line 100
    move-object v0, p0

    .line 101
    move-object v1, p1

    .line 102
    move v2, p2

    .line 103
    move v6, v9

    .line 104
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-static {v8, v10}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    if-nez v4, :cond_5

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    move-object v0, p0

    .line 115
    move-object v1, p1

    .line 116
    move v2, p2

    .line 117
    move v3, v8

    .line 118
    move-object v5, v11

    .line 119
    move v6, v9

    .line 120
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    :cond_6
    :goto_1
    return-void
.end method

.method public static -$$Nest$mnoteOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move/from16 v5, p5

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v5}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    const/4 v7, 0x1

    .line 22
    const-string v8, " and uid: "

    .line 23
    .line 24
    const-string v9, " code "

    .line 25
    .line 26
    const-string v10, "AppOps"

    .line 27
    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    const-string/jumbo v0, "noteOperationImpl returned MODE_IGNORED as virtualDeviceId "

    .line 31
    .line 32
    .line 33
    const-string v6, " is invalid package: "

    .line 34
    .line 35
    invoke-static {v5, v0, v6, v3, v8}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 56
    .line 57
    invoke-direct {v0, v7, p1, v4, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {p0, v6, v3}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const-string v11, " uid "

    .line 71
    .line 72
    if-nez v6, :cond_4

    .line 73
    .line 74
    const/16 v0, 0x6f

    .line 75
    .line 76
    if-ne v1, v0, :cond_1

    .line 77
    .line 78
    const-string/jumbo v0, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as incoming package: "

    .line 79
    .line 80
    .line 81
    const-string v5, " is invalid"

    .line 82
    .line 83
    invoke-static {v2, v0, v3, v8, v5}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_1
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 91
    .line 92
    if-nez v0, :cond_2

    .line 93
    .line 94
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    :cond_2
    const-string/jumbo v0, "noteOperationImpl return MODE_ERROR because isIncomingPackageValid is false: packageName "

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v0, v3, v11, v9}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0, p1, v10}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 109
    .line 110
    const/4 v2, 0x2

    .line 111
    invoke-direct {v0, v2, p1, v4, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    if-nez v6, :cond_7

    .line 120
    .line 121
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 122
    .line 123
    if-nez v0, :cond_5

    .line 124
    .line 125
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 126
    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    :cond_5
    const-string/jumbo v0, "noteOperationImpl return MODE_IGNORED because resolvedPackageName is null: packageName "

    .line 130
    .line 131
    .line 132
    invoke-static {v2, v0, v3, v11, v9}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0, p1, v10}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_6
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 140
    .line 141
    invoke-direct {v0, v7, p1, v4, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_7
    const/4 v7, 0x0

    .line 146
    const/4 v8, 0x0

    .line 147
    const/4 v9, -0x1

    .line 148
    const/4 v10, 0x0

    .line 149
    const/4 v11, 0x1

    .line 150
    move-object v0, p0

    .line 151
    move v1, p1

    .line 152
    move/from16 v2, p2

    .line 153
    .line 154
    move-object v3, v6

    .line 155
    move-object/from16 v4, p4

    .line 156
    .line 157
    move/from16 v5, p5

    .line 158
    .line 159
    move v6, v9

    .line 160
    move v9, v10

    .line 161
    move v10, v11

    .line 162
    move/from16 v11, p6

    .line 163
    .line 164
    move-object/from16 v12, p7

    .line 165
    .line 166
    move/from16 v13, p8

    .line 167
    .line 168
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    :goto_0
    return-object v0
.end method

.method public static -$$Nest$mnoteProxyOperationImpl(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 29

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    move/from16 v15, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getUid()I

    .line 11
    .line 12
    .line 13
    move-result v13

    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v16

    .line 22
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getDeviceId()I

    .line 23
    .line 24
    .line 25
    move-result v12

    .line 26
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextUid()I

    .line 27
    .line 28
    .line 29
    move-result v11

    .line 30
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextDeviceId()I

    .line 39
    .line 40
    .line 41
    move-result v17

    .line 42
    invoke-virtual {v14, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v14, v12}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v8, 0x1

    .line 53
    if-nez v2, :cond_0

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v1, "noteProxyOperationImpl returned MODE_IGNORED as virtualDeviceId "

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, " is invalid"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "AppOps"

    .line 76
    .line 77
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 81
    .line 82
    invoke-direct {v0, v8, v15, v9, v10}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_9

    .line 86
    .line 87
    :cond_0
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-virtual {v14, v2, v10}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const/4 v3, 0x2

    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v14, v2, v1}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_2

    .line 107
    .line 108
    :cond_1
    move-object v4, v9

    .line 109
    move-object v2, v10

    .line 110
    goto/16 :goto_8

    .line 111
    .line 112
    :cond_2
    const/4 v2, 0x0

    .line 113
    if-eqz p6, :cond_3

    .line 114
    .line 115
    invoke-virtual {v14, v0}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    move v0, v8

    .line 122
    goto :goto_0

    .line 123
    :cond_3
    move v0, v2

    .line 124
    :goto_0
    invoke-static {v13, v1}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v18

    .line 128
    if-nez v18, :cond_4

    .line 129
    .line 130
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 131
    .line 132
    invoke-direct {v0, v8, v15, v9, v10}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_9

    .line 136
    .line 137
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-ne v1, v11, :cond_5

    .line 142
    .line 143
    move v1, v8

    .line 144
    goto :goto_1

    .line 145
    :cond_5
    move v1, v2

    .line 146
    :goto_1
    iget-object v4, v14, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 147
    .line 148
    const-string v5, "android.permission.UPDATE_APP_OPS_STATS"

    .line 149
    .line 150
    const/4 v6, -0x1

    .line 151
    invoke-virtual {v4, v5, v6, v13}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_7

    .line 156
    .line 157
    if-eqz v1, :cond_6

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    move/from16 v19, v2

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_7
    :goto_2
    move/from16 v19, v8

    .line 164
    .line 165
    :goto_3
    if-nez v0, :cond_a

    .line 166
    .line 167
    if-eqz v19, :cond_8

    .line 168
    .line 169
    move/from16 v20, v3

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_8
    const/4 v0, 0x4

    .line 173
    move/from16 v20, v0

    .line 174
    .line 175
    :goto_4
    xor-int/lit8 v21, v19, 0x1

    .line 176
    .line 177
    const-string/jumbo v0, "proxy "

    .line 178
    .line 179
    .line 180
    move-object/from16 v7, p4

    .line 181
    .line 182
    invoke-static {v0, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v22

    .line 186
    const/16 v23, 0x0

    .line 187
    .line 188
    const/16 v24, 0x0

    .line 189
    .line 190
    const/4 v6, -0x1

    .line 191
    const/16 v25, 0x0

    .line 192
    .line 193
    move-object/from16 v0, p0

    .line 194
    .line 195
    move/from16 v1, p1

    .line 196
    .line 197
    move v2, v13

    .line 198
    move-object/from16 v3, v18

    .line 199
    .line 200
    move-object/from16 v4, v16

    .line 201
    .line 202
    move v5, v12

    .line 203
    move-object/from16 v7, v25

    .line 204
    .line 205
    move-object/from16 v8, v23

    .line 206
    .line 207
    move-object/from16 v26, v9

    .line 208
    .line 209
    move/from16 v9, v24

    .line 210
    .line 211
    move-object/from16 v27, v10

    .line 212
    .line 213
    move/from16 v10, v20

    .line 214
    .line 215
    move/from16 v28, v11

    .line 216
    .line 217
    move/from16 v11, v21

    .line 218
    .line 219
    move/from16 v20, v12

    .line 220
    .line 221
    move-object/from16 v12, v22

    .line 222
    .line 223
    move/from16 v21, v13

    .line 224
    .line 225
    move/from16 v13, p5

    .line 226
    .line 227
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_9

    .line 236
    .line 237
    new-instance v1, Landroid/app/SyncNotedAppOp;

    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    move-object/from16 v4, v26

    .line 244
    .line 245
    move-object/from16 v2, v27

    .line 246
    .line 247
    invoke-direct {v1, v0, v15, v4, v2}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    move-object v0, v1

    .line 251
    goto :goto_9

    .line 252
    :cond_9
    move-object/from16 v4, v26

    .line 253
    .line 254
    move-object/from16 v2, v27

    .line 255
    .line 256
    move/from16 v3, v28

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_a
    move-object v4, v9

    .line 260
    move-object v2, v10

    .line 261
    move/from16 v20, v12

    .line 262
    .line 263
    move/from16 v21, v13

    .line 264
    .line 265
    move v3, v11

    .line 266
    :goto_5
    invoke-static {v3, v2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    if-nez v5, :cond_b

    .line 271
    .line 272
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 273
    .line 274
    const/4 v1, 0x1

    .line 275
    invoke-direct {v0, v1, v15, v4, v2}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_b
    if-eqz v19, :cond_c

    .line 280
    .line 281
    const/16 v0, 0x8

    .line 282
    .line 283
    :goto_6
    move v10, v0

    .line 284
    goto :goto_7

    .line 285
    :cond_c
    const/16 v0, 0x10

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :goto_7
    move-object/from16 v0, p0

    .line 289
    .line 290
    move/from16 v1, p1

    .line 291
    .line 292
    move v2, v3

    .line 293
    move-object v3, v5

    .line 294
    move/from16 v5, v17

    .line 295
    .line 296
    move/from16 v6, v21

    .line 297
    .line 298
    move-object/from16 v7, v18

    .line 299
    .line 300
    move-object/from16 v8, v16

    .line 301
    .line 302
    move/from16 v9, v20

    .line 303
    .line 304
    move/from16 v11, p3

    .line 305
    .line 306
    move-object/from16 v12, p4

    .line 307
    .line 308
    move/from16 v13, p5

    .line 309
    .line 310
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    goto :goto_9

    .line 315
    :goto_8
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 316
    .line 317
    invoke-direct {v0, v3, v15, v4, v2}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :goto_9
    return-object v0
.end method

.method public static -$$Nest$mstartOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    move/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    move/from16 v6, p6

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v6}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v7, 0x1

    .line 24
    const-string v8, "AppOps"

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v1, "startOperationImpl returned MODE_IGNORED as virtualDeviceId "

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " is invalid"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 52
    .line 53
    invoke-direct {v0, v7, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1, v4}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const-string v9, " code "

    .line 67
    .line 68
    const-string v10, " uid "

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    :cond_1
    const-string/jumbo v0, "startOperationImpl::isIncomingPackageValid is false: packageName "

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v0, v4, v10, v9}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0, v2, v8}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 91
    .line 92
    const/4 v1, 0x2

    .line 93
    invoke-direct {v0, v1, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_3
    invoke-static/range {p3 .. p4}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-nez v1, :cond_6

    .line 103
    .line 104
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 105
    .line 106
    if-nez v0, :cond_4

    .line 107
    .line 108
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    :cond_4
    const-string/jumbo v0, "startOperationImpl::resolvedPackageName is null: packageName "

    .line 113
    .line 114
    .line 115
    invoke-static {v3, v0, v4, v10, v9}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0, v2, v8}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 123
    .line 124
    invoke-direct {v0, v7, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_6
    const/16 v1, 0x66

    .line 130
    .line 131
    const-string v7, " result "

    .line 132
    .line 133
    if-eq v2, v1, :cond_7

    .line 134
    .line 135
    const/16 v1, 0x78

    .line 136
    .line 137
    if-eq v2, v1, :cond_7

    .line 138
    .line 139
    const/16 v1, 0x87

    .line 140
    .line 141
    if-ne v2, v1, :cond_a

    .line 142
    .line 143
    :cond_7
    const/16 v1, 0x1b

    .line 144
    .line 145
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_a

    .line 150
    .line 151
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 152
    .line 153
    if-nez v0, :cond_8

    .line 154
    .line 155
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 156
    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    :cond_8
    const-string/jumbo v0, "startOperationImpl::checkOperation(OP_RECORD_AUDIO: packageName "

    .line 160
    .line 161
    .line 162
    invoke-static {v3, v0, v4, v10, v9}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    :cond_9
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 183
    .line 184
    invoke-direct {v0, v1, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_a
    const/16 v1, 0x86

    .line 189
    .line 190
    if-ne v2, v1, :cond_d

    .line 191
    .line 192
    const/16 v1, 0x1a

    .line 193
    .line 194
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_d

    .line 199
    .line 200
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 201
    .line 202
    if-nez v0, :cond_b

    .line 203
    .line 204
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 205
    .line 206
    if-eqz v0, :cond_c

    .line 207
    .line 208
    :cond_b
    const-string/jumbo v0, "startOperationImpl::checkOperation(OP_CAMERA: packageName "

    .line 209
    .line 210
    .line 211
    invoke-static {v3, v0, v4, v10, v9}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    :cond_c
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 232
    .line 233
    invoke-direct {v0, v1, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_d
    const/4 v8, 0x0

    .line 238
    const/4 v9, 0x0

    .line 239
    const/4 v7, -0x1

    .line 240
    const/4 v10, 0x0

    .line 241
    const/4 v11, 0x1

    .line 242
    move-object/from16 v0, p0

    .line 243
    .line 244
    move-object/from16 v1, p1

    .line 245
    .line 246
    move/from16 v2, p2

    .line 247
    .line 248
    move/from16 v3, p3

    .line 249
    .line 250
    move-object/from16 v4, p4

    .line 251
    .line 252
    move-object/from16 v5, p5

    .line 253
    .line 254
    move/from16 v6, p6

    .line 255
    .line 256
    move/from16 v12, p7

    .line 257
    .line 258
    move/from16 v13, p8

    .line 259
    .line 260
    move-object/from16 v14, p9

    .line 261
    .line 262
    move/from16 v15, p10

    .line 263
    .line 264
    move/from16 v16, p11

    .line 265
    .line 266
    move/from16 v17, p12

    .line 267
    .line 268
    invoke-virtual/range {v0 .. v17}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    :goto_0
    return-object v0
.end method

.method public static -$$Nest$mstartProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 29

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    move/from16 v12, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    move/from16 v11, p4

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    .line 13
    .line 14
    .line 15
    move-result v10

    .line 16
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v19

    .line 24
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getDeviceId()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    .line 29
    .line 30
    .line 31
    move-result v15

    .line 32
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v14

    .line 40
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextDeviceId()I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    invoke-virtual {v13, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v13, v12}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v13, v9}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/4 v7, 0x1

    .line 55
    if-nez v3, :cond_0

    .line 56
    .line 57
    const-string v0, "AppOps"

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v3, "startProxyOperationImpl returned MODE_IGNORED as proxyVirtualDeviceId "

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, " is invalid"

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 83
    .line 84
    invoke-direct {v0, v7, v12, v14, v2}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_13

    .line 88
    .line 89
    :cond_0
    invoke-virtual {v13, v8}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_1

    .line 94
    .line 95
    const-string v0, "AppOps"

    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string/jumbo v3, "startProxyOperationImpl returned MODE_IGNORED as proxiedVirtualDeviceId "

    .line 100
    .line 101
    .line 102
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v3, " is invalid"

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 121
    .line 122
    invoke-direct {v0, v7, v12, v14, v2}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_13

    .line 126
    .line 127
    :cond_1
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v13, v3, v1}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_2

    .line 136
    .line 137
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-virtual {v13, v3, v2}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-nez v3, :cond_3

    .line 146
    .line 147
    :cond_2
    move-object/from16 p3, v14

    .line 148
    .line 149
    goto/16 :goto_12

    .line 150
    .line 151
    :cond_3
    invoke-virtual {v13, v0}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    if-eqz p8, :cond_4

    .line 158
    .line 159
    move v4, v7

    .line 160
    goto :goto_0

    .line 161
    :cond_4
    const/4 v4, 0x0

    .line 162
    :goto_0
    invoke-static {v10, v1}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v20

    .line 166
    if-nez v20, :cond_5

    .line 167
    .line 168
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 169
    .line 170
    invoke-direct {v0, v7, v12, v14, v2}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_13

    .line 174
    .line 175
    :cond_5
    const/4 v1, -0x1

    .line 176
    move/from16 v5, p11

    .line 177
    .line 178
    if-eqz v0, :cond_7

    .line 179
    .line 180
    if-eq v5, v1, :cond_7

    .line 181
    .line 182
    and-int/lit8 v0, p9, 0x8

    .line 183
    .line 184
    if-nez v0, :cond_6

    .line 185
    .line 186
    and-int/lit8 v0, p10, 0x8

    .line 187
    .line 188
    if-eqz v0, :cond_7

    .line 189
    .line 190
    :cond_6
    move v0, v7

    .line 191
    goto :goto_1

    .line 192
    :cond_7
    const/4 v0, 0x0

    .line 193
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-ne v3, v15, :cond_8

    .line 198
    .line 199
    move v3, v7

    .line 200
    goto :goto_2

    .line 201
    :cond_8
    const/4 v3, 0x0

    .line 202
    :goto_2
    iget-object v6, v13, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 203
    .line 204
    const-string v7, "android.permission.UPDATE_APP_OPS_STATS"

    .line 205
    .line 206
    invoke-virtual {v6, v7, v1, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_a

    .line 211
    .line 212
    if-nez v3, :cond_a

    .line 213
    .line 214
    if-eqz v0, :cond_9

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_9
    const/16 v18, 0x0

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_a
    :goto_3
    const/16 v18, 0x1

    .line 221
    .line 222
    :goto_4
    invoke-static {v15, v2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    if-nez v7, :cond_b

    .line 227
    .line 228
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 229
    .line 230
    const/4 v6, 0x1

    .line 231
    invoke-direct {v0, v6, v12, v14, v2}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_13

    .line 235
    .line 236
    :cond_b
    const/4 v6, 0x1

    .line 237
    if-eqz v18, :cond_c

    .line 238
    .line 239
    const/16 v0, 0x8

    .line 240
    .line 241
    :goto_5
    move/from16 v21, v0

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_c
    const/16 v0, 0x10

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :goto_6
    if-nez v4, :cond_1b

    .line 248
    .line 249
    const-string/jumbo v0, "startOperation: allowing code "

    .line 250
    .line 251
    .line 252
    const-string/jumbo v4, "startOperation: reject #"

    .line 253
    .line 254
    .line 255
    const-string/jumbo v3, "startOperation: uid reject #"

    .line 256
    .line 257
    .line 258
    const-string/jumbo v2, "startOperation: no op for code "

    .line 259
    .line 260
    .line 261
    const/16 v17, 0x0

    .line 262
    .line 263
    move-object/from16 v1, p0

    .line 264
    .line 265
    move/from16 v22, v9

    .line 266
    .line 267
    move-object v9, v2

    .line 268
    move-object v2, v7

    .line 269
    move-object/from16 v23, v3

    .line 270
    .line 271
    move v3, v15

    .line 272
    move-object/from16 v24, v4

    .line 273
    .line 274
    move-object v4, v14

    .line 275
    move-object/from16 v5, v20

    .line 276
    .line 277
    move/from16 v16, v6

    .line 278
    .line 279
    move-object/from16 v25, v14

    .line 280
    .line 281
    const/4 v14, 0x2

    .line 282
    move v6, v10

    .line 283
    move-object/from16 p3, v7

    .line 284
    .line 285
    move/from16 v7, v17

    .line 286
    .line 287
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    iget-boolean v1, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .line 293
    if-nez v1, :cond_d

    .line 294
    .line 295
    const/4 v1, 0x0

    .line 296
    move-object v6, v1

    .line 297
    goto :goto_7

    .line 298
    :cond_d
    move-object/from16 v6, v25

    .line 299
    .line 300
    :goto_7
    monitor-enter p0

    .line 301
    :try_start_1
    iget-boolean v5, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    .line 302
    .line 303
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 304
    .line 305
    const/16 v16, 0x1

    .line 306
    .line 307
    move-object/from16 v1, p0

    .line 308
    .line 309
    move v2, v15

    .line 310
    move-object/from16 v3, p3

    .line 311
    .line 312
    move-object/from16 v17, v4

    .line 313
    .line 314
    move-object v4, v6

    .line 315
    move/from16 v27, v10

    .line 316
    .line 317
    move-object v10, v6

    .line 318
    move-object/from16 v6, v17

    .line 319
    .line 320
    move-object/from16 v28, v7

    .line 321
    .line 322
    move/from16 v7, v16

    .line 323
    .line 324
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    .line 325
    .line 326
    .line 327
    move-result-object v7

    .line 328
    if-nez v7, :cond_f

    .line 329
    .line 330
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 331
    .line 332
    if-eqz v0, :cond_e

    .line 333
    .line 334
    const-string v0, "AppOps"

    .line 335
    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v2, " uid "

    .line 345
    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v2, " package "

    .line 353
    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    move-object/from16 v9, p3

    .line 358
    .line 359
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v2, " flags: "

    .line 363
    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-static/range {v21 .. v21}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    goto :goto_8

    .line 382
    :catchall_0
    move-exception v0

    .line 383
    goto/16 :goto_e

    .line 384
    .line 385
    :cond_e
    move-object/from16 v9, p3

    .line 386
    .line 387
    :goto_8
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 388
    .line 389
    invoke-direct {v0, v14, v12, v10, v9}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    monitor-exit p0

    .line 393
    move v10, v8

    .line 394
    :goto_9
    move-object/from16 v1, v25

    .line 395
    .line 396
    const/4 v4, 0x1

    .line 397
    goto/16 :goto_10

    .line 398
    .line 399
    :cond_f
    move-object/from16 v9, p3

    .line 400
    .line 401
    const/4 v6, 0x1

    .line 402
    invoke-virtual {v13, v7, v12, v15, v6}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    .line 403
    .line 404
    .line 405
    move-result-object v16

    .line 406
    iget-object v5, v7, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 407
    .line 408
    move-object/from16 v1, v28

    .line 409
    .line 410
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 411
    .line 412
    const/16 v17, 0x0

    .line 413
    .line 414
    move-object/from16 v1, p0

    .line 415
    .line 416
    move v2, v15

    .line 417
    move/from16 v3, p2

    .line 418
    .line 419
    move-object/from16 v26, v4

    .line 420
    .line 421
    move-object v4, v9

    .line 422
    move-object v14, v5

    .line 423
    move-object v5, v10

    .line 424
    move v6, v8

    .line 425
    move-object/from16 p3, v0

    .line 426
    .line 427
    move-object v0, v7

    .line 428
    move-object/from16 v7, v26

    .line 429
    .line 430
    move-object/from16 v26, v10

    .line 431
    .line 432
    move v10, v8

    .line 433
    move/from16 v8, v17

    .line 434
    .line 435
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 444
    .line 445
    iget v4, v14, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 446
    .line 447
    invoke-virtual {v13, v10}, Lcom/android/server/appop/AppOpsService;->getPersistentId(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    invoke-interface {v3, v4, v2, v5}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 456
    .line 457
    .line 458
    move-result v4

    .line 459
    if-eq v3, v4, :cond_12

    .line 460
    .line 461
    iget-object v0, v13, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 462
    .line 463
    iget v3, v14, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 464
    .line 465
    invoke-virtual {v13, v10}, Lcom/android/server/appop/AppOpsService;->getPersistentId(I)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    invoke-interface {v0, v3, v2, v4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    invoke-virtual {v14, v12, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    invoke-static {v0, v11}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    .line 478
    .line 479
    .line 480
    move-result v3

    .line 481
    if-nez v3, :cond_11

    .line 482
    .line 483
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 484
    .line 485
    if-eqz v1, :cond_10

    .line 486
    .line 487
    const-string v1, "AppOps"

    .line 488
    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    move-object/from16 v4, v23

    .line 492
    .line 493
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v4, " for code "

    .line 500
    .line 501
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    const-string v2, " ("

    .line 508
    .line 509
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    const-string v2, ") uid "

    .line 516
    .line 517
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    const-string v2, " package "

    .line 524
    .line 525
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    const-string v2, " flags: "

    .line 532
    .line 533
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-static/range {v21 .. v21}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .line 549
    .line 550
    :cond_10
    new-instance v1, Landroid/app/SyncNotedAppOp;

    .line 551
    .line 552
    move-object/from16 v3, v26

    .line 553
    .line 554
    invoke-direct {v1, v0, v12, v3, v9}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    monitor-exit p0

    .line 558
    move-object v0, v1

    .line 559
    goto/16 :goto_9

    .line 560
    .line 561
    :cond_11
    move-object/from16 v3, v26

    .line 562
    .line 563
    const/4 v4, 0x1

    .line 564
    goto/16 :goto_d

    .line 565
    .line 566
    :cond_12
    move-object/from16 v3, v26

    .line 567
    .line 568
    if-eq v2, v12, :cond_13

    .line 569
    .line 570
    const/4 v4, 0x1

    .line 571
    invoke-virtual {v13, v0, v2, v15, v4}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    .line 572
    .line 573
    .line 574
    move-result-object v16

    .line 575
    :goto_a
    move-object/from16 v0, v16

    .line 576
    .line 577
    goto :goto_b

    .line 578
    :cond_13
    const/4 v4, 0x1

    .line 579
    goto :goto_a

    .line 580
    :goto_b
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 581
    .line 582
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 583
    .line 584
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 585
    .line 586
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 587
    .line 588
    iget v0, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 589
    .line 590
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    invoke-interface {v7, v6, v0, v8}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    invoke-virtual {v5, v6, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    if-eqz v0, :cond_16

    .line 603
    .line 604
    if-eqz v11, :cond_14

    .line 605
    .line 606
    const/4 v5, 0x3

    .line 607
    if-eq v0, v5, :cond_16

    .line 608
    .line 609
    :cond_14
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 610
    .line 611
    if-eqz v1, :cond_15

    .line 612
    .line 613
    const-string v1, "AppOps"

    .line 614
    .line 615
    new-instance v5, Ljava/lang/StringBuilder;

    .line 616
    .line 617
    move-object/from16 v6, v24

    .line 618
    .line 619
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    const-string v6, " for code "

    .line 626
    .line 627
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    const-string v2, " ("

    .line 634
    .line 635
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    const-string v2, ") uid "

    .line 642
    .line 643
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    const-string v2, " package "

    .line 650
    .line 651
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    const-string v2, " flags: "

    .line 658
    .line 659
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-static/range {v21 .. v21}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    .line 675
    .line 676
    :cond_15
    new-instance v1, Landroid/app/SyncNotedAppOp;

    .line 677
    .line 678
    invoke-direct {v1, v0, v12, v3, v9}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    monitor-exit p0

    .line 682
    move-object v0, v1

    .line 683
    :goto_c
    move-object/from16 v1, v25

    .line 684
    .line 685
    goto :goto_10

    .line 686
    :cond_16
    :goto_d
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 687
    .line 688
    if-eqz v0, :cond_17

    .line 689
    .line 690
    const-string v0, "AppOps"

    .line 691
    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    .line 693
    .line 694
    move-object/from16 v5, p3

    .line 695
    .line 696
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    const-string v5, " uid "

    .line 703
    .line 704
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    const-string v5, " package "

    .line 711
    .line 712
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    const-string v5, " restricted: "

    .line 719
    .line 720
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    const-string v5, " flags: "

    .line 727
    .line 728
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-static/range {v21 .. v21}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    .line 744
    .line 745
    :cond_17
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 747
    .line 748
    invoke-direct {v0, v1, v12, v3, v9}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    goto :goto_c

    .line 752
    :goto_e
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    throw v0

    .line 754
    :catch_0
    move-exception v0

    .line 755
    move-object/from16 v9, p3

    .line 756
    .line 757
    move/from16 v27, v10

    .line 758
    .line 759
    const/4 v4, 0x1

    .line 760
    move v10, v8

    .line 761
    invoke-static {v15}, Landroid/os/Process;->isIsolated(I)Z

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    if-eqz v1, :cond_18

    .line 766
    .line 767
    const-string v0, "AppOps"

    .line 768
    .line 769
    const-string v1, "Cannot startOperation: isolated process"

    .line 770
    .line 771
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    .line 773
    .line 774
    goto :goto_f

    .line 775
    :cond_18
    const-string v1, "AppOps"

    .line 776
    .line 777
    const-string v2, "Cannot startOperation"

    .line 778
    .line 779
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    .line 781
    .line 782
    :goto_f
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 783
    .line 784
    move-object/from16 v1, v25

    .line 785
    .line 786
    const/4 v2, 0x2

    .line 787
    invoke-direct {v0, v2, v12, v1, v9}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    :goto_10
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    .line 791
    .line 792
    .line 793
    move-result v2

    .line 794
    invoke-static {v2, v11}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    if-nez v2, :cond_19

    .line 799
    .line 800
    goto/16 :goto_13

    .line 801
    .line 802
    :cond_19
    if-eqz v18, :cond_1a

    .line 803
    .line 804
    const/16 v28, 0x2

    .line 805
    .line 806
    goto :goto_11

    .line 807
    :cond_1a
    const/4 v0, 0x4

    .line 808
    move/from16 v28, v0

    .line 809
    .line 810
    :goto_11
    xor-int/lit8 v14, v18, 0x1

    .line 811
    .line 812
    move-object v7, v1

    .line 813
    const-string/jumbo v0, "proxy "

    .line 814
    .line 815
    .line 816
    move-object/from16 v6, p6

    .line 817
    .line 818
    invoke-static {v0, v6}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    move/from16 v23, v15

    .line 823
    .line 824
    move-object v15, v0

    .line 825
    const/4 v8, -0x1

    .line 826
    const/4 v0, 0x0

    .line 827
    move-object/from16 v24, v9

    .line 828
    .line 829
    move-object v9, v0

    .line 830
    move/from16 v26, v10

    .line 831
    .line 832
    move/from16 v25, v27

    .line 833
    .line 834
    move-object v10, v0

    .line 835
    const/4 v0, 0x0

    .line 836
    move v5, v11

    .line 837
    move v11, v0

    .line 838
    move-object/from16 v1, p0

    .line 839
    .line 840
    move-object/from16 v2, p1

    .line 841
    .line 842
    move/from16 v3, p2

    .line 843
    .line 844
    move/from16 v4, v25

    .line 845
    .line 846
    move-object/from16 v5, v20

    .line 847
    .line 848
    move-object/from16 v6, v19

    .line 849
    .line 850
    move-object/from16 p3, v7

    .line 851
    .line 852
    move/from16 v7, v22

    .line 853
    .line 854
    move/from16 v12, v28

    .line 855
    .line 856
    move/from16 v13, p4

    .line 857
    .line 858
    move/from16 v16, p7

    .line 859
    .line 860
    move/from16 v17, p9

    .line 861
    .line 862
    move/from16 v18, p11

    .line 863
    .line 864
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    .line 869
    .line 870
    .line 871
    move-result v1

    .line 872
    invoke-static {v1, v13}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    .line 873
    .line 874
    .line 875
    move-result v1

    .line 876
    if-nez v1, :cond_1c

    .line 877
    .line 878
    goto :goto_13

    .line 879
    :cond_1b
    move-object/from16 v24, v7

    .line 880
    .line 881
    move/from16 v26, v8

    .line 882
    .line 883
    move/from16 v22, v9

    .line 884
    .line 885
    move/from16 v25, v10

    .line 886
    .line 887
    move v13, v11

    .line 888
    move-object/from16 p3, v14

    .line 889
    .line 890
    move/from16 v23, v15

    .line 891
    .line 892
    :cond_1c
    move-object/from16 v1, p0

    .line 893
    .line 894
    move-object/from16 v2, p1

    .line 895
    .line 896
    move/from16 v3, p2

    .line 897
    .line 898
    move/from16 v4, v23

    .line 899
    .line 900
    move-object/from16 v5, v24

    .line 901
    .line 902
    move-object/from16 v6, p3

    .line 903
    .line 904
    move/from16 v7, v26

    .line 905
    .line 906
    move/from16 v8, v25

    .line 907
    .line 908
    move-object/from16 v9, v20

    .line 909
    .line 910
    move-object/from16 v10, v19

    .line 911
    .line 912
    move/from16 v11, v22

    .line 913
    .line 914
    move/from16 v12, v21

    .line 915
    .line 916
    move/from16 v13, p4

    .line 917
    .line 918
    move/from16 v14, p5

    .line 919
    .line 920
    move-object/from16 v15, p6

    .line 921
    .line 922
    move/from16 v16, p7

    .line 923
    .line 924
    move/from16 v17, p10

    .line 925
    .line 926
    move/from16 v18, p11

    .line 927
    .line 928
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    goto :goto_13

    .line 933
    :goto_12
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 934
    .line 935
    move/from16 v1, p2

    .line 936
    .line 937
    move-object/from16 v3, p3

    .line 938
    .line 939
    const/4 v4, 0x2

    .line 940
    invoke-direct {v0, v4, v1, v3, v2}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    :goto_13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "ro.boot.debug_level"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "unknown"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "0x4948"

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sput-boolean v2, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 18
    .line 19
    const-string v3, "0x494d"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sput-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const-wide/16 v0, 0x3e8

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-wide/32 v0, 0x1b7740

    .line 37
    .line 38
    .line 39
    :goto_0
    sput-wide v0, Lcom/android/server/appop/AppOpsService;->WRITE_DELAY:J

    .line 40
    .line 41
    const/16 v0, 0x1a

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    const/16 v2, 0x1c

    .line 45
    .line 46
    const/16 v3, 0x1b

    .line 47
    .line 48
    filled-new-array {v2, v3, v0, v1}, [I

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    .line 53
    .line 54
    const/4 v0, 0x7

    .line 55
    new-array v0, v0, [I

    .line 56
    .line 57
    fill-array-data v0, :array_0

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/android/server/appop/AppOpsService;->NON_PACKAGE_UIDS:[I

    .line 61
    .line 62
    return-void

    .line 63
    :array_0
    .array-data 4
        0x0
        0x3e9
        0x3ea
        0x411
        0x403
        0x431
        0x7d0
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    .line 23
    .line 24
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    .line 32
    .line 33
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 42
    .line 43
    new-instance v0, Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mKnownDeviceIds:Landroid/util/SparseArray;

    .line 49
    .line 50
    const-string/jumbo v1, "platform_compat"

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 62
    .line 63
    new-instance v1, Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    .line 69
    .line 70
    new-instance v1, Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    .line 76
    .line 77
    new-instance v1, Landroid/util/SparseArray;

    .line 78
    .line 79
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 83
    .line 84
    new-instance v1, Landroid/util/ArrayMap;

    .line 85
    .line 86
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 90
    .line 91
    new-instance v1, Lcom/android/server/appop/AppOpsService$1;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-direct {v1, p0, v2}, Lcom/android/server/appop/AppOpsService$1;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

    .line 98
    .line 99
    new-instance v1, Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 105
    .line 106
    new-instance v1, Lcom/android/server/appop/HistoricalRegistry;

    .line 107
    .line 108
    invoke-direct {v1, p0}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 112
    .line 113
    new-instance v1, Landroid/util/ArrayMap;

    .line 114
    .line 115
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 119
    .line 120
    new-instance v1, Landroid/util/ArrayMap;

    .line 121
    .line 122
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    .line 126
    .line 127
    new-instance v1, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    invoke-direct {v1, p0, v2, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    .line 131
    .line 132
    .line 133
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 134
    .line 135
    new-instance v1, Landroid/util/SparseArray;

    .line 136
    .line 137
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    .line 141
    .line 142
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    .line 143
    .line 144
    const/4 v1, -0x1

    .line 145
    iput v1, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    .line 146
    .line 147
    const/4 v1, 0x0

    .line 148
    iput v1, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 149
    .line 150
    new-instance v3, Landroid/util/ArraySet;

    .line 151
    .line 152
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    .line 156
    .line 157
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 158
    .line 159
    new-instance v2, Landroid/util/ArrayMap;

    .line 160
    .line 161
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 162
    .line 163
    .line 164
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 165
    .line 166
    new-instance v2, Landroid/util/ArrayMap;

    .line 167
    .line 168
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 169
    .line 170
    .line 171
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 172
    .line 173
    new-instance v2, Landroid/util/ArrayMap;

    .line 174
    .line 175
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 179
    .line 180
    new-instance v2, Landroid/util/ArrayMap;

    .line 181
    .line 182
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 183
    .line 184
    .line 185
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 186
    .line 187
    new-instance v2, Lcom/android/server/appop/AudioRestrictionManager;

    .line 188
    .line 189
    invoke-direct {v2}, Lcom/android/server/appop/AudioRestrictionManager;-><init>()V

    .line 190
    .line 191
    .line 192
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    .line 193
    .line 194
    new-instance v2, Lcom/android/server/appop/AppOpsService$3;

    .line 195
    .line 196
    const/4 v3, 0x0

    .line 197
    invoke-direct {v2, p0, v3}, Lcom/android/server/appop/AppOpsService$3;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 198
    .line 199
    .line 200
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Lcom/android/server/appop/AppOpsService$3;

    .line 201
    .line 202
    iput-object p4, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 203
    .line 204
    const-string/jumbo v2, "default:0"

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    new-instance v0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    .line 211
    .line 212
    invoke-direct {v0, p4}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;-><init>(Landroid/content/Context;)V

    .line 213
    .line 214
    .line 215
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    .line 216
    .line 217
    move v0, v1

    .line 218
    :goto_0
    const/16 v2, 0x95

    .line 219
    .line 220
    if-ge v0, v2, :cond_0

    .line 221
    .line 222
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    .line 227
    .line 228
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    check-cast v4, [I

    .line 233
    .line 234
    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    add-int/lit8 v0, v0, 0x1

    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_0
    sget-boolean v0, Landroid/permission/PermissionManager;->USE_ACCESS_CHECKING_SERVICE:Z

    .line 245
    .line 246
    if-eqz v0, :cond_1

    .line 247
    .line 248
    new-instance v0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;

    .line 249
    .line 250
    const-class v2, Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 251
    .line 252
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    check-cast v2, Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 257
    .line 258
    invoke-direct {v0, v2}, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;-><init>(Lcom/android/server/appop/AppOpsCheckingServiceInterface;)V

    .line 259
    .line 260
    .line 261
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_1
    new-instance v0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;

    .line 265
    .line 266
    new-instance v2, Lcom/android/server/appop/AppOpsCheckingServiceImpl;

    .line 267
    .line 268
    invoke-direct {v2, p2, p0, p3, p4}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;-><init>(Ljava/io/File;Ljava/lang/Object;Landroid/os/Handler;Landroid/content/Context;)V

    .line 269
    .line 270
    .line 271
    invoke-direct {v0, v2}, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;-><init>(Lcom/android/server/appop/AppOpsCheckingServiceInterface;)V

    .line 272
    .line 273
    .line 274
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 275
    .line 276
    :goto_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 277
    .line 278
    new-instance v2, Lcom/android/server/appop/AppOpsService$2;

    .line 279
    .line 280
    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$2;-><init>(Lcom/android/server/appop/AppOpsService;)V

    .line 281
    .line 282
    .line 283
    invoke-interface {v0, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsService$2;)Z

    .line 284
    .line 285
    .line 286
    new-instance v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    .line 287
    .line 288
    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;

    .line 289
    .line 290
    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appop/AppOpsService;)V

    .line 291
    .line 292
    .line 293
    invoke-direct {v0, p4, p3, v2}, Lcom/android/server/appop/AppOpsRestrictionsImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;)V

    .line 294
    .line 295
    .line 296
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    .line 297
    .line 298
    invoke-static {p0, v1, v1}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;IZ)V

    .line 299
    .line 300
    .line 301
    new-instance p4, Landroid/util/AtomicFile;

    .line 302
    .line 303
    const-string v0, "appops_legacy"

    .line 304
    .line 305
    invoke-direct {p4, p2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iput-object p4, p0, Lcom/android/server/appop/AppOpsService;->mStorageFile:Landroid/util/AtomicFile;

    .line 309
    .line 310
    new-instance p2, Landroid/util/AtomicFile;

    .line 311
    .line 312
    const-string p4, "appops_accesses"

    .line 313
    .line 314
    invoke-direct {p2, p1, p4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 318
    .line 319
    new-instance p1, Lcom/android/server/appop/AppOpsRecentAccessPersistence;

    .line 320
    .line 321
    invoke-direct {p1, p2, p0}, Lcom/android/server/appop/AppOpsRecentAccessPersistence;-><init>(Landroid/util/AtomicFile;Lcom/android/server/appop/AppOpsService;)V

    .line 322
    .line 323
    .line 324
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mRecentAccessPersistence:Lcom/android/server/appop/AppOpsRecentAccessPersistence;

    .line 325
    .line 326
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 327
    .line 328
    new-instance p1, Lcom/android/server/appop/AppOpsService$Constants;

    .line 329
    .line 330
    invoke-direct {p1, p0, p3}, Lcom/android/server/appop/AppOpsService$Constants;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;)V

    .line 331
    .line 332
    .line 333
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 334
    .line 335
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses()V

    .line 336
    .line 337
    .line 338
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 339
    .line 340
    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    .line 341
    .line 342
    .line 343
    return-void
.end method

.method public static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;
    .locals 5

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    if-nez p0, :cond_1

    .line 5
    .line 6
    new-instance p0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {p5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-static {p3, p1, p2, p4, v3}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/lang/String;IIILjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eq v4, v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    return-object p0
.end method

.method public static addChange(Ljava/lang/String;IIILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    new-instance p4, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    move v2, v0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 22
    .line 23
    iget v4, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 24
    .line 25
    if-ne v4, p1, :cond_1

    .line 26
    .line 27
    iget-object v3, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 41
    .line 42
    new-instance v0, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 43
    .line 44
    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/server/appop/AppOpsService$ChangeRec;-><init>(IIILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_3
    return-object p4
.end method

.method public static checkSystemUid(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 11
    .line 12
    const-string v1, " must by called by the system"

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "AppOps service (appops) dump options:"

    .line 2
    .line 3
    const-string v1, "  -h"

    .line 4
    .line 5
    const-string v2, "    Print this help text."

    .line 6
    .line 7
    const-string v3, "  --op [OP]"

    .line 8
    .line 9
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "    Limit output to data associated with the given app op code."

    .line 13
    .line 14
    const-string v1, "  --mode [MODE]"

    .line 15
    .line 16
    const-string v2, "    Limit output to data associated with the given app op mode."

    .line 17
    .line 18
    const-string v3, "  --package [PACKAGE]"

    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "    Limit output to data associated with the given package name."

    .line 24
    .line 25
    const-string v1, "  --attributionTag [attributionTag]"

    .line 26
    .line 27
    const-string v2, "    Limit output to data associated with the given attribution tag."

    .line 28
    .line 29
    const-string v3, "  --include-discrete [n]"

    .line 30
    .line 31
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "    Include discrete ops limited to n per dimension. Use zero for no limit."

    .line 35
    .line 36
    const-string v1, "  --watchers"

    .line 37
    .line 38
    const-string v2, "    Only output the watcher sections."

    .line 39
    .line 40
    const-string v3, "  --history"

    .line 41
    .line 42
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "    Only output history."

    .line 46
    .line 47
    const-string v1, "  --uid-state-changes"

    .line 48
    .line 49
    const-string v2, "    Include logs about uid state changes."

    .line 50
    .line 51
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move-object/from16 v2, p9

    .line 6
    .line 7
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 8
    .line 9
    const-string/jumbo v4, "default:0"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v7, 0x0

    .line 23
    :goto_0
    if-ge v7, v5, :cond_d

    .line 24
    .line 25
    and-int/lit8 v8, p2, 0x4

    .line 26
    .line 27
    if-eqz v8, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    move-object/from16 v9, p1

    .line 34
    .line 35
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-nez v8, :cond_1

    .line 40
    .line 41
    move-object/from16 v24, v3

    .line 42
    .line 43
    move/from16 v25, v5

    .line 44
    .line 45
    move/from16 v21, v7

    .line 46
    .line 47
    move-object v5, v4

    .line 48
    goto/16 :goto_7

    .line 49
    .line 50
    :cond_0
    move-object/from16 v9, p1

    .line 51
    .line 52
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v10, "        "

    .line 55
    .line 56
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    check-cast v10, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v10, "=[\n"

    .line 69
    .line 70
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    check-cast v8, Ljava/lang/String;

    .line 85
    .line 86
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 87
    .line 88
    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    check-cast v10, Landroid/util/ArrayMap;

    .line 93
    .line 94
    if-nez v10, :cond_2

    .line 95
    .line 96
    new-instance v10, Landroid/util/ArrayMap;

    .line 97
    .line 98
    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 99
    .line 100
    .line 101
    :cond_2
    new-instance v11, Landroid/util/ArrayMap;

    .line 102
    .line 103
    const/4 v12, 0x1

    .line 104
    invoke-direct {v11, v12}, Landroid/util/ArrayMap;-><init>(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    if-eqz v12, :cond_3

    .line 112
    .line 113
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    check-cast v10, Lcom/android/server/appop/AttributedOp;

    .line 118
    .line 119
    invoke-virtual {v10}, Lcom/android/server/appop/AttributedOp;->createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-virtual {v11, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_3
    new-instance v10, Landroid/app/AppOpsManager$OpEntry;

    .line 127
    .line 128
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 129
    .line 130
    iget-object v12, v12, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 131
    .line 132
    iget v13, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 133
    .line 134
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    iget v14, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 139
    .line 140
    iget-object v15, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 141
    .line 142
    invoke-interface {v12, v14, v13, v15}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    invoke-direct {v10, v14, v12, v11}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    check-cast v10, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 158
    .line 159
    invoke-virtual {v10}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    const/4 v13, 0x0

    .line 168
    :goto_1
    if-ge v13, v12, :cond_a

    .line 169
    .line 170
    invoke-virtual {v11, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v16

    .line 174
    check-cast v16, Ljava/lang/Long;

    .line 175
    .line 176
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    .line 177
    .line 178
    .line 179
    move-result-wide v16

    .line 180
    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    move-object v15, v11

    .line 189
    move/from16 v20, v12

    .line 190
    .line 191
    invoke-virtual {v10, v6, v6, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    .line 192
    .line 193
    .line 194
    move-result-wide v11

    .line 195
    move/from16 v21, v7

    .line 196
    .line 197
    move-object/from16 v22, v8

    .line 198
    .line 199
    invoke-virtual {v10, v6, v6, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    .line 200
    .line 201
    .line 202
    move-result-wide v7

    .line 203
    move-object/from16 v24, v3

    .line 204
    .line 205
    move-object/from16 v23, v4

    .line 206
    .line 207
    invoke-virtual {v10, v6, v6, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    .line 208
    .line 209
    .line 210
    move-result-wide v3

    .line 211
    invoke-virtual {v10, v6, v6, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    if-eqz v6, :cond_4

    .line 216
    .line 217
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v14

    .line 221
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v25

    .line 225
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    const-wide/16 v18, 0x0

    .line 230
    .line 231
    move-object/from16 v33, v25

    .line 232
    .line 233
    move/from16 v25, v5

    .line 234
    .line 235
    move-object/from16 v5, v33

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_4
    const/4 v14, 0x0

    .line 239
    const/4 v6, -0x1

    .line 240
    move/from16 v25, v5

    .line 241
    .line 242
    move-object v5, v14

    .line 243
    const-wide/16 v18, 0x0

    .line 244
    .line 245
    :goto_2
    cmp-long v26, v11, v18

    .line 246
    .line 247
    const-string v9, "          "

    .line 248
    .line 249
    move-object/from16 v27, v10

    .line 250
    .line 251
    const-string v10, "]"

    .line 252
    .line 253
    move-object/from16 v28, v15

    .line 254
    .line 255
    const-string v15, ", attributionTag="

    .line 256
    .line 257
    const-string v1, ", pkg="

    .line 258
    .line 259
    move/from16 v29, v13

    .line 260
    .line 261
    const-string/jumbo v13, "uid="

    .line 262
    .line 263
    .line 264
    move-wide/from16 v30, v7

    .line 265
    .line 266
    const-string v7, " proxy["

    .line 267
    .line 268
    const-string v8, ")"

    .line 269
    .line 270
    move-object/from16 v32, v10

    .line 271
    .line 272
    const-string v10, " ("

    .line 273
    .line 274
    if-lez v26, :cond_7

    .line 275
    .line 276
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    move-object/from16 v26, v9

    .line 280
    .line 281
    const-string v9, "Access: "

    .line 282
    .line 283
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    const-string v9, " "

    .line 294
    .line 295
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2, v11, v12}, Ljava/util/Date;->setTime(J)V

    .line 299
    .line 300
    .line 301
    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    sub-long v11, v11, p6

    .line 312
    .line 313
    invoke-static {v11, v12, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const-wide/16 v11, 0x0

    .line 320
    .line 321
    cmp-long v9, v3, v11

    .line 322
    .line 323
    if-lez v9, :cond_5

    .line 324
    .line 325
    const-string v9, " duration="

    .line 326
    .line 327
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 331
    .line 332
    .line 333
    :cond_5
    if-ltz v6, :cond_6

    .line 334
    .line 335
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    move-object/from16 v3, v32

    .line 357
    .line 358
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_6
    move-object/from16 v3, v32

    .line 363
    .line 364
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 365
    .line 366
    .line 367
    :goto_4
    const-wide/16 v11, 0x0

    .line 368
    .line 369
    goto :goto_5

    .line 370
    :cond_7
    move-object/from16 v26, v9

    .line 371
    .line 372
    move-object/from16 v3, v32

    .line 373
    .line 374
    goto :goto_4

    .line 375
    :goto_5
    cmp-long v4, v30, v11

    .line 376
    .line 377
    if-lez v4, :cond_9

    .line 378
    .line 379
    move-object/from16 v4, v26

    .line 380
    .line 381
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const-string v4, "Reject: "

    .line 385
    .line 386
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    move-wide/from16 v11, v30

    .line 397
    .line 398
    invoke-virtual {v2, v11, v12}, Ljava/util/Date;->setTime(J)V

    .line 399
    .line 400
    .line 401
    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    sub-long v9, v11, p6

    .line 412
    .line 413
    invoke-static {v9, v10, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    if-ltz v6, :cond_8

    .line 420
    .line 421
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 446
    .line 447
    .line 448
    :cond_9
    add-int/lit8 v13, v29, 0x1

    .line 449
    .line 450
    move-object/from16 v9, p1

    .line 451
    .line 452
    move-object/from16 v1, p5

    .line 453
    .line 454
    move/from16 v12, v20

    .line 455
    .line 456
    move/from16 v7, v21

    .line 457
    .line 458
    move-object/from16 v8, v22

    .line 459
    .line 460
    move-object/from16 v4, v23

    .line 461
    .line 462
    move-object/from16 v3, v24

    .line 463
    .line 464
    move/from16 v5, v25

    .line 465
    .line 466
    move-object/from16 v10, v27

    .line 467
    .line 468
    move-object/from16 v11, v28

    .line 469
    .line 470
    goto/16 :goto_1

    .line 471
    .line 472
    :cond_a
    move-object/from16 v24, v3

    .line 473
    .line 474
    move-object/from16 v23, v4

    .line 475
    .line 476
    move/from16 v25, v5

    .line 477
    .line 478
    move/from16 v21, v7

    .line 479
    .line 480
    move-object/from16 v22, v8

    .line 481
    .line 482
    const-wide/16 v11, 0x0

    .line 483
    .line 484
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 485
    .line 486
    new-instance v4, Landroid/util/ArrayMap;

    .line 487
    .line 488
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 489
    .line 490
    .line 491
    move-object/from16 v5, v23

    .line 492
    .line 493
    invoke-virtual {v3, v5, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    check-cast v3, Landroid/util/ArrayMap;

    .line 498
    .line 499
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    check-cast v3, Lcom/android/server/appop/AttributedOp;

    .line 504
    .line 505
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    if-eqz v4, :cond_c

    .line 510
    .line 511
    iget-object v4, v3, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 512
    .line 513
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 514
    .line 515
    .line 516
    move-result v4

    .line 517
    const-wide v6, 0x7fffffffffffffffL

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    move-wide v14, v11

    .line 523
    const/4 v8, 0x0

    .line 524
    :goto_6
    if-ge v8, v4, :cond_b

    .line 525
    .line 526
    iget-object v9, v3, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 527
    .line 528
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v9

    .line 532
    check-cast v9, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 533
    .line 534
    iget-wide v10, v9, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 535
    .line 536
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 537
    .line 538
    .line 539
    move-result-wide v6

    .line 540
    iget v9, v9, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 541
    .line 542
    int-to-long v9, v9

    .line 543
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 544
    .line 545
    .line 546
    move-result-wide v14

    .line 547
    add-int/lit8 v8, v8, 0x1

    .line 548
    .line 549
    goto :goto_6

    .line 550
    :cond_b
    const-string v3, "          Running start at: "

    .line 551
    .line 552
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    sub-long v3, p3, v6

    .line 556
    .line 557
    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 561
    .line 562
    .line 563
    const-wide/16 v3, 0x1

    .line 564
    .line 565
    cmp-long v3, v14, v3

    .line 566
    .line 567
    if-lez v3, :cond_c

    .line 568
    .line 569
    const-string v3, "          startNesting="

    .line 570
    .line 571
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    .line 575
    .line 576
    .line 577
    :cond_c
    const-string v3, "        ]\n"

    .line 578
    .line 579
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    :goto_7
    add-int/lit8 v7, v21, 0x1

    .line 583
    .line 584
    move-object v4, v5

    .line 585
    move-object/from16 v3, v24

    .line 586
    .line 587
    move/from16 v5, v25

    .line 588
    .line 589
    goto/16 :goto_0

    .line 590
    .line 591
    :cond_d
    return-void
.end method

.method public static ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V
    .locals 4

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eq p0, v2, :cond_0

    .line 9
    .line 10
    move p0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p0, v3

    .line 13
    :goto_0
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    if-ne p0, v2, :cond_2

    .line 18
    .line 19
    move p0, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    move p0, v3

    .line 22
    :goto_1
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 23
    .line 24
    .line 25
    :goto_2
    and-int/lit8 p0, p4, 0x2

    .line 26
    .line 27
    if-eqz p0, :cond_3

    .line 28
    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_4

    .line 33
    :cond_3
    if-nez p1, :cond_4

    .line 34
    .line 35
    move p0, v1

    .line 36
    goto :goto_3

    .line 37
    :cond_4
    move p0, v3

    .line 38
    :goto_3
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 39
    .line 40
    .line 41
    :goto_4
    and-int/lit8 p0, p4, 0x4

    .line 42
    .line 43
    if-nez p0, :cond_6

    .line 44
    .line 45
    if-nez p2, :cond_5

    .line 46
    .line 47
    move p0, v1

    .line 48
    goto :goto_5

    .line 49
    :cond_5
    move p0, v3

    .line 50
    :goto_5
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 51
    .line 52
    .line 53
    :cond_6
    and-int/lit8 p0, p4, 0x8

    .line 54
    .line 55
    if-eqz p0, :cond_7

    .line 56
    .line 57
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_7

    .line 61
    :cond_7
    if-nez p3, :cond_8

    .line 62
    .line 63
    move p0, v1

    .line 64
    goto :goto_6

    .line 65
    :cond_8
    move p0, v3

    .line 66
    :goto_6
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 67
    .line 68
    .line 69
    :goto_7
    const/16 p0, 0xf

    .line 70
    .line 71
    invoke-static {p4, p0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 72
    .line 73
    .line 74
    invoke-static {p5, p6}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    .line 75
    .line 76
    .line 77
    cmp-long p0, p7, p5

    .line 78
    .line 79
    if-lez p0, :cond_9

    .line 80
    .line 81
    goto :goto_8

    .line 82
    :cond_9
    move v1, v3

    .line 83
    :goto_8
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 84
    .line 85
    .line 86
    const/16 p0, 0x1f

    .line 87
    .line 88
    invoke-static {p9, p0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public static getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/util/ArrayMap;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v1, v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/android/server/appop/AttributedOp;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp;->createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance p1, Landroid/app/AppOpsManager$OpEntry;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 59
    .line 60
    iget v2, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 61
    .line 62
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iget v3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {v1, v3, v2, p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-direct {p1, v3, p0, v0}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    .line 75
    .line 76
    .line 77
    return-object p1
.end method

.method public static getPackagesForUid(I)[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    if-nez p0, :cond_1

    .line 18
    .line 19
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 20
    .line 21
    :cond_1
    return-object p0
.end method

.method public static isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    move v3, v0

    .line 24
    :goto_0
    if-ge v3, v2, :cond_3

    .line 25
    .line 26
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    .line 35
    .line 36
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    return v1

    .line 47
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return v0
.end method

.method public static isAttributionTagDefined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    return v0

    .line 32
    :cond_2
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0, p2}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public static isOpAllowedForUid(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->runtimePermissionAppopsMappingEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x3e8

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public static logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/os/Process;->isIsolated(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Cannot "

    .line 6
    .line 7
    const-string v2, "AppOps"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ": isolated UID"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/16 v3, 0x2710

    .line 37
    .line 38
    if-ge v0, v3, :cond_1

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, ": non-application UID "

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public static resolveNonAppUid(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    sparse-switch v2, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    :goto_0
    move p0, v1

    .line 14
    goto :goto_1

    .line 15
    :sswitch_0
    const-string v2, "audioserver"

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x5

    .line 25
    goto :goto_1

    .line 26
    :sswitch_1
    const-string/jumbo v2, "shell"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 p0, 0x4

    .line 37
    goto :goto_1

    .line 38
    :sswitch_2
    const-string/jumbo v2, "media"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/4 p0, 0x3

    .line 49
    goto :goto_1

    .line 50
    :sswitch_3
    const-string/jumbo v2, "root"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    const/4 p0, 0x2

    .line 61
    goto :goto_1

    .line 62
    :sswitch_4
    const-string/jumbo v2, "cameraserver"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_5

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    const/4 p0, 0x1

    .line 73
    goto :goto_1

    .line 74
    :sswitch_5
    const-string/jumbo v2, "dumpstate"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_6

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_6
    move p0, v0

    .line 85
    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 86
    .line 87
    .line 88
    return v1

    .line 89
    :pswitch_0
    const/16 p0, 0x411

    .line 90
    .line 91
    return p0

    .line 92
    :pswitch_1
    const/16 p0, 0x3f5

    .line 93
    .line 94
    return p0

    .line 95
    :pswitch_2
    return v0

    .line 96
    :pswitch_3
    const/16 p0, 0x417

    .line 97
    .line 98
    return p0

    .line 99
    :pswitch_4
    const/16 p0, 0x7d0

    .line 100
    .line 101
    return p0

    .line 102
    nop

    .line 103
    :sswitch_data_0
    .sparse-switch
        -0x4faa5ce3 -> :sswitch_5
        -0x1dbbd58 -> :sswitch_4
        0x3580e2 -> :sswitch_3
        0x62f6fe4 -> :sswitch_2
        0x6855e30 -> :sswitch_1
        0x50251299 -> :sswitch_0
    .end sparse-switch

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldStartForMode(IZ)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 12
    :goto_1
    return p0
.end method


# virtual methods
.method public final addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->addHistoricalOps_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "Interaction before persistence initialized"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 27
    .line 28
    invoke-virtual {p1, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 39
    .line 40
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 46
    .line 47
    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p0
.end method

.method public final checkAudioOperation(IIILjava/lang/String;)I
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda4;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v5, p0, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;I)V

    .line 17
    .line 18
    .line 19
    move v1, p1

    .line 20
    move v2, p2

    .line 21
    move v3, p3

    .line 22
    move-object v4, p4

    .line 23
    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    invoke-direct {v5, v1, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 32
    .line 33
    .line 34
    move v1, p1

    .line 35
    move v2, p2

    .line 36
    move v3, p3

    .line 37
    move-object v4, p4

    .line 38
    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;

    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    invoke-direct {v5, v1, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 51
    .line 52
    .line 53
    move v1, p1

    .line 54
    move v2, p2

    .line 55
    move v3, p3

    .line 56
    move-object v4, p4

    .line 57
    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckAudioOperationImpl(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    :goto_0
    return p0
.end method

.method public final checkOperation(IILjava/lang/String;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move-object v3, p3

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZ)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final checkOperationForDevice(IILjava/lang/String;I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move v5, p4

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZ)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final checkOperationRaw(IILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x1

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZ)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final checkOperationRawForDevice(IILjava/lang/String;Ljava/lang/String;I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2
    .line 3
    const/4 v6, 0x1

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move v5, p5

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZ)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final checkPackage(ILjava/lang/String;)I
    .locals 8

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v5, -0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v6, 0x1

    .line 8
    const/4 v7, 0x2

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p2

    .line 11
    move v2, p1

    .line 12
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eq v0, p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, p1, p0, p2, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    if-nez p0, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return v7

    .line 56
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 57
    return p0

    .line 58
    :catch_0
    return v7
.end method

.method public final clearHistory()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->clearHistory_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistoricalRegistry()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->clearHistory()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final collectAsyncNotedOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    const/4 v9, 0x1

    .line 6
    const/4 v10, 0x0

    .line 7
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v11

    .line 18
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    new-instance v13, Landroid/util/Pair;

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v13, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v14, v2

    .line 35
    check-cast v14, Landroid/os/RemoteCallbackList;

    .line 36
    .line 37
    new-instance v15, Landroid/app/AsyncNotedAppOp;

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    move-object v2, v15

    .line 44
    move/from16 v3, p2

    .line 45
    .line 46
    move-object/from16 v5, p4

    .line 47
    .line 48
    move-object/from16 v6, p5

    .line 49
    .line 50
    invoke-direct/range {v2 .. v8}, Landroid/app/AsyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    .line 51
    .line 52
    .line 53
    new-array v8, v9, [Z

    .line 54
    .line 55
    aput-boolean v10, v8, v10

    .line 56
    .line 57
    and-int/lit8 v2, p7, 0x9

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    if-eqz p6, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    if-eqz v14, :cond_2

    .line 79
    .line 80
    new-instance v7, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;

    .line 81
    .line 82
    move-object v2, v7

    .line 83
    move-object v3, v15

    .line 84
    move-object v4, v8

    .line 85
    move/from16 v5, p2

    .line 86
    .line 87
    move-object/from16 v6, p3

    .line 88
    .line 89
    move-object v0, v7

    .line 90
    move/from16 v7, p1

    .line 91
    .line 92
    move-object/from16 v16, v8

    .line 93
    .line 94
    move-object/from16 v8, p4

    .line 95
    .line 96
    invoke-direct/range {v2 .. v8}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;-><init>(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v14, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    move-object/from16 v16, v8

    .line 106
    .line 107
    :goto_1
    aget-boolean v0, v16, v10

    .line 108
    .line 109
    if-nez v0, :cond_4

    .line 110
    .line 111
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    .line 112
    .line 113
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Ljava/util/ArrayList;

    .line 118
    .line 119
    if-nez v0, :cond_3

    .line 120
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .line 125
    .line 126
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    .line 127
    .line 128
    invoke-virtual {v2, v13, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    :cond_3
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    const/16 v3, 0xa

    .line 139
    .line 140
    if-le v2, v3, :cond_4

    .line 141
    .line 142
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    :catchall_1
    move-exception v0

    .line 153
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    .line 155
    .line 156
    throw v0
.end method

.method public final collectNoteOpCallsForValidation(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final collectOps(Lcom/android/server/appop/AppOpsService$Ops;[ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "android.permission.GET_APP_OPS_STATS"

    .line 12
    .line 13
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v0, 0x0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p0, v0

    .line 23
    :goto_0
    const/16 v1, 0x7d0

    .line 24
    .line 25
    if-nez p2, :cond_3

    .line 26
    .line 27
    new-instance p2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    move v2, v0

    .line 33
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-ge v0, v3, :cond_9

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 44
    .line 45
    iget v4, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 46
    .line 47
    invoke-static {v4}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    if-nez p0, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    if-le v2, v1, :cond_2

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_2
    invoke-static {v3, p3}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    add-int/2addr v3, v2

    .line 75
    move v2, v3

    .line 76
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/4 v2, 0x0

    .line 80
    move v3, v0

    .line 81
    :goto_3
    array-length v4, p2

    .line 82
    if-ge v0, v4, :cond_6

    .line 83
    .line 84
    aget v4, p2, v0

    .line 85
    .line 86
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 91
    .line 92
    if-eqz v4, :cond_8

    .line 93
    .line 94
    if-nez v2, :cond_4

    .line 95
    .line 96
    new-instance v2, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    :cond_4
    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 102
    .line 103
    invoke-static {v5}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_5

    .line 108
    .line 109
    if-nez p0, :cond_5

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_5
    if-le v3, v1, :cond_7

    .line 113
    .line 114
    :cond_6
    move-object p2, v2

    .line 115
    move v2, v3

    .line 116
    goto :goto_5

    .line 117
    :cond_7
    invoke-static {v4, p3}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    add-int/2addr v4, v3

    .line 133
    move v3, v4

    .line 134
    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_9
    :goto_5
    if-le v2, v1, :cond_a

    .line 138
    .line 139
    const-string p0, "AppOps"

    .line 140
    .line 141
    const-string p1, "The number of attributed op entries has exceeded the threshold. This could be due to DoS attack from malicious apps. The result is throttled."

    .line 142
    .line 143
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_a
    return-object p2
.end method

.method public final collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;
    .locals 5

    .line 1
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    if-nez v0, :cond_2

    .line 36
    .line 37
    return-object v3

    .line 38
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 55
    .line 56
    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 57
    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 60
    .line 61
    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda3;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw v0
.end method

.method public final collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 2
    .line 3
    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(I)Landroid/util/SparseIntArray;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 p1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    if-ge v1, v0, :cond_5

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-direct {v2, p2, v3, v4}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    :goto_1
    array-length v0, p2

    .line 54
    if-ge v1, v0, :cond_5

    .line 55
    .line 56
    aget v0, p2, v1

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-ltz v2, :cond_4

    .line 63
    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    new-instance p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    :cond_3
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-direct {v2, v0, v3, v4}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    return-object p1
.end method

.method public final doForAllAttributedOpsInUidLocked(ILjava/util/function/Consumer;)V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x0

    .line 19
    move v1, v0

    .line 20
    :goto_0
    if-ge v1, p1, :cond_4

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    move v4, v0

    .line 35
    :goto_1
    if-ge v4, v3, :cond_3

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    .line 42
    .line 43
    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    move v7, v0

    .line 50
    :goto_2
    if-ge v7, v6, :cond_2

    .line 51
    .line 52
    iget-object v8, v5, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    check-cast v8, Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    move v10, v0

    .line 65
    :goto_3
    if-ge v10, v9, :cond_1

    .line 66
    .line 67
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    check-cast v11, Lcom/android/server/appop/AttributedOp;

    .line 72
    .line 73
    invoke-interface {p2, v11}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v10, v10, 0x1

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 38
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v4, "AppOps"

    .line 10
    .line 11
    invoke-static {v3, v4, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v4, 0x0

    .line 19
    const/4 v13, 0x0

    .line 20
    const/16 v5, 0xa

    .line 21
    .line 22
    if-eqz v2, :cond_15

    .line 23
    .line 24
    move v6, v5

    .line 25
    move v7, v13

    .line 26
    move v8, v7

    .line 27
    move v9, v8

    .line 28
    move v10, v9

    .line 29
    move/from16 v16, v10

    .line 30
    .line 31
    move/from16 v17, v16

    .line 32
    .line 33
    move/from16 v18, v17

    .line 34
    .line 35
    const/4 v11, -0x1

    .line 36
    const/4 v14, -0x1

    .line 37
    const/4 v15, -0x1

    .line 38
    move-object v5, v4

    .line 39
    :goto_0
    array-length v3, v2

    .line 40
    if-ge v7, v3, :cond_14

    .line 41
    .line 42
    aget-object v3, v2, v7

    .line 43
    .line 44
    const-string v12, "-h"

    .line 45
    .line 46
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v12

    .line 50
    if-eqz v12, :cond_1

    .line 51
    .line 52
    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    const-string v12, "-a"

    .line 57
    .line 58
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v12

    .line 62
    if-eqz v12, :cond_3

    .line 63
    .line 64
    const/16 v18, 0x1

    .line 65
    .line 66
    :cond_2
    :goto_1
    const/16 v19, 0x1

    .line 67
    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :cond_3
    const-string v12, "--op"

    .line 71
    .line 72
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    if-eqz v12, :cond_5

    .line 77
    .line 78
    add-int/lit8 v7, v7, 0x1

    .line 79
    .line 80
    array-length v3, v2

    .line 81
    if-lt v7, v3, :cond_4

    .line 82
    .line 83
    const-string v1, "No argument for --op option"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    aget-object v3, v2, v7

    .line 90
    .line 91
    invoke-static {v0, v3}, Lcom/android/server/appop/AppOpsService$Shell;->-$$Nest$smstrOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    or-int/lit8 v10, v10, 0x8

    .line 96
    .line 97
    if-gez v15, :cond_2

    .line 98
    .line 99
    return-void

    .line 100
    :cond_5
    const-string v12, "--package"

    .line 101
    .line 102
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    if-eqz v12, :cond_9

    .line 107
    .line 108
    add-int/lit8 v7, v7, 0x1

    .line 109
    .line 110
    array-length v3, v2

    .line 111
    if-lt v7, v3, :cond_6

    .line 112
    .line 113
    const-string v1, "No argument for --package option"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_6
    aget-object v3, v2, v7

    .line 120
    .line 121
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 122
    .line 123
    .line 124
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    move-object v12, v5

    .line 126
    move/from16 v20, v6

    .line 127
    .line 128
    const-wide/32 v5, 0xc02000

    .line 129
    .line 130
    .line 131
    :try_start_1
    invoke-interface {v4, v3, v5, v6, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 132
    .line 133
    .line 134
    move-result v14
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    goto :goto_2

    .line 136
    :catch_0
    move-object v12, v5

    .line 137
    move/from16 v20, v6

    .line 138
    .line 139
    :catch_1
    :goto_2
    if-gez v14, :cond_7

    .line 140
    .line 141
    const-string v1, "Unknown package: "

    .line 142
    .line 143
    invoke-static {v0, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_7
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    or-int/lit8 v10, v10, 0x3

    .line 152
    .line 153
    move-object v4, v3

    .line 154
    :cond_8
    move-object v5, v12

    .line 155
    :goto_3
    move/from16 v6, v20

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_9
    move-object v12, v5

    .line 159
    move/from16 v20, v6

    .line 160
    .line 161
    const-string v5, "--attributionTag"

    .line 162
    .line 163
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_b

    .line 168
    .line 169
    add-int/lit8 v7, v7, 0x1

    .line 170
    .line 171
    array-length v3, v2

    .line 172
    if-lt v7, v3, :cond_a

    .line 173
    .line 174
    const-string v1, "No argument for --attributionTag option"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_a
    aget-object v3, v2, v7

    .line 181
    .line 182
    or-int/lit8 v10, v10, 0x4

    .line 183
    .line 184
    move-object v5, v3

    .line 185
    goto :goto_3

    .line 186
    :cond_b
    const-string v5, "--mode"

    .line 187
    .line 188
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_d

    .line 193
    .line 194
    add-int/lit8 v7, v7, 0x1

    .line 195
    .line 196
    array-length v3, v2

    .line 197
    if-lt v7, v3, :cond_c

    .line 198
    .line 199
    const-string v1, "No argument for --mode option"

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_c
    aget-object v3, v2, v7

    .line 206
    .line 207
    invoke-static {v0, v3}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/io/PrintWriter;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    if-gez v11, :cond_8

    .line 212
    .line 213
    return-void

    .line 214
    :cond_d
    const-string v5, "--watchers"

    .line 215
    .line 216
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-eqz v5, :cond_e

    .line 221
    .line 222
    move-object v5, v12

    .line 223
    move/from16 v6, v20

    .line 224
    .line 225
    const/4 v9, 0x1

    .line 226
    goto/16 :goto_1

    .line 227
    .line 228
    :cond_e
    const-string v5, "--include-discrete"

    .line 229
    .line 230
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-eqz v5, :cond_10

    .line 235
    .line 236
    add-int/lit8 v7, v7, 0x1

    .line 237
    .line 238
    array-length v3, v2

    .line 239
    if-lt v7, v3, :cond_f

    .line 240
    .line 241
    const-string v1, "No argument for --include-discrete option"

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_f
    :try_start_2
    aget-object v3, v2, v7

    .line 248
    .line 249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 254
    .line 255
    .line 256
    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 257
    move v6, v3

    .line 258
    move-object v5, v12

    .line 259
    const/16 v16, 0x1

    .line 260
    .line 261
    goto/16 :goto_1

    .line 262
    .line 263
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string v3, "Wrong parameter: "

    .line 266
    .line 267
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    aget-object v2, v2, v7

    .line 271
    .line 272
    invoke-static {v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_10
    const-string v5, "--history"

    .line 277
    .line 278
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-eqz v5, :cond_11

    .line 283
    .line 284
    move-object v5, v12

    .line 285
    move/from16 v6, v20

    .line 286
    .line 287
    const/4 v8, 0x1

    .line 288
    goto/16 :goto_1

    .line 289
    .line 290
    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    if-lez v5, :cond_12

    .line 295
    .line 296
    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    const/16 v6, 0x2d

    .line 301
    .line 302
    if-ne v5, v6, :cond_12

    .line 303
    .line 304
    const-string v1, "Unknown option: "

    .line 305
    .line 306
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :cond_12
    const-string v5, "--uid-state-changes"

    .line 315
    .line 316
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    if-eqz v5, :cond_13

    .line 321
    .line 322
    move-object v5, v12

    .line 323
    move/from16 v6, v20

    .line 324
    .line 325
    const/16 v17, 0x1

    .line 326
    .line 327
    goto/16 :goto_1

    .line 328
    .line 329
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 330
    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :cond_13
    const-string v1, "Unknown command: "

    .line 334
    .line 335
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :cond_14
    move-object v12, v5

    .line 344
    move/from16 v20, v6

    .line 345
    .line 346
    const/16 v19, 0x1

    .line 347
    .line 348
    move/from16 v21, v16

    .line 349
    .line 350
    move/from16 v22, v17

    .line 351
    .line 352
    move/from16 v23, v18

    .line 353
    .line 354
    move/from16 v17, v8

    .line 355
    .line 356
    move/from16 v18, v9

    .line 357
    .line 358
    move/from16 v16, v10

    .line 359
    .line 360
    move v10, v11

    .line 361
    move v11, v15

    .line 362
    move-object v15, v12

    .line 363
    move-object v12, v4

    .line 364
    goto :goto_5

    .line 365
    :cond_15
    const/16 v19, 0x1

    .line 366
    .line 367
    move-object v12, v4

    .line 368
    move-object v15, v12

    .line 369
    move/from16 v20, v5

    .line 370
    .line 371
    move/from16 v16, v13

    .line 372
    .line 373
    move/from16 v17, v16

    .line 374
    .line 375
    move/from16 v18, v17

    .line 376
    .line 377
    move/from16 v21, v18

    .line 378
    .line 379
    move/from16 v22, v21

    .line 380
    .line 381
    move/from16 v23, v22

    .line 382
    .line 383
    const/4 v10, -0x1

    .line 384
    const/4 v11, -0x1

    .line 385
    const/4 v14, -0x1

    .line 386
    :goto_5
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 387
    .line 388
    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 389
    .line 390
    .line 391
    invoke-direct {v8, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    new-instance v24, Ljava/util/Date;

    .line 395
    .line 396
    invoke-direct/range {v24 .. v24}, Ljava/util/Date;-><init>()V

    .line 397
    .line 398
    .line 399
    monitor-enter p0

    .line 400
    :try_start_3
    const-string v2, "Current AppOps Service state:"

    .line 401
    .line 402
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    if-nez v17, :cond_16

    .line 406
    .line 407
    if-nez v18, :cond_16

    .line 408
    .line 409
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 410
    .line 411
    invoke-virtual {v2, v0}, Lcom/android/server/appop/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 412
    .line 413
    .line 414
    goto :goto_6

    .line 415
    :catchall_0
    move-exception v0

    .line 416
    goto/16 :goto_3f

    .line 417
    .line 418
    :cond_16
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 419
    .line 420
    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 422
    .line 423
    .line 424
    move-result-wide v25

    .line 425
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 426
    .line 427
    .line 428
    move-result-wide v5

    .line 429
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 430
    .line 431
    .line 432
    if-nez v16, :cond_18

    .line 433
    .line 434
    if-gez v10, :cond_18

    .line 435
    .line 436
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    .line 437
    .line 438
    if-eqz v2, :cond_18

    .line 439
    .line 440
    if-nez v18, :cond_18

    .line 441
    .line 442
    if-nez v17, :cond_18

    .line 443
    .line 444
    const-string v2, "  Profile owners:"

    .line 445
    .line 446
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    move v2, v13

    .line 450
    :goto_7
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    .line 451
    .line 452
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    if-ge v2, v3, :cond_17

    .line 457
    .line 458
    const-string v3, "    User #"

    .line 459
    .line 460
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    .line 464
    .line 465
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 470
    .line 471
    .line 472
    const-string v3, ": "

    .line 473
    .line 474
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    .line 478
    .line 479
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    invoke-static {v0, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 484
    .line 485
    .line 486
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 487
    .line 488
    .line 489
    add-int/lit8 v2, v2, 0x1

    .line 490
    .line 491
    goto :goto_7

    .line 492
    :cond_17
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 493
    .line 494
    .line 495
    :cond_18
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 496
    .line 497
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    if-lez v2, :cond_1e

    .line 502
    .line 503
    if-nez v17, :cond_1e

    .line 504
    .line 505
    move v2, v13

    .line 506
    move v3, v2

    .line 507
    move v4, v3

    .line 508
    :goto_8
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 509
    .line 510
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 511
    .line 512
    .line 513
    move-result v7

    .line 514
    if-ge v2, v7, :cond_1f

    .line 515
    .line 516
    if-ltz v11, :cond_19

    .line 517
    .line 518
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 519
    .line 520
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 521
    .line 522
    .line 523
    move-result v7

    .line 524
    if-eq v11, v7, :cond_19

    .line 525
    .line 526
    goto :goto_b

    .line 527
    :cond_19
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 528
    .line 529
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v7

    .line 533
    check-cast v7, Landroid/util/ArraySet;

    .line 534
    .line 535
    move v9, v13

    .line 536
    move/from16 v27, v9

    .line 537
    .line 538
    :goto_9
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 539
    .line 540
    .line 541
    move-result v13

    .line 542
    if-ge v9, v13, :cond_1d

    .line 543
    .line 544
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v13

    .line 548
    check-cast v13, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 549
    .line 550
    if-eqz v12, :cond_1a

    .line 551
    .line 552
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    .line 554
    .line 555
    move/from16 p3, v4

    .line 556
    .line 557
    const/16 v29, -0x1

    .line 558
    .line 559
    invoke-static/range {v29 .. v29}, Landroid/os/UserHandle;->getAppId(I)I

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    if-eq v14, v4, :cond_1a

    .line 564
    .line 565
    move/from16 v4, p3

    .line 566
    .line 567
    goto :goto_a

    .line 568
    :cond_1a
    if-nez v3, :cond_1b

    .line 569
    .line 570
    const-string v3, "  Op mode watchers:"

    .line 571
    .line 572
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    move/from16 v3, v19

    .line 576
    .line 577
    :cond_1b
    if-nez v27, :cond_1c

    .line 578
    .line 579
    const-string v4, "    Op "

    .line 580
    .line 581
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 585
    .line 586
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 587
    .line 588
    .line 589
    move-result v4

    .line 590
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    const-string v4, ":"

    .line 598
    .line 599
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    move/from16 v27, v19

    .line 603
    .line 604
    :cond_1c
    const-string v4, "      #"

    .line 605
    .line 606
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 610
    .line 611
    .line 612
    const-string v4, ": "

    .line 613
    .line 614
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    move/from16 v4, v19

    .line 621
    .line 622
    :goto_a
    add-int/lit8 v9, v9, 0x1

    .line 623
    .line 624
    goto :goto_9

    .line 625
    :cond_1d
    move/from16 p3, v4

    .line 626
    .line 627
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 628
    .line 629
    const/4 v13, 0x0

    .line 630
    goto :goto_8

    .line 631
    :cond_1e
    const/4 v4, 0x0

    .line 632
    :cond_1f
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 633
    .line 634
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 635
    .line 636
    .line 637
    move-result v2

    .line 638
    if-lez v2, :cond_23

    .line 639
    .line 640
    if-gez v11, :cond_23

    .line 641
    .line 642
    if-nez v17, :cond_23

    .line 643
    .line 644
    const/4 v2, 0x0

    .line 645
    const/4 v3, 0x0

    .line 646
    :goto_c
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 647
    .line 648
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 649
    .line 650
    .line 651
    move-result v7

    .line 652
    if-ge v2, v7, :cond_23

    .line 653
    .line 654
    if-eqz v12, :cond_20

    .line 655
    .line 656
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 657
    .line 658
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v7

    .line 662
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v7

    .line 666
    if-nez v7, :cond_20

    .line 667
    .line 668
    goto :goto_e

    .line 669
    :cond_20
    if-nez v3, :cond_21

    .line 670
    .line 671
    const-string v3, "  Package mode watchers:"

    .line 672
    .line 673
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    move/from16 v3, v19

    .line 677
    .line 678
    :cond_21
    const-string v4, "    Pkg "

    .line 679
    .line 680
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 684
    .line 685
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v4

    .line 689
    check-cast v4, Ljava/lang/String;

    .line 690
    .line 691
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    const-string v4, ":"

    .line 695
    .line 696
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 700
    .line 701
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v4

    .line 705
    check-cast v4, Landroid/util/ArraySet;

    .line 706
    .line 707
    const/4 v7, 0x0

    .line 708
    :goto_d
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 709
    .line 710
    .line 711
    move-result v9

    .line 712
    if-ge v7, v9, :cond_22

    .line 713
    .line 714
    const-string v9, "      #"

    .line 715
    .line 716
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 720
    .line 721
    .line 722
    const-string v9, ": "

    .line 723
    .line 724
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v9

    .line 731
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 732
    .line 733
    .line 734
    add-int/lit8 v7, v7, 0x1

    .line 735
    .line 736
    goto :goto_d

    .line 737
    :cond_22
    move/from16 v4, v19

    .line 738
    .line 739
    :goto_e
    add-int/lit8 v2, v2, 0x1

    .line 740
    .line 741
    goto :goto_c

    .line 742
    :cond_23
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 743
    .line 744
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 745
    .line 746
    .line 747
    move-result v2

    .line 748
    if-lez v2, :cond_27

    .line 749
    .line 750
    if-gez v11, :cond_27

    .line 751
    .line 752
    if-nez v17, :cond_27

    .line 753
    .line 754
    const/4 v2, 0x0

    .line 755
    const/4 v3, 0x0

    .line 756
    :goto_f
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 757
    .line 758
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 759
    .line 760
    .line 761
    move-result v7

    .line 762
    if-ge v2, v7, :cond_27

    .line 763
    .line 764
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 765
    .line 766
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v7

    .line 770
    check-cast v7, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 771
    .line 772
    if-eqz v12, :cond_24

    .line 773
    .line 774
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    .line 776
    .line 777
    const/4 v9, -0x1

    .line 778
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    .line 779
    .line 780
    .line 781
    move-result v13

    .line 782
    if-eq v14, v13, :cond_25

    .line 783
    .line 784
    goto :goto_10

    .line 785
    :cond_24
    const/4 v9, -0x1

    .line 786
    :cond_25
    if-nez v3, :cond_26

    .line 787
    .line 788
    const-string v3, "  All op mode watchers:"

    .line 789
    .line 790
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    move/from16 v3, v19

    .line 794
    .line 795
    :cond_26
    const-string v4, "    "

    .line 796
    .line 797
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 801
    .line 802
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v4

    .line 806
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 807
    .line 808
    .line 809
    move-result v4

    .line 810
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v4

    .line 814
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    const-string v4, ": "

    .line 818
    .line 819
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 823
    .line 824
    .line 825
    move/from16 v4, v19

    .line 826
    .line 827
    :goto_10
    add-int/lit8 v2, v2, 0x1

    .line 828
    .line 829
    goto :goto_f

    .line 830
    :cond_27
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 831
    .line 832
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 833
    .line 834
    .line 835
    move-result v2

    .line 836
    if-lez v2, :cond_30

    .line 837
    .line 838
    if-gez v10, :cond_30

    .line 839
    .line 840
    const/4 v2, 0x0

    .line 841
    const/4 v4, 0x0

    .line 842
    :goto_11
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 843
    .line 844
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 845
    .line 846
    .line 847
    move-result v9

    .line 848
    if-ge v2, v9, :cond_2f

    .line 849
    .line 850
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 851
    .line 852
    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v9

    .line 856
    check-cast v9, Landroid/util/SparseArray;

    .line 857
    .line 858
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 859
    .line 860
    .line 861
    move-result v13

    .line 862
    if-gtz v13, :cond_28

    .line 863
    .line 864
    goto/16 :goto_14

    .line 865
    .line 866
    :cond_28
    const/4 v13, 0x0

    .line 867
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v27

    .line 871
    move-object/from16 v13, v27

    .line 872
    .line 873
    check-cast v13, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    .line 874
    .line 875
    if-ltz v11, :cond_29

    .line 876
    .line 877
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 878
    .line 879
    .line 880
    move-result v27

    .line 881
    if-gez v27, :cond_29

    .line 882
    .line 883
    goto/16 :goto_14

    .line 884
    .line 885
    :cond_29
    if-eqz v12, :cond_2a

    .line 886
    .line 887
    iget v3, v13, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 888
    .line 889
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 890
    .line 891
    .line 892
    move-result v3

    .line 893
    if-eq v14, v3, :cond_2a

    .line 894
    .line 895
    goto :goto_14

    .line 896
    :cond_2a
    if-nez v4, :cond_2b

    .line 897
    .line 898
    const-string v3, "  All op active watchers:"

    .line 899
    .line 900
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    move/from16 v4, v19

    .line 904
    .line 905
    :cond_2b
    const-string v3, "    "

    .line 906
    .line 907
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 911
    .line 912
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v3

    .line 916
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 917
    .line 918
    .line 919
    move-result v3

    .line 920
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v3

    .line 924
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    .line 926
    .line 927
    const-string v3, " ->"

    .line 928
    .line 929
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 930
    .line 931
    .line 932
    const-string v3, "        ["

    .line 933
    .line 934
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    const/4 v7, 0x0

    .line 942
    :goto_12
    if-ge v7, v3, :cond_2e

    .line 943
    .line 944
    if-lez v7, :cond_2c

    .line 945
    .line 946
    move/from16 v27, v4

    .line 947
    .line 948
    const/16 v4, 0x20

    .line 949
    .line 950
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 951
    .line 952
    .line 953
    goto :goto_13

    .line 954
    :cond_2c
    move/from16 v27, v4

    .line 955
    .line 956
    :goto_13
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 957
    .line 958
    .line 959
    move-result v4

    .line 960
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v4

    .line 964
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    add-int/lit8 v4, v3, -0x1

    .line 968
    .line 969
    if-ge v7, v4, :cond_2d

    .line 970
    .line 971
    const/16 v4, 0x2c

    .line 972
    .line 973
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 974
    .line 975
    .line 976
    :cond_2d
    add-int/lit8 v7, v7, 0x1

    .line 977
    .line 978
    move/from16 v4, v27

    .line 979
    .line 980
    goto :goto_12

    .line 981
    :cond_2e
    move/from16 v27, v4

    .line 982
    .line 983
    const-string v3, "]"

    .line 984
    .line 985
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    const-string v3, "        "

    .line 989
    .line 990
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 994
    .line 995
    .line 996
    move/from16 v4, v27

    .line 997
    .line 998
    :goto_14
    add-int/lit8 v2, v2, 0x1

    .line 999
    .line 1000
    goto/16 :goto_11

    .line 1001
    .line 1002
    :cond_2f
    move/from16 v4, v19

    .line 1003
    .line 1004
    :cond_30
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 1005
    .line 1006
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 1007
    .line 1008
    .line 1009
    move-result v2

    .line 1010
    if-lez v2, :cond_39

    .line 1011
    .line 1012
    if-gez v10, :cond_39

    .line 1013
    .line 1014
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 1015
    .line 1016
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 1017
    .line 1018
    .line 1019
    move-result v2

    .line 1020
    const/4 v3, 0x0

    .line 1021
    const/4 v13, 0x0

    .line 1022
    :goto_15
    if-ge v13, v2, :cond_38

    .line 1023
    .line 1024
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 1025
    .line 1026
    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v4

    .line 1030
    check-cast v4, Landroid/util/SparseArray;

    .line 1031
    .line 1032
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 1033
    .line 1034
    .line 1035
    move-result v7

    .line 1036
    if-gtz v7, :cond_31

    .line 1037
    .line 1038
    goto :goto_16

    .line 1039
    :cond_31
    const/4 v7, 0x0

    .line 1040
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v9

    .line 1044
    check-cast v9, Lcom/android/server/appop/AppOpsService$StartedCallback;

    .line 1045
    .line 1046
    if-ltz v11, :cond_32

    .line 1047
    .line 1048
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 1049
    .line 1050
    .line 1051
    move-result v7

    .line 1052
    if-gez v7, :cond_32

    .line 1053
    .line 1054
    goto :goto_16

    .line 1055
    :cond_32
    if-eqz v12, :cond_33

    .line 1056
    .line 1057
    iget v7, v9, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    .line 1058
    .line 1059
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    .line 1060
    .line 1061
    .line 1062
    move-result v7

    .line 1063
    if-eq v14, v7, :cond_33

    .line 1064
    .line 1065
    :goto_16
    move/from16 v27, v2

    .line 1066
    .line 1067
    goto :goto_19

    .line 1068
    :cond_33
    if-nez v3, :cond_34

    .line 1069
    .line 1070
    const-string v3, "  All op started watchers:"

    .line 1071
    .line 1072
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    move/from16 v3, v19

    .line 1076
    .line 1077
    :cond_34
    const-string v7, "    "

    .line 1078
    .line 1079
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    .line 1081
    .line 1082
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 1083
    .line 1084
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v7

    .line 1088
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 1089
    .line 1090
    .line 1091
    move-result v7

    .line 1092
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v7

    .line 1096
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    const-string v7, " ->"

    .line 1100
    .line 1101
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    const-string v7, "        ["

    .line 1105
    .line 1106
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 1110
    .line 1111
    .line 1112
    move-result v7

    .line 1113
    move/from16 v27, v2

    .line 1114
    .line 1115
    const/4 v2, 0x0

    .line 1116
    :goto_17
    if-ge v2, v7, :cond_37

    .line 1117
    .line 1118
    if-lez v2, :cond_35

    .line 1119
    .line 1120
    move/from16 v29, v3

    .line 1121
    .line 1122
    const/16 v3, 0x20

    .line 1123
    .line 1124
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1125
    .line 1126
    .line 1127
    goto :goto_18

    .line 1128
    :cond_35
    move/from16 v29, v3

    .line 1129
    .line 1130
    :goto_18
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1131
    .line 1132
    .line 1133
    move-result v3

    .line 1134
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v3

    .line 1138
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    add-int/lit8 v3, v7, -0x1

    .line 1142
    .line 1143
    if-ge v2, v3, :cond_36

    .line 1144
    .line 1145
    const/16 v3, 0x2c

    .line 1146
    .line 1147
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1148
    .line 1149
    .line 1150
    :cond_36
    add-int/lit8 v2, v2, 0x1

    .line 1151
    .line 1152
    move/from16 v3, v29

    .line 1153
    .line 1154
    goto :goto_17

    .line 1155
    :cond_37
    move/from16 v29, v3

    .line 1156
    .line 1157
    const-string v2, "]"

    .line 1158
    .line 1159
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1160
    .line 1161
    .line 1162
    const-string v2, "        "

    .line 1163
    .line 1164
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1168
    .line 1169
    .line 1170
    move/from16 v3, v29

    .line 1171
    .line 1172
    :goto_19
    add-int/lit8 v13, v13, 0x1

    .line 1173
    .line 1174
    move/from16 v2, v27

    .line 1175
    .line 1176
    goto/16 :goto_15

    .line 1177
    .line 1178
    :cond_38
    move/from16 v4, v19

    .line 1179
    .line 1180
    :cond_39
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 1181
    .line 1182
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 1183
    .line 1184
    .line 1185
    move-result v2

    .line 1186
    if-lez v2, :cond_42

    .line 1187
    .line 1188
    if-gez v10, :cond_42

    .line 1189
    .line 1190
    const/4 v2, 0x0

    .line 1191
    const/4 v13, 0x0

    .line 1192
    :goto_1a
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 1193
    .line 1194
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 1195
    .line 1196
    .line 1197
    move-result v3

    .line 1198
    if-ge v13, v3, :cond_41

    .line 1199
    .line 1200
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 1201
    .line 1202
    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v3

    .line 1206
    check-cast v3, Landroid/util/SparseArray;

    .line 1207
    .line 1208
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 1209
    .line 1210
    .line 1211
    move-result v4

    .line 1212
    if-gtz v4, :cond_3a

    .line 1213
    .line 1214
    const/4 v9, 0x0

    .line 1215
    goto :goto_1b

    .line 1216
    :cond_3a
    const/4 v9, 0x0

    .line 1217
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v4

    .line 1221
    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;

    .line 1222
    .line 1223
    if-ltz v11, :cond_3b

    .line 1224
    .line 1225
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 1226
    .line 1227
    .line 1228
    move-result v7

    .line 1229
    if-gez v7, :cond_3b

    .line 1230
    .line 1231
    goto :goto_1b

    .line 1232
    :cond_3b
    if-eqz v12, :cond_3c

    .line 1233
    .line 1234
    iget v7, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    .line 1235
    .line 1236
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    .line 1237
    .line 1238
    .line 1239
    move-result v7

    .line 1240
    if-eq v14, v7, :cond_3c

    .line 1241
    .line 1242
    :goto_1b
    move/from16 v27, v2

    .line 1243
    .line 1244
    const/16 v2, 0x2c

    .line 1245
    .line 1246
    goto :goto_1f

    .line 1247
    :cond_3c
    if-nez v2, :cond_3d

    .line 1248
    .line 1249
    const-string v2, "  All op noted watchers:"

    .line 1250
    .line 1251
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    move/from16 v2, v19

    .line 1255
    .line 1256
    :cond_3d
    const-string v7, "    "

    .line 1257
    .line 1258
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1259
    .line 1260
    .line 1261
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 1262
    .line 1263
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v7

    .line 1267
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 1268
    .line 1269
    .line 1270
    move-result v7

    .line 1271
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v7

    .line 1275
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    const-string v7, " ->"

    .line 1279
    .line 1280
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1281
    .line 1282
    .line 1283
    const-string v7, "        ["

    .line 1284
    .line 1285
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 1289
    .line 1290
    .line 1291
    move-result v7

    .line 1292
    :goto_1c
    if-ge v9, v7, :cond_40

    .line 1293
    .line 1294
    if-lez v9, :cond_3e

    .line 1295
    .line 1296
    move/from16 v27, v2

    .line 1297
    .line 1298
    const/16 v2, 0x20

    .line 1299
    .line 1300
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1301
    .line 1302
    .line 1303
    goto :goto_1d

    .line 1304
    :cond_3e
    move/from16 v27, v2

    .line 1305
    .line 1306
    const/16 v2, 0x20

    .line 1307
    .line 1308
    :goto_1d
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1309
    .line 1310
    .line 1311
    move-result v29

    .line 1312
    invoke-static/range {v29 .. v29}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v2

    .line 1316
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1317
    .line 1318
    .line 1319
    add-int/lit8 v2, v7, -0x1

    .line 1320
    .line 1321
    if-ge v9, v2, :cond_3f

    .line 1322
    .line 1323
    const/16 v2, 0x2c

    .line 1324
    .line 1325
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_1e

    .line 1329
    :cond_3f
    const/16 v2, 0x2c

    .line 1330
    .line 1331
    :goto_1e
    add-int/lit8 v9, v9, 0x1

    .line 1332
    .line 1333
    move/from16 v2, v27

    .line 1334
    .line 1335
    goto :goto_1c

    .line 1336
    :cond_40
    move/from16 v27, v2

    .line 1337
    .line 1338
    const/16 v2, 0x2c

    .line 1339
    .line 1340
    const-string v3, "]"

    .line 1341
    .line 1342
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    .line 1344
    .line 1345
    const-string v3, "        "

    .line 1346
    .line 1347
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1351
    .line 1352
    .line 1353
    :goto_1f
    add-int/lit8 v13, v13, 0x1

    .line 1354
    .line 1355
    move/from16 v2, v27

    .line 1356
    .line 1357
    goto/16 :goto_1a

    .line 1358
    .line 1359
    :cond_41
    move/from16 v4, v19

    .line 1360
    .line 1361
    :cond_42
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    .line 1362
    .line 1363
    invoke-virtual {v2}, Lcom/android/server/appop/AudioRestrictionManager;->hasActiveRestrictions()Z

    .line 1364
    .line 1365
    .line 1366
    move-result v2

    .line 1367
    if-eqz v2, :cond_45

    .line 1368
    .line 1369
    if-gez v11, :cond_45

    .line 1370
    .line 1371
    if-eqz v12, :cond_45

    .line 1372
    .line 1373
    if-gez v10, :cond_45

    .line 1374
    .line 1375
    if-nez v18, :cond_45

    .line 1376
    .line 1377
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    .line 1378
    .line 1379
    invoke-virtual {v2, v0}, Lcom/android/server/appop/AudioRestrictionManager;->dump(Ljava/io/PrintWriter;)Z

    .line 1380
    .line 1381
    .line 1382
    move-result v2

    .line 1383
    if-nez v2, :cond_44

    .line 1384
    .line 1385
    if-eqz v4, :cond_43

    .line 1386
    .line 1387
    goto :goto_20

    .line 1388
    :cond_43
    const/4 v13, 0x0

    .line 1389
    goto :goto_21

    .line 1390
    :cond_44
    :goto_20
    move/from16 v13, v19

    .line 1391
    .line 1392
    :goto_21
    move v4, v13

    .line 1393
    :cond_45
    if-eqz v4, :cond_46

    .line 1394
    .line 1395
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1396
    .line 1397
    .line 1398
    :cond_46
    const/4 v13, 0x0

    .line 1399
    :goto_22
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 1400
    .line 1401
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 1402
    .line 1403
    .line 1404
    move-result v2

    .line 1405
    if-ge v13, v2, :cond_6c

    .line 1406
    .line 1407
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 1408
    .line 1409
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v2

    .line 1413
    check-cast v2, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1414
    .line 1415
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 1416
    .line 1417
    iget v7, v2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 1418
    .line 1419
    invoke-interface {v3, v7}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(I)Landroid/util/SparseIntArray;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v3

    .line 1423
    iget-object v9, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1424
    .line 1425
    if-nez v18, :cond_47

    .line 1426
    .line 1427
    if-eqz v17, :cond_48

    .line 1428
    .line 1429
    :cond_47
    move/from16 v31, v4

    .line 1430
    .line 1431
    move-wide/from16 v34, v5

    .line 1432
    .line 1433
    move-object/from16 v29, v8

    .line 1434
    .line 1435
    move/from16 v36, v10

    .line 1436
    .line 1437
    move/from16 v32, v13

    .line 1438
    .line 1439
    move/from16 v30, v14

    .line 1440
    .line 1441
    move-object/from16 v33, v15

    .line 1442
    .line 1443
    const/16 v28, 0x0

    .line 1444
    .line 1445
    move v15, v11

    .line 1446
    goto/16 :goto_3c

    .line 1447
    .line 1448
    :cond_48
    if-gez v11, :cond_4a

    .line 1449
    .line 1450
    if-nez v12, :cond_4a

    .line 1451
    .line 1452
    if-ltz v10, :cond_49

    .line 1453
    .line 1454
    goto :goto_23

    .line 1455
    :cond_49
    move-object/from16 v29, v8

    .line 1456
    .line 1457
    move-object/from16 v34, v9

    .line 1458
    .line 1459
    move/from16 v35, v11

    .line 1460
    .line 1461
    move/from16 v32, v13

    .line 1462
    .line 1463
    move/from16 v30, v14

    .line 1464
    .line 1465
    move-object/from16 v33, v15

    .line 1466
    .line 1467
    goto/16 :goto_31

    .line 1468
    .line 1469
    :cond_4a
    :goto_23
    if-ltz v11, :cond_4c

    .line 1470
    .line 1471
    if-eqz v3, :cond_4b

    .line 1472
    .line 1473
    invoke-virtual {v3, v11}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 1474
    .line 1475
    .line 1476
    move-result v7

    .line 1477
    if-ltz v7, :cond_4b

    .line 1478
    .line 1479
    goto :goto_24

    .line 1480
    :cond_4b
    const/4 v7, 0x0

    .line 1481
    goto :goto_25

    .line 1482
    :cond_4c
    :goto_24
    move/from16 v7, v19

    .line 1483
    .line 1484
    :goto_25
    if-eqz v12, :cond_4e

    .line 1485
    .line 1486
    move/from16 p1, v7

    .line 1487
    .line 1488
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 1489
    .line 1490
    invoke-virtual {v7, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1491
    .line 1492
    .line 1493
    move-result v7

    .line 1494
    if-ne v14, v7, :cond_4d

    .line 1495
    .line 1496
    goto :goto_26

    .line 1497
    :cond_4d
    const/4 v7, 0x0

    .line 1498
    goto :goto_27

    .line 1499
    :cond_4e
    move/from16 p1, v7

    .line 1500
    .line 1501
    :goto_26
    move/from16 v7, v19

    .line 1502
    .line 1503
    :goto_27
    if-gez v10, :cond_4f

    .line 1504
    .line 1505
    move/from16 v27, v19

    .line 1506
    .line 1507
    goto :goto_28

    .line 1508
    :cond_4f
    const/16 v27, 0x0

    .line 1509
    .line 1510
    :goto_28
    if-nez v27, :cond_52

    .line 1511
    .line 1512
    if-eqz v3, :cond_52

    .line 1513
    .line 1514
    move/from16 p3, v7

    .line 1515
    .line 1516
    const/4 v7, 0x0

    .line 1517
    :goto_29
    if-nez v27, :cond_51

    .line 1518
    .line 1519
    move-object/from16 v29, v8

    .line 1520
    .line 1521
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 1522
    .line 1523
    .line 1524
    move-result v8

    .line 1525
    if-ge v7, v8, :cond_53

    .line 1526
    .line 1527
    invoke-virtual {v3, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 1528
    .line 1529
    .line 1530
    move-result v8

    .line 1531
    if-ne v8, v10, :cond_50

    .line 1532
    .line 1533
    move/from16 v27, v19

    .line 1534
    .line 1535
    :cond_50
    add-int/lit8 v7, v7, 0x1

    .line 1536
    .line 1537
    move-object/from16 v8, v29

    .line 1538
    .line 1539
    goto :goto_29

    .line 1540
    :cond_51
    :goto_2a
    move-object/from16 v29, v8

    .line 1541
    .line 1542
    goto :goto_2b

    .line 1543
    :cond_52
    move/from16 p3, v7

    .line 1544
    .line 1545
    goto :goto_2a

    .line 1546
    :cond_53
    :goto_2b
    if-eqz v9, :cond_5c

    .line 1547
    .line 1548
    move/from16 v7, p1

    .line 1549
    .line 1550
    move/from16 v8, p3

    .line 1551
    .line 1552
    move/from16 v30, v14

    .line 1553
    .line 1554
    const/4 v14, 0x0

    .line 1555
    :goto_2c
    if-eqz v7, :cond_54

    .line 1556
    .line 1557
    if-eqz v8, :cond_54

    .line 1558
    .line 1559
    if-nez v27, :cond_55

    .line 1560
    .line 1561
    :cond_54
    move/from16 v31, v4

    .line 1562
    .line 1563
    goto :goto_2d

    .line 1564
    :cond_55
    move/from16 v31, v4

    .line 1565
    .line 1566
    :cond_56
    move-object/from16 v34, v9

    .line 1567
    .line 1568
    move/from16 v35, v11

    .line 1569
    .line 1570
    move/from16 v32, v13

    .line 1571
    .line 1572
    move-object/from16 v33, v15

    .line 1573
    .line 1574
    goto/16 :goto_30

    .line 1575
    .line 1576
    :goto_2d
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 1577
    .line 1578
    .line 1579
    move-result v4

    .line 1580
    if-ge v14, v4, :cond_56

    .line 1581
    .line 1582
    invoke-virtual {v9, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v4

    .line 1586
    check-cast v4, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1587
    .line 1588
    if-nez v7, :cond_57

    .line 1589
    .line 1590
    if-eqz v4, :cond_57

    .line 1591
    .line 1592
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 1593
    .line 1594
    .line 1595
    move-result v32

    .line 1596
    if-ltz v32, :cond_57

    .line 1597
    .line 1598
    move/from16 v7, v19

    .line 1599
    .line 1600
    :cond_57
    move/from16 p1, v7

    .line 1601
    .line 1602
    if-nez v27, :cond_5a

    .line 1603
    .line 1604
    const/4 v7, 0x0

    .line 1605
    :goto_2e
    if-nez v27, :cond_5a

    .line 1606
    .line 1607
    move/from16 v32, v13

    .line 1608
    .line 1609
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 1610
    .line 1611
    .line 1612
    move-result v13

    .line 1613
    if-ge v7, v13, :cond_59

    .line 1614
    .line 1615
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v13

    .line 1619
    check-cast v13, Lcom/android/server/appop/AppOpsService$Op;

    .line 1620
    .line 1621
    move-object/from16 v33, v15

    .line 1622
    .line 1623
    iget-object v15, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 1624
    .line 1625
    move-object/from16 v34, v9

    .line 1626
    .line 1627
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1628
    .line 1629
    move/from16 v35, v11

    .line 1630
    .line 1631
    iget v11, v13, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 1632
    .line 1633
    iget v13, v13, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 1634
    .line 1635
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1636
    .line 1637
    .line 1638
    move-result v13

    .line 1639
    invoke-interface {v15, v11, v13, v9}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    .line 1640
    .line 1641
    .line 1642
    move-result v9

    .line 1643
    if-ne v9, v10, :cond_58

    .line 1644
    .line 1645
    move/from16 v27, v19

    .line 1646
    .line 1647
    :cond_58
    add-int/lit8 v7, v7, 0x1

    .line 1648
    .line 1649
    move/from16 v13, v32

    .line 1650
    .line 1651
    move-object/from16 v15, v33

    .line 1652
    .line 1653
    move-object/from16 v9, v34

    .line 1654
    .line 1655
    move/from16 v11, v35

    .line 1656
    .line 1657
    goto :goto_2e

    .line 1658
    :cond_59
    move-object/from16 v34, v9

    .line 1659
    .line 1660
    move/from16 v35, v11

    .line 1661
    .line 1662
    goto :goto_2f

    .line 1663
    :cond_5a
    move-object/from16 v34, v9

    .line 1664
    .line 1665
    move/from16 v35, v11

    .line 1666
    .line 1667
    move/from16 v32, v13

    .line 1668
    .line 1669
    :goto_2f
    move-object/from16 v33, v15

    .line 1670
    .line 1671
    if-nez v8, :cond_5b

    .line 1672
    .line 1673
    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 1674
    .line 1675
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1676
    .line 1677
    .line 1678
    move-result v4

    .line 1679
    if-eqz v4, :cond_5b

    .line 1680
    .line 1681
    move/from16 v8, v19

    .line 1682
    .line 1683
    :cond_5b
    add-int/lit8 v14, v14, 0x1

    .line 1684
    .line 1685
    move/from16 v7, p1

    .line 1686
    .line 1687
    move/from16 v4, v31

    .line 1688
    .line 1689
    move/from16 v13, v32

    .line 1690
    .line 1691
    move-object/from16 v15, v33

    .line 1692
    .line 1693
    move-object/from16 v9, v34

    .line 1694
    .line 1695
    move/from16 v11, v35

    .line 1696
    .line 1697
    goto/16 :goto_2c

    .line 1698
    .line 1699
    :cond_5c
    move/from16 v31, v4

    .line 1700
    .line 1701
    move-object/from16 v34, v9

    .line 1702
    .line 1703
    move/from16 v35, v11

    .line 1704
    .line 1705
    move/from16 v32, v13

    .line 1706
    .line 1707
    move/from16 v30, v14

    .line 1708
    .line 1709
    move-object/from16 v33, v15

    .line 1710
    .line 1711
    move/from16 v7, p1

    .line 1712
    .line 1713
    move/from16 v8, p3

    .line 1714
    .line 1715
    :goto_30
    if-eqz v7, :cond_5d

    .line 1716
    .line 1717
    if-eqz v8, :cond_5d

    .line 1718
    .line 1719
    if-nez v27, :cond_5e

    .line 1720
    .line 1721
    :cond_5d
    move/from16 v36, v10

    .line 1722
    .line 1723
    move/from16 v15, v35

    .line 1724
    .line 1725
    const/16 v28, 0x0

    .line 1726
    .line 1727
    move-wide/from16 v34, v5

    .line 1728
    .line 1729
    goto/16 :goto_3c

    .line 1730
    .line 1731
    :cond_5e
    :goto_31
    const-string v4, "  Uid "

    .line 1732
    .line 1733
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1734
    .line 1735
    .line 1736
    iget v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 1737
    .line 1738
    invoke-static {v0, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1739
    .line 1740
    .line 1741
    const-string v4, ":"

    .line 1742
    .line 1743
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1744
    .line 1745
    .line 1746
    invoke-virtual {v2, v0, v5, v6}, Lcom/android/server/appop/AppOpsService$UidState;->dump(Ljava/io/PrintWriter;J)V

    .line 1747
    .line 1748
    .line 1749
    if-eqz v3, :cond_61

    .line 1750
    .line 1751
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 1752
    .line 1753
    .line 1754
    move-result v2

    .line 1755
    const/4 v13, 0x0

    .line 1756
    :goto_32
    if-ge v13, v2, :cond_61

    .line 1757
    .line 1758
    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 1759
    .line 1760
    .line 1761
    move-result v4

    .line 1762
    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 1763
    .line 1764
    .line 1765
    move-result v7

    .line 1766
    move/from16 v15, v35

    .line 1767
    .line 1768
    if-ltz v35, :cond_5f

    .line 1769
    .line 1770
    if-eq v15, v4, :cond_5f

    .line 1771
    .line 1772
    goto :goto_33

    .line 1773
    :cond_5f
    if-ltz v10, :cond_60

    .line 1774
    .line 1775
    if-eq v10, v7, :cond_60

    .line 1776
    .line 1777
    goto :goto_33

    .line 1778
    :cond_60
    const-string v8, "      "

    .line 1779
    .line 1780
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1781
    .line 1782
    .line 1783
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v4

    .line 1787
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1788
    .line 1789
    .line 1790
    const-string v4, ": mode="

    .line 1791
    .line 1792
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1793
    .line 1794
    .line 1795
    invoke-static {v7}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v4

    .line 1799
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1800
    .line 1801
    .line 1802
    :goto_33
    add-int/lit8 v13, v13, 0x1

    .line 1803
    .line 1804
    move/from16 v35, v15

    .line 1805
    .line 1806
    goto :goto_32

    .line 1807
    :cond_61
    move/from16 v15, v35

    .line 1808
    .line 1809
    if-nez v34, :cond_63

    .line 1810
    .line 1811
    :cond_62
    move-wide/from16 v34, v5

    .line 1812
    .line 1813
    move/from16 v36, v10

    .line 1814
    .line 1815
    const/16 v28, 0x0

    .line 1816
    .line 1817
    goto/16 :goto_3b

    .line 1818
    .line 1819
    :cond_63
    const/4 v13, 0x0

    .line 1820
    :goto_34
    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->size()I

    .line 1821
    .line 1822
    .line 1823
    move-result v2

    .line 1824
    if-ge v13, v2, :cond_62

    .line 1825
    .line 1826
    move-object/from16 v8, v34

    .line 1827
    .line 1828
    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v2

    .line 1832
    move-object v14, v2

    .line 1833
    check-cast v14, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1834
    .line 1835
    if-eqz v12, :cond_65

    .line 1836
    .line 1837
    iget-object v2, v14, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 1838
    .line 1839
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1840
    .line 1841
    .line 1842
    move-result v2

    .line 1843
    if-nez v2, :cond_65

    .line 1844
    .line 1845
    :cond_64
    move-wide/from16 v34, v5

    .line 1846
    .line 1847
    move-object/from16 v31, v8

    .line 1848
    .line 1849
    move/from16 v36, v10

    .line 1850
    .line 1851
    const/16 v28, 0x0

    .line 1852
    .line 1853
    goto/16 :goto_3a

    .line 1854
    .line 1855
    :cond_65
    const/4 v2, 0x0

    .line 1856
    const/4 v11, 0x0

    .line 1857
    :goto_35
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 1858
    .line 1859
    .line 1860
    move-result v3

    .line 1861
    if-ge v11, v3, :cond_64

    .line 1862
    .line 1863
    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v3

    .line 1867
    move-object v7, v3

    .line 1868
    check-cast v7, Lcom/android/server/appop/AppOpsService$Op;

    .line 1869
    .line 1870
    iget v3, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 1871
    .line 1872
    if-ltz v15, :cond_66

    .line 1873
    .line 1874
    if-eq v15, v3, :cond_66

    .line 1875
    .line 1876
    move-wide/from16 v34, v5

    .line 1877
    .line 1878
    goto :goto_36

    .line 1879
    :cond_66
    if-ltz v10, :cond_67

    .line 1880
    .line 1881
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 1882
    .line 1883
    iget-object v9, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1884
    .line 1885
    move-wide/from16 v34, v5

    .line 1886
    .line 1887
    iget v5, v7, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 1888
    .line 1889
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1890
    .line 1891
    .line 1892
    move-result v5

    .line 1893
    invoke-interface {v4, v3, v5, v9}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    .line 1894
    .line 1895
    .line 1896
    move-result v4

    .line 1897
    if-eq v10, v4, :cond_68

    .line 1898
    .line 1899
    :goto_36
    move-object/from16 v31, v8

    .line 1900
    .line 1901
    move/from16 v36, v10

    .line 1902
    .line 1903
    move/from16 v37, v11

    .line 1904
    .line 1905
    const/16 v28, 0x0

    .line 1906
    .line 1907
    goto/16 :goto_39

    .line 1908
    .line 1909
    :cond_67
    move-wide/from16 v34, v5

    .line 1910
    .line 1911
    :cond_68
    if-nez v2, :cond_69

    .line 1912
    .line 1913
    const-string v2, "    Package "

    .line 1914
    .line 1915
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1916
    .line 1917
    .line 1918
    iget-object v2, v14, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 1919
    .line 1920
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1921
    .line 1922
    .line 1923
    const-string v2, ":"

    .line 1924
    .line 1925
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1926
    .line 1927
    .line 1928
    move/from16 v27, v19

    .line 1929
    .line 1930
    goto :goto_37

    .line 1931
    :cond_69
    move/from16 v27, v2

    .line 1932
    .line 1933
    :goto_37
    const-string v2, "      "

    .line 1934
    .line 1935
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1936
    .line 1937
    .line 1938
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v2

    .line 1942
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1943
    .line 1944
    .line 1945
    const-string v2, " ("

    .line 1946
    .line 1947
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1948
    .line 1949
    .line 1950
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 1951
    .line 1952
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1953
    .line 1954
    iget v5, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 1955
    .line 1956
    iget v6, v7, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 1957
    .line 1958
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1959
    .line 1960
    .line 1961
    move-result v6

    .line 1962
    invoke-interface {v2, v5, v6, v4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    .line 1963
    .line 1964
    .line 1965
    move-result v2

    .line 1966
    invoke-static {v2}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    .line 1967
    .line 1968
    .line 1969
    move-result-object v2

    .line 1970
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1971
    .line 1972
    .line 1973
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    .line 1974
    .line 1975
    .line 1976
    move-result v2

    .line 1977
    if-eq v2, v3, :cond_6b

    .line 1978
    .line 1979
    const-string v3, " / switch "

    .line 1980
    .line 1981
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1982
    .line 1983
    .line 1984
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v3

    .line 1988
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1989
    .line 1990
    .line 1991
    invoke-virtual {v14, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1992
    .line 1993
    .line 1994
    move-result-object v3

    .line 1995
    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 1996
    .line 1997
    if-nez v3, :cond_6a

    .line 1998
    .line 1999
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 2000
    .line 2001
    .line 2002
    move-result v2

    .line 2003
    goto :goto_38

    .line 2004
    :cond_6a
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 2005
    .line 2006
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 2007
    .line 2008
    iget v5, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 2009
    .line 2010
    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 2011
    .line 2012
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2013
    .line 2014
    .line 2015
    move-result v3

    .line 2016
    invoke-interface {v2, v5, v3, v4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    .line 2017
    .line 2018
    .line 2019
    move-result v2

    .line 2020
    :goto_38
    const-string v3, "="

    .line 2021
    .line 2022
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2023
    .line 2024
    .line 2025
    invoke-static {v2}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    .line 2026
    .line 2027
    .line 2028
    move-result-object v2

    .line 2029
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2030
    .line 2031
    .line 2032
    :cond_6b
    const-string v2, "): "

    .line 2033
    .line 2034
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2035
    .line 2036
    .line 2037
    move-object/from16 v2, p2

    .line 2038
    .line 2039
    move-object/from16 v3, v33

    .line 2040
    .line 2041
    move/from16 v4, v16

    .line 2042
    .line 2043
    move-wide/from16 v5, v34

    .line 2044
    .line 2045
    move-object/from16 v31, v8

    .line 2046
    .line 2047
    const/16 v28, 0x0

    .line 2048
    .line 2049
    move-wide/from16 v8, v25

    .line 2050
    .line 2051
    move/from16 v36, v10

    .line 2052
    .line 2053
    move-object/from16 v10, v29

    .line 2054
    .line 2055
    move/from16 v37, v11

    .line 2056
    .line 2057
    move-object/from16 v11, v24

    .line 2058
    .line 2059
    invoke-static/range {v2 .. v11}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;)V

    .line 2060
    .line 2061
    .line 2062
    move/from16 v2, v27

    .line 2063
    .line 2064
    :goto_39
    add-int/lit8 v11, v37, 0x1

    .line 2065
    .line 2066
    move-object/from16 v8, v31

    .line 2067
    .line 2068
    move-wide/from16 v5, v34

    .line 2069
    .line 2070
    move/from16 v10, v36

    .line 2071
    .line 2072
    goto/16 :goto_35

    .line 2073
    .line 2074
    :goto_3a
    add-int/lit8 v13, v13, 0x1

    .line 2075
    .line 2076
    move-wide/from16 v5, v34

    .line 2077
    .line 2078
    move/from16 v10, v36

    .line 2079
    .line 2080
    move-object/from16 v34, v31

    .line 2081
    .line 2082
    goto/16 :goto_34

    .line 2083
    .line 2084
    :goto_3b
    move/from16 v4, v19

    .line 2085
    .line 2086
    goto :goto_3d

    .line 2087
    :goto_3c
    move/from16 v4, v31

    .line 2088
    .line 2089
    :goto_3d
    add-int/lit8 v13, v32, 0x1

    .line 2090
    .line 2091
    move v11, v15

    .line 2092
    move-object/from16 v8, v29

    .line 2093
    .line 2094
    move/from16 v14, v30

    .line 2095
    .line 2096
    move-object/from16 v15, v33

    .line 2097
    .line 2098
    move-wide/from16 v5, v34

    .line 2099
    .line 2100
    move/from16 v10, v36

    .line 2101
    .line 2102
    goto/16 :goto_22

    .line 2103
    .line 2104
    :cond_6c
    move/from16 v31, v4

    .line 2105
    .line 2106
    move-object/from16 v29, v8

    .line 2107
    .line 2108
    move/from16 v36, v10

    .line 2109
    .line 2110
    move/from16 v30, v14

    .line 2111
    .line 2112
    move-object/from16 v33, v15

    .line 2113
    .line 2114
    move v15, v11

    .line 2115
    if-eqz v31, :cond_6d

    .line 2116
    .line 2117
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2118
    .line 2119
    .line 2120
    :cond_6d
    const-string v2, "  AppOps Restrictions."

    .line 2121
    .line 2122
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2123
    .line 2124
    .line 2125
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    .line 2126
    .line 2127
    check-cast v2, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    .line 2128
    .line 2129
    invoke-virtual {v2, v0, v12, v15}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 2130
    .line 2131
    .line 2132
    if-nez v17, :cond_6f

    .line 2133
    .line 2134
    if-nez v18, :cond_6f

    .line 2135
    .line 2136
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2137
    .line 2138
    .line 2139
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2140
    .line 2141
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2142
    .line 2143
    if-eqz v2, :cond_6e

    .line 2144
    .line 2145
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2146
    .line 2147
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2148
    .line 2149
    instance-of v2, v2, Lcom/android/server/policy/AppOpsPolicy;

    .line 2150
    .line 2151
    if-eqz v2, :cond_6e

    .line 2152
    .line 2153
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2154
    .line 2155
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2156
    .line 2157
    check-cast v2, Lcom/android/server/policy/AppOpsPolicy;

    .line 2158
    .line 2159
    invoke-virtual {v2, v0}, Lcom/android/server/policy/AppOpsPolicy;->dumpTags(Ljava/io/PrintWriter;)V

    .line 2160
    .line 2161
    .line 2162
    goto :goto_3e

    .line 2163
    :cond_6e
    const-string v2, "  AppOps policy not set."

    .line 2164
    .line 2165
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2166
    .line 2167
    .line 2168
    :cond_6f
    :goto_3e
    if-nez v23, :cond_70

    .line 2169
    .line 2170
    if-eqz v22, :cond_71

    .line 2171
    .line 2172
    :cond_70
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2173
    .line 2174
    .line 2175
    const-string v2, "Uid State Changes Event Log:"

    .line 2176
    .line 2177
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2178
    .line 2179
    .line 2180
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    .line 2181
    .line 2182
    .line 2183
    move-result-object v2

    .line 2184
    check-cast v2, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    .line 2185
    .line 2186
    invoke-virtual {v2, v0}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 2187
    .line 2188
    .line 2189
    :cond_71
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2190
    if-eqz v17, :cond_72

    .line 2191
    .line 2192
    if-nez v18, :cond_72

    .line 2193
    .line 2194
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 2195
    .line 2196
    move-object/from16 v3, p2

    .line 2197
    .line 2198
    move/from16 v4, v30

    .line 2199
    .line 2200
    move-object v5, v12

    .line 2201
    move v6, v15

    .line 2202
    move/from16 v7, v16

    .line 2203
    .line 2204
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->dump(Ljava/io/PrintWriter;ILjava/lang/String;II)V

    .line 2205
    .line 2206
    .line 2207
    :cond_72
    if-eqz v21, :cond_73

    .line 2208
    .line 2209
    const-string v2, "Discrete accesses: "

    .line 2210
    .line 2211
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2212
    .line 2213
    .line 2214
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 2215
    .line 2216
    move-object/from16 v2, p2

    .line 2217
    .line 2218
    move/from16 v3, v30

    .line 2219
    .line 2220
    move-object v4, v12

    .line 2221
    move-object/from16 v5, v33

    .line 2222
    .line 2223
    move/from16 v6, v16

    .line 2224
    .line 2225
    move v7, v15

    .line 2226
    move-object/from16 v8, v29

    .line 2227
    .line 2228
    move-object/from16 v9, v24

    .line 2229
    .line 2230
    move/from16 v10, v20

    .line 2231
    .line 2232
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/appop/HistoricalRegistry;->dumpDiscreteData(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;I)V

    .line 2233
    .line 2234
    .line 2235
    :cond_73
    return-void

    .line 2236
    :goto_3f
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2237
    throw v0
.end method

.method public final enforceManageAppOpsModes(III)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v0, p2, :cond_1

    .line 23
    .line 24
    if-ltz p3, :cond_1

    .line 25
    .line 26
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-ne p1, p2, :cond_1

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-string p1, "android.permission.MANAGE_APP_OPS_MODES"

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p1
.end method

.method public final extractAsyncOps(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 10
    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    .line 14
    .line 15
    new-instance v2, Landroid/util/Pair;

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {v2, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/util/List;

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-object p1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method public final finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final finishOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move v6, p6

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v9, p3

    .line 4
    .line 5
    move-object/from16 v0, p4

    .line 6
    .line 7
    const-string v10, "Operation not started: uid="

    .line 8
    .line 9
    const-string v11, "Attribution not found: uid="

    .line 10
    .line 11
    const-string v12, "Operation not found: uid="

    .line 12
    .line 13
    move-object/from16 v1, p5

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v8, v9, v0, v1}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-boolean v3, v2, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    const/4 v13, 0x0

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    move-object v14, v13

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v14, v1

    .line 27
    :goto_0
    monitor-enter p0

    .line 28
    :try_start_1
    iget-boolean v5, v2, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    .line 29
    .line 30
    iget-object v6, v2, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 31
    .line 32
    const/4 v15, 0x1

    .line 33
    move-object/from16 v1, p0

    .line 34
    .line 35
    move/from16 v2, p3

    .line 36
    .line 37
    move-object/from16 v3, p4

    .line 38
    .line 39
    move-object v4, v14

    .line 40
    move v7, v15

    .line 41
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    move/from16 v2, p2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move/from16 v2, p2

    .line 51
    .line 52
    invoke-virtual {v8, v1, v2, v9, v15}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    :goto_1
    if-nez v13, :cond_2

    .line 57
    .line 58
    const-string v1, "AppOps"

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v4, " pkg="

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, "("

    .line 77
    .line 78
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ") op="

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    monitor-exit p0

    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :cond_2
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 109
    .line 110
    move/from16 v3, p6

    .line 111
    .line 112
    invoke-virtual {v8, v3}, Lcom/android/server/appop/AppOpsService;->getPersistentId(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    new-instance v4, Landroid/util/ArrayMap;

    .line 117
    .line 118
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Landroid/util/ArrayMap;

    .line 126
    .line 127
    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Lcom/android/server/appop/AttributedOp;

    .line 132
    .line 133
    if-nez v1, :cond_3

    .line 134
    .line 135
    const-string v1, "AppOps"

    .line 136
    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v4, " pkg="

    .line 146
    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v0, "("

    .line 154
    .line 155
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, ") op="

    .line 162
    .line 163
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    monitor-exit p0

    .line 181
    return-void

    .line 182
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-nez v3, :cond_5

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_4

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_4
    const-string v1, "AppOps"

    .line 196
    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v4, " pkg="

    .line 206
    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v0, "("

    .line 214
    .line 215
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v0, ") op="

    .line 222
    .line 223
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 242
    move-object/from16 v2, p1

    .line 243
    .line 244
    invoke-virtual {v1, v2, v0, v0}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 245
    .line 246
    .line 247
    :goto_3
    monitor-exit p0

    .line 248
    return-void

    .line 249
    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    throw v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    const-string/jumbo v1, "finishOperation"

    .line 253
    .line 254
    .line 255
    invoke-static {v9, v0, v1}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    return-void
.end method

.method public final finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final finishProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;Z)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/AttributionSource;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v11, p4

    .line 3
    .line 4
    move-object/from16 v12, p12

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v13

    .line 12
    move v1, p1

    .line 13
    move-object/from16 v2, p2

    .line 14
    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    move-object/from16 v4, p4

    .line 18
    .line 19
    move/from16 v5, p6

    .line 20
    .line 21
    move-wide/from16 v6, p7

    .line 22
    .line 23
    move-wide/from16 v8, p9

    .line 24
    .line 25
    move/from16 v10, p11

    .line 26
    .line 27
    invoke-static/range {v1 .. v10}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v1, "callback cannot be null"

    .line 31
    .line 32
    .line 33
    invoke-static {v12, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 43
    .line 44
    and-int/lit8 v2, p6, 0x1

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    move v3, p1

    .line 53
    if-ne v3, v2, :cond_1

    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_0
    move v3, p1

    .line 58
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x1

    .line 67
    const/4 v4, -0x1

    .line 68
    const/4 v5, 0x0

    .line 69
    if-eq v1, v4, :cond_2

    .line 70
    .line 71
    move v1, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    move v1, v5

    .line 74
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-ne v4, v6, :cond_3

    .line 83
    .line 84
    move v4, v2

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    move v4, v5

    .line 87
    :goto_1
    :try_start_0
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    invoke-virtual {v13, v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 110
    .line 111
    .line 112
    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    if-ne v6, v7, :cond_4

    .line 114
    .line 115
    move v6, v2

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    move v6, v5

    .line 118
    :goto_2
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    const-string v10, "android.permission.GET_HISTORICAL_APP_OPS_STATS"

    .line 129
    .line 130
    invoke-virtual {v7, v10, v8, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-nez v7, :cond_5

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_5
    move v2, v5

    .line 138
    :goto_3
    if-nez v4, :cond_6

    .line 139
    .line 140
    if-nez v1, :cond_6

    .line 141
    .line 142
    if-nez v6, :cond_6

    .line 143
    .line 144
    if-nez v2, :cond_6

    .line 145
    .line 146
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 147
    .line 148
    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    .line 149
    .line 150
    invoke-direct {v1, v12}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;-><init>(Landroid/os/RemoteCallback;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_6
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    const-string/jumbo v5, "getHistoricalOps"

    .line 168
    .line 169
    .line 170
    const-string v6, "android.permission.GET_APP_OPS_STATS"

    .line 171
    .line 172
    invoke-virtual {v1, v6, v2, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :goto_4
    const/4 v1, 0x0

    .line 176
    if-eqz v11, :cond_7

    .line 177
    .line 178
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    new-array v2, v2, [Ljava/lang/String;

    .line 183
    .line 184
    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, [Ljava/lang/String;

    .line 189
    .line 190
    move-object v5, v2

    .line 191
    goto :goto_5

    .line 192
    :cond_7
    move-object v5, v1

    .line 193
    :goto_5
    and-int/lit8 v2, p5, 0x4

    .line 194
    .line 195
    if-eqz v2, :cond_8

    .line 196
    .line 197
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 198
    .line 199
    invoke-static {v2}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    goto :goto_6

    .line 204
    :cond_8
    move-object v2, v1

    .line 205
    :goto_6
    if-eqz v2, :cond_9

    .line 206
    .line 207
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    new-array v1, v1, [Ljava/lang/String;

    .line 212
    .line 213
    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, [Ljava/lang/String;

    .line 218
    .line 219
    :cond_9
    move-object v11, v1

    .line 220
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    .line 221
    .line 222
    .line 223
    move-result-object v13

    .line 224
    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;

    .line 225
    .line 226
    const/4 v2, 0x1

    .line 227
    invoke-direct {v1, v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 228
    .line 229
    .line 230
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 231
    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    move-object v0, v1

    .line 257
    move-object v1, v2

    .line 258
    move-object v2, v3

    .line 259
    move-object/from16 v3, p2

    .line 260
    .line 261
    move-object/from16 v4, p3

    .line 262
    .line 263
    move-object/from16 v12, p12

    .line 264
    .line 265
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    .line 275
    .line 276
    :catch_0
    return-void
.end method

.method public final getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v11, p4

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move-object/from16 v4, p4

    .line 11
    .line 12
    move/from16 v5, p6

    .line 13
    .line 14
    move-wide/from16 v6, p7

    .line 15
    .line 16
    move-wide/from16 v8, p9

    .line 17
    .line 18
    move/from16 v10, p11

    .line 19
    .line 20
    invoke-static/range {v1 .. v10}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "callback cannot be null"

    .line 24
    .line 25
    .line 26
    move-object/from16 v14, p12

    .line 27
    .line 28
    invoke-static {v14, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const-string/jumbo v4, "getHistoricalOps"

    .line 42
    .line 43
    .line 44
    const-string v5, "android.permission.MANAGE_APPOPS"

    .line 45
    .line 46
    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    if-eqz v11, :cond_0

    .line 51
    .line 52
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    new-array v2, v2, [Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, [Ljava/lang/String;

    .line 63
    .line 64
    move-object v7, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move-object v7, v1

    .line 67
    :goto_0
    and-int/lit8 v2, p5, 0x4

    .line 68
    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {v2}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move-object v2, v1

    .line 79
    :goto_1
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    new-array v1, v1, [Ljava/lang/String;

    .line 86
    .line 87
    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, [Ljava/lang/String;

    .line 92
    .line 93
    :cond_2
    move-object v13, v1

    .line 94
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-direct {v2, v3}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 102
    .line 103
    .line 104
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 105
    .line 106
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    move-object/from16 v5, p2

    .line 131
    .line 132
    move-object/from16 v6, p3

    .line 133
    .line 134
    move-object/from16 v14, p12

    .line 135
    .line 136
    invoke-static/range {v2 .. v14}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final getIoHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appOpsServiceHandlerFix()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;
    .locals 7

    .line 1
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    if-nez p4, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v6, Lcom/android/server/appop/AppOpsService$Op;

    .line 14
    .line 15
    iget-object v2, p1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 16
    .line 17
    iget-object v3, p1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    move-object v0, v6

    .line 20
    move-object v1, p0

    .line 21
    move v4, p2

    .line 22
    move v5, p3

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    if-eqz p4, :cond_2

    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

    .line 43
    .line 44
    sget-wide p2, Lcom/android/server/appop/AppOpsService;->WRITE_DELAY:J

    .line 45
    .line 46
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    :cond_2
    return-object v0
.end method

.method public final getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-string v4, "android.permission.GET_APP_OPS_STATS"

    .line 31
    .line 32
    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-static {p1, p2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    if-nez v7, :cond_2

    .line 40
    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_2
    monitor-enter p0

    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v11, 0x0

    .line 49
    const/4 v8, 0x0

    .line 50
    const/4 v9, 0x0

    .line 51
    move-object v5, p0

    .line 52
    move v6, p1

    .line 53
    :try_start_0
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-object v2

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const-string/jumbo p2, "default:0"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[ILjava/lang/String;)Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    if-eqz p2, :cond_5

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    if-nez p3, :cond_4

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    new-instance p3, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    new-instance v0, Landroid/app/AppOpsManager$PackageOps;

    .line 85
    .line 86
    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 89
    .line 90
    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 91
    .line 92
    invoke-direct {v0, v1, p1, p2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    monitor-exit p0

    .line 99
    return-object p3

    .line 100
    :cond_5
    :goto_1
    monitor-exit p0

    .line 101
    return-object v2

    .line 102
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p1
.end method

.method public final getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const/4 p1, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    if-nez p6, :cond_1

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance v0, Lcom/android/server/appop/AppOpsService$Ops;

    .line 24
    .line 25
    invoke-direct {v0, p2, p0}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_2
    if-eqz p6, :cond_5

    .line 34
    .line 35
    if-eqz p5, :cond_3

    .line 36
    .line 37
    iput-object p5, v0, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 38
    .line 39
    :cond_3
    if-eqz p3, :cond_5

    .line 40
    .line 41
    iget-object p0, v0, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    .line 42
    .line 43
    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    if-eqz p4, :cond_4

    .line 47
    .line 48
    iget-object p0, v0, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    iget-object p0, v0, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    .line 55
    .line 56
    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_0
    return-object v0
.end method

.method public final getPackageListAndResample()Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v2, v2, Lcom/android/server/pm/PackageList;->mPackageNames:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    move-object v7, v2

    .line 36
    check-cast v7, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-wide/16 v5, 0x1000

    .line 49
    .line 50
    move-object v2, v1

    .line 51
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(IIJLjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p0, v2}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    monitor-enter p0

    .line 68
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->resamplePackageAndAppOpLocked(Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    monitor-exit p0

    .line 72
    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw v0
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "PackageManagerInternal not loaded"

    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final getPackagesForOps([I)Ljava/util/List;
    .locals 1

    .line 1
    const-string/jumbo v0, "default:0"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOpsForDevice([ILjava/lang/String;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getPackagesForOpsForDevice([ILjava/lang/String;)Ljava/util/List;
    .locals 13

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v2, "android.permission.GET_APP_OPS_STATS"

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    :goto_0
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    move v4, v2

    .line 36
    :goto_1
    if-ge v4, v3, :cond_6

    .line 37
    .line 38
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Lcom/android/server/appop/AppOpsService$UidState;

    .line 45
    .line 46
    iget-object v7, v6, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_1

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_1
    if-nez v1, :cond_2

    .line 56
    .line 57
    iget v7, v6, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 58
    .line 59
    if-eq v0, v7, :cond_2

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_4

    .line 64
    :cond_2
    iget-object v6, v6, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    move v8, v2

    .line 71
    :goto_2
    if-ge v8, v7, :cond_5

    .line 72
    .line 73
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    check-cast v9, Lcom/android/server/appop/AppOpsService$Ops;

    .line 78
    .line 79
    invoke-virtual {p0, v9, p1, p2}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[ILjava/lang/String;)Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    if-eqz v10, :cond_4

    .line 84
    .line 85
    if-nez v5, :cond_3

    .line 86
    .line 87
    new-instance v5, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    :cond_3
    new-instance v11, Landroid/app/AppOpsManager$PackageOps;

    .line 93
    .line 94
    iget-object v12, v9, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v9, v9, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 97
    .line 98
    iget v9, v9, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 99
    .line 100
    invoke-direct {v11, v12, v9, v10}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_6
    monitor-exit p0

    .line 113
    return-object v5

    .line 114
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw p1
.end method

.method public final getPersistentId(I)Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "default:0"

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getPersistentIdForDevice(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mKnownDeviceIds:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    move-object v0, p0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    :cond_2
    if-eqz v0, :cond_3

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "Requested persistentId for invalid virtualDeviceId: "

    .line 33
    .line 34
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final getUidOps(I[I)Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    monitor-enter p0

    .line 18
    const/4 v0, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v4

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-object v4

    .line 37
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v1, Landroid/app/AppOpsManager$PackageOps;

    .line 43
    .line 44
    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 45
    .line 46
    invoke-direct {v1, v4, p1, p2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-object v0

    .line 54
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p1
.end method

.method public final getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-object v0
.end method

.method public final getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    .line 6
    .line 7
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    move-object v2, v1

    .line 14
    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;

    .line 19
    .line 20
    invoke-direct {v3, p0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/appop/AppOpsService;)V

    .line 21
    .line 22
    .line 23
    sget-object v4, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    .line 24
    .line 25
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 26
    .line 27
    new-instance v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;

    .line 28
    .line 29
    invoke-direct {v6, v1, v3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;-><init>(Landroid/os/Handler;Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    move-object v1, v0

    .line 41
    move-object v3, v6

    .line 42
    move-object v6, v7

    .line 43
    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;-><init>(Landroid/app/ActivityManagerInternal;Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;Ljava/lang/Thread;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    .line 47
    .line 48
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 51
    .line 52
    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda12;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/appop/AppOpsService;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_0

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v0, "Callback is already registered."

    .line 77
    .line 78
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    .line 83
    .line 84
    return-object p0
.end method

.method public initializeUidStates()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 16
    .line 17
    if-eqz v0, :cond_7

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lcom/android/server/appop/AppOpsService;->NON_PACKAGE_UIDS:[I

    .line 26
    .line 27
    array-length v3, v2

    .line 28
    const/4 v4, 0x0

    .line 29
    move v5, v4

    .line 30
    :goto_0
    if-ge v5, v3, :cond_2

    .line 31
    .line 32
    aget v6, v2, v5

    .line 33
    .line 34
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->contains(I)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-nez v7, :cond_1

    .line 41
    .line 42
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 43
    .line 44
    new-instance v8, Lcom/android/server/appop/AppOpsService$UidState;

    .line 45
    .line 46
    invoke-direct {v8, p0, v6}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto :goto_5

    .line 55
    :cond_1
    :goto_1
    const/4 v7, 0x1

    .line 56
    invoke-virtual {v1, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 67
    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    const-class v2, Lcom/android/server/pm/PackageManagerLocal;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/android/server/pm/PackageManagerLocal;

    .line 77
    .line 78
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 79
    .line 80
    :cond_3
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 81
    .line 82
    if-eqz v2, :cond_6

    .line 83
    .line 84
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 85
    .line 86
    .line 87
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :try_start_1
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    :goto_2
    array-length v5, v0

    .line 93
    if-ge v4, v5, :cond_4

    .line 94
    .line 95
    aget v5, v0, v4

    .line 96
    .line 97
    invoke-virtual {p0, v5, v3, v1}, Lcom/android/server/appop/AppOpsService;->initializeUserUidStatesLocked(ILjava/util/Map;Landroid/util/SparseBooleanArray;)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catchall_1
    move-exception v0

    .line 104
    goto :goto_3

    .line 105
    :cond_4
    invoke-virtual {p0, v1, v3}, Lcom/android/server/appop/AppOpsService;->trimUidStatesLocked(Landroid/util/SparseBooleanArray;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    .line 107
    .line 108
    :try_start_2
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    .line 109
    .line 110
    .line 111
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    return-void

    .line 113
    :goto_3
    if-eqz v2, :cond_5

    .line 114
    .line 115
    :try_start_3
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :catchall_2
    move-exception v1

    .line 120
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_4
    throw v0

    .line 124
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 125
    .line 126
    const-string v1, "PackageManagerLocal not loaded"

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    throw v0

    .line 134
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 135
    .line 136
    const-string v0, "UserManagerInternal not loaded"

    .line 137
    .line 138
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0
.end method

.method public final initializeUserUidStatesLocked(ILjava/util/Map;Landroid/util/SparseBooleanArray;)V
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 32
    .line 33
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v10, v0

    .line 49
    check-cast v10, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v7, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    const/4 v12, 0x1

    .line 56
    if-eqz v8, :cond_1

    .line 57
    .line 58
    invoke-virtual {v8, v11, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {v6, v11, v12}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    iget-object v0, v13, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    new-instance v0, Lcom/android/server/appop/AppOpsService$Ops;

    .line 76
    .line 77
    invoke-direct {v0, v10, v13}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {v1, v10, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_2
    move-object v14, v0

    .line 86
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 87
    .line 88
    invoke-interface {v0, v7, v10}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultPackageModes(ILjava/lang/String;)Landroid/util/SparseIntArray;

    .line 89
    .line 90
    .line 91
    move-result-object v15

    .line 92
    const/4 v0, 0x0

    .line 93
    move v5, v0

    .line 94
    :goto_1
    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-ge v5, v0, :cond_4

    .line 99
    .line 100
    invoke-virtual {v15, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-gez v0, :cond_3

    .line 109
    .line 110
    new-instance v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 111
    .line 112
    move-object v0, v3

    .line 113
    move-object/from16 v1, p0

    .line 114
    .line 115
    move-object v2, v13

    .line 116
    move-object v12, v3

    .line 117
    move-object v3, v10

    .line 118
    move/from16 v16, v4

    .line 119
    .line 120
    move/from16 v17, v5

    .line 121
    .line 122
    move v5, v11

    .line 123
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 124
    .line 125
    .line 126
    move/from16 v0, v16

    .line 127
    .line 128
    invoke-virtual {v14, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    move/from16 v17, v5

    .line 133
    .line 134
    :goto_2
    add-int/lit8 v5, v17, 0x1

    .line 135
    .line 136
    const/4 v12, 0x1

    .line 137
    goto :goto_1

    .line 138
    :cond_4
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    const/16 v1, 0x2710

    .line 143
    .line 144
    if-ge v0, v1, :cond_5

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_5
    invoke-static {v11}, Landroid/os/Process;->toSdkSandboxUid(I)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    const/4 v1, 0x1

    .line 153
    if-eqz v8, :cond_6

    .line 154
    .line 155
    invoke-virtual {v8, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 156
    .line 157
    .line 158
    :cond_6
    invoke-virtual {v6, v0, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_7
    return-void
.end method

.method public final isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    :cond_0
    return v2

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x0

    .line 50
    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    .line 51
    .line 52
    invoke-virtual {p0, v3, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v2, 0x0

    .line 60
    :goto_0
    return v2
.end method

.method public final isIncomingPackageValid(ILjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    invoke-static {v0, p2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/16 v3, 0x3e8

    .line 13
    .line 14
    if-eq v0, v3, :cond_3

    .line 15
    .line 16
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, -0x1

    .line 21
    if-eq v2, v3, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    move v2, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v2, v3

    .line 38
    :goto_0
    if-nez v2, :cond_2

    .line 39
    .line 40
    return v3

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, " not found from "

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p1, "AppOps"

    .line 72
    .line 73
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    return v3

    .line 77
    :cond_3
    :goto_1
    return v1
.end method

.method public final isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v8, p6

    .line 6
    .line 7
    const/4 v9, 0x0

    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    return v9

    .line 11
    :cond_0
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    move v3, v9

    .line 18
    :goto_0
    const/4 v10, 0x1

    .line 19
    if-ge v3, v2, :cond_5

    .line 20
    .line 21
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    .line 28
    .line 29
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 30
    .line 31
    iget-object v5, v5, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    .line 32
    .line 33
    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    .line 34
    .line 35
    check-cast v5, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    .line 36
    .line 37
    iget-object v5, v5, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroid/util/SparseBooleanArray;

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    move v4, v9

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    :goto_1
    if-eqz v4, :cond_4

    .line 54
    .line 55
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    :cond_2
    const-string v1, "AppOps"

    .line 64
    .line 65
    const-string/jumbo v2, "mOpGlobalRestrictions "

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v2, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    return v10

    .line 72
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    const/16 v2, 0x1a

    .line 76
    .line 77
    if-ne v0, v2, :cond_8

    .line 78
    .line 79
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, "android.hardware.type.automotive"

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_8

    .line 92
    .line 93
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    :try_start_0
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraPrivacyAllowlist()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_6

    .line 102
    .line 103
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 104
    .line 105
    move-object/from16 v11, p3

    .line 106
    .line 107
    invoke-virtual {v4, v11}, Landroid/hardware/SensorPrivacyManager;->isCameraPrivacyEnabled(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-eqz v4, :cond_7

    .line 112
    .line 113
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    return v10

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto :goto_2

    .line 119
    :cond_6
    move-object/from16 v11, p3

    .line 120
    .line 121
    :cond_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_8
    move-object/from16 v11, p3

    .line 130
    .line 131
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 136
    .line 137
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    move v14, v9

    .line 142
    :goto_4
    if-ge v14, v13, :cond_10

    .line 143
    .line 144
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 145
    .line 146
    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    move-object v15, v2

    .line 151
    check-cast v15, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    .line 152
    .line 153
    move-object v2, v15

    .line 154
    move-object/from16 v3, p3

    .line 155
    .line 156
    move/from16 v4, p2

    .line 157
    .line 158
    move/from16 v5, p7

    .line 159
    .line 160
    move v6, v12

    .line 161
    move-object/from16 v7, p4

    .line 162
    .line 163
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->hasRestriction(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_f

    .line 168
    .line 169
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    if-eqz v2, :cond_c

    .line 174
    .line 175
    monitor-enter p0

    .line 176
    :try_start_1
    iget-boolean v3, v2, Landroid/app/AppOpsManager$RestrictionBypass;->isSystemUid:Z

    .line 177
    .line 178
    if-eqz v3, :cond_9

    .line 179
    .line 180
    if-eqz v8, :cond_9

    .line 181
    .line 182
    iget-boolean v3, v8, Landroid/app/AppOpsManager$RestrictionBypass;->isSystemUid:Z

    .line 183
    .line 184
    if-eqz v3, :cond_9

    .line 185
    .line 186
    monitor-exit p0

    .line 187
    return v9

    .line 188
    :catchall_1
    move-exception v0

    .line 189
    goto :goto_5

    .line 190
    :cond_9
    iget-boolean v3, v2, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    .line 191
    .line 192
    if-eqz v3, :cond_a

    .line 193
    .line 194
    if-eqz v8, :cond_a

    .line 195
    .line 196
    iget-boolean v3, v8, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    .line 197
    .line 198
    if-eqz v3, :cond_a

    .line 199
    .line 200
    monitor-exit p0

    .line 201
    return v9

    .line 202
    :cond_a
    iget-boolean v2, v2, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    .line 203
    .line 204
    if-eqz v2, :cond_b

    .line 205
    .line 206
    if-eqz v8, :cond_b

    .line 207
    .line 208
    iget-boolean v2, v8, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    .line 209
    .line 210
    if-eqz v2, :cond_b

    .line 211
    .line 212
    monitor-exit p0

    .line 213
    return v9

    .line 214
    :cond_b
    monitor-exit p0

    .line 215
    goto :goto_6

    .line 216
    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    throw v0

    .line 218
    :cond_c
    :goto_6
    iget v1, v15, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    .line 219
    .line 220
    if-lez v1, :cond_e

    .line 221
    .line 222
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 223
    .line 224
    if-nez v1, :cond_d

    .line 225
    .line 226
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 227
    .line 228
    if-eqz v1, :cond_e

    .line 229
    .line 230
    :cond_d
    const-string v1, "AppOps"

    .line 231
    .line 232
    const-string v2, "User "

    .line 233
    .line 234
    const-string v3, ", OP "

    .line 235
    .line 236
    const-string v4, " is restricted by "

    .line 237
    .line 238
    invoke-static {v12, v0, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iget v2, v15, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    .line 243
    .line 244
    invoke-static {v0, v2, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 245
    .line 246
    .line 247
    :cond_e
    return v10

    .line 248
    :cond_f
    add-int/lit8 v14, v14, 0x1

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_10
    return v9
.end method

.method public final isOperationActive(IILjava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq v0, p2, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "android.permission.WATCH_APPOPS"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v0, p3}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    monitor-enter p0

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    move-object v2, p0

    .line 46
    move v3, p2

    .line 47
    :try_start_0
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-nez p2, :cond_3

    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return v1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/android/server/appop/AppOpsService$Op;

    .line 62
    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return v1

    .line 67
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    monitor-exit p0

    .line 72
    return p1

    .line 73
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p1
.end method

.method public final isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-long v0, v0

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    :try_start_0
    filled-new-array {p1}, [I

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p4, p5, p1}, Lcom/android/server/appop/AppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 p1, 0x0

    .line 25
    if-eqz p0, :cond_4

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroid/app/AppOpsManager$PackageOps;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz p4, :cond_1

    .line 49
    .line 50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    return p1

    .line 54
    :cond_1
    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Landroid/app/AppOpsManager$OpEntry;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    .line 61
    .line 62
    .line 63
    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    if-nez p4, :cond_2

    .line 65
    .line 66
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    return p1

    .line 70
    :cond_2
    const/16 p4, 0x18

    .line 71
    .line 72
    :try_start_2
    invoke-virtual {p0, p4}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-eqz p0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    .line 79
    .line 80
    .line 81
    move-result p4

    .line 82
    int-to-long p4, p4

    .line 83
    cmp-long p4, v0, p4

    .line 84
    .line 85
    if-nez p4, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p4

    .line 91
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_3

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    if-eqz p0, :cond_3

    .line 106
    .line 107
    const/4 p1, 0x1

    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    .line 113
    .line 114
    return p1

    .line 115
    :cond_4
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    .line 117
    .line 118
    return p1

    .line 119
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    .line 121
    .line 122
    throw p0
.end method

.method public final isSamplingTarget(Landroid/content/pm/PackageInfo;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    array-length v1, p1

    .line 11
    move v2, v0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_3

    .line 13
    .line 14
    aget-object v3, p1, v2

    .line 15
    .line 16
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x1

    .line 31
    if-ne v3, v4, :cond_2

    .line 32
    .line 33
    return v4

    .line 34
    :catch_0
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    return v0
.end method

.method public final isUidOpGrantedByRole(II)Z
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/app/AppOpsManager;->opIsUidAppOpPermission(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return v1

    .line 39
    :cond_1
    :try_start_1
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 48
    .line 49
    .line 50
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    const p1, 0x8000

    .line 52
    .line 53
    .line 54
    and-int/2addr p0, p1

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public final isValidVirtualDeviceId(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->isValidVirtualDeviceId(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mKnownDeviceIds:Landroid/util/SparseArray;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getPersistentIdForDevice(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 3
    .line 4
    const/4 v5, 0x0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move v6, p5

    .line 10
    move-object v7, p6

    .line 11
    move/from16 v8, p7

    .line 12
    .line 13
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final noteOperationForDevice(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 3
    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move v5, p5

    .line 9
    move v6, p6

    .line 10
    move-object/from16 v7, p7

    .line 11
    .line 12
    move/from16 v8, p8

    .line 13
    .line 14
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 31

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v10, p1

    .line 4
    .line 5
    move/from16 v11, p2

    .line 6
    .line 7
    move-object/from16 v12, p3

    .line 8
    .line 9
    move-object/from16 v8, p4

    .line 10
    .line 11
    move/from16 v0, p5

    .line 12
    .line 13
    move-object/from16 v13, p8

    .line 14
    .line 15
    move/from16 v14, p10

    .line 16
    .line 17
    const-string v15, "."

    .line 18
    .line 19
    const-string/jumbo v7, "noteOperationUnchecked: allowing code "

    .line 20
    .line 21
    .line 22
    const-string/jumbo v6, "noteOperationUnchecked: reject #"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v5, "noteOperationUnchecked: uid reject #"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v4, "noteOperationUnchecked::isOpRestrictedLocked : packageName "

    .line 29
    .line 30
    .line 31
    const-string v3, "Noting op not finished: uid "

    .line 32
    .line 33
    const-string/jumbo v2, "mUidStates.get("

    .line 34
    .line 35
    .line 36
    const-string/jumbo v1, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as #getOpsLocked returned null for uid: "

    .line 37
    .line 38
    .line 39
    const-string/jumbo v8, "noteOperation: no op for code "

    .line 40
    .line 41
    .line 42
    move-object/from16 v16, v8

    .line 43
    .line 44
    const-string/jumbo v8, "noteOperationUnchecked: no op for code "

    .line 45
    .line 46
    .line 47
    const/16 v17, 0x0

    .line 48
    .line 49
    move-object/from16 v18, v8

    .line 50
    .line 51
    move-object/from16 v20, v1

    .line 52
    .line 53
    move-object/from16 v1, p0

    .line 54
    .line 55
    move-object/from16 v21, v2

    .line 56
    .line 57
    move-object/from16 v2, p3

    .line 58
    .line 59
    move-object v8, v3

    .line 60
    move/from16 v3, p2

    .line 61
    .line 62
    move-object/from16 v22, v4

    .line 63
    .line 64
    move-object/from16 v4, p4

    .line 65
    .line 66
    move-object/from16 v23, v5

    .line 67
    .line 68
    move-object/from16 v5, p7

    .line 69
    .line 70
    move-object/from16 v24, v15

    .line 71
    .line 72
    move-object v15, v6

    .line 73
    move/from16 v6, p6

    .line 74
    .line 75
    move-object/from16 v25, v7

    .line 76
    .line 77
    move/from16 v7, v17

    .line 78
    .line 79
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    iget-boolean v1, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    if-nez v1, :cond_0

    .line 87
    .line 88
    move-object v6, v2

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    move-object/from16 v6, p4

    .line 91
    .line 92
    :goto_0
    move-object/from16 v5, p7

    .line 93
    .line 94
    if-eqz v13, :cond_1

    .line 95
    .line 96
    invoke-static {v12, v5, v13}, Lcom/android/server/appop/AppOpsService;->isAttributionTagDefined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_1

    .line 101
    .line 102
    move-object v13, v2

    .line 103
    :cond_1
    monitor-enter p0

    .line 104
    :try_start_1
    iget-boolean v4, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    .line 105
    .line 106
    iget-object v3, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 107
    .line 108
    const/16 v17, 0x1

    .line 109
    .line 110
    move-object/from16 v1, p0

    .line 111
    .line 112
    move/from16 v2, p2

    .line 113
    .line 114
    move-object/from16 v26, v3

    .line 115
    .line 116
    move-object/from16 v3, p3

    .line 117
    .line 118
    move/from16 v27, v4

    .line 119
    .line 120
    move-object v4, v6

    .line 121
    move/from16 v5, v27

    .line 122
    .line 123
    move-object/from16 p4, v6

    .line 124
    .line 125
    move-object/from16 v6, v26

    .line 126
    .line 127
    move-object/from16 v28, v7

    .line 128
    .line 129
    move/from16 v7, v17

    .line 130
    .line 131
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    if-nez v7, :cond_6

    .line 136
    .line 137
    const/4 v8, 0x1

    .line 138
    move-object/from16 v1, p0

    .line 139
    .line 140
    move/from16 v2, p1

    .line 141
    .line 142
    move/from16 v3, p2

    .line 143
    .line 144
    move/from16 v4, p5

    .line 145
    .line 146
    move-object/from16 v5, p3

    .line 147
    .line 148
    move-object/from16 v6, p4

    .line 149
    .line 150
    move/from16 v7, p10

    .line 151
    .line 152
    move-object/from16 v0, v16

    .line 153
    .line 154
    move-object/from16 v13, v18

    .line 155
    .line 156
    const/16 v15, 0x6f

    .line 157
    .line 158
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 159
    .line 160
    .line 161
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 162
    .line 163
    if-nez v1, :cond_2

    .line 164
    .line 165
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 166
    .line 167
    if-eqz v1, :cond_3

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    goto/16 :goto_7

    .line 172
    .line 173
    :cond_2
    :goto_1
    const-string v1, "AppOps"

    .line 174
    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v3, " uid "

    .line 184
    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v3, " package "

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string/jumbo v3, "flags: "

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-static/range {p10 .. p10}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    :cond_3
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 220
    .line 221
    if-eqz v1, :cond_4

    .line 222
    .line 223
    const-string v1, "AppOps"

    .line 224
    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v0, " uid "

    .line 234
    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v0, " package "

    .line 242
    .line 243
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string/jumbo v0, "flags: "

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-static/range {p10 .. p10}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    :cond_4
    if-ne v10, v15, :cond_5

    .line 270
    .line 271
    const-string v0, "AppOps"

    .line 272
    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    move-object/from16 v2, v20

    .line 276
    .line 277
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v2, " packageName: "

    .line 284
    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v2, " attributionTag: "

    .line 292
    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    move-object/from16 v6, p4

    .line 297
    .line 298
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v2, " pvr.isAttributionTagValid: "

    .line 302
    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    move-object/from16 v2, v28

    .line 307
    .line 308
    iget-boolean v3, v2, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    .line 309
    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v3, " pvr.bypass: "

    .line 314
    .line 315
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 319
    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    const-string v0, "AppOps"

    .line 331
    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    move-object/from16 v2, v21

    .line 335
    .line 336
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v2, "): "

    .line 343
    .line 344
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 348
    .line 349
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    goto :goto_2

    .line 364
    :cond_5
    move-object/from16 v6, p4

    .line 365
    .line 366
    :goto_2
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 367
    .line 368
    const/4 v1, 0x2

    .line 369
    invoke-direct {v0, v1, v10, v6, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    monitor-exit p0

    .line 373
    return-object v0

    .line 374
    :cond_6
    move-object/from16 v6, p4

    .line 375
    .line 376
    move-object v5, v15

    .line 377
    move-object/from16 v2, v28

    .line 378
    .line 379
    const/4 v4, 0x2

    .line 380
    const/16 v15, 0x6f

    .line 381
    .line 382
    const/4 v3, 0x1

    .line 383
    invoke-virtual {v9, v7, v10, v11, v3}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {v9, v0}, Lcom/android/server/appop/AppOpsService;->getPersistentId(I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {v1, v1, v6, v3}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 396
    .line 397
    .line 398
    move-result v16

    .line 399
    if-eqz v16, :cond_7

    .line 400
    .line 401
    const-string v4, "AppOps"

    .line 402
    .line 403
    new-instance v15, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v8, " pkg "

    .line 412
    .line 413
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string v8, " code "

    .line 420
    .line 421
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string v8, " startTime of in progress event="

    .line 428
    .line 429
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    iget-object v8, v3, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 433
    .line 434
    move-object/from16 v16, v1

    .line 435
    .line 436
    const/4 v1, 0x0

    .line 437
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v8

    .line 441
    check-cast v8, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 442
    .line 443
    iget-wide v0, v8, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    .line 444
    .line 445
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    goto :goto_3

    .line 456
    :cond_7
    move-object/from16 v16, v1

    .line 457
    .line 458
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    iget-object v15, v7, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 463
    .line 464
    iget-object v8, v2, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 465
    .line 466
    const/16 v17, 0x0

    .line 467
    .line 468
    move-object/from16 v1, p0

    .line 469
    .line 470
    move/from16 v2, p2

    .line 471
    .line 472
    move-object/from16 p4, v13

    .line 473
    .line 474
    const/4 v4, 0x1

    .line 475
    move-object v13, v3

    .line 476
    move/from16 v3, p1

    .line 477
    .line 478
    move/from16 v18, v0

    .line 479
    .line 480
    move v0, v4

    .line 481
    move-object/from16 v4, p3

    .line 482
    .line 483
    move-object/from16 v29, v5

    .line 484
    .line 485
    move-object v5, v6

    .line 486
    move-object/from16 v19, v6

    .line 487
    .line 488
    move/from16 v6, p5

    .line 489
    .line 490
    move-object/from16 v30, v7

    .line 491
    .line 492
    move-object v7, v8

    .line 493
    move/from16 v8, v17

    .line 494
    .line 495
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    if-eqz v1, :cond_a

    .line 500
    .line 501
    invoke-virtual {v15}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    invoke-virtual {v13, v1, v14}, Lcom/android/server/appop/AttributedOp;->rejected(II)V

    .line 506
    .line 507
    .line 508
    const/4 v8, 0x1

    .line 509
    move-object/from16 v1, p0

    .line 510
    .line 511
    move/from16 v2, p1

    .line 512
    .line 513
    move/from16 v3, p2

    .line 514
    .line 515
    move/from16 v4, p5

    .line 516
    .line 517
    move-object/from16 v5, p3

    .line 518
    .line 519
    move-object/from16 v6, v19

    .line 520
    .line 521
    move/from16 v7, p10

    .line 522
    .line 523
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 524
    .line 525
    .line 526
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 527
    .line 528
    if-nez v1, :cond_8

    .line 529
    .line 530
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 531
    .line 532
    if-eqz v1, :cond_9

    .line 533
    .line 534
    :cond_8
    const-string v1, "AppOps"

    .line 535
    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    move-object/from16 v3, v22

    .line 539
    .line 540
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v3, " uid "

    .line 547
    .line 548
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    const-string v3, " code "

    .line 555
    .line 556
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .line 568
    .line 569
    :cond_9
    new-instance v1, Landroid/app/SyncNotedAppOp;

    .line 570
    .line 571
    move-object/from16 v8, v19

    .line 572
    .line 573
    invoke-direct {v1, v0, v10, v8, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    monitor-exit p0

    .line 577
    return-object v1

    .line 578
    :cond_a
    move-object/from16 v8, v19

    .line 579
    .line 580
    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService;->isOpAllowedForUid(I)Z

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    if-eqz v1, :cond_c

    .line 585
    .line 586
    move/from16 v4, p5

    .line 587
    .line 588
    :cond_b
    move-object v0, v8

    .line 589
    goto/16 :goto_5

    .line 590
    .line 591
    :cond_c
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 592
    .line 593
    iget v2, v15, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 594
    .line 595
    move/from16 v4, p5

    .line 596
    .line 597
    invoke-virtual {v9, v4}, Lcom/android/server/appop/AppOpsService;->getPersistentId(I)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    move/from16 v5, v18

    .line 602
    .line 603
    invoke-interface {v1, v2, v5, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 608
    .line 609
    .line 610
    move-result v2

    .line 611
    if-eq v1, v2, :cond_10

    .line 612
    .line 613
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 614
    .line 615
    iget v1, v15, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 616
    .line 617
    invoke-virtual {v9, v4}, Lcom/android/server/appop/AppOpsService;->getPersistentId(I)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    invoke-interface {v0, v1, v5, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    invoke-virtual {v15, v10, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    if-eqz v0, :cond_b

    .line 630
    .line 631
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 632
    .line 633
    if-nez v1, :cond_d

    .line 634
    .line 635
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 636
    .line 637
    if-eqz v1, :cond_e

    .line 638
    .line 639
    :cond_d
    const-string v1, "AppOps"

    .line 640
    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    move-object/from16 v3, v23

    .line 644
    .line 645
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    const-string v3, " for code "

    .line 652
    .line 653
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    const-string v3, " ("

    .line 660
    .line 661
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    const-string v3, ") uid "

    .line 668
    .line 669
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    const-string v3, " package "

    .line 676
    .line 677
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    const-string v3, " flags: "

    .line 684
    .line 685
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-static/range {p10 .. p10}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .line 701
    .line 702
    :cond_e
    invoke-virtual {v15}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    .line 703
    .line 704
    .line 705
    move-result v1

    .line 706
    invoke-virtual {v13, v1, v14}, Lcom/android/server/appop/AttributedOp;->rejected(II)V

    .line 707
    .line 708
    .line 709
    move-object/from16 v1, p0

    .line 710
    .line 711
    move/from16 v2, p1

    .line 712
    .line 713
    move/from16 v3, p2

    .line 714
    .line 715
    move/from16 v4, p5

    .line 716
    .line 717
    move-object/from16 v5, p3

    .line 718
    .line 719
    move-object v6, v8

    .line 720
    move/from16 v7, p10

    .line 721
    .line 722
    move-object v11, v8

    .line 723
    move v8, v0

    .line 724
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 725
    .line 726
    .line 727
    const/16 v1, 0x6f

    .line 728
    .line 729
    if-ne v10, v1, :cond_f

    .line 730
    .line 731
    const/4 v8, 0x2

    .line 732
    if-ne v0, v8, :cond_f

    .line 733
    .line 734
    const-string v1, "AppOps"

    .line 735
    .line 736
    const-string/jumbo v2, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as uid mode is MODE_ERRORED"

    .line 737
    .line 738
    .line 739
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .line 741
    .line 742
    :cond_f
    new-instance v1, Landroid/app/SyncNotedAppOp;

    .line 743
    .line 744
    invoke-direct {v1, v0, v10, v11, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    monitor-exit p0

    .line 748
    return-object v1

    .line 749
    :cond_10
    move-object v7, v8

    .line 750
    const/4 v8, 0x2

    .line 751
    if-eq v5, v10, :cond_11

    .line 752
    .line 753
    move-object/from16 v1, v30

    .line 754
    .line 755
    invoke-virtual {v9, v1, v5, v11, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    goto :goto_4

    .line 760
    :cond_11
    move-object/from16 v1, v16

    .line 761
    .line 762
    :goto_4
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 763
    .line 764
    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 765
    .line 766
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 767
    .line 768
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 769
    .line 770
    iget v1, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 771
    .line 772
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 773
    .line 774
    .line 775
    move-result v1

    .line 776
    invoke-interface {v3, v2, v1, v6}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    .line 777
    .line 778
    .line 779
    move-result v1

    .line 780
    invoke-virtual {v0, v2, v1}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    .line 781
    .line 782
    .line 783
    move-result v0

    .line 784
    if-eqz v0, :cond_15

    .line 785
    .line 786
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 787
    .line 788
    if-nez v1, :cond_12

    .line 789
    .line 790
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 791
    .line 792
    if-eqz v1, :cond_13

    .line 793
    .line 794
    :cond_12
    const-string v1, "AppOps"

    .line 795
    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    .line 797
    .line 798
    move-object/from16 v3, v29

    .line 799
    .line 800
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    const-string v3, " for code "

    .line 807
    .line 808
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    const-string v3, " ("

    .line 815
    .line 816
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    const-string v3, ") uid "

    .line 823
    .line 824
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    const-string v3, " package "

    .line 831
    .line 832
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    const-string v3, " flags: "

    .line 839
    .line 840
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    invoke-static/range {p10 .. p10}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v3

    .line 847
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v2

    .line 854
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    .line 856
    .line 857
    :cond_13
    invoke-virtual {v15}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    invoke-virtual {v13, v1, v14}, Lcom/android/server/appop/AttributedOp;->rejected(II)V

    .line 862
    .line 863
    .line 864
    move-object/from16 v1, p0

    .line 865
    .line 866
    move/from16 v2, p1

    .line 867
    .line 868
    move/from16 v3, p2

    .line 869
    .line 870
    move/from16 v4, p5

    .line 871
    .line 872
    move-object/from16 v5, p3

    .line 873
    .line 874
    move-object v6, v7

    .line 875
    move-object v11, v7

    .line 876
    move/from16 v7, p10

    .line 877
    .line 878
    move v13, v8

    .line 879
    move v8, v0

    .line 880
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 881
    .line 882
    .line 883
    const/16 v1, 0x6f

    .line 884
    .line 885
    if-ne v10, v1, :cond_14

    .line 886
    .line 887
    if-ne v0, v13, :cond_14

    .line 888
    .line 889
    const-string v1, "AppOps"

    .line 890
    .line 891
    const-string/jumbo v2, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as package mode is MODE_ERRORED"

    .line 892
    .line 893
    .line 894
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .line 896
    .line 897
    :cond_14
    new-instance v1, Landroid/app/SyncNotedAppOp;

    .line 898
    .line 899
    invoke-direct {v1, v0, v10, v11, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    monitor-exit p0

    .line 903
    return-object v1

    .line 904
    :cond_15
    move-object v0, v7

    .line 905
    :goto_5
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 906
    .line 907
    if-nez v1, :cond_16

    .line 908
    .line 909
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 910
    .line 911
    if-eqz v1, :cond_18

    .line 912
    .line 913
    :cond_16
    const-string v1, "AppOps"

    .line 914
    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    .line 916
    .line 917
    move-object/from16 v3, v25

    .line 918
    .line 919
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    const-string v3, " uid "

    .line 926
    .line 927
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    const-string v3, " package "

    .line 934
    .line 935
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    if-nez v0, :cond_17

    .line 942
    .line 943
    const-string v3, ""

    .line 944
    .line 945
    goto :goto_6

    .line 946
    :cond_17
    move-object/from16 v3, v24

    .line 947
    .line 948
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v3

    .line 952
    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    .line 954
    .line 955
    const-string v3, " flags: "

    .line 956
    .line 957
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-static/range {p10 .. p10}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v3

    .line 964
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v2

    .line 971
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    .line 973
    .line 974
    :cond_18
    const/4 v8, 0x0

    .line 975
    move-object/from16 v1, p0

    .line 976
    .line 977
    move/from16 v2, p1

    .line 978
    .line 979
    move/from16 v3, p2

    .line 980
    .line 981
    move/from16 v4, p5

    .line 982
    .line 983
    move-object/from16 v5, p3

    .line 984
    .line 985
    move-object v6, v0

    .line 986
    move/from16 v7, p10

    .line 987
    .line 988
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 989
    .line 990
    .line 991
    move/from16 v1, p9

    .line 992
    .line 993
    invoke-virtual {v9, v1}, Lcom/android/server/appop/AppOpsService;->getPersistentId(I)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v5

    .line 997
    invoke-virtual {v15}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    .line 998
    .line 999
    .line 1000
    move-result v2

    .line 1001
    move-object v15, v0

    .line 1002
    move-object v0, v13

    .line 1003
    move/from16 v1, p6

    .line 1004
    .line 1005
    move-object/from16 v3, p7

    .line 1006
    .line 1007
    move-object/from16 v4, p4

    .line 1008
    .line 1009
    move/from16 v6, p10

    .line 1010
    .line 1011
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AttributedOp;->accessed(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1012
    .line 1013
    .line 1014
    if-eqz p11, :cond_19

    .line 1015
    .line 1016
    move-object/from16 v1, p0

    .line 1017
    .line 1018
    move/from16 v2, p2

    .line 1019
    .line 1020
    move/from16 v3, p1

    .line 1021
    .line 1022
    move-object/from16 v4, p3

    .line 1023
    .line 1024
    move-object v5, v15

    .line 1025
    move-object/from16 v6, p12

    .line 1026
    .line 1027
    move/from16 v7, p13

    .line 1028
    .line 1029
    move/from16 v8, p10

    .line 1030
    .line 1031
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1032
    .line 1033
    .line 1034
    :cond_19
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 1035
    .line 1036
    const/4 v1, 0x0

    .line 1037
    invoke-direct {v0, v1, v10, v15, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    monitor-exit p0

    .line 1041
    return-object v0

    .line 1042
    :goto_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1043
    throw v0

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    const/4 v13, 0x2

    .line 1046
    const-string/jumbo v1, "noteOperation"

    .line 1047
    .line 1048
    .line 1049
    invoke-static {v11, v0, v1}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    const/16 v1, 0x6f

    .line 1053
    .line 1054
    if-ne v10, v1, :cond_1a

    .line 1055
    .line 1056
    const-string v1, "AppOps"

    .line 1057
    .line 1058
    const-string/jumbo v2, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as verifyAndGetBypass returned a SecurityException for package: "

    .line 1059
    .line 1060
    .line 1061
    const-string v3, " and uid: "

    .line 1062
    .line 1063
    const-string v4, " and attributionTag: "

    .line 1064
    .line 1065
    invoke-static {v11, v2, v12, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v2

    .line 1069
    move-object/from16 v3, p4

    .line 1070
    .line 1071
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v2

    .line 1078
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1079
    .line 1080
    .line 1081
    goto :goto_8

    .line 1082
    :cond_1a
    move-object/from16 v3, p4

    .line 1083
    .line 1084
    :goto_8
    new-instance v0, Landroid/app/SyncNotedAppOp;

    .line 1085
    .line 1086
    invoke-direct {v0, v13, v10, v3, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1087
    .line 1088
    .line 1089
    return-object v0
.end method

.method public final noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move v5, p5

    .line 8
    move v6, p6

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final noteProxyOperationWithState(ILandroid/content/AttributionSourceState;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 7

    .line 1
    new-instance v2, Landroid/content/AttributionSource;

    .line 2
    .line 3
    invoke-direct {v2, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 7
    .line 8
    move v1, p1

    .line 9
    move v3, p3

    .line 10
    move-object v4, p4

    .line 11
    move v5, p5

    .line 12
    move v6, p6

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 3
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x2

    .line 5
    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [I

    aput p2, v0, v2

    move-object p2, v0

    goto :goto_0

    .line 8
    :cond_1
    filled-new-array {v1}, [I

    move-result-object p2

    .line 9
    :goto_0
    array-length v0, p2

    :goto_1
    if-ge v2, v0, :cond_3

    aget v1, p2, v2

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 11
    :try_start_0
    iget v5, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallingPid:I

    .line 12
    iget v6, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallingUid:I

    .line 13
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 14
    :catch_0
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 15
    :cond_2
    :try_start_1
    iget-object v5, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v5, v1, p3, p4, p5}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 16
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    throw p0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final notifyOpChangedForAllPkgsInUid(IILjava/lang/String;Z)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 9
    .line 10
    move/from16 v9, p1

    .line 11
    .line 12
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/util/ArraySet;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    :goto_0
    if-ge v4, v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    if-eqz p4, :cond_0

    .line 38
    .line 39
    iget v6, v5, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    .line 40
    .line 41
    and-int/lit8 v6, v6, 0x1

    .line 42
    .line 43
    if-nez v6, :cond_0

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_0
    new-instance v6, Landroid/util/ArraySet;

    .line 47
    .line 48
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v6, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    new-instance v2, Landroid/util/ArrayMap;

    .line 57
    .line 58
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto/16 :goto_9

    .line 64
    .line 65
    :cond_1
    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    array-length v1, v0

    .line 72
    move-object v11, v2

    .line 73
    const/4 v2, 0x0

    .line 74
    :goto_3
    if-ge v2, v1, :cond_7

    .line 75
    .line 76
    aget-object v3, v0, v2

    .line 77
    .line 78
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Landroid/util/ArraySet;

    .line 85
    .line 86
    if-eqz v4, :cond_6

    .line 87
    .line 88
    if-nez v11, :cond_3

    .line 89
    .line 90
    new-instance v11, Landroid/util/ArrayMap;

    .line 91
    .line 92
    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    const/4 v6, 0x0

    .line 100
    :goto_4
    if-ge v6, v5, :cond_6

    .line 101
    .line 102
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 107
    .line 108
    if-eqz p4, :cond_4

    .line 109
    .line 110
    iget v12, v7, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    .line 111
    .line 112
    and-int/lit8 v12, v12, 0x1

    .line 113
    .line 114
    if-nez v12, :cond_4

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_4
    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    check-cast v12, Landroid/util/ArraySet;

    .line 122
    .line 123
    if-nez v12, :cond_5

    .line 124
    .line 125
    new-instance v12, Landroid/util/ArraySet;

    .line 126
    .line 127
    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v11, v7, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    :cond_5
    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_7
    if-eqz v11, :cond_8

    .line 143
    .line 144
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 145
    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 149
    .line 150
    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    :cond_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-nez v11, :cond_9

    .line 163
    .line 164
    return-void

    .line 165
    :cond_9
    const/4 v0, 0x0

    .line 166
    :goto_6
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-ge v0, v1, :cond_c

    .line 171
    .line 172
    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    move-object v12, v1

    .line 177
    check-cast v12, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 178
    .line 179
    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    move-object v13, v1

    .line 184
    check-cast v13, Landroid/util/ArraySet;

    .line 185
    .line 186
    if-nez v13, :cond_a

    .line 187
    .line 188
    iget-object v13, v8, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 189
    .line 190
    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    .line 191
    .line 192
    const/4 v2, 0x0

    .line 193
    invoke-direct {v1, v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;-><init>(I)V

    .line 194
    .line 195
    .line 196
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    const/4 v6, 0x0

    .line 205
    move-object/from16 v2, p0

    .line 206
    .line 207
    move-object v3, v12

    .line 208
    move-object/from16 v7, p3

    .line 209
    .line 210
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v13, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_8

    .line 218
    :cond_a
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    .line 219
    .line 220
    .line 221
    move-result v14

    .line 222
    const/4 v15, 0x0

    .line 223
    :goto_7
    if-ge v15, v14, :cond_b

    .line 224
    .line 225
    invoke-virtual {v13, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    move-object v6, v1

    .line 230
    check-cast v6, Ljava/lang/String;

    .line 231
    .line 232
    iget-object v7, v8, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 233
    .line 234
    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    .line 235
    .line 236
    const/4 v2, 0x0

    .line 237
    invoke-direct {v1, v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;-><init>(I)V

    .line 238
    .line 239
    .line 240
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    move-object/from16 v2, p0

    .line 249
    .line 250
    move-object v3, v12

    .line 251
    move-object v10, v7

    .line 252
    move-object/from16 v7, p3

    .line 253
    .line 254
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v10, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    .line 260
    .line 261
    add-int/lit8 v15, v15, 0x1

    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_b
    :goto_8
    add-int/lit8 v0, v0, 0x1

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_c
    return-void

    .line 268
    :goto_9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    throw v0
.end method

.method public final notifyWatchersOnDefaultDevice(II)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/util/ArraySet;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 19
    .line 20
    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    const/4 v4, 0x0

    .line 23
    const-string/jumbo v5, "default:0"

    .line 24
    .line 25
    .line 26
    move-object v0, p0

    .line 27
    move v2, p1

    .line 28
    move v3, p2

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method

.method public final offsetHistory(J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->offsetHistory_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetHistory(J)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->clearHistory()V

    .line 24
    .line 25
    .line 26
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    :try_start_2
    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 31
    .line 32
    .line 33
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    :try_start_4
    throw p0

    .line 40
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 41
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/appop/AppOpsService$Shell;

    .line 2
    .line 3
    invoke-direct {v0, p0, p0}, Lcom/android/server/appop/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V

    .line 4
    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move-object v7, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onUidProcessDeathLocked(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->finishRunningOpsForKilledPackages()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v0, Landroid/util/SparseLongArray;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, v0, v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;-><init>(Landroid/util/SparseLongArray;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->doForAllAttributedOpsInUidLocked(ILjava/util/function/Consumer;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-direct {p1, v0, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;-><init>(Landroid/util/SparseLongArray;I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x0

    .line 43
    :goto_0
    if-ge v1, v0, :cond_1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p0, v2, p1}, Lcom/android/server/appop/AppOpsService;->doForAllAttributedOpsInUidLocked(ILjava/util/function/Consumer;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    :goto_1
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->packageRemovedLocked(ILjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    throw p1
.end method

.method public final packageRemovedLocked(ILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v1, v2, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 44
    .line 45
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-interface {v1, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(ILjava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    const/4 p1, 0x0

    .line 62
    move p2, p1

    .line 63
    :goto_0
    if-ge p2, p0, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/android/server/appop/AppOpsService$Op;

    .line 70
    .line 71
    move v2, p1

    .line 72
    :goto_1
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-ge v2, v3, :cond_4

    .line 79
    .line 80
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Landroid/util/ArrayMap;

    .line 87
    .line 88
    move v4, p1

    .line 89
    :goto_2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-ge v4, v5, :cond_3

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Lcom/android/server/appop/AttributedOp;

    .line 100
    .line 101
    :goto_3
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_1

    .line 106
    .line 107
    iget-object v6, v5, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 108
    .line 109
    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    check-cast v6, Landroid/os/IBinder;

    .line 114
    .line 115
    invoke-virtual {v5, v6, p1, p1}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_1
    :goto_4
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_2

    .line 124
    .line 125
    iget-object v6, v5, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 126
    .line 127
    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    check-cast v6, Landroid/os/IBinder;

    .line 132
    .line 133
    invoke-virtual {v5, v6, p1, p1}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_5
    return-void
.end method

.method public final permissionToOpCode(Ljava/lang/String;)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, -0x1

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public prepareInternalCallbacks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v1, Lcom/android/server/appop/AppOpsService$7;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$7;-><init>(Lcom/android/server/appop/AppOpsService;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "UserManagerInternal not loaded"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v1, p0

    .line 17
    move v2, p2

    .line 18
    move-object v3, p3

    .line 19
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget v0, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 31
    .line 32
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget p1, p1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 37
    .line 38
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-interface {v1, v0, v2, p1, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(IIILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-gtz p1, :cond_0

    .line 50
    .line 51
    iget-object p1, p2, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 52
    .line 53
    iget-object p3, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 54
    .line 55
    if-eqz p3, :cond_0

    .line 56
    .line 57
    iget-object v0, p2, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 63
    .line 64
    iget-object p2, p2, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 65
    .line 66
    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 67
    .line 68
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(ILjava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method

.method public final readPackage(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 32

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "n"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v9

    .line 11
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 12
    .line 13
    .line 14
    move-result v10

    .line 15
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v11, 0x1

    .line 20
    if-eq v3, v11, :cond_12

    .line 21
    .line 22
    const/4 v12, 0x3

    .line 23
    if-ne v3, v12, :cond_1

    .line 24
    .line 25
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-le v4, v10, :cond_12

    .line 30
    .line 31
    :cond_1
    if-eq v3, v12, :cond_0

    .line 32
    .line 33
    const/4 v13, 0x4

    .line 34
    if-ne v3, v13, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string/jumbo v4, "uid"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const-string v14, "Unknown element under <pkg>: "

    .line 49
    .line 50
    const-string v15, "AppOps"

    .line 51
    .line 52
    if-eqz v3, :cond_11

    .line 53
    .line 54
    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    move-object/from16 v8, p0

    .line 59
    .line 60
    invoke-virtual {v8, v3, v11}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eq v3, v11, :cond_3

    .line 73
    .line 74
    if-ne v3, v12, :cond_4

    .line 75
    .line 76
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-le v4, v6, :cond_3

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move-object v5, v1

    .line 84
    goto/16 :goto_8

    .line 85
    .line 86
    :cond_4
    :goto_2
    if-eq v3, v12, :cond_10

    .line 87
    .line 88
    if-ne v3, v13, :cond_5

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const-string/jumbo v4, "op"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_f

    .line 103
    .line 104
    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v16

    .line 108
    new-instance v5, Lcom/android/server/appop/AppOpsService$Op;

    .line 109
    .line 110
    iget v4, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 111
    .line 112
    move-object v3, v5

    .line 113
    move/from16 v17, v4

    .line 114
    .line 115
    move-object/from16 v4, p0

    .line 116
    .line 117
    move-object v1, v5

    .line 118
    move-object v5, v7

    .line 119
    move/from16 v18, v6

    .line 120
    .line 121
    move-object v6, v9

    .line 122
    move-object/from16 v19, v7

    .line 123
    .line 124
    move/from16 v7, v16

    .line 125
    .line 126
    move/from16 v8, v17

    .line 127
    .line 128
    invoke-direct/range {v3 .. v8}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 129
    .line 130
    .line 131
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eq v4, v11, :cond_d

    .line 140
    .line 141
    if-ne v4, v12, :cond_7

    .line 142
    .line 143
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-le v5, v3, :cond_6

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_6
    move-object/from16 v31, v14

    .line 151
    .line 152
    move-object/from16 v3, v19

    .line 153
    .line 154
    const/4 v5, 0x0

    .line 155
    goto/16 :goto_6

    .line 156
    .line 157
    :cond_7
    :goto_4
    if-eq v4, v12, :cond_c

    .line 158
    .line 159
    if-ne v4, v13, :cond_8

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    const-string/jumbo v5, "st"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_a

    .line 174
    .line 175
    const-string/jumbo v4, "id"

    .line 176
    .line 177
    .line 178
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    const-string/jumbo v5, "default:0"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v1, v4, v5}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    const/4 v5, 0x0

    .line 190
    invoke-interface {v0, v5, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 191
    .line 192
    .line 193
    move-result-wide v6

    .line 194
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    const-string/jumbo v7, "t"

    .line 203
    .line 204
    .line 205
    const-wide/16 v11, 0x0

    .line 206
    .line 207
    invoke-interface {v0, v5, v7, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 208
    .line 209
    .line 210
    move-result-wide v21

    .line 211
    const-string/jumbo v7, "r"

    .line 212
    .line 213
    .line 214
    move-object/from16 v31, v14

    .line 215
    .line 216
    invoke-interface {v0, v5, v7, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 217
    .line 218
    .line 219
    move-result-wide v13

    .line 220
    const-string/jumbo v7, "d"

    .line 221
    .line 222
    .line 223
    const-wide/16 v11, -0x1

    .line 224
    .line 225
    invoke-interface {v0, v5, v7, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 226
    .line 227
    .line 228
    move-result-wide v23

    .line 229
    const-string/jumbo v7, "pp"

    .line 230
    .line 231
    .line 232
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v26

    .line 236
    const-string/jumbo v7, "pu"

    .line 237
    .line 238
    .line 239
    const/4 v11, -0x1

    .line 240
    invoke-interface {v0, v5, v7, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 241
    .line 242
    .line 243
    move-result v25

    .line 244
    const-string/jumbo v7, "pc"

    .line 245
    .line 246
    .line 247
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v27

    .line 251
    const-wide/16 v11, 0x0

    .line 252
    .line 253
    cmp-long v7, v21, v11

    .line 254
    .line 255
    if-lez v7, :cond_9

    .line 256
    .line 257
    const-string/jumbo v28, "default:0"

    .line 258
    .line 259
    .line 260
    move-object/from16 v20, v4

    .line 261
    .line 262
    move/from16 v29, v8

    .line 263
    .line 264
    move/from16 v30, v6

    .line 265
    .line 266
    invoke-virtual/range {v20 .. v30}, Lcom/android/server/appop/AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 267
    .line 268
    .line 269
    :cond_9
    const-wide/16 v11, 0x0

    .line 270
    .line 271
    cmp-long v7, v13, v11

    .line 272
    .line 273
    if-lez v7, :cond_b

    .line 274
    .line 275
    invoke-virtual {v4, v8, v6, v13, v14}, Lcom/android/server/appop/AttributedOp;->rejected(IIJ)V

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_a
    move-object/from16 v31, v14

    .line 280
    .line 281
    const/4 v5, 0x0

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v6, "Unknown element under <op>: "

    .line 285
    .line 286
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-static {v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 304
    .line 305
    .line 306
    :cond_b
    :goto_5
    move-object/from16 v14, v31

    .line 307
    .line 308
    const/4 v11, 0x1

    .line 309
    const/4 v12, 0x3

    .line 310
    const/4 v13, 0x4

    .line 311
    goto/16 :goto_3

    .line 312
    .line 313
    :cond_c
    const/4 v5, 0x0

    .line 314
    goto/16 :goto_3

    .line 315
    .line 316
    :cond_d
    move-object/from16 v31, v14

    .line 317
    .line 318
    const/4 v5, 0x0

    .line 319
    move-object/from16 v3, v19

    .line 320
    .line 321
    :goto_6
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 322
    .line 323
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    check-cast v4, Lcom/android/server/appop/AppOpsService$Ops;

    .line 328
    .line 329
    if-nez v4, :cond_e

    .line 330
    .line 331
    new-instance v4, Lcom/android/server/appop/AppOpsService$Ops;

    .line 332
    .line 333
    invoke-direct {v4, v9, v3}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 334
    .line 335
    .line 336
    iget-object v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 337
    .line 338
    invoke-virtual {v6, v9, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    :cond_e
    iget v6, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 342
    .line 343
    invoke-virtual {v4, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    move-object/from16 v4, v31

    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_f
    move-object v5, v1

    .line 350
    move/from16 v18, v6

    .line 351
    .line 352
    move-object v3, v7

    .line 353
    move-object/from16 v31, v14

    .line 354
    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    move-object/from16 v4, v31

    .line 358
    .line 359
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 377
    .line 378
    .line 379
    :goto_7
    move-object/from16 v8, p0

    .line 380
    .line 381
    move-object v7, v3

    .line 382
    move-object v14, v4

    .line 383
    move-object v1, v5

    .line 384
    move/from16 v6, v18

    .line 385
    .line 386
    const/4 v11, 0x1

    .line 387
    const/4 v12, 0x3

    .line 388
    const/4 v13, 0x4

    .line 389
    goto/16 :goto_1

    .line 390
    .line 391
    :cond_10
    move-object/from16 v8, p0

    .line 392
    .line 393
    goto/16 :goto_1

    .line 394
    .line 395
    :cond_11
    move-object v5, v1

    .line 396
    move-object v4, v14

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 417
    .line 418
    .line 419
    :goto_8
    move-object v1, v5

    .line 420
    goto/16 :goto_0

    .line 421
    .line 422
    :cond_12
    return-void
.end method

.method public final readRecentAccesses()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStorageFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses(Landroid/util/AtomicFile;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwareAppOpNewSchemaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRecentAccessPersistence:Lcom/android/server/appop/AppOpsRecentAccessPersistence;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->readRecentAccesses(Landroid/util/SparseArray;)V

    .line 6
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses(Landroid/util/AtomicFile;)V

    :goto_0
    return-void
.end method

.method public final readRecentAccesses(Landroid/util/AtomicFile;)V
    .locals 7

    .line 8
    const-string v0, "No existing app ops "

    monitor-enter p1

    .line 9
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    :try_start_1
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 12
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :try_start_3
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_7

    .line 15
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 16
    :cond_1
    :goto_1
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    if-eq v4, v3, :cond_6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 17
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v1

    goto/16 :goto_b

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_5

    :catch_2
    move-exception v1

    goto/16 :goto_6

    :catch_3
    move-exception v1

    goto/16 :goto_7

    :catch_4
    move-exception v1

    goto/16 :goto_8

    :catch_5
    move-exception v1

    goto/16 :goto_9

    :cond_2
    :goto_2
    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 19
    const-string/jumbo v5, "pkg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 20
    invoke-virtual {p0, v1}, Lcom/android/server/appop/AppOpsService;->readPackage(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_1

    .line 21
    :cond_4
    const-string/jumbo v5, "uid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 22
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 23
    :cond_5
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <app-ops>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 27
    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    .line 28
    :cond_7
    :try_start_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "no start tag found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 29
    :goto_4
    :try_start_6
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 30
    :try_start_7
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 31
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 32
    :goto_5
    :try_start_8
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 33
    :try_start_9
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 34
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    .line 35
    :goto_6
    :try_start_a
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 36
    :try_start_b
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 37
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 38
    :goto_7
    :try_start_c
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 39
    :try_start_d
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 40
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_3

    .line 41
    :goto_8
    :try_start_e
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 42
    :try_start_f
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 43
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_3

    .line 44
    :goto_9
    :try_start_10
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 45
    :try_start_11
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 46
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V

    goto/16 :goto_3

    .line 47
    :catch_6
    :goto_a
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 48
    :try_start_12
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    goto :goto_d

    .line 49
    :goto_b
    :try_start_13
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 50
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 51
    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 52
    :catch_7
    :try_start_15
    throw v1

    .line 53
    :catch_8
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; starting empty"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    return-void

    .line 55
    :goto_c
    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :try_start_18
    throw v0

    .line 56
    :goto_d
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    throw p0
.end method

.method public readState()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final rebootHistory(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->rebootHistory_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    iget v3, v1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    monitor-exit v2

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v1}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory()V

    .line 31
    .line 32
    .line 33
    :goto_1
    if-lez v0, :cond_2

    .line 34
    .line 35
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 36
    .line 37
    .line 38
    :cond_2
    new-instance p1, Lcom/android/server/appop/HistoricalRegistry;

    .line 39
    .line 40
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 41
    .line 42
    iget-object v0, p2, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-direct {p1, v0}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget v0, p2, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 48
    .line 49
    iput v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 50
    .line 51
    iget-wide v0, p2, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 52
    .line 53
    iput-wide v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 54
    .line 55
    iget-wide v0, p2, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 56
    .line 57
    iput-wide v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 58
    .line 59
    iget-object p2, p2, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 60
    .line 61
    iput-object p2, p1, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 66
    .line 67
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    throw p0
.end method

.method public final refreshAttributionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 18

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v6, 0x0

    .line 34
    :goto_0
    if-ge v6, v4, :cond_1

    .line 35
    .line 36
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    .line 45
    .line 46
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getInheritFrom()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    const/4 v9, 0x0

    .line 62
    :goto_1
    if-ge v9, v8, :cond_0

    .line 63
    .line 64
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getInheritFrom()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    check-cast v10, Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    invoke-virtual {v1, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    add-int/lit8 v9, v9, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move-object/from16 v4, p0

    .line 88
    .line 89
    iget-object v6, v4, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 90
    .line 91
    move/from16 v7, p2

    .line 92
    .line 93
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Lcom/android/server/appop/AppOpsService$UidState;

    .line 98
    .line 99
    if-nez v6, :cond_2

    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    iget-object v6, v6, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    .line 109
    .line 110
    if-nez v0, :cond_3

    .line 111
    .line 112
    return-void

    .line 113
    :cond_3
    iput-object v3, v0, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 114
    .line 115
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    .line 116
    .line 117
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    const/4 v6, 0x0

    .line 125
    :goto_2
    if-ge v6, v3, :cond_a

    .line 126
    .line 127
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    check-cast v7, Lcom/android/server/appop/AppOpsService$Op;

    .line 132
    .line 133
    iget-object v8, v7, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    add-int/lit8 v8, v8, -0x1

    .line 140
    .line 141
    :goto_3
    if-ltz v8, :cond_9

    .line 142
    .line 143
    iget-object v9, v7, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 144
    .line 145
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    check-cast v9, Landroid/util/ArrayMap;

    .line 150
    .line 151
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    add-int/lit8 v10, v10, -0x1

    .line 156
    .line 157
    :goto_4
    if-ltz v10, :cond_8

    .line 158
    .line 159
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    check-cast v11, Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    if-eqz v12, :cond_4

    .line 170
    .line 171
    move-object/from16 p1, v0

    .line 172
    .line 173
    move-object/from16 v16, v1

    .line 174
    .line 175
    move-object/from16 v17, v2

    .line 176
    .line 177
    const/4 v2, 0x0

    .line 178
    goto/16 :goto_a

    .line 179
    .line 180
    :cond_4
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    check-cast v12, Ljava/lang/String;

    .line 185
    .line 186
    iget-object v13, v7, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 187
    .line 188
    invoke-virtual {v13, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    check-cast v13, Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v7, v7, v12, v13}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    .line 195
    .line 196
    .line 197
    move-result-object v12

    .line 198
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    check-cast v13, Lcom/android/server/appop/AttributedOp;

    .line 203
    .line 204
    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 205
    .line 206
    .line 207
    move-result v14

    .line 208
    if-nez v14, :cond_6

    .line 209
    .line 210
    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    .line 211
    .line 212
    .line 213
    move-result v14

    .line 214
    if-eqz v14, :cond_5

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_5
    move-object/from16 p1, v0

    .line 218
    .line 219
    move-object/from16 v16, v1

    .line 220
    .line 221
    move-object/from16 v17, v2

    .line 222
    .line 223
    const/4 v2, 0x0

    .line 224
    goto :goto_9

    .line 225
    :cond_6
    :goto_5
    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 226
    .line 227
    .line 228
    move-result v14

    .line 229
    if-eqz v14, :cond_7

    .line 230
    .line 231
    iget-object v14, v13, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_7
    iget-object v14, v13, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 235
    .line 236
    :goto_6
    new-instance v15, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v5, "Ignoring "

    .line 239
    .line 240
    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v5, " app-ops, running: "

    .line 251
    .line 252
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    const-string v15, "AppOps"

    .line 267
    .line 268
    invoke-static {v15, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    const/4 v15, 0x0

    .line 276
    :goto_7
    if-ge v15, v5, :cond_5

    .line 277
    .line 278
    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v16

    .line 282
    move-object/from16 p1, v0

    .line 283
    .line 284
    move-object/from16 v0, v16

    .line 285
    .line 286
    check-cast v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    move-object/from16 v16, v1

    .line 292
    .line 293
    :try_start_0
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .line 295
    move-object/from16 v17, v2

    .line 296
    .line 297
    const/4 v2, 0x0

    .line 298
    :try_start_1
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    .line 300
    .line 301
    goto :goto_8

    .line 302
    :catch_0
    move-object/from16 v17, v2

    .line 303
    .line 304
    const/4 v2, 0x0

    .line 305
    :catch_1
    :goto_8
    iget-object v1, v12, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 306
    .line 307
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    .line 308
    .line 309
    invoke-virtual {v1, v0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    add-int/lit8 v15, v15, 0x1

    .line 313
    .line 314
    move-object/from16 v0, p1

    .line 315
    .line 316
    move-object/from16 v1, v16

    .line 317
    .line 318
    move-object/from16 v2, v17

    .line 319
    .line 320
    goto :goto_7

    .line 321
    :goto_9
    iget-object v0, v12, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 322
    .line 323
    iget-object v1, v13, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 324
    .line 325
    invoke-static {v0, v1}, Lcom/android/server/appop/AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    iput-object v0, v12, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 330
    .line 331
    iget-object v0, v12, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 332
    .line 333
    iget-object v1, v13, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 334
    .line 335
    invoke-static {v0, v1}, Lcom/android/server/appop/AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    iput-object v0, v12, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 340
    .line 341
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 345
    .line 346
    .line 347
    :goto_a
    add-int/lit8 v10, v10, -0x1

    .line 348
    .line 349
    move-object/from16 v0, p1

    .line 350
    .line 351
    move-object/from16 v1, v16

    .line 352
    .line 353
    move-object/from16 v2, v17

    .line 354
    .line 355
    goto/16 :goto_4

    .line 356
    .line 357
    :cond_8
    move-object/from16 p1, v0

    .line 358
    .line 359
    move-object/from16 v16, v1

    .line 360
    .line 361
    move-object/from16 v17, v2

    .line 362
    .line 363
    const/4 v2, 0x0

    .line 364
    add-int/lit8 v8, v8, -0x1

    .line 365
    .line 366
    move-object/from16 v2, v17

    .line 367
    .line 368
    goto/16 :goto_3

    .line 369
    .line 370
    :cond_9
    move-object/from16 p1, v0

    .line 371
    .line 372
    move-object/from16 v16, v1

    .line 373
    .line 374
    move-object/from16 v17, v2

    .line 375
    .line 376
    const/4 v2, 0x0

    .line 377
    add-int/lit8 v6, v6, 0x1

    .line 378
    .line 379
    move-object/from16 v2, v17

    .line 380
    .line 381
    goto/16 :goto_2

    .line 382
    .line 383
    :cond_a
    return-void
.end method

.method public final reloadNonHistoricalState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "reloadNonHistoricalState"

    .line 12
    .line 13
    .line 14
    const-string v4, "android.permission.MANAGE_APPOPS"

    .line 15
    .line 16
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->writeState()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 25
    .line 26
    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final removeUser(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "removeUser"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    :goto_0
    if-ltz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->removeUser(I)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    :goto_1
    if-ltz v0, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-ne v1, p1, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$UidState;->clear()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 70
    .line 71
    .line 72
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p1
.end method

.method public final reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v2, "AppOps"

    .line 18
    .line 19
    const-string/jumbo v3, "reportRuntimeAppOpAccessMessageAndGetConfig pid: "

    .line 20
    .line 21
    .line 22
    const-string v4, " uid: "

    .line 23
    .line 24
    const-string v5, " packageName: "

    .line 25
    .line 26
    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, " message: "

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const-wide/16 v6, 0x1

    .line 62
    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    new-instance p1, Lcom/android/internal/app/MessageSamplingConfig;

    .line 66
    .line 67
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    sget-object p3, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    .line 72
    .line 73
    invoke-virtual {p2, v6, v7, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    .line 78
    .line 79
    .line 80
    move-result-wide p2

    .line 81
    const/4 v0, -0x1

    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-direct {p1, v0, v1, p2, p3}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    .line 84
    .line 85
    .line 86
    monitor-exit p0

    .line 87
    return-object p1

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    move-object v0, p0

    .line 109
    move-object v3, p1

    .line 110
    move-object v5, p3

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance p1, Lcom/android/internal/app/MessageSamplingConfig;

    .line 115
    .line 116
    iget p2, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    .line 117
    .line 118
    iget p3, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 119
    .line 120
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    .line 125
    .line 126
    invoke-virtual {v0, v6, v7, v1}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    .line 135
    .line 136
    .line 137
    monitor-exit p0

    .line 138
    return-object p1

    .line 139
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    throw p1
.end method

.method public final reportRuntimeAppOpAccessMessageInternalLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    .line 2
    .line 3
    const/16 v1, 0x95

    .line 4
    .line 5
    invoke-static {p2, v0, v1}, Landroid/app/AppOpsManager;->leftCircularDistance(III)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    if-ge v1, v0, :cond_0

    .line 13
    .line 14
    iget v3, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 15
    .line 16
    if-eq v3, v2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-le v1, v0, :cond_1

    .line 20
    .line 21
    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 29
    .line 30
    :cond_1
    iget v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 31
    .line 32
    const/high16 v1, 0x3f800000    # 1.0f

    .line 33
    .line 34
    add-float/2addr v0, v1

    .line 35
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 36
    .line 37
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget v2, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 46
    .line 47
    div-float/2addr v1, v2

    .line 48
    cmpg-float v0, v0, v1

    .line 49
    .line 50
    if-gtz v0, :cond_2

    .line 51
    .line 52
    new-instance v0, Landroid/app/RuntimeAppOpAccessMessage;

    .line 53
    .line 54
    iget v7, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 55
    .line 56
    move-object v1, v0

    .line 57
    move v2, p1

    .line 58
    move v3, p2

    .line 59
    move-object v4, p3

    .line 60
    move-object v5, p4

    .line 61
    move-object v6, p5

    .line 62
    invoke-direct/range {v1 .. v7}, Landroid/app/RuntimeAppOpAccessMessage;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method public final requestPermissionAccessInformation()V
    .locals 2

    .line 1
    const-string/jumbo v0, "requestPermissionAccessInformation"

    .line 2
    .line 3
    .line 4
    const-string v1, "AppOps"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final resampleAppOpForPackageLocked(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/16 v0, 0x95

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p2, -0x1

    .line 18
    :goto_0
    iput p2, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    .line 19
    .line 20
    const/16 p2, 0x94

    .line 21
    .line 22
    iput p2, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public final resamplePackageAndAppOpLocked(Ljava/util/List;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/high16 v1, 0x3f000000    # 0.5f

    .line 18
    .line 19
    cmpg-float v0, v0, v1

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 25
    .line 26
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x4

    .line 49
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 50
    .line 51
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/lang/String;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    return-void
.end method

.method public final resetAllModes(ILjava/lang/String;)V
    .locals 24

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v9

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v10

    .line 13
    const-string/jumbo v6, "resetAllModes"

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x1

    .line 18
    const/4 v7, 0x0

    .line 19
    move v1, v9

    .line 20
    move v2, v10

    .line 21
    move/from16 v3, p1

    .line 22
    .line 23
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, -0x1

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-wide/16 v4, 0x2000

    .line 35
    .line 36
    invoke-interface {v3, v0, v4, v5, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 37
    .line 38
    .line 39
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    :cond_0
    move v3, v2

    .line 42
    :goto_0
    invoke-virtual {v8, v9, v10, v3}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 43
    .line 44
    .line 45
    new-instance v4, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    monitor-enter p0

    .line 51
    :try_start_1
    iget-object v5, v8, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const/4 v6, 0x1

    .line 58
    sub-int/2addr v5, v6

    .line 59
    const/4 v7, 0x0

    .line 60
    move-object v10, v4

    .line 61
    const/4 v4, 0x0

    .line 62
    :goto_1
    if-ltz v5, :cond_12

    .line 63
    .line 64
    iget-object v11, v8, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    check-cast v11, Lcom/android/server/appop/AppOpsService$UidState;

    .line 71
    .line 72
    iget-object v12, v8, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 73
    .line 74
    iget v13, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 75
    .line 76
    invoke-interface {v12, v13}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(I)Landroid/util/SparseIntArray;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    if-eqz v12, :cond_4

    .line 81
    .line 82
    iget v13, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 83
    .line 84
    if-eq v13, v3, :cond_1

    .line 85
    .line 86
    if-ne v3, v2, :cond_4

    .line 87
    .line 88
    :cond_1
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    sub-int/2addr v13, v6

    .line 93
    :goto_2
    if-ltz v13, :cond_4

    .line 94
    .line 95
    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 96
    .line 97
    .line 98
    move-result v15

    .line 99
    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    if-eqz v14, :cond_3

    .line 104
    .line 105
    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    iget v9, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 110
    .line 111
    invoke-virtual {v8, v9, v15}, Lcom/android/server/appop/AppOpsService;->isUidOpGrantedByRole(II)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_2

    .line 116
    .line 117
    const/4 v9, 0x0

    .line 118
    goto :goto_3

    .line 119
    :cond_2
    invoke-static {v15}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    :goto_3
    iget-object v6, v8, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 124
    .line 125
    iget v2, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 126
    .line 127
    invoke-interface {v6, v2, v15, v9}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setUidMode(III)Z

    .line 128
    .line 129
    .line 130
    iget v2, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 131
    .line 132
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    array-length v6, v2

    .line 137
    const/4 v9, 0x0

    .line 138
    :goto_4
    if-ge v9, v6, :cond_3

    .line 139
    .line 140
    move/from16 v20, v3

    .line 141
    .line 142
    aget-object v3, v2, v9

    .line 143
    .line 144
    move-object/from16 v21, v2

    .line 145
    .line 146
    iget v2, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 147
    .line 148
    move/from16 v22, v6

    .line 149
    .line 150
    iget-object v6, v8, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 151
    .line 152
    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    move-object/from16 v19, v6

    .line 157
    .line 158
    check-cast v19, Landroid/util/ArraySet;

    .line 159
    .line 160
    move v6, v14

    .line 161
    move-object v14, v7

    .line 162
    move v7, v15

    .line 163
    move/from16 v16, v2

    .line 164
    .line 165
    move-object/from16 v17, v3

    .line 166
    .line 167
    move/from16 v18, v6

    .line 168
    .line 169
    invoke-static/range {v14 .. v19}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    iget v2, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 174
    .line 175
    iget-object v15, v8, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 176
    .line 177
    invoke-virtual {v15, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v15

    .line 181
    move-object/from16 v19, v15

    .line 182
    .line 183
    check-cast v19, Landroid/util/ArraySet;

    .line 184
    .line 185
    move v15, v7

    .line 186
    move/from16 v16, v2

    .line 187
    .line 188
    move-object/from16 v17, v3

    .line 189
    .line 190
    move/from16 v18, v6

    .line 191
    .line 192
    invoke-static/range {v14 .. v19}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    iget v14, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 197
    .line 198
    invoke-static {v3, v7, v14, v6, v10}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/lang/String;IIILjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    add-int/lit8 v9, v9, 0x1

    .line 203
    .line 204
    move v14, v6

    .line 205
    move v15, v7

    .line 206
    move/from16 v3, v20

    .line 207
    .line 208
    move/from16 v6, v22

    .line 209
    .line 210
    move-object v7, v2

    .line 211
    move-object/from16 v2, v21

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :catchall_0
    move-exception v0

    .line 215
    goto/16 :goto_11

    .line 216
    .line 217
    :cond_3
    move/from16 v20, v3

    .line 218
    .line 219
    add-int/lit8 v13, v13, -0x1

    .line 220
    .line 221
    move/from16 v3, v20

    .line 222
    .line 223
    const/4 v2, -0x1

    .line 224
    const/4 v6, 0x1

    .line 225
    goto/16 :goto_2

    .line 226
    .line 227
    :cond_4
    move/from16 v20, v3

    .line 228
    .line 229
    iget-object v2, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 230
    .line 231
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_5

    .line 236
    .line 237
    const/4 v2, -0x1

    .line 238
    goto :goto_5

    .line 239
    :cond_5
    const/4 v2, -0x1

    .line 240
    if-eq v1, v2, :cond_7

    .line 241
    .line 242
    iget v3, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 243
    .line 244
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eq v1, v3, :cond_7

    .line 249
    .line 250
    :cond_6
    :goto_5
    move/from16 v19, v1

    .line 251
    .line 252
    const/16 v18, 0x1

    .line 253
    .line 254
    goto/16 :goto_d

    .line 255
    .line 256
    :cond_7
    iget-object v3, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 257
    .line 258
    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    if-eqz v6, :cond_6

    .line 271
    .line 272
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    check-cast v6, Ljava/util/Map$Entry;

    .line 277
    .line 278
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v9

    .line 282
    check-cast v9, Ljava/lang/String;

    .line 283
    .line 284
    if-eqz v0, :cond_8

    .line 285
    .line 286
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v12

    .line 290
    if-nez v12, :cond_8

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_8
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    check-cast v6, Lcom/android/server/appop/AppOpsService$Ops;

    .line 298
    .line 299
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 300
    .line 301
    .line 302
    move-result v12

    .line 303
    const/16 v18, 0x1

    .line 304
    .line 305
    add-int/lit8 v12, v12, -0x1

    .line 306
    .line 307
    move/from16 v23, v12

    .line 308
    .line 309
    move-object v12, v7

    .line 310
    move/from16 v7, v23

    .line 311
    .line 312
    :goto_7
    if-ltz v7, :cond_10

    .line 313
    .line 314
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v13

    .line 318
    move-object v15, v13

    .line 319
    check-cast v15, Lcom/android/server/appop/AppOpsService$Op;

    .line 320
    .line 321
    iget v13, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 322
    .line 323
    iget-object v14, v8, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 324
    .line 325
    if-eqz v14, :cond_a

    .line 326
    .line 327
    invoke-virtual {v14, v13}, Landroid/app/admin/DevicePolicyManagerInternal;->supportsResetOp(I)Z

    .line 328
    .line 329
    .line 330
    move-result v13

    .line 331
    if-eqz v13, :cond_a

    .line 332
    .line 333
    iget v13, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 334
    .line 335
    iget-object v14, v8, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 336
    .line 337
    invoke-virtual {v14, v13, v0, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->resetOp(ILjava/lang/String;I)V

    .line 338
    .line 339
    .line 340
    :cond_9
    :goto_8
    move/from16 v19, v1

    .line 341
    .line 342
    goto/16 :goto_c

    .line 343
    .line 344
    :cond_a
    iget v13, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 345
    .line 346
    invoke-static {v13}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    .line 347
    .line 348
    .line 349
    move-result v13

    .line 350
    if-eqz v13, :cond_9

    .line 351
    .line 352
    iget-object v13, v8, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 353
    .line 354
    iget-object v14, v15, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 355
    .line 356
    iget v2, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 357
    .line 358
    iget v0, v15, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 359
    .line 360
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    invoke-interface {v13, v2, v0, v14}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    iget v2, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 369
    .line 370
    iget v13, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 371
    .line 372
    invoke-static {v13}, Landroid/app/AppOpsManager;->opIsPackageAppOpPermission(I)Z

    .line 373
    .line 374
    .line 375
    move-result v14

    .line 376
    if-nez v14, :cond_b

    .line 377
    .line 378
    const/4 v2, 0x0

    .line 379
    goto :goto_a

    .line 380
    :cond_b
    iget-object v14, v8, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 381
    .line 382
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 383
    .line 384
    .line 385
    move-result-object v14

    .line 386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 387
    .line 388
    .line 389
    move-result-wide v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    :try_start_2
    invoke-static {v13}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v13

    .line 394
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-virtual {v14, v13, v9, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 399
    .line 400
    .line 401
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 402
    const v13, 0x8000

    .line 403
    .line 404
    .line 405
    and-int/2addr v2, v13

    .line 406
    if-eqz v2, :cond_c

    .line 407
    .line 408
    move/from16 v2, v18

    .line 409
    .line 410
    goto :goto_9

    .line 411
    :cond_c
    const/4 v2, 0x0

    .line 412
    :goto_9
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    .line 414
    .line 415
    :goto_a
    if-eqz v2, :cond_d

    .line 416
    .line 417
    const/4 v2, 0x0

    .line 418
    goto :goto_b

    .line 419
    :cond_d
    iget v2, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 420
    .line 421
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    :goto_b
    if-ne v0, v2, :cond_e

    .line 426
    .line 427
    goto :goto_8

    .line 428
    :cond_e
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 429
    .line 430
    iget-object v13, v15, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 431
    .line 432
    iget v14, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 433
    .line 434
    move/from16 v19, v1

    .line 435
    .line 436
    iget v1, v15, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 437
    .line 438
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    invoke-interface {v4, v14, v2, v1, v13}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(IIILjava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget-object v1, v15, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 446
    .line 447
    iget v1, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 448
    .line 449
    iget v13, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 450
    .line 451
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 452
    .line 453
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    move-object/from16 v17, v2

    .line 458
    .line 459
    check-cast v17, Landroid/util/ArraySet;

    .line 460
    .line 461
    move v14, v1

    .line 462
    move-object v2, v15

    .line 463
    move-object v15, v9

    .line 464
    move/from16 v16, v0

    .line 465
    .line 466
    invoke-static/range {v12 .. v17}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    .line 467
    .line 468
    .line 469
    move-result-object v12

    .line 470
    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 471
    .line 472
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 473
    .line 474
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    move-object/from16 v17, v4

    .line 479
    .line 480
    check-cast v17, Landroid/util/ArraySet;

    .line 481
    .line 482
    move v14, v1

    .line 483
    move-object v15, v9

    .line 484
    move/from16 v16, v0

    .line 485
    .line 486
    invoke-static/range {v12 .. v17}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    .line 487
    .line 488
    .line 489
    move-result-object v12

    .line 490
    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 491
    .line 492
    invoke-static {v9, v4, v1, v0, v10}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/lang/String;IIILjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 493
    .line 494
    .line 495
    move-result-object v10

    .line 496
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    .line 497
    .line 498
    .line 499
    iget-object v0, v2, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 500
    .line 501
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-eqz v0, :cond_f

    .line 506
    .line 507
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->removeAt(I)V

    .line 508
    .line 509
    .line 510
    :cond_f
    move/from16 v4, v18

    .line 511
    .line 512
    goto :goto_c

    .line 513
    :catchall_1
    move-exception v0

    .line 514
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 515
    .line 516
    .line 517
    throw v0

    .line 518
    :goto_c
    add-int/lit8 v7, v7, -0x1

    .line 519
    .line 520
    move-object/from16 v0, p2

    .line 521
    .line 522
    move/from16 v1, v19

    .line 523
    .line 524
    const/4 v2, -0x1

    .line 525
    goto/16 :goto_7

    .line 526
    .line 527
    :cond_10
    move/from16 v19, v1

    .line 528
    .line 529
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-nez v0, :cond_11

    .line 534
    .line 535
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 536
    .line 537
    .line 538
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 539
    .line 540
    iget v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 541
    .line 542
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    invoke-interface {v0, v1, v9}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(ILjava/lang/String;)Z

    .line 547
    .line 548
    .line 549
    :cond_11
    move-object/from16 v0, p2

    .line 550
    .line 551
    move-object v7, v12

    .line 552
    move/from16 v1, v19

    .line 553
    .line 554
    const/4 v2, -0x1

    .line 555
    goto/16 :goto_6

    .line 556
    .line 557
    :goto_d
    add-int/lit8 v5, v5, -0x1

    .line 558
    .line 559
    move-object/from16 v0, p2

    .line 560
    .line 561
    move/from16 v6, v18

    .line 562
    .line 563
    move/from16 v1, v19

    .line 564
    .line 565
    move/from16 v3, v20

    .line 566
    .line 567
    const/4 v2, -0x1

    .line 568
    goto/16 :goto_1

    .line 569
    .line 570
    :cond_12
    if-eqz v4, :cond_13

    .line 571
    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 573
    .line 574
    .line 575
    :cond_13
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 576
    if-eqz v7, :cond_17

    .line 577
    .line 578
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    if-eqz v1, :cond_17

    .line 591
    .line 592
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    check-cast v1, Ljava/util/Map$Entry;

    .line 597
    .line 598
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    move-object v9, v2

    .line 603
    check-cast v9, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 604
    .line 605
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    move-object v11, v1

    .line 610
    check-cast v11, Ljava/util/ArrayList;

    .line 611
    .line 612
    const/4 v12, 0x0

    .line 613
    :goto_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    if-ge v12, v1, :cond_14

    .line 618
    .line 619
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    move-object v13, v1

    .line 624
    check-cast v13, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 625
    .line 626
    new-instance v1, Landroid/util/ArraySet;

    .line 627
    .line 628
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 629
    .line 630
    .line 631
    const-string/jumbo v2, "default:0"

    .line 632
    .line 633
    .line 634
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 638
    .line 639
    if-eqz v2, :cond_15

    .line 640
    .line 641
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 646
    .line 647
    .line 648
    :cond_15
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 649
    .line 650
    .line 651
    move-result-object v14

    .line 652
    :goto_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    if-eqz v1, :cond_16

    .line 657
    .line 658
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    move-object v7, v1

    .line 663
    check-cast v7, Ljava/lang/String;

    .line 664
    .line 665
    iget-object v15, v8, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 666
    .line 667
    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    .line 668
    .line 669
    const/4 v2, 0x0

    .line 670
    invoke-direct {v1, v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;-><init>(I)V

    .line 671
    .line 672
    .line 673
    iget v2, v13, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 674
    .line 675
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 676
    .line 677
    .line 678
    move-result-object v4

    .line 679
    iget v2, v13, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    .line 680
    .line 681
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 682
    .line 683
    .line 684
    move-result-object v5

    .line 685
    iget-object v6, v13, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 686
    .line 687
    move-object/from16 v2, p0

    .line 688
    .line 689
    move-object v3, v9

    .line 690
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    invoke-virtual {v15, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 695
    .line 696
    .line 697
    goto :goto_f

    .line 698
    :cond_16
    add-int/lit8 v12, v12, 0x1

    .line 699
    .line 700
    goto :goto_e

    .line 701
    :cond_17
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    const/4 v9, 0x0

    .line 706
    :goto_10
    if-ge v9, v0, :cond_19

    .line 707
    .line 708
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    check-cast v1, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 713
    .line 714
    iget v3, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 715
    .line 716
    iget v4, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    .line 717
    .line 718
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 719
    .line 720
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 721
    .line 722
    .line 723
    move-result v6

    .line 724
    iget v7, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->previous_mode:I

    .line 725
    .line 726
    const-class v1, Landroid/os/storage/StorageManagerInternal;

    .line 727
    .line 728
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    move-object v2, v1

    .line 733
    check-cast v2, Landroid/os/storage/StorageManagerInternal;

    .line 734
    .line 735
    if-eqz v2, :cond_18

    .line 736
    .line 737
    invoke-virtual/range {v2 .. v7}, Landroid/os/storage/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;II)V

    .line 738
    .line 739
    .line 740
    :cond_18
    add-int/lit8 v9, v9, 0x1

    .line 741
    .line 742
    goto :goto_10

    .line 743
    :cond_19
    return-void

    .line 744
    :goto_11
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 745
    throw v0
.end method

.method public final resetHistoryParameters()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->resetHistoryParameters_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "Interaction before persistence initialized"

    .line 15
    .line 16
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-wide v2, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    .line 21
    .line 22
    const-wide/16 v4, 0xa

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    move-object v0, p0

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final resetPackageOpsNoHistory(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->resetPackageOpsNoHistory_enforcePermission()V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 45
    .line 46
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-interface {v2, v0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(ILjava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 56
    .line 57
    .line 58
    :cond_2
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1
.end method

.method public final scheduleFastWriteLocked()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

    .line 24
    .line 25
    const-wide/16 v1, 0x2710

    .line 26
    .line 27
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V
    .locals 12

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_3

    .line 11
    .line 12
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroid/util/SparseArray;

    .line 19
    .line 20
    move v5, p1

    .line 21
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    iget v6, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 30
    .line 31
    move v7, p2

    .line 32
    if-ltz v6, :cond_0

    .line 33
    .line 34
    if-eq v6, v7, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    if-nez v2, :cond_1

    .line 38
    .line 39
    new-instance v2, Landroid/util/ArraySet;

    .line 40
    .line 41
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v7, p2

    .line 49
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    move v5, p1

    .line 53
    move v7, p2

    .line 54
    if-nez v2, :cond_4

    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 58
    .line 59
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    move-object v1, p0

    .line 89
    move-object v5, p3

    .line 90
    move-object/from16 v6, p4

    .line 91
    .line 92
    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v11, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final scheduleOpNotedIfNeededLocked(IIILjava/lang/String;Ljava/lang/String;II)V
    .locals 11

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_3

    .line 11
    .line 12
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroid/util/SparseArray;

    .line 19
    .line 20
    move v5, p1

    .line 21
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    iget v6, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    .line 30
    .line 31
    move v7, p2

    .line 32
    if-ltz v6, :cond_0

    .line 33
    .line 34
    if-eq v6, v7, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    if-nez v2, :cond_1

    .line 38
    .line 39
    new-instance v2, Landroid/util/ArraySet;

    .line 40
    .line 41
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v7, p2

    .line 49
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    move v5, p1

    .line 53
    move v7, p2

    .line 54
    if-nez v2, :cond_4

    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 58
    .line 59
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    move-object v1, p0

    .line 85
    move-object v5, p4

    .line 86
    move-object/from16 v6, p5

    .line 87
    .line 88
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v10, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_3

    .line 11
    .line 12
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroid/util/SparseArray;

    .line 19
    .line 20
    move v5, p1

    .line 21
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/android/server/appop/AppOpsService$StartedCallback;

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    iget v6, v4, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    .line 30
    .line 31
    move/from16 v7, p2

    .line 32
    .line 33
    if-ltz v6, :cond_0

    .line 34
    .line 35
    if-eq v6, v7, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    if-nez v2, :cond_1

    .line 39
    .line 40
    new-instance v2, Landroid/util/ArraySet;

    .line 41
    .line 42
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move/from16 v7, p2

    .line 50
    .line 51
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move v5, p1

    .line 55
    move/from16 v7, p2

    .line 56
    .line 57
    if-nez v2, :cond_4

    .line 58
    .line 59
    return-void

    .line 60
    :cond_4
    iget-object v13, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 61
    .line 62
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/4 v3, 0x2

    .line 65
    invoke-direct {v0, v3}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    move-object v1, p0

    .line 101
    move-object/from16 v5, p3

    .line 102
    .line 103
    move-object/from16 v6, p4

    .line 104
    .line 105
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v13, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    .line 19
    .line 20
    monitor-enter p3

    .line 21
    :try_start_0
    iget-object v0, p3, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/util/SparseArray;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    new-instance v0, Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p3, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 45
    .line 46
    .line 47
    if-eqz p4, :cond_3

    .line 48
    .line 49
    new-instance v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    sget-object v2, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->NO_EXCEPTIONS:Landroid/util/ArraySet;

    .line 55
    .line 56
    iput-object v2, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 57
    .line 58
    iput p4, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    .line 59
    .line 60
    if-eqz p5, :cond_2

    .line 61
    .line 62
    array-length p4, p5

    .line 63
    new-instance v2, Landroid/util/ArraySet;

    .line 64
    .line 65
    invoke-direct {v2, p4}, Landroid/util/ArraySet;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iput-object v2, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    :goto_1
    if-ge v2, p4, :cond_2

    .line 72
    .line 73
    aget-object v3, p5, v2

    .line 74
    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    iget-object v4, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 94
    .line 95
    new-instance p3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;

    .line 96
    .line 97
    const/4 p4, 0x0

    .line 98
    invoke-direct {p3, p4}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const/4 p4, -0x2

    .line 106
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p4

    .line 110
    invoke-static {p3, p0, p1, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :goto_2
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    throw p0
.end method

.method public final setCameraAudioRestriction(I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iput p1, v0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    .line 17
    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x1c

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, -0x2

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v0, p0, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-direct {v0, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x3

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p0
.end method

.method public final setCheckOpsDelegate(Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    new-instance v1, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 11
    .line 12
    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1
.end method

.method public final setHistoryParameters(IJI)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->setHistoryParameters_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 5
    .line 6
    int-to-long v4, p4

    .line 7
    move v1, p1

    .line 8
    move-wide v2, p2

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setMode(IILjava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public final setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 10

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_0

    .line 4
    :try_start_0
    const-string/jumbo v0, "restriction_policy"

    .line 5
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    const/4 p1, 0x0

    .line 9
    :try_start_1
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p2

    move-object v5, p3

    move v9, v0

    .line 12
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    .line 14
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, p1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 15
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 16
    invoke-interface {v0, v3, v4, v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v0

    if-eq v0, p4, :cond_4

    .line 17
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, p1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 18
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 19
    invoke-interface {v0, v3, v4, v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v0

    .line 20
    iput-object p5, p0, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 21
    iget-object p5, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget p1, p1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 22
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 23
    invoke-interface {p5, v3, p4, p1, v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(IIILjava/lang/String;)V

    move v6, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x3

    move v6, p1

    .line 24
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    const-class p0, Landroid/os/storage/StorageManagerInternal;

    .line 26
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/os/storage/StorageManagerInternal;

    if-eqz v1, :cond_5

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 27
    invoke-virtual/range {v1 .. v6}, Landroid/os/storage/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;II)V

    :cond_5
    return-void

    .line 28
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catch_1
    move-exception p0

    .line 29
    const-string/jumbo p1, "setMode"

    invoke-static {p2, p0, p1}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    return-void
.end method

.method public final setUidMode(III)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public final setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V
    .locals 26

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v5, p3

    move-object/from16 v2, p4

    .line 2
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "AppOps"

    const-string/jumbo v4, "uid "

    const-string v6, " OP_"

    .line 4
    invoke-static {v3, v4, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " := "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " by uid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v0, v4, v3}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 10
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v4

    const/4 v7, 0x0

    if-nez v2, :cond_f

    .line 11
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    if-nez v14, :cond_1

    goto/16 :goto_b

    .line 12
    :cond_1
    invoke-virtual {v14, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_b

    .line 14
    :cond_2
    aget-object v15, v0, v7

    .line 15
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [I

    .line 16
    array-length v12, v13

    move v11, v7

    :goto_0
    if-ge v11, v12, :cond_f

    aget v0, v13, v11

    .line 17
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_1
    move/from16 v18, v11

    move/from16 v20, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v21, v15

    goto/16 :goto_a

    .line 18
    :cond_3
    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    .line 19
    :cond_4
    :try_start_0
    invoke-virtual {v14, v0, v7}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    .line 21
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v9

    .line 22
    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v9

    const/16 v10, 0x17

    if-lt v9, v10, :cond_6

    const/16 v16, 0x1

    goto :goto_2

    :cond_6
    move/from16 v16, v7

    .line 23
    :goto_2
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v17

    .line 24
    iget-object v9, v8, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    const-string v10, ", permission="

    const-string v6, ", mode="

    const-string v7, ", switchCode="

    move/from16 v18, v11

    const-string/jumbo v11, "setUidMode() called with a mode inconsistent with runtime permission state, this is discouraged and you should revoke the runtime permission instead: uid="

    const-string v2, "AppOps"

    const/16 v19, 0x8

    if-eqz v9, :cond_c

    .line 25
    invoke-virtual {v14, v9, v15}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_a

    if-eqz v5, :cond_7

    const/4 v9, 0x1

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_8

    if-eqz v16, :cond_8

    move/from16 v20, v12

    .line 26
    invoke-static {v3, v4, v11, v7, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 27
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v10

    iget-object v10, v8, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 28
    invoke-static {v12, v10, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object/from16 v21, v10

    move/from16 v20, v12

    .line 29
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 30
    :try_start_1
    iget-object v10, v8, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v9, :cond_9

    move/from16 v12, v19

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    :goto_5
    const/16 v24, 0x8

    move-object v8, v14

    move-object v9, v10

    move-object/from16 v25, v14

    move-object/from16 v14, v21

    move-object v10, v15

    move-object/from16 v21, v15

    move-object v15, v11

    move/from16 v11, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v17

    invoke-virtual/range {v8 .. v13}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :catchall_0
    move-exception v0

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    throw v0

    :cond_a
    move/from16 v20, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v21, v15

    move-object v14, v10

    move-object v15, v11

    :goto_6
    if-eqz v5, :cond_b

    const/4 v8, 0x4

    if-eq v5, v8, :cond_b

    :goto_7
    const/4 v8, 0x1

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    goto :goto_8

    :cond_c
    move/from16 v20, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v21, v15

    move-object v14, v10

    move-object v15, v11

    if-eqz v5, :cond_b

    goto :goto_7

    :goto_8
    if-eqz v8, :cond_d

    if-eqz v16, :cond_d

    .line 33
    invoke-static {v3, v4, v15, v7, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 34
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    if-eqz v8, :cond_e

    move/from16 v12, v19

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    :goto_9
    const/16 v11, 0x8

    move-object/from16 v8, v25

    move-object v9, v0

    move-object/from16 v10, v21

    move-object/from16 v13, v17

    .line 36
    :try_start_2
    invoke-virtual/range {v8 .. v13}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    throw v1

    :catch_0
    move-exception v0

    move/from16 v18, v11

    move/from16 v20, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v21, v15

    move-object v2, v0

    .line 39
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_a
    add-int/lit8 v11, v18, 0x1

    move-object/from16 v2, p4

    move/from16 v12, v20

    move-object/from16 v15, v21

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 40
    :cond_f
    :goto_b
    monitor-enter p0

    .line 41
    :try_start_3
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v3, v2}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v6

    if-nez v6, :cond_12

    if-ne v5, v0, :cond_10

    .line 43
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    goto/16 :goto_f

    :cond_10
    const/16 v0, 0x2710

    if-lt v3, v0, :cond_11

    .line 44
    const-string v0, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to set mode for unknown uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_11
    new-instance v6, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v6, v1, v3}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 46
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    :cond_12
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v7, v6, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string/jumbo v8, "default:0"

    invoke-interface {v0, v7, v4, v8}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    move-result v0

    .line 48
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v7

    if-eq v0, v7, :cond_13

    .line 49
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v7, v6, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string/jumbo v8, "default:0"

    .line 50
    invoke-interface {v0, v7, v4, v8}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    move-result v0

    :goto_c
    move-object/from16 v7, p4

    goto :goto_d

    :cond_13
    const/4 v0, 0x3

    goto :goto_c

    .line 51
    :goto_d
    iput-object v7, v1, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 52
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v6, v6, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-interface {v7, v6, v4, v5}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setUidMode(III)Z

    move-result v6

    if-nez v6, :cond_14

    .line 53
    monitor-exit p0

    return-void

    :cond_14
    const/4 v6, 0x2

    if-eq v5, v6, :cond_16

    if-eq v5, v0, :cond_16

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    goto :goto_e

    :cond_15
    move v6, v2

    .line 54
    :goto_e
    invoke-virtual {v1, v4, v3, v6}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidForDefaultDeviceLocked(IIZ)V

    .line 55
    :cond_16
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 56
    const-class v1, Landroid/os/storage/StorageManagerInternal;

    .line 57
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManagerInternal;

    if-eqz v1, :cond_17

    const/4 v6, 0x0

    move v2, v4

    move/from16 v3, p2

    move-object v4, v6

    move/from16 v5, p3

    move v6, v0

    .line 58
    invoke-virtual/range {v1 .. v6}, Landroid/os/storage/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;II)V

    :cond_17
    return-void

    .line 59
    :goto_f
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const-string v4, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    .line 23
    .line 24
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eq p4, v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 55
    .line 56
    const-string p1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setUserRestrictionNoCheck code: "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    :try_start_1
    new-instance v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    .line 16
    .line 17
    invoke-direct {v1, p0, p3}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    :try_start_2
    const-string v2, "AppOps"

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "Calling Pid:"

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-virtual {v0, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :cond_0
    :goto_0
    invoke-virtual {v1, p1, p2, p5, p4}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->setRestriction(IZLandroid/os/PackageTagsList;I)Z

    .line 60
    .line 61
    .line 62
    move-result p5

    .line 63
    if-eqz p5, :cond_1

    .line 64
    .line 65
    iget-object p5, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 66
    .line 67
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-direct {v0, v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const/4 v3, -0x2

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v0, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    .line 88
    .line 89
    iget-object p5, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 90
    .line 91
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-direct {v0, v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p4

    .line 109
    invoke-static {v0, p0, p1, p2, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p5, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    .line 115
    .line 116
    :cond_1
    iget-object p1, v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 117
    .line 118
    iget-object p1, p1, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    .line 119
    .line 120
    iget-object p2, v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    .line 121
    .line 122
    check-cast p1, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    .line 123
    .line 124
    iget-object p1, p1, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    xor-int/lit8 p1, p1, 0x1

    .line 131
    .line 132
    if-eqz p1, :cond_2

    .line 133
    .line 134
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 135
    .line 136
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    iget-object p1, v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    .line 140
    .line 141
    const/4 p2, 0x0

    .line 142
    invoke-interface {p1, v1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 143
    .line 144
    .line 145
    :cond_2
    monitor-exit p0

    .line 146
    return-void

    .line 147
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    throw p1
.end method

.method public final setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .locals 8

    .line 1
    const-string/jumbo v0, "setUserRestrictions"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    move v7, v0

    .line 15
    :goto_0
    const/16 v1, 0x95

    .line 16
    .line 17
    if-ge v7, v1, :cond_1

    .line 18
    .line 19
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v6, 0x0

    .line 30
    move-object v1, p0

    .line 31
    move v2, v7

    .line 32
    move-object v4, p2

    .line 33
    move v5, p3

    .line 34
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public final shouldCollectNotes(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x94

    .line 2
    .line 3
    const-string/jumbo v1, "opCode"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/app/AppOpsManager;->shouldForceCollectNoteForOp(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eq p1, v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    and-int/lit8 p0, p0, 0x40

    .line 46
    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    :cond_2
    move v2, v1

    .line 50
    :catch_0
    :cond_3
    return v2
.end method

.method public final shouldIgnoreCallback(III)Z
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string p1, "android.permission.MANAGE_APPOPS"

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final shutdown()V
    .locals 2

    .line 1
    const-string v0, "AppOps"

    .line 2
    .line 3
    const-string v1, "Writing app ops before shutdown..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_3

    .line 31
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeRecentAccesses()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->shutdown()V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_1
    iget v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    monitor-exit v0

    .line 52
    goto :goto_1

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory()V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void

    .line 60
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    throw p0

    .line 62
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    throw v0
.end method

.method public final startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 3
    .line 4
    const/4 v6, 0x0

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move/from16 v7, p6

    .line 14
    .line 15
    move/from16 v8, p7

    .line 16
    .line 17
    move-object/from16 v9, p8

    .line 18
    .line 19
    move/from16 v10, p9

    .line 20
    .line 21
    move/from16 v11, p10

    .line 22
    .line 23
    move/from16 v12, p11

    .line 24
    .line 25
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final startOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 3
    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move/from16 v3, p3

    .line 7
    .line 8
    move-object/from16 v4, p4

    .line 9
    .line 10
    move-object/from16 v5, p5

    .line 11
    .line 12
    move/from16 v6, p6

    .line 13
    .line 14
    move/from16 v7, p7

    .line 15
    .line 16
    move/from16 v8, p8

    .line 17
    .line 18
    move-object/from16 v9, p9

    .line 19
    .line 20
    move/from16 v10, p10

    .line 21
    .line 22
    move/from16 v11, p11

    .line 23
    .line 24
    move/from16 v12, p12

    .line 25
    .line 26
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 34

    move-object/from16 v12, p0

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v0, p6

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v11, p11

    move/from16 v10, p12

    .line 1
    const-string/jumbo v7, "startOperationUnchecked: allowing code "

    const-string/jumbo v6, "startOperationUnchecked: reject #"

    const-string/jumbo v5, "startOperationUnchecked: uid reject #"

    const-string/jumbo v4, "startOperationUnchecked: no op for code "

    const/16 v16, 0x0

    const/4 v3, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p3

    move-object/from16 v29, v4

    move-object/from16 v4, p5

    move-object/from16 v30, v5

    move-object/from16 v5, p8

    move-object v11, v6

    move/from16 v6, p7

    move-object v9, v7

    move/from16 v7, v16

    .line 2
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v7

    .line 3
    iget-boolean v1, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p5

    :goto_0
    move-object/from16 v5, p8

    if-eqz v8, :cond_1

    .line 4
    invoke-static {v15, v5, v8}, Lcom/android/server/appop/AppOpsService;->isAttributionTagDefined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v21, v2

    goto :goto_1

    :cond_1
    move-object/from16 v21, v8

    .line 5
    :goto_1
    monitor-enter p0

    .line 6
    :try_start_1
    iget-boolean v8, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v4, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v17, v4

    move-object v4, v6

    move v5, v8

    move-object v8, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v9

    move-object v9, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v7

    const/16 v31, 0x0

    if-nez v7, :cond_4

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v8

    move/from16 v6, p6

    move/from16 v7, p11

    move-object v0, v8

    move v8, v9

    move/from16 v9, v31

    move/from16 v10, p16

    move/from16 v11, p17

    .line 7
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    .line 8
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    :goto_2
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static/range {p11 .. p11}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_3
    new-instance v1, Landroid/app/SyncNotedAppOp;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v13, v0, v15}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v1

    :cond_4
    const/4 v6, 0x1

    .line 12
    invoke-virtual {v12, v7, v13, v14, v6}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v5

    .line 13
    invoke-virtual {v12, v0}, Lcom/android/server/appop/AppOpsService;->getPersistentId(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v5, v5, v8, v1}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    move-result-object v4

    .line 15
    iget-object v3, v7, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 16
    iget-object v9, v9, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v18, v11

    move-object v11, v3

    move/from16 v3, p2

    move-object/from16 v32, v4

    move-object/from16 v4, p4

    move-object/from16 v19, v5

    move-object v5, v8

    move/from16 v6, p6

    move-object/from16 v33, v7

    move-object v7, v9

    move-object v9, v8

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v8

    .line 17
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .line 18
    invoke-static/range {p3 .. p3}, Lcom/android/server/appop/AppOpsService;->isOpAllowedForUid(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move/from16 v7, p11

    move-object v0, v9

    move-object/from16 v2, v32

    goto/16 :goto_4

    .line 19
    :cond_5
    iget-object v2, v12, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v3, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 20
    invoke-virtual {v12, v0}, Lcom/android/server/appop/AppOpsService;->getPersistentId(I)Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-interface {v2, v3, v1, v4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    move-result v2

    .line 22
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    if-eq v2, v3, :cond_a

    .line 23
    invoke-virtual {v11, v13, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v7

    .line 24
    invoke-static {v7, v10}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v2

    if-nez v2, :cond_8

    .line 25
    sget-boolean v2, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v2, :cond_7

    :cond_6
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " package "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flags: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-static/range {p11 .. p11}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_7
    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v1

    move/from16 v10, p11

    move-object/from16 v2, v32

    invoke-virtual {v2, v1, v10}, Lcom/android/server/appop/AttributedOp;->rejected(II)V

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v9

    move/from16 v6, p6

    move v0, v7

    move/from16 v7, p11

    move v8, v0

    move-object v14, v9

    move/from16 v9, v31

    move/from16 v10, p16

    move/from16 v11, p17

    .line 29
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    .line 30
    new-instance v1, Landroid/app/SyncNotedAppOp;

    invoke-direct {v1, v0, v13, v14, v15}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v1

    :cond_8
    move-object/from16 v2, v32

    move/from16 v7, p11

    :cond_9
    move-object v0, v9

    goto/16 :goto_4

    :cond_a
    move/from16 v7, p11

    move-object/from16 v2, v32

    if-eq v1, v13, :cond_b

    move-object/from16 v3, v33

    const/4 v4, 0x1

    .line 31
    invoke-virtual {v12, v3, v1, v14, v4}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v5

    goto :goto_3

    :cond_b
    const/4 v4, 0x1

    move-object/from16 v5, v19

    .line 32
    :goto_3
    iget-object v3, v5, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v6, v5, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v4, v12, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v0, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v5, v5, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 33
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 34
    invoke-interface {v4, v6, v5, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v0

    .line 35
    invoke-virtual {v3, v6, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v10, :cond_c

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    .line 36
    :cond_c
    sget-boolean v3, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v3, :cond_d

    sget-boolean v3, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v3, :cond_e

    :cond_d
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " package "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flags: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static/range {p11 .. p11}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_e
    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v1

    invoke-virtual {v2, v1, v7}, Lcom/android/server/appop/AttributedOp;->rejected(II)V

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v9

    move/from16 v6, p6

    move/from16 v7, p11

    move v8, v0

    move-object v14, v9

    move/from16 v9, v31

    move/from16 v10, p16

    move/from16 v11, p17

    .line 40
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    .line 41
    new-instance v1, Landroid/app/SyncNotedAppOp;

    invoke-direct {v1, v0, v13, v14, v15}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v1

    .line 42
    :goto_4
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v1, :cond_f

    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_10

    :cond_f
    const-string v1, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " restricted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " flags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static/range {p11 .. p11}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    if-eqz v8, :cond_11

    move/from16 v1, p10

    .line 45
    :try_start_2
    invoke-virtual {v12, v1}, Lcom/android/server/appop/AppOpsService;->getPersistentId(I)Ljava/lang/String;

    move-result-object v22

    .line 46
    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v23

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, p1

    move/from16 v18, p6

    move/from16 v19, p7

    move-object/from16 v20, p8

    move/from16 v24, p11

    move/from16 v25, p16

    move/from16 v26, p17

    .line 47
    invoke-virtual/range {v16 .. v28}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    move/from16 v9, v31

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_11
    move/from16 v1, p10

    .line 48
    invoke-virtual {v12, v1}, Lcom/android/server/appop/AppOpsService;->getPersistentId(I)Ljava/lang/String;

    move-result-object v22

    .line 49
    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v23

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v16, v2

    move-object/from16 v17, p1

    move/from16 v18, p6

    move/from16 v19, p7

    move-object/from16 v20, p8

    move/from16 v24, p11

    move/from16 v25, p16

    move/from16 v26, p17

    .line 50
    invoke-virtual/range {v16 .. v28}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x1

    :goto_5
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    move/from16 v6, p6

    move/from16 v7, p11

    move v11, v8

    move/from16 v10, p16

    move v14, v11

    move/from16 v11, p17

    .line 51
    :try_start_3
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    .line 52
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p13, :cond_12

    if-nez v14, :cond_12

    const/4 v1, 0x1

    move-object/from16 p5, p0

    move/from16 p6, p3

    move/from16 p7, p2

    move-object/from16 p8, p4

    move-object/from16 p9, v0

    move-object/from16 p10, p14

    move/from16 p11, p15

    move/from16 p12, v1

    .line 53
    invoke-virtual/range {p5 .. p12}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 54
    :cond_12
    new-instance v1, Landroid/app/SyncNotedAppOp;

    invoke-direct {v1, v14, v13, v0, v15}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 55
    :goto_6
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 56
    :goto_7
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    const/4 v2, 0x2

    .line 57
    const-string/jumbo v1, "startOperation"

    move/from16 v3, p3

    invoke-static {v3, v0, v1}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    .line 58
    new-instance v0, Landroid/app/SyncNotedAppOp;

    move-object/from16 v1, p5

    invoke-direct {v0, v2, v13, v1, v15}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 3
    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    move/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    move/from16 v7, p7

    .line 14
    .line 15
    move/from16 v8, p8

    .line 16
    .line 17
    move/from16 v9, p9

    .line 18
    .line 19
    move/from16 v10, p10

    .line 20
    .line 21
    move/from16 v11, p11

    .line 22
    .line 23
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public final startProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 12

    .line 1
    new-instance v3, Landroid/content/AttributionSource;

    .line 2
    .line 3
    move-object v0, p3

    .line 4
    invoke-direct {v3, p3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 5
    .line 6
    .line 7
    move-object v0, p0

    .line 8
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 9
    .line 10
    move-object v1, p1

    .line 11
    move v2, p2

    .line 12
    move/from16 v4, p4

    .line 13
    .line 14
    move/from16 v5, p5

    .line 15
    .line 16
    move-object/from16 v6, p6

    .line 17
    .line 18
    move/from16 v7, p7

    .line 19
    .line 20
    move/from16 v8, p8

    .line 21
    .line 22
    move/from16 v9, p9

    .line 23
    .line 24
    move/from16 v10, p10

    .line 25
    .line 26
    move/from16 v11, p11

    .line 27
    .line 28
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public final startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v4

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v5

    .line 9
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v1, "android.permission.WATCH_APPOPS"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move v3, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, -0x1

    .line 22
    move v3, v0

    .line 23
    :goto_0
    const/4 v6, 0x0

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Invalid op code in: "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/16 v1, 0x94

    .line 45
    .line 46
    invoke-static {p1, v6, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 47
    .line 48
    .line 49
    :cond_1
    if-nez p2, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/util/SparseArray;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    new-instance v0, Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_3
    move-object v7, v0

    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto :goto_3

    .line 85
    :goto_1
    new-instance v8, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    .line 86
    .line 87
    move-object v0, v8

    .line 88
    move-object v1, p0

    .line 89
    move-object v2, p2

    .line 90
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    .line 91
    .line 92
    .line 93
    array-length p2, p1

    .line 94
    :goto_2
    if-ge v6, p2, :cond_4

    .line 95
    .line 96
    aget v0, p1, v6

    .line 97
    .line 98
    invoke-virtual {v7, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v6, v6, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    monitor-exit p0

    .line 105
    return-void

    .line 106
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p1
.end method

.method public final startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-instance v1, Landroid/util/Pair;

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 22
    .line 23
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/os/RemoteCallbackList;

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    new-instance p1, Lcom/android/server/appop/AppOpsService$8;

    .line 36
    .line 37
    invoke-direct {p1, p0, v1}, Lcom/android/server/appop/AppOpsService$8;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/util/Pair;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 49
    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p1
.end method

.method public final startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v6

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "Invalid op code: "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/16 v1, 0x94

    .line 24
    .line 25
    const/4 v7, -0x1

    .line 26
    invoke-static {p1, v7, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 27
    .line 28
    .line 29
    if-nez p4, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-virtual {v2, v1, v0, p2, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    :goto_0
    move v8, v3

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v3, 0x0

    .line 60
    goto :goto_0

    .line 61
    :goto_1
    monitor-enter p0

    .line 62
    if-eq p1, v7, :cond_2

    .line 63
    .line 64
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    move v9, v0

    .line 69
    goto :goto_2

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_4

    .line 72
    :cond_2
    move v9, p1

    .line 73
    :goto_2
    and-int/lit8 v0, p3, 0x2

    .line 74
    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    if-ne p1, v7, :cond_3

    .line 78
    .line 79
    const/4 p1, -0x2

    .line 80
    :cond_3
    move v4, p1

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    move v4, v9

    .line 83
    :goto_3
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-interface {p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 94
    .line 95
    if-nez p1, :cond_5

    .line 96
    .line 97
    new-instance p1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 98
    .line 99
    move-object v0, p1

    .line 100
    move-object v1, p0

    .line 101
    move-object v2, p4

    .line 102
    move v3, p3

    .line 103
    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$ModeCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIII)V

    .line 104
    .line 105
    .line 106
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 107
    .line 108
    invoke-interface {p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    .line 109
    .line 110
    .line 111
    move-result-object p4

    .line 112
    invoke-virtual {p3, p4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    :cond_5
    if-eq v9, v7, :cond_7

    .line 116
    .line 117
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 118
    .line 119
    invoke-virtual {p3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    check-cast p3, Landroid/util/ArraySet;

    .line 124
    .line 125
    if-nez p3, :cond_6

    .line 126
    .line 127
    new-instance p3, Landroid/util/ArraySet;

    .line 128
    .line 129
    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 130
    .line 131
    .line 132
    iget-object p4, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 133
    .line 134
    invoke-virtual {p4, v9, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_7
    if-eqz v8, :cond_9

    .line 141
    .line 142
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 143
    .line 144
    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    check-cast p3, Landroid/util/ArraySet;

    .line 149
    .line 150
    if-nez p3, :cond_8

    .line 151
    .line 152
    new-instance p3, Landroid/util/ArraySet;

    .line 153
    .line 154
    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 155
    .line 156
    .line 157
    iget-object p4, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 158
    .line 159
    invoke-virtual {p4, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    :cond_8
    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    :cond_9
    monitor-exit p0

    .line 166
    return-void

    .line 167
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    throw p1
.end method

.method public final startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v4

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v5

    .line 9
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v1, "android.permission.WATCH_APPOPS"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move v3, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, -0x1

    .line 22
    move v3, v0

    .line 23
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    xor-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    const-string v1, "Ops cannot be null or empty"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Invalid op code in: "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/16 v1, 0x94

    .line 54
    .line 55
    invoke-static {p1, v6, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 56
    .line 57
    .line 58
    const-string v0, "Callback cannot be null"

    .line 59
    .line 60
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/util/SparseArray;

    .line 75
    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    new-instance v0, Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_1
    move-object v7, v0

    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto :goto_3

    .line 96
    :goto_1
    new-instance v8, Lcom/android/server/appop/AppOpsService$NotedCallback;

    .line 97
    .line 98
    move-object v0, v8

    .line 99
    move-object v1, p0

    .line 100
    move-object v2, p2

    .line 101
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$NotedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsNotedCallback;III)V

    .line 102
    .line 103
    .line 104
    array-length p2, p1

    .line 105
    :goto_2
    if-ge v6, p2, :cond_2

    .line 106
    .line 107
    aget v0, p1, v6

    .line 108
    .line 109
    invoke-virtual {v7, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v6, v6, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    monitor-exit p0

    .line 116
    return-void

    .line 117
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    throw p1
.end method

.method public final startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v4

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v5

    .line 9
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v1, "android.permission.WATCH_APPOPS"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move v3, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, -0x1

    .line 22
    move v3, v0

    .line 23
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    xor-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    const-string v1, "Ops cannot be null or empty"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Invalid op code in: "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/16 v1, 0x94

    .line 54
    .line 55
    invoke-static {p1, v6, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 56
    .line 57
    .line 58
    const-string v0, "Callback cannot be null"

    .line 59
    .line 60
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/util/SparseArray;

    .line 75
    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    new-instance v0, Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_1
    move-object v7, v0

    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto :goto_3

    .line 96
    :goto_1
    new-instance v8, Lcom/android/server/appop/AppOpsService$StartedCallback;

    .line 97
    .line 98
    move-object v0, v8

    .line 99
    move-object v1, p0

    .line 100
    move-object v2, p2

    .line 101
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$StartedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsStartedCallback;III)V

    .line 102
    .line 103
    .line 104
    array-length p2, p1

    .line 105
    :goto_2
    if-ge v6, p2, :cond_2

    .line 106
    .line 107
    aget v0, p1, v6

    .line 108
    .line 109
    invoke-virtual {v7, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v6, v6, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    monitor-exit p0

    .line 116
    return-void

    .line 117
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    throw p1
.end method

.method public final stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/util/SparseArray;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    move v2, v1

    .line 29
    :goto_0
    if-ge v2, v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    .line 36
    .line 37
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 38
    .line 39
    invoke-interface {v4}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1
.end method

.method public final stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-instance v1, Landroid/util/Pair;

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 22
    .line 23
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/os/RemoteCallbackList;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p1
.end method

.method public final stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 16
    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    :goto_0
    if-ltz v0, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/util/ArraySet;

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-gtz v1, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_3

    .line 64
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    :goto_2
    if-ltz v0, :cond_4

    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/util/ArraySet;

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-gtz v1, :cond_3

    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    monitor-exit p0

    .line 103
    return-void

    .line 104
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    throw p1
.end method

.method public final stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    .locals 5

    .line 1
    const-string v0, "Callback cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/util/SparseArray;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    move v2, v1

    .line 31
    :goto_0
    if-ge v2, v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/server/appop/AppOpsService$NotedCallback;

    .line 38
    .line 39
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 40
    .line 41
    invoke-interface {v4}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p1
.end method

.method public final stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V
    .locals 5

    .line 1
    const-string v0, "Callback cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/util/SparseArray;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    move v2, v1

    .line 31
    :goto_0
    if-ge v2, v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/server/appop/AppOpsService$StartedCallback;

    .line 38
    .line 39
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallback:Lcom/android/internal/app/IAppOpsStartedCallback;

    .line 40
    .line 41
    invoke-interface {v4}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p1
.end method

.method public final switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/high16 v2, 0x3f000000    # 0.5f

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    cmpg-float v0, v0, v2

    .line 17
    .line 18
    if-gez v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 22
    .line 23
    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    cmpg-float v0, v0, v2

    .line 49
    .line 50
    if-gez v0, :cond_1

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 54
    .line 55
    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public final systemReady()V
    .locals 12

    .line 1
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->systemReady()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->initializeUidStates()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, v0, Lcom/android/server/appop/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 28
    .line 29
    const-string v2, "app_ops_constants"

    .line 30
    .line 31
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$Constants;->updateConstants()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    .line 51
    .line 52
    .line 53
    new-instance v5, Landroid/content/IntentFilter;

    .line 54
    .line 55
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 59
    .line 60
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 64
    .line 65
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 69
    .line 70
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string/jumbo v0, "package"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Lcom/android/server/appop/AppOpsService$3;

    .line 82
    .line 83
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v7, 0x0

    .line 87
    move-object v4, v8

    .line 88
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->prepareInternalCallbacks()V

    .line 92
    .line 93
    .line 94
    new-instance v9, Landroid/content/IntentFilter;

    .line 95
    .line 96
    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 100
    .line 101
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    .line 105
    .line 106
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    new-instance v7, Lcom/android/server/appop/AppOpsService$3;

    .line 112
    .line 113
    const/4 v0, 0x1

    .line 114
    invoke-direct {v7, p0, v0}, Lcom/android/server/appop/AppOpsService$3;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 115
    .line 116
    .line 117
    const/4 v10, 0x0

    .line 118
    const/4 v11, 0x0

    .line 119
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 123
    .line 124
    new-instance v1, Lcom/android/server/appop/AppOpsService$1;

    .line 125
    .line 126
    const/4 v2, 0x1

    .line 127
    invoke-direct {v1, p0, v2}, Lcom/android/server/appop/AppOpsService$1;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 128
    .line 129
    .line 130
    const-wide/32 v2, 0x493e0

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    new-instance v1, Lcom/android/server/appop/AppOpsService$6;

    .line 141
    .line 142
    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$6;-><init>(Lcom/android/server/appop/AppOpsService;)V

    .line 143
    .line 144
    .line 145
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 146
    .line 147
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 148
    .line 149
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Lcom/android/server/appop/AppOpsService$6;

    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 152
    .line 153
    invoke-static {v0}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 158
    .line 159
    return-void
.end method

.method public final trimUidStatesLocked(Landroid/util/SparseBooleanArray;Ljava/util/Map;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    :goto_0
    if-ltz v0, :cond_5

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0x2710

    .line 30
    .line 31
    if-lt v2, v3, :cond_4

    .line 32
    .line 33
    const/16 v3, 0x4e1f

    .line 34
    .line 35
    if-gt v2, v3, :cond_4

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/server/appop/AppOpsService$UidState;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    add-int/lit8 v3, v3, -0x1

    .line 52
    .line 53
    :goto_1
    if-ltz v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_0

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_4

    .line 73
    :cond_0
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 78
    .line 79
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    invoke-virtual {p0, v4, v1}, Lcom/android/server/appop/AppOpsService;->refreshAttributionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    monitor-exit p0

    .line 112
    return-void

    .line 113
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p1
.end method

.method public final uidRemoved(I)V
    .locals 5

    .line 1
    const-string v0, "Tried to remove existing UID. uid: "

    .line 2
    .line 3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->dontRemoveExistingUidStates()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const-string p0, "AppOps"

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " name: "

    .line 34
    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_1
    :goto_1
    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-ltz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$UidState;->clear()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catchall_1
    move-exception p1

    .line 92
    goto :goto_3

    .line 93
    :cond_2
    :goto_2
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    throw p1
.end method

.method public final updateStartedOpModeForUidForDefaultDeviceLocked(IIZ)V
    .locals 43

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v9, p2

    .line 4
    .line 5
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v10, v0

    .line 12
    check-cast v10, Lcom/android/server/appop/AppOpsService$UidState;

    .line 13
    .line 14
    if-nez v10, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, v10, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 20
    .line 21
    .line 22
    move-result v11

    .line 23
    const/4 v12, 0x0

    .line 24
    move v13, v12

    .line 25
    :goto_0
    if-ge v13, v11, :cond_10

    .line 26
    .line 27
    iget-object v0, v10, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    move-object v14, v0

    .line 34
    check-cast v14, Lcom/android/server/appop/AppOpsService$Ops;

    .line 35
    .line 36
    move/from16 v7, p1

    .line 37
    .line 38
    if-eqz v14, :cond_1

    .line 39
    .line 40
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_1
    if-nez v0, :cond_3

    .line 49
    .line 50
    :cond_2
    :goto_2
    move-object/from16 v16, v10

    .line 51
    .line 52
    move/from16 v19, v11

    .line 53
    .line 54
    goto/16 :goto_b

    .line 55
    .line 56
    :cond_3
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 57
    .line 58
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 59
    .line 60
    iget v3, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 61
    .line 62
    iget v4, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 63
    .line 64
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-interface {v1, v3, v4, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    const/4 v2, 0x4

    .line 75
    if-eq v1, v2, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 79
    .line 80
    const-string/jumbo v1, "default:0"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v6, v0

    .line 88
    check-cast v6, Landroid/util/ArrayMap;

    .line 89
    .line 90
    move v5, v12

    .line 91
    :goto_3
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-ge v5, v0, :cond_2

    .line 96
    .line 97
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    move-object v4, v0

    .line 102
    check-cast v4, Lcom/android/server/appop/AttributedOp;

    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    if-eqz p3, :cond_9

    .line 106
    .line 107
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_9

    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_5

    .line 118
    .line 119
    move/from16 v25, v5

    .line 120
    .line 121
    move-object/from16 v26, v6

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_5
    iget-object v0, v4, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 125
    .line 126
    if-nez v0, :cond_6

    .line 127
    .line 128
    new-instance v0, Landroid/util/ArrayMap;

    .line 129
    .line 130
    invoke-direct {v0, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 131
    .line 132
    .line 133
    iput-object v0, v4, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 134
    .line 135
    :cond_6
    move v0, v12

    .line 136
    :goto_4
    iget-object v1, v4, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 137
    .line 138
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-ge v0, v1, :cond_7

    .line 143
    .line 144
    iget-object v1, v4, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 151
    .line 152
    iget-object v2, v4, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 153
    .line 154
    iget-object v15, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 155
    .line 156
    invoke-virtual {v2, v15, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    iget-object v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 160
    .line 161
    invoke-virtual {v4, v2, v12, v3}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 162
    .line 163
    .line 164
    iget-object v2, v4, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 165
    .line 166
    iget v15, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 167
    .line 168
    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 169
    .line 170
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 171
    .line 172
    iget v12, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    .line 173
    .line 174
    move/from16 v25, v5

    .line 175
    .line 176
    iget v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    .line 177
    .line 178
    iget v1, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    .line 179
    .line 180
    move-object/from16 v26, v6

    .line 181
    .line 182
    iget-object v6, v4, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 183
    .line 184
    iget-object v7, v4, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 185
    .line 186
    const/16 v22, 0x0

    .line 187
    .line 188
    move-object/from16 v16, v6

    .line 189
    .line 190
    move/from16 v17, v15

    .line 191
    .line 192
    move/from16 v18, v3

    .line 193
    .line 194
    move-object/from16 v19, v2

    .line 195
    .line 196
    move-object/from16 v20, v7

    .line 197
    .line 198
    move/from16 v21, v12

    .line 199
    .line 200
    move/from16 v23, v5

    .line 201
    .line 202
    move/from16 v24, v1

    .line 203
    .line 204
    invoke-virtual/range {v16 .. v24}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    .line 205
    .line 206
    .line 207
    add-int/lit8 v0, v0, 0x1

    .line 208
    .line 209
    move/from16 v7, p1

    .line 210
    .line 211
    move/from16 v5, v25

    .line 212
    .line 213
    move-object/from16 v6, v26

    .line 214
    .line 215
    const/4 v3, 0x1

    .line 216
    const/4 v12, 0x0

    .line 217
    goto :goto_4

    .line 218
    :cond_7
    move/from16 v25, v5

    .line 219
    .line 220
    move-object/from16 v26, v6

    .line 221
    .line 222
    const/4 v0, 0x0

    .line 223
    iput-object v0, v4, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 224
    .line 225
    :cond_8
    :goto_5
    move-object/from16 v16, v10

    .line 226
    .line 227
    move/from16 v19, v11

    .line 228
    .line 229
    move-object/from16 v20, v14

    .line 230
    .line 231
    move/from16 v17, v25

    .line 232
    .line 233
    move-object/from16 v18, v26

    .line 234
    .line 235
    :goto_6
    const/4 v4, 0x0

    .line 236
    goto/16 :goto_a

    .line 237
    .line 238
    :cond_9
    move/from16 v25, v5

    .line 239
    .line 240
    move-object/from16 v26, v6

    .line 241
    .line 242
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_8

    .line 247
    .line 248
    iget-object v0, v14, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 249
    .line 250
    iget-object v1, v4, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v8, v9, v0, v1}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 257
    .line 258
    iget-object v3, v14, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 259
    .line 260
    iget-object v5, v4, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 261
    .line 262
    const/4 v7, 0x0

    .line 263
    const/4 v12, 0x0

    .line 264
    move-object/from16 v0, p0

    .line 265
    .line 266
    move/from16 v1, p2

    .line 267
    .line 268
    move/from16 v2, p1

    .line 269
    .line 270
    const/4 v15, 0x1

    .line 271
    move-object/from16 v16, v4

    .line 272
    .line 273
    move-object v4, v5

    .line 274
    move/from16 v17, v25

    .line 275
    .line 276
    move v5, v7

    .line 277
    move-object/from16 v18, v26

    .line 278
    .line 279
    move v7, v12

    .line 280
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-nez v0, :cond_f

    .line 285
    .line 286
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-nez v0, :cond_a

    .line 291
    .line 292
    goto/16 :goto_9

    .line 293
    .line 294
    :cond_a
    move-object/from16 v0, v16

    .line 295
    .line 296
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 297
    .line 298
    if-nez v1, :cond_b

    .line 299
    .line 300
    new-instance v1, Landroid/util/ArrayMap;

    .line 301
    .line 302
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 303
    .line 304
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 309
    .line 310
    .line 311
    iput-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 312
    .line 313
    :cond_b
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 314
    .line 315
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-nez v1, :cond_c

    .line 320
    .line 321
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 322
    .line 323
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_c

    .line 328
    .line 329
    move v3, v15

    .line 330
    goto :goto_7

    .line 331
    :cond_c
    const/4 v3, 0x0

    .line 332
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 333
    .line 334
    .line 335
    move-result-wide v1

    .line 336
    const/4 v4, 0x0

    .line 337
    :goto_8
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 338
    .line 339
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    if-ge v4, v5, :cond_e

    .line 344
    .line 345
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 346
    .line 347
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    check-cast v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 352
    .line 353
    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 354
    .line 355
    iget-object v7, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 356
    .line 357
    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 361
    .line 362
    .line 363
    move-result-wide v6

    .line 364
    iput-wide v6, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 365
    .line 366
    iput-wide v1, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    .line 367
    .line 368
    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 369
    .line 370
    iget-object v6, v6, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 371
    .line 372
    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 373
    .line 374
    iget v12, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 375
    .line 376
    iget v15, v7, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 377
    .line 378
    iget-object v7, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 379
    .line 380
    iget-object v8, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 381
    .line 382
    iget v9, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    .line 383
    .line 384
    move-object/from16 v16, v10

    .line 385
    .line 386
    iget v10, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    .line 387
    .line 388
    move/from16 v19, v11

    .line 389
    .line 390
    iget v11, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    .line 391
    .line 392
    move-object/from16 v20, v14

    .line 393
    .line 394
    iget v14, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    .line 395
    .line 396
    move-object/from16 v25, v6

    .line 397
    .line 398
    move/from16 v26, v12

    .line 399
    .line 400
    move/from16 v27, v15

    .line 401
    .line 402
    move-object/from16 v28, v7

    .line 403
    .line 404
    move-object/from16 v29, v8

    .line 405
    .line 406
    move/from16 v30, v9

    .line 407
    .line 408
    move/from16 v31, v10

    .line 409
    .line 410
    move-wide/from16 v32, v1

    .line 411
    .line 412
    move/from16 v34, v11

    .line 413
    .line 414
    move/from16 v35, v14

    .line 415
    .line 416
    invoke-virtual/range {v25 .. v35}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    .line 417
    .line 418
    .line 419
    if-eqz v3, :cond_d

    .line 420
    .line 421
    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 422
    .line 423
    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 424
    .line 425
    iget v8, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 426
    .line 427
    iget v9, v7, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 428
    .line 429
    iget-object v7, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 430
    .line 431
    iget-object v10, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 432
    .line 433
    iget v11, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    .line 434
    .line 435
    iget v12, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    .line 436
    .line 437
    iget v14, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    .line 438
    .line 439
    const/16 v31, 0x1

    .line 440
    .line 441
    move-object/from16 v25, v6

    .line 442
    .line 443
    move/from16 v26, v8

    .line 444
    .line 445
    move/from16 v27, v9

    .line 446
    .line 447
    move-object/from16 v28, v7

    .line 448
    .line 449
    move-object/from16 v29, v10

    .line 450
    .line 451
    move/from16 v30, v11

    .line 452
    .line 453
    move/from16 v32, v12

    .line 454
    .line 455
    move/from16 v33, v14

    .line 456
    .line 457
    invoke-virtual/range {v25 .. v33}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    .line 458
    .line 459
    .line 460
    :cond_d
    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 461
    .line 462
    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 463
    .line 464
    iget v8, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 465
    .line 466
    iget v9, v7, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 467
    .line 468
    iget-object v7, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 469
    .line 470
    iget-object v10, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 471
    .line 472
    iget v11, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    .line 473
    .line 474
    iget v12, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    .line 475
    .line 476
    iget v14, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    .line 477
    .line 478
    iget v5, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    .line 479
    .line 480
    const/16 v39, 0x0

    .line 481
    .line 482
    const/16 v40, 0x2

    .line 483
    .line 484
    move-object/from16 v32, v6

    .line 485
    .line 486
    move/from16 v33, v8

    .line 487
    .line 488
    move/from16 v34, v9

    .line 489
    .line 490
    move-object/from16 v35, v7

    .line 491
    .line 492
    move-object/from16 v36, v10

    .line 493
    .line 494
    move/from16 v37, v11

    .line 495
    .line 496
    move/from16 v38, v12

    .line 497
    .line 498
    move/from16 v41, v14

    .line 499
    .line 500
    move/from16 v42, v5

    .line 501
    .line 502
    invoke-virtual/range {v32 .. v42}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    .line 503
    .line 504
    .line 505
    add-int/lit8 v4, v4, 0x1

    .line 506
    .line 507
    move-object/from16 v8, p0

    .line 508
    .line 509
    move/from16 v9, p2

    .line 510
    .line 511
    move-object/from16 v10, v16

    .line 512
    .line 513
    move/from16 v11, v19

    .line 514
    .line 515
    move-object/from16 v14, v20

    .line 516
    .line 517
    goto/16 :goto_8

    .line 518
    .line 519
    :cond_e
    move-object/from16 v16, v10

    .line 520
    .line 521
    move/from16 v19, v11

    .line 522
    .line 523
    move-object/from16 v20, v14

    .line 524
    .line 525
    const/4 v4, 0x0

    .line 526
    iput-object v4, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 527
    .line 528
    goto :goto_a

    .line 529
    :cond_f
    :goto_9
    move-object/from16 v16, v10

    .line 530
    .line 531
    move/from16 v19, v11

    .line 532
    .line 533
    move-object/from16 v20, v14

    .line 534
    .line 535
    goto/16 :goto_6

    .line 536
    .line 537
    :goto_a
    add-int/lit8 v5, v17, 0x1

    .line 538
    .line 539
    move-object/from16 v8, p0

    .line 540
    .line 541
    move/from16 v7, p1

    .line 542
    .line 543
    move/from16 v9, p2

    .line 544
    .line 545
    move-object/from16 v10, v16

    .line 546
    .line 547
    move-object/from16 v6, v18

    .line 548
    .line 549
    move/from16 v11, v19

    .line 550
    .line 551
    move-object/from16 v14, v20

    .line 552
    .line 553
    const/4 v12, 0x0

    .line 554
    goto/16 :goto_3

    .line 555
    .line 556
    :goto_b
    add-int/lit8 v13, v13, 0x1

    .line 557
    .line 558
    move-object/from16 v8, p0

    .line 559
    .line 560
    move/from16 v9, p2

    .line 561
    .line 562
    move-object/from16 v10, v16

    .line 563
    .line 564
    move/from16 v11, v19

    .line 565
    .line 566
    const/4 v12, 0x0

    .line 567
    goto/16 :goto_0

    .line 568
    .line 569
    :cond_10
    return-void
.end method

.method public final updateStartedOpModeForUserForDefaultDevice(IIZ)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    if-eq p2, v3, :cond_0

    .line 19
    .line 20
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eq v3, p2, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidForDefaultDeviceLocked(IIZ)V

    .line 30
    .line 31
    .line 32
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public final verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object p0

    return-object p0
.end method

.method public final verifyAndGetBypass(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 2
    const-string/jumbo v5, "package "

    const-string v6, "attributionTag "

    const-string v7, "attributionTag "

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez p2, :cond_0

    .line 3
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    invoke-direct {v0, v9, v8}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v0

    .line 4
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v10

    .line 7
    invoke-static {v2, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-wide/16 v11, 0x0

    .line 8
    invoke-static {v11, v12}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 9
    invoke-virtual {v0, v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    move/from16 v0, p2

    .line 11
    :goto_0
    monitor-enter p0

    .line 12
    :try_start_1
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AppOpsService$UidState;

    if-eqz v10, :cond_3

    .line 13
    iget-object v11, v10, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 14
    iget-object v10, v10, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AppOpsService$Ops;

    if-eqz v10, :cond_3

    if-eqz v3, :cond_2

    .line 15
    iget-object v11, v10, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v11, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_2
    :goto_1
    iget-object v11, v10, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    if-eqz v11, :cond_3

    .line 16
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    iget-object v2, v10, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    .line 17
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v0, v11, v2}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    monitor-exit p0

    return-object v0

    .line 18
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 20
    const-string/jumbo v11, "com.android.shell"

    invoke-static {v2, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x7d0

    goto :goto_2

    .line 21
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    move-result v11

    :goto_2
    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    .line 22
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-eq v11, v3, :cond_7

    if-nez p6, :cond_5

    .line 23
    const-string v1, "AppOps"

    const-string v3, "Bad call made by uid "

    const-string v4, ". Package \""

    const-string v5, "\" does not belong to uid "

    .line 24
    invoke-static {v10, v3, v4, v2, v5}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 25
    const-string v4, "."

    .line 26
    invoke-static {v3, v0, v4, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_5
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, " but it is really "

    .line 28
    invoke-static {v11, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 29
    :cond_6
    const-string v1, " but it is not"

    .line 30
    :goto_3
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Specified package \""

    const-string v5, "\" under uid "

    .line 31
    invoke-static {v4, v2, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 32
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    if-eqz v4, :cond_8

    .line 33
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_8

    .line 34
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 35
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 36
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 37
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 38
    invoke-static {v0, v4}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 39
    :cond_8
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    sget-object v1, Landroid/app/AppOpsManager$RestrictionBypass;->UNRESTRICTED:Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {v0, v1, v8}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v0

    .line 40
    :cond_9
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 42
    :try_start_2
    const-class v16, Landroid/content/pm/PackageManagerInternal;

    invoke-static/range {v16 .. v16}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    .line 43
    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v16

    if-nez v16, :cond_a

    goto :goto_4

    .line 44
    :cond_a
    move-object/from16 v9, v16

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 45
    iget-object v9, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    :goto_4
    const/16 v17, 0x0

    if-eqz v9, :cond_d

    .line 46
    invoke-static {v9, v3}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v11

    .line 47
    move-object/from16 v12, v16

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 48
    iget v12, v12, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 49
    invoke-static {v13, v12}, Landroid/os/UserHandle;->getUid(II)I

    move-result v12

    move/from16 p5, v11

    .line 50
    new-instance v11, Landroid/app/AppOpsManager$RestrictionBypass;

    move/from16 v18, v12

    move-object/from16 v12, v16

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 51
    iget v12, v12, Lcom/android/server/pm/PackageSetting;->mAppId:I

    move/from16 v19, v0

    const/16 v0, 0x3e8

    if-ne v12, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_5

    :cond_b
    move/from16 v0, v17

    .line 52
    :goto_5
    move-object/from16 v12, v16

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v20, v14

    :try_start_3
    iget-object v14, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 53
    move-object/from16 v15, v16

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 54
    iget v15, v15, Lcom/android/server/pm/PackageSetting;->mAppId:I

    move/from16 v16, v10

    .line 55
    const-string v10, "android.permission.EXEMPT_FROM_AUDIO_RECORD_RESTRICTIONS"

    move/from16 v22, v13

    const/4 v13, -0x1

    invoke-virtual {v14, v10, v13, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v10

    if-nez v10, :cond_c

    const/4 v10, 0x1

    goto :goto_6

    :cond_c
    move/from16 v10, v17

    :goto_6
    invoke-direct {v11, v0, v12, v10}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    move/from16 v17, p5

    move/from16 v0, v18

    goto :goto_7

    :catchall_1
    move-exception v0

    move-wide/from16 v20, v14

    goto/16 :goto_f

    :cond_d
    move/from16 v19, v0

    move/from16 v16, v10

    move/from16 v22, v13

    move-wide/from16 v20, v14

    move v0, v11

    const/4 v11, 0x0

    :goto_7
    if-nez v17, :cond_13

    if-eqz v4, :cond_e

    .line 56
    invoke-virtual {v8, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    goto :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_f

    :cond_e
    const/4 v8, 0x0

    .line 57
    :goto_8
    invoke-static {v8, v3}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v8

    if-eqz v9, :cond_f

    if-eqz v8, :cond_f

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " declared in manifest of the proxy package "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", this is not advised"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_f
    if-eqz v9, :cond_10

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not declared in manifest of "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 60
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found, can\'t check for attributionTag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 61
    :goto_9
    :try_start_4
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v5, 0x901b1a2

    move/from16 v7, v22

    invoke-interface {v4, v5, v6, v2, v7}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v4, v16

    .line 62
    :try_start_5
    invoke-interface {v1, v5, v6, v4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_b

    :catch_1
    :goto_a
    move/from16 v17, v8

    goto :goto_c

    :catch_2
    move/from16 v4, v16

    goto :goto_a

    :cond_11
    move/from16 v4, v16

    :goto_b
    const/4 v8, 0x1

    .line 63
    :cond_12
    const-string v1, "AppOps"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_d

    :goto_c
    move/from16 v8, v17

    goto :goto_d

    :cond_13
    move/from16 v4, v16

    goto :goto_c

    .line 64
    :goto_d
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    if-nez p6, :cond_14

    .line 65
    const-string v3, "AppOps"

    const-string v5, "Bad call made by uid "

    const-string v6, ". Package \""

    const-string v7, "\" does not belong to uid "

    .line 66
    invoke-static {v4, v5, v6, v2, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 67
    const-string v5, "."

    .line 68
    invoke-static {v4, v1, v5, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_14
    sget-boolean v3, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v3, :cond_15

    const-string v3, " but it is really "

    .line 70
    invoke-static {v0, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 71
    :cond_15
    const-string v0, " but it is not"

    .line 72
    :goto_e
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Specified package \""

    const-string v5, "\" under uid "

    .line 73
    invoke-static {v1, v4, v2, v5, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :cond_16
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    invoke-direct {v0, v11, v8}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v0

    .line 76
    :goto_f
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    throw v0

    .line 78
    :goto_10
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public final verifyIncomingOp(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    const/16 v0, 0x95

    .line 4
    .line 5
    if-ge p1, v0, :cond_2

    .line 6
    .line 7
    invoke-static {p1}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v2, "android.permission.MANAGE_APPOPS"

    .line 24
    .line 25
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const-string v2, "android.permission.GET_APP_OPS_STATS"

    .line 42
    .line 43
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const-string v1, "android.permission.MANAGE_APP_OPS_MODES"

    .line 60
    .line 61
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string/jumbo v0, "verifyIncomingOp: uid "

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, " does not have any of {MANAGE_APPOPS, GET_APP_OPS_STATS, MANAGE_APP_OPS_MODES}"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string v0, "Bad operation #"

    .line 102
    .line 103
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0
.end method

.method public final verifyIncomingProxyUid(Landroid/content/AttributionSource;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x0

    .line 43
    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    .line 44
    .line 45
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final verifyIncomingUid(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    .line 31
    .line 32
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move v6, p6

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string p1, "AppOps"

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public writeRecentAccesses()V
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "Failed to write state: "

    .line 4
    .line 5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwareAppOpNewSchemaEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessPersistence:Lcom/android/server/appop/AppOpsRecentAccessPersistence;

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->writeRecentAccesses(Landroid/util/SparseArray;)V

    .line 17
    .line 18
    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteRegistry;->writeAndClearAccessHistory()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v0

    .line 31
    :cond_0
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 32
    .line 33
    monitor-enter v3

    .line 34
    :try_start_2
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 37
    .line 38
    .line 39
    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    :try_start_3
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->flushAsync()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception v0

    .line 47
    move-object/from16 v22, v3

    .line 48
    .line 49
    goto/16 :goto_d

    .line 50
    .line 51
    :catch_0
    move-exception v0

    .line 52
    :try_start_4
    const-string v4, "AppOps"

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :goto_0
    const-string/jumbo v0, "default:0"

    .line 62
    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-virtual {v1, v4, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOpsForDevice([ILjava/lang/String;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 69
    :try_start_5
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-interface {v5, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 76
    .line 77
    .line 78
    const-string v6, "app-ops"

    .line 79
    .line 80
    invoke-interface {v5, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    .line 82
    .line 83
    const-string/jumbo v6, "v"

    .line 84
    .line 85
    .line 86
    const/4 v7, 0x1

    .line 87
    invoke-interface {v5, v4, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 88
    .line 89
    .line 90
    if-eqz v0, :cond_11

    .line 91
    .line 92
    move-object v8, v4

    .line 93
    const/4 v7, 0x0

    .line 94
    :goto_1
    :try_start_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-ge v7, v9, :cond_10

    .line 99
    .line 100
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 105
    .line 106
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-static {v10, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 114
    if-nez v10, :cond_2

    .line 115
    .line 116
    if-eqz v8, :cond_1

    .line 117
    .line 118
    :try_start_7
    const-string/jumbo v8, "pkg"

    .line 119
    .line 120
    .line 121
    invoke-interface {v5, v4, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catch_1
    move-exception v0

    .line 126
    move-object/from16 v22, v3

    .line 127
    .line 128
    goto/16 :goto_b

    .line 129
    .line 130
    :cond_1
    :goto_2
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    if-eqz v8, :cond_2

    .line 135
    .line 136
    const-string/jumbo v10, "pkg"

    .line 137
    .line 138
    .line 139
    invoke-interface {v5, v4, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    .line 141
    .line 142
    const-string/jumbo v10, "n"

    .line 143
    .line 144
    .line 145
    invoke-interface {v5, v4, v10, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 146
    .line 147
    .line 148
    :cond_2
    :try_start_8
    const-string/jumbo v10, "uid"

    .line 149
    .line 150
    .line 151
    invoke-interface {v5, v4, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    .line 153
    .line 154
    const-string/jumbo v10, "n"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    invoke-interface {v5, v4, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    const/4 v10, 0x0

    .line 169
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    if-ge v10, v11, :cond_f

    .line 174
    .line 175
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    check-cast v11, Landroid/app/AppOpsManager$OpEntry;

    .line 180
    .line 181
    const-string/jumbo v12, "op"

    .line 182
    .line 183
    .line 184
    invoke-interface {v5, v4, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    .line 186
    .line 187
    const-string/jumbo v12, "n"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    .line 191
    .line 192
    .line 193
    move-result v13

    .line 194
    invoke-interface {v5, v4, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    .line 198
    .line 199
    .line 200
    move-result v12

    .line 201
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    .line 202
    .line 203
    .line 204
    move-result v13

    .line 205
    invoke-static {v13}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 206
    .line 207
    .line 208
    move-result v13
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 209
    if-eq v12, v13, :cond_3

    .line 210
    .line 211
    :try_start_9
    const-string/jumbo v12, "m"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    invoke-interface {v5, v4, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 219
    .line 220
    .line 221
    :cond_3
    :try_start_a
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    .line 222
    .line 223
    .line 224
    move-result-object v12

    .line 225
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v13

    .line 237
    if-eqz v13, :cond_e

    .line 238
    .line 239
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v13

    .line 243
    check-cast v13, Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    .line 246
    .line 247
    .line 248
    move-result-object v14

    .line 249
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v14

    .line 253
    check-cast v14, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 254
    .line 255
    invoke-virtual {v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    .line 256
    .line 257
    .line 258
    move-result-object v15

    .line 259
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    const/4 v4, 0x0

    .line 264
    :goto_5
    if-ge v4, v6, :cond_d

    .line 265
    .line 266
    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v16

    .line 270
    check-cast v16, Ljava/lang/Long;

    .line 271
    .line 272
    move-object/from16 v17, v8

    .line 273
    .line 274
    move-object/from16 v18, v9

    .line 275
    .line 276
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    .line 277
    .line 278
    .line 279
    move-result-wide v8

    .line 280
    move-object/from16 v16, v0

    .line 281
    .line 282
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    move/from16 v19, v6

    .line 287
    .line 288
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    move-object/from16 v20, v11

    .line 293
    .line 294
    move-object/from16 v21, v12

    .line 295
    .line 296
    invoke-virtual {v14, v0, v0, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    .line 297
    .line 298
    .line 299
    move-result-wide v11
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 300
    move-object/from16 v23, v2

    .line 301
    .line 302
    move-object/from16 v22, v3

    .line 303
    .line 304
    :try_start_b
    invoke-virtual {v14, v0, v0, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    .line 305
    .line 306
    .line 307
    move-result-wide v2

    .line 308
    move/from16 v24, v7

    .line 309
    .line 310
    move-wide/from16 v25, v8

    .line 311
    .line 312
    invoke-virtual {v14, v0, v0, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    .line 313
    .line 314
    .line 315
    move-result-wide v7

    .line 316
    invoke-virtual {v14, v0, v0, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 317
    .line 318
    .line 319
    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 320
    const-wide/16 v27, 0x0

    .line 321
    .line 322
    cmp-long v6, v11, v27

    .line 323
    .line 324
    if-gtz v6, :cond_4

    .line 325
    .line 326
    cmp-long v9, v2, v27

    .line 327
    .line 328
    if-gtz v9, :cond_4

    .line 329
    .line 330
    cmp-long v9, v7, v27

    .line 331
    .line 332
    if-gtz v9, :cond_4

    .line 333
    .line 334
    if-nez v0, :cond_4

    .line 335
    .line 336
    move/from16 v31, v10

    .line 337
    .line 338
    move-object/from16 v29, v14

    .line 339
    .line 340
    move-object/from16 v30, v15

    .line 341
    .line 342
    goto/16 :goto_9

    .line 343
    .line 344
    :cond_4
    if-eqz v0, :cond_5

    .line 345
    .line 346
    :try_start_c
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v29

    .line 354
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    .line 355
    .line 356
    .line 357
    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 358
    move-object/from16 v30, v15

    .line 359
    .line 360
    move-object/from16 v32, v29

    .line 361
    .line 362
    move-object/from16 v29, v14

    .line 363
    .line 364
    move-object/from16 v14, v32

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :catchall_2
    move-exception v0

    .line 368
    goto/16 :goto_d

    .line 369
    .line 370
    :catch_2
    move-exception v0

    .line 371
    :goto_6
    move-object/from16 v2, v23

    .line 372
    .line 373
    goto/16 :goto_b

    .line 374
    .line 375
    :cond_5
    const/4 v0, -0x1

    .line 376
    move-object/from16 v29, v14

    .line 377
    .line 378
    move-object/from16 v30, v15

    .line 379
    .line 380
    const/4 v9, 0x0

    .line 381
    const/4 v14, 0x0

    .line 382
    :goto_7
    :try_start_d
    const-string/jumbo v15, "st"

    .line 383
    .line 384
    .line 385
    move/from16 v31, v10

    .line 386
    .line 387
    const/4 v10, 0x0

    .line 388
    invoke-interface {v5, v10, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 389
    .line 390
    .line 391
    if-eqz v13, :cond_6

    .line 392
    .line 393
    :try_start_e
    const-string/jumbo v15, "id"

    .line 394
    .line 395
    .line 396
    invoke-interface {v5, v10, v15, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 397
    .line 398
    .line 399
    :cond_6
    :try_start_f
    const-string/jumbo v10, "n"

    .line 400
    .line 401
    .line 402
    const/4 v15, 0x0

    .line 403
    move-wide/from16 v32, v25

    .line 404
    .line 405
    move/from16 v25, v0

    .line 406
    .line 407
    move-wide/from16 v0, v32

    .line 408
    .line 409
    invoke-interface {v5, v15, v10, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    .line 411
    .line 412
    if-lez v6, :cond_7

    .line 413
    .line 414
    const-string/jumbo v0, "t"

    .line 415
    .line 416
    .line 417
    invoke-interface {v5, v15, v0, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 418
    .line 419
    .line 420
    goto :goto_8

    .line 421
    :catch_3
    move-exception v0

    .line 422
    move-object/from16 v1, p0

    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_7
    :goto_8
    cmp-long v0, v2, v27

    .line 426
    .line 427
    if-lez v0, :cond_8

    .line 428
    .line 429
    const-string/jumbo v0, "r"

    .line 430
    .line 431
    .line 432
    const/4 v1, 0x0

    .line 433
    invoke-interface {v5, v1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    .line 435
    .line 436
    :cond_8
    cmp-long v0, v7, v27

    .line 437
    .line 438
    if-lez v0, :cond_9

    .line 439
    .line 440
    const-string/jumbo v0, "d"

    .line 441
    .line 442
    .line 443
    const/4 v1, 0x0

    .line 444
    invoke-interface {v5, v1, v0, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    .line 446
    .line 447
    :cond_9
    if-eqz v9, :cond_a

    .line 448
    .line 449
    const-string/jumbo v0, "pp"

    .line 450
    .line 451
    .line 452
    const/4 v1, 0x0

    .line 453
    invoke-interface {v5, v1, v0, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 454
    .line 455
    .line 456
    :cond_a
    if-eqz v14, :cond_b

    .line 457
    .line 458
    const-string/jumbo v0, "pc"

    .line 459
    .line 460
    .line 461
    const/4 v1, 0x0

    .line 462
    invoke-interface {v5, v1, v0, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 463
    .line 464
    .line 465
    :cond_b
    if-ltz v25, :cond_c

    .line 466
    .line 467
    const-string/jumbo v0, "pu"

    .line 468
    .line 469
    .line 470
    move/from16 v2, v25

    .line 471
    .line 472
    const/4 v1, 0x0

    .line 473
    invoke-interface {v5, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    .line 475
    .line 476
    :cond_c
    const-string/jumbo v0, "st"

    .line 477
    .line 478
    .line 479
    const/4 v1, 0x0

    .line 480
    invoke-interface {v5, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 481
    .line 482
    .line 483
    :goto_9
    add-int/lit8 v4, v4, 0x1

    .line 484
    .line 485
    move-object/from16 v1, p0

    .line 486
    .line 487
    move-object/from16 v0, v16

    .line 488
    .line 489
    move-object/from16 v8, v17

    .line 490
    .line 491
    move-object/from16 v9, v18

    .line 492
    .line 493
    move/from16 v6, v19

    .line 494
    .line 495
    move-object/from16 v11, v20

    .line 496
    .line 497
    move-object/from16 v12, v21

    .line 498
    .line 499
    move-object/from16 v3, v22

    .line 500
    .line 501
    move-object/from16 v2, v23

    .line 502
    .line 503
    move/from16 v7, v24

    .line 504
    .line 505
    move-object/from16 v14, v29

    .line 506
    .line 507
    move-object/from16 v15, v30

    .line 508
    .line 509
    move/from16 v10, v31

    .line 510
    .line 511
    goto/16 :goto_5

    .line 512
    .line 513
    :catch_4
    move-exception v0

    .line 514
    move-object/from16 v23, v2

    .line 515
    .line 516
    move-object/from16 v22, v3

    .line 517
    .line 518
    move-object/from16 v1, p0

    .line 519
    .line 520
    goto/16 :goto_b

    .line 521
    .line 522
    :cond_d
    const/4 v4, 0x0

    .line 523
    move-object/from16 v1, p0

    .line 524
    .line 525
    goto/16 :goto_4

    .line 526
    .line 527
    :cond_e
    move-object/from16 v16, v0

    .line 528
    .line 529
    move-object/from16 v23, v2

    .line 530
    .line 531
    move-object/from16 v22, v3

    .line 532
    .line 533
    move/from16 v24, v7

    .line 534
    .line 535
    move-object/from16 v17, v8

    .line 536
    .line 537
    move-object/from16 v18, v9

    .line 538
    .line 539
    move/from16 v31, v10

    .line 540
    .line 541
    const-string/jumbo v0, "op"

    .line 542
    .line 543
    .line 544
    const/4 v1, 0x0

    .line 545
    invoke-interface {v5, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 546
    .line 547
    .line 548
    add-int/lit8 v10, v31, 0x1

    .line 549
    .line 550
    move-object/from16 v1, p0

    .line 551
    .line 552
    move-object/from16 v0, v16

    .line 553
    .line 554
    move-object/from16 v8, v17

    .line 555
    .line 556
    move-object/from16 v9, v18

    .line 557
    .line 558
    move-object/from16 v3, v22

    .line 559
    .line 560
    move-object/from16 v2, v23

    .line 561
    .line 562
    move/from16 v7, v24

    .line 563
    .line 564
    const/4 v4, 0x0

    .line 565
    goto/16 :goto_3

    .line 566
    .line 567
    :cond_f
    move-object/from16 v16, v0

    .line 568
    .line 569
    move-object/from16 v23, v2

    .line 570
    .line 571
    move-object/from16 v22, v3

    .line 572
    .line 573
    move/from16 v24, v7

    .line 574
    .line 575
    move-object/from16 v17, v8

    .line 576
    .line 577
    const-string/jumbo v0, "uid"

    .line 578
    .line 579
    .line 580
    const/4 v1, 0x0

    .line 581
    invoke-interface {v5, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    .line 583
    .line 584
    add-int/lit8 v7, v24, 0x1

    .line 585
    .line 586
    move-object/from16 v1, p0

    .line 587
    .line 588
    move-object/from16 v0, v16

    .line 589
    .line 590
    move-object/from16 v8, v17

    .line 591
    .line 592
    move-object/from16 v3, v22

    .line 593
    .line 594
    move-object/from16 v2, v23

    .line 595
    .line 596
    const/4 v4, 0x0

    .line 597
    goto/16 :goto_1

    .line 598
    .line 599
    :cond_10
    move-object/from16 v23, v2

    .line 600
    .line 601
    move-object/from16 v22, v3

    .line 602
    .line 603
    if-eqz v8, :cond_12

    .line 604
    .line 605
    const-string/jumbo v0, "pkg"

    .line 606
    .line 607
    .line 608
    const/4 v1, 0x0

    .line 609
    invoke-interface {v5, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 610
    .line 611
    .line 612
    goto :goto_a

    .line 613
    :cond_11
    move-object/from16 v23, v2

    .line 614
    .line 615
    move-object/from16 v22, v3

    .line 616
    .line 617
    :cond_12
    :goto_a
    const-string v0, "app-ops"

    .line 618
    .line 619
    const/4 v1, 0x0

    .line 620
    invoke-interface {v5, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 621
    .line 622
    .line 623
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 624
    .line 625
    .line 626
    move-object/from16 v1, p0

    .line 627
    .line 628
    :try_start_10
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 629
    .line 630
    move-object/from16 v2, v23

    .line 631
    .line 632
    :try_start_11
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 633
    .line 634
    .line 635
    goto :goto_c

    .line 636
    :catch_5
    move-exception v0

    .line 637
    :goto_b
    :try_start_12
    const-string v3, "AppOps"

    .line 638
    .line 639
    const-string v4, "Failed to write state, restoring backup."

    .line 640
    .line 641
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    .line 643
    .line 644
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 645
    .line 646
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 647
    .line 648
    .line 649
    :goto_c
    monitor-exit v22
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 650
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 651
    .line 652
    iget-object v0, v0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 653
    .line 654
    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteRegistry;->writeAndClearAccessHistory()V

    .line 655
    .line 656
    .line 657
    return-void

    .line 658
    :catch_6
    move-exception v0

    .line 659
    move-object/from16 v22, v3

    .line 660
    .line 661
    :try_start_13
    const-string v1, "AppOps"

    .line 662
    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    .line 664
    .line 665
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .line 677
    .line 678
    monitor-exit v22

    .line 679
    return-void

    .line 680
    :goto_d
    monitor-exit v22
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 681
    throw v0
.end method
