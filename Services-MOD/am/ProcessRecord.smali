.class public final Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public AMSExceptionFlag:I

.field public activeLaunchTime:J

.field public appKeepingTime:J

.field public final appZygote:Z

.field public callStack:Ljava/lang/String;

.field public dhaKeepEmptyFlag:I

.field public frozenMARs:Z

.field public volatile info:Landroid/content/pm/ApplicationInfo;

.field public isAMSException:Z

.field public isActiveLaunch:Z

.field public isForKeeping:Z

.field public isNeverKillException:Z

.field public final isSdkSandbox:Z

.field public final isolated:Z

.field public final mBackgroundStartPrivileges:Landroid/util/ArrayMap;

.field public mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

.field public volatile mBindApplicationTime:J

.field public volatile mBindMountPending:Z

.field public volatile mClearedWaitingToKill:Z

.field public mCompat:Landroid/content/res/CompatibilityInfo;

.field public mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mDebugging:Z

.field public mDedicated:Z

.field public mDisabledCompatChanges:[J

.field public mDyingPid:I

.field public final mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

.field public mExcessiveResourceUsage:Z

.field public mFixedAppContextDisplay:Z

.field public mGids:[I

.field public volatile mHostingRecord:Lcom/android/server/am/HostingRecord;

.field public mInFullBackup:Z

.field public mInfant:Z

.field public mInstr:Lcom/android/server/am/ActiveInstrumentation;

.field public mInstructionSet:Ljava/lang/String;

.field public mIpmLaunchType:I

.field public volatile mIsCancelFromSeq:Z

.field public mIsRemovedName:Z

.field public mIsolatedEntryPoint:Ljava/lang/String;

.field public mIsolatedEntryPointArgs:[Ljava/lang/String;

.field public mKeepSEMPrcp:Z

.field public final mKillProcessTimeout:I

.field public mKillTime:J

.field public mKilled:Z

.field public mKilledByAm:Z

.field public mLastActivityTime:J

.field public final mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

.field public mLoggableCompatChanges:[J

.field public mLruSeq:I

.field public volatile mMountMode:I

.field public mOnewayThread:Landroid/app/IApplicationThread;

.field public final mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

.field public mPendingFinishAttach:Z

.field public mPendingStart:Z

.field public volatile mPersistent:Z

.field public mPid:I

.field public mPkgDeps:Landroid/util/ArraySet;

.field public final mPkgList:Lcom/android/server/am/PackageList;

.field public volatile mPredecessor:Lcom/android/server/am/ProcessRecord;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public volatile mProcessGroupCreated:Z

.field public final mProfile:Lcom/android/server/am/ProcessProfileRecord;

.field public final mProviders:Lcom/android/server/am/ProcessProviderRecord;

.field public final mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

.field public volatile mRemoved:Z

.field public mRenderThreadTid:I

.field public mRequiredAbi:Ljava/lang/String;

.field public volatile mSeInfo:Ljava/lang/String;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mServices:Lcom/android/server/am/ProcessServiceRecord;

.field public mShortStringName:Ljava/lang/String;

.field public volatile mSkipProcessGroupCreation:Z

.field public volatile mStartElapsedTime:J

.field public mStartSeq:J

.field public volatile mStartUid:I

.field public volatile mStartUptime:J

.field public final mState:Lcom/android/server/am/ProcessStateRecord;

.field public mStringName:Ljava/lang/String;

.field public volatile mSuccessor:Lcom/android/server/am/ProcessRecord;

.field public mSuccessorStartRunnable:Ljava/lang/Runnable;

.field public mTGLCallbackPosted:Z

.field public mThread:Landroid/app/IApplicationThread;

.field public mUidRecord:Lcom/android/server/am/UidRecord;

.field public mUnlocked:Z

.field public mUsingWrapper:Z

.field public mWaitedForDebugger:Z

.field public mWaitingToKill:Ljava/lang/String;

.field public volatile mWasForceStopped:Z

.field public final mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

.field public mlLaunchTime:J

.field public final processInfo:Landroid/content/pm/ProcessInfo;

.field public final processName:Ljava/lang/String;

.field public final sdkSandboxClientAppPackage:Ljava/lang/String;

.field public final sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

.field public final uid:I

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 13

    .line 1
    move-object v8, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object v9, p2

    .line 4
    move-object/from16 v3, p3

    .line 6
    move/from16 v4, p4

    .line 8
    move/from16 v1, p6

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mExcessiveResourceUsage:Z

    .line 16
    new-instance v10, Lcom/android/server/am/PackageList;

    .line 18
    invoke-direct {v10, p0}, Lcom/android/server/am/PackageList;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 21
    iput-object v10, v8, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 23
    iput v2, v8, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 25
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 27
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    .line 29
    const/4 v5, -0x1

    .line 30
    iput v5, v8, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 32
    new-instance v6, Landroid/util/ArrayMap;

    .line 34
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 37
    iput-object v6, v8, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 39
    sget-object v6, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 41
    iput-object v6, v8, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    .line 43
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 45
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    .line 47
    const/4 v6, 0x2

    .line 48
    new-array v6, v6, [Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 50
    iput-object v6, v8, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 52
    iput v5, v8, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 54
    const-wide/16 v6, -0x1

    .line 56
    iput-wide v6, v8, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 58
    const-string v6, "<empty>"

    .line 60
    iput-object v6, v8, Lcom/android/server/am/ProcessRecord;->callStack:Ljava/lang/String;

    .line 62
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mIsRemovedName:Z

    .line 64
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    .line 66
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mKeepSEMPrcp:Z

    .line 68
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mTGLCallbackPosted:Z

    .line 70
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    .line 72
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mFixedAppContextDisplay:Z

    .line 74
    iput v5, v8, Lcom/android/server/am/ProcessRecord;->mKillProcessTimeout:I

    .line 76
    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 78
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 80
    iput-object v6, v8, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 82
    iput-object v9, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 84
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 86
    const/4 v7, 0x0

    .line 87
    if-eqz v6, :cond_2

    .line 89
    if-lez v1, :cond_0

    .line 91
    check-cast v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 93
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 95
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 98
    move-result-object v6

    .line 99
    invoke-interface {v6, v1}, Lcom/android/server/pm/Computer;->getProcessesForUid(I)Landroid/util/ArrayMap;

    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_1

    .line 105
    move-object/from16 v6, p7

    .line 107
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Landroid/content/pm/ProcessInfo;

    .line 113
    goto :goto_0

    .line 114
    :cond_0
    check-cast v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 116
    iget-object v1, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 118
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v1, v4}, Lcom/android/server/pm/Computer;->getProcessesForUid(I)Landroid/util/ArrayMap;

    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Landroid/content/pm/ProcessInfo;

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    move-object v1, v7

    .line 136
    :goto_0
    if-eqz v1, :cond_3

    .line 138
    iget-object v6, v1, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 140
    if-nez v6, :cond_3

    .line 142
    iget v6, v1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    .line 144
    if-ne v6, v5, :cond_3

    .line 146
    iget v6, v1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    .line 148
    if-ne v6, v5, :cond_3

    .line 150
    iget v6, v1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    .line 152
    if-ne v6, v5, :cond_3

    .line 154
    :cond_2
    move-object v1, v7

    .line 155
    :cond_3
    iput-object v1, v8, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 157
    invoke-static/range {p4 .. p4}, Landroid/os/Process;->isIsolated(I)Z

    .line 160
    move-result v1

    .line 161
    iput-boolean v1, v8, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 163
    invoke-static/range {p4 .. p4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    .line 166
    move-result v1

    .line 167
    iput-boolean v1, v8, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 169
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 172
    move-result v5

    .line 173
    const v6, 0x15f90

    .line 176
    if-lt v5, v6, :cond_4

    .line 178
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 181
    move-result v5

    .line 182
    const v6, 0x182b7

    .line 185
    if-gt v5, v6, :cond_4

    .line 187
    const/4 v5, 0x1

    .line 188
    goto :goto_1

    .line 189
    :cond_4
    move v5, v2

    .line 190
    :goto_1
    iput-boolean v5, v8, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    .line 192
    iput v4, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 194
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 197
    move-result v5

    .line 198
    iput v5, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 200
    iput-object v3, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 202
    move-object/from16 v6, p5

    .line 204
    iput-object v6, v8, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 206
    if-eqz v1, :cond_6

    .line 208
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    .line 211
    move-result-object v1

    .line 212
    if-eqz v1, :cond_5

    .line 214
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 216
    :cond_5
    iput-object v7, v8, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    .line 218
    goto :goto_2

    .line 219
    :cond_6
    iput-object v7, v8, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    .line 221
    :goto_2
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 223
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 225
    new-instance v1, Lcom/android/server/am/ProcessProfileRecord;

    .line 227
    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessProfileRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 230
    iput-object v1, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 232
    new-instance v2, Lcom/android/server/am/ProcessServiceRecord;

    .line 234
    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessServiceRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 237
    iput-object v2, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 239
    new-instance v2, Lcom/android/server/am/ProcessProviderRecord;

    .line 241
    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessProviderRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 244
    iput-object v2, v8, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 246
    new-instance v2, Lcom/android/server/am/ProcessReceiverRecord;

    .line 248
    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessReceiverRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 251
    iput-object v2, v8, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 253
    new-instance v2, Lcom/android/server/am/ProcessErrorStateRecord;

    .line 255
    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessErrorStateRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 258
    iput-object v2, v8, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 260
    new-instance v2, Lcom/android/server/am/ProcessStateRecord;

    .line 262
    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessStateRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 265
    iput-object v2, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 267
    new-instance v6, Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 269
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object v6, v8, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 277
    move-result-wide v11

    .line 278
    iput-wide v11, v1, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    .line 280
    iput-wide v11, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 282
    iput-wide v11, v6, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 284
    iput-wide v11, v2, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 286
    new-instance v11, Lcom/android/server/wm/WindowProcessController;

    .line 288
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 290
    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 292
    move-object v0, v11

    .line 293
    move-object/from16 v3, p3

    .line 295
    move/from16 v4, p4

    .line 297
    move-object v6, p0

    .line 298
    move-object v7, p0

    .line 299
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowProcessController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/am/ProcessRecord;)V

    .line 302
    iput-object v11, v8, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 304
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 306
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 308
    iget-wide v2, v9, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 310
    invoke-direct {v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 313
    invoke-virtual {v10, v0, v1}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    .line 316
    invoke-static {p0}, Lcom/android/server/am/ProcessRecord;->updateProcessRecordNodes(Lcom/android/server/am/ProcessRecord;)V

    .line 319
    return-void
.end method

.method public static updateProcessRecordNodes(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 5
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_NEW_OOMADJ:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 12
    array-length v2, v1

    .line 13
    if-ge v0, v2, :cond_0

    .line 15
    new-instance v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 17
    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 20
    aput-object v2, v1, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public final addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "entity"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    const-string v0, "backgroundStartPrivileges"

    .line 9
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    .line 15
    move-result v0

    .line 16
    const-string v1, "backgroundStartPrivileges does not allow anything"

    .line 18
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    .line 29
    move-result v1

    .line 30
    const-string v2, "backgroundStartPrivileges does not allow anything"

    .line 32
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 35
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    .line 43
    move-result v1

    .line 44
    const-string v2, "backgroundStartPrivileges does not allow anything"

    .line 46
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 52
    if-nez v1, :cond_0

    .line 54
    new-instance v1, Landroid/util/ArrayMap;

    .line 56
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 59
    iput-object v1, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 66
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessRecord;->setBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    .line 73
    return-void

    .line 74
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p0
.end method

.method public final addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V
    .locals 7

    .line 1
    iget-object v0, p4, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 9
    invoke-virtual {v2, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_2

    .line 15
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 17
    invoke-direct {v2, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 20
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 22
    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 24
    if-eqz v3, :cond_0

    .line 26
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 28
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 30
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 32
    iget-object v6, p4, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 34
    invoke-virtual {v6, p1, v4, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 37
    move-result-object p2

    .line 38
    iput-object p2, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 40
    iget-object p3, p4, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 42
    invoke-virtual {p3, p2, v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    .line 45
    move-result-object p2

    .line 46
    iput-object p2, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 48
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 50
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    .line 53
    iget-object p0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 55
    if-eq p0, v3, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 65
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    .line 68
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    return-void

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 75
    return-void

    .line 76
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 77
    :try_start_6
    throw p0

    .line 78
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 79
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string v2, "    "

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    move-result-wide v3

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v5

    .line 15
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v7, "user #"

    .line 21
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 26
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 29
    const-string v7, " uid="

    .line 31
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 36
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 38
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 41
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 43
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 45
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 47
    if-eq v7, v8, :cond_0

    .line 49
    const-string v7, " ISOLATED uid="

    .line 51
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 56
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 59
    :cond_0
    const-string v7, " gids={"

    .line 61
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    .line 66
    if-eqz v7, :cond_2

    .line 68
    const/4 v7, 0x0

    .line 69
    :goto_0
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    .line 71
    array-length v9, v9

    .line 72
    if-ge v7, v9, :cond_2

    .line 74
    if-eqz v7, :cond_1

    .line 76
    const-string v9, ", "

    .line 78
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    :cond_1
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    .line 83
    aget v9, v9, v7

    .line 85
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 88
    add-int/lit8 v7, v7, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const-string/jumbo v7, "}"

    .line 94
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 99
    if-eqz v7, :cond_5

    .line 101
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v7, "processInfo:"

    .line 107
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 112
    iget-object v7, v7, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 114
    if-eqz v7, :cond_3

    .line 116
    const/4 v7, 0x0

    .line 117
    :goto_1
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 119
    iget-object v9, v9, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 121
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 124
    move-result v9

    .line 125
    if-ge v7, v9, :cond_3

    .line 127
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    const-string v9, "  deny: "

    .line 132
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 137
    iget-object v9, v9, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 139
    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 142
    move-result-object v9

    .line 143
    check-cast v9, Ljava/lang/String;

    .line 145
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    add-int/lit8 v7, v7, 0x1

    .line 150
    goto :goto_1

    .line 151
    :cond_3
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 153
    iget v7, v7, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    .line 155
    const/4 v9, -0x1

    .line 156
    if-eq v7, v9, :cond_4

    .line 158
    const-string v7, "  gwpAsanMode="

    .line 160
    invoke-static {v1, v2, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    move-result-object v7

    .line 164
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 166
    iget v10, v10, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    .line 168
    invoke-static {v7, v10, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 171
    :cond_4
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 173
    iget v7, v7, Landroid/content/pm/ProcessInfo;->memtagMode:I

    .line 175
    if-eq v7, v9, :cond_5

    .line 177
    const-string v7, "  memtagMode="

    .line 179
    invoke-static {v1, v2, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    move-result-object v7

    .line 183
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 185
    iget v9, v9, Landroid/content/pm/ProcessInfo;->memtagMode:I

    .line 187
    invoke-static {v7, v9, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 190
    :cond_5
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v7, "mRequiredAbi="

    .line 196
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    .line 201
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    const-string v7, " instructionSet="

    .line 206
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mInstructionSet:Ljava/lang/String;

    .line 211
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 216
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 218
    if-eqz v7, :cond_6

    .line 220
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v7, "class="

    .line 226
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 231
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 233
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    :cond_6
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 238
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 240
    if-eqz v7, :cond_7

    .line 242
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v7, "manageSpaceActivityName="

    .line 248
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 253
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 255
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    :cond_7
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v7, "dir="

    .line 264
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 269
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 271
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    const-string v7, " publicDir="

    .line 276
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 281
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 283
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    const-string v7, " data="

    .line 288
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 293
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 295
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 300
    monitor-enter v7

    .line 301
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    const-string/jumbo v9, "packageList={"

    .line 307
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    iget-object v9, v7, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 312
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 315
    move-result v9

    .line 316
    const/4 v10, 0x0

    .line 317
    :goto_2
    if-ge v10, v9, :cond_9

    .line 319
    if-lez v10, :cond_8

    .line 321
    const-string v11, ", "

    .line 323
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    goto :goto_3

    .line 327
    :catchall_0
    move-exception v0

    .line 328
    goto/16 :goto_12

    .line 330
    :cond_8
    :goto_3
    iget-object v11, v7, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 332
    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 335
    move-result-object v11

    .line 336
    check-cast v11, Ljava/lang/String;

    .line 338
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    add-int/lit8 v10, v10, 0x1

    .line 343
    goto :goto_2

    .line 344
    :cond_9
    const-string/jumbo v9, "}"

    .line 347
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    .line 353
    if-eqz v7, :cond_c

    .line 355
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    const-string/jumbo v7, "packageDependencies={"

    .line 361
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    const/4 v7, 0x0

    .line 365
    :goto_4
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    .line 367
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 370
    move-result v9

    .line 371
    if-ge v7, v9, :cond_b

    .line 373
    if-lez v7, :cond_a

    .line 375
    const-string v9, ", "

    .line 377
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    :cond_a
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    .line 382
    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 385
    move-result-object v9

    .line 386
    check-cast v9, Ljava/lang/String;

    .line 388
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    add-int/lit8 v7, v7, 0x1

    .line 393
    goto :goto_4

    .line 394
    :cond_b
    const-string/jumbo v7, "}"

    .line 397
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    :cond_c
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    const-string/jumbo v7, "compat="

    .line 406
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mCompat:Landroid/content/res/CompatibilityInfo;

    .line 411
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 414
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 416
    if-eqz v7, :cond_d

    .line 418
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    const-string/jumbo v7, "mInstr="

    .line 424
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 429
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 432
    :cond_d
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    const-string/jumbo v7, "thread="

    .line 438
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 443
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 446
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    const-string/jumbo v7, "pid="

    .line 452
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 455
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 457
    const-string/jumbo v9, "lastActivityTime="

    .line 460
    invoke-static {v7, v1, v2, v9}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-wide v9, v0, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 465
    invoke-static {v9, v10, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 468
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    const-string/jumbo v7, "startUpTime="

    .line 474
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 477
    iget-wide v9, v0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    .line 479
    invoke-static {v9, v10, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 482
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    const-string/jumbo v7, "startElapsedTime="

    .line 488
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 491
    iget-wide v9, v0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    .line 493
    invoke-static {v9, v10, v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 496
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 499
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 501
    if-nez v5, :cond_e

    .line 503
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 505
    if-eqz v5, :cond_f

    .line 507
    :cond_e
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    const-string/jumbo v5, "persistent="

    .line 513
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 516
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 518
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 521
    const-string v5, " removed="

    .line 523
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 526
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 528
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 531
    :cond_f
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    .line 533
    if-eqz v5, :cond_10

    .line 535
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 538
    const-string/jumbo v5, "mDebugging="

    .line 541
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 544
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    .line 546
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 549
    :cond_10
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 551
    if-eqz v5, :cond_11

    .line 553
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 556
    const-string/jumbo v5, "pendingStart="

    .line 559
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 564
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 567
    :cond_11
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    const-string/jumbo v5, "startSeq="

    .line 573
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    iget-wide v5, v0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    .line 578
    const-string/jumbo v7, "mountMode="

    .line 581
    invoke-static {v5, v6, v1, v2, v7}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-class v5, Lcom/android/internal/os/Zygote;

    .line 586
    const-string v6, "MOUNT_EXTERNAL_"

    .line 588
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    .line 590
    invoke-static {v5, v6, v7}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 593
    move-result-object v5

    .line 594
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 599
    if-nez v5, :cond_12

    .line 601
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 603
    if-nez v5, :cond_12

    .line 605
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    .line 607
    if-eqz v5, :cond_13

    .line 609
    :cond_12
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 612
    const-string/jumbo v5, "killed="

    .line 615
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 620
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 623
    const-string v5, " killedByAm="

    .line 625
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 630
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 633
    const-string v5, " waitingToKill="

    .line 635
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    .line 640
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    :cond_13
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    .line 645
    if-nez v5, :cond_14

    .line 647
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    .line 649
    if-eqz v5, :cond_15

    .line 651
    :cond_14
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    const-string/jumbo v5, "isolatedEntryPoint="

    .line 657
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    .line 662
    const-string/jumbo v6, "isolatedEntryPointArgs="

    .line 665
    invoke-static {v1, v5, v2, v6}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    .line 670
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 673
    move-result-object v5

    .line 674
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    :cond_15
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 679
    iget v5, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 681
    const/16 v6, 0xa

    .line 683
    const-wide/16 v9, 0x0

    .line 685
    if-le v5, v6, :cond_17

    .line 687
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 689
    iget-object v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 691
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 694
    move-result-wide v11

    .line 695
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 698
    const-string/jumbo v7, "lastCpuTime="

    .line 701
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    .line 707
    cmp-long v7, v11, v9

    .line 709
    if-lez v7, :cond_16

    .line 711
    const-string v7, " timeUsed="

    .line 713
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 716
    iget-object v5, v5, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 718
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 721
    move-result-wide v13

    .line 722
    sub-long/2addr v13, v11

    .line 723
    invoke-static {v13, v14, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 726
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 729
    :cond_17
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 731
    iget-object v11, v5, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    .line 733
    monitor-enter v11

    .line 734
    :try_start_1
    iget-object v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 736
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 738
    invoke-virtual {v7}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    .line 741
    move-result v7

    .line 742
    const-wide/16 v12, 0x400

    .line 744
    if-eqz v7, :cond_18

    .line 746
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    const-string/jumbo v7, "lastPssTime="

    .line 752
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 755
    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 757
    invoke-static {v14, v15, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 760
    const-string v7, " pssProcState="

    .line 762
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    iget v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 767
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 770
    const-string v7, " pssStatType="

    .line 772
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 775
    iget v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    .line 777
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 780
    const-string v7, " nextPssTime="

    .line 782
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 785
    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    .line 787
    invoke-static {v14, v15, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 790
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 793
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 796
    const-string/jumbo v7, "lastPss="

    .line 799
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 802
    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    .line 804
    mul-long/2addr v14, v12

    .line 805
    invoke-static {v1, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 808
    const-string v7, " lastSwapPss="

    .line 810
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 813
    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    .line 815
    mul-long/2addr v14, v12

    .line 816
    invoke-static {v1, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 819
    const-string v7, " lastCachedPss="

    .line 821
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 824
    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    .line 826
    mul-long/2addr v14, v12

    .line 827
    invoke-static {v1, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 830
    const-string v7, " lastCachedSwapPss="

    .line 832
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 835
    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    .line 837
    mul-long/2addr v14, v12

    .line 838
    invoke-static {v1, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 841
    const-string v7, " lastRss="

    .line 843
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 848
    mul-long/2addr v14, v12

    .line 849
    invoke-static {v1, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 852
    goto :goto_5

    .line 853
    :catchall_1
    move-exception v0

    .line 854
    goto/16 :goto_11

    .line 856
    :cond_18
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 859
    const-string/jumbo v7, "lastRssTime="

    .line 862
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 865
    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 867
    invoke-static {v14, v15, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 870
    const-string v7, " rssProcState="

    .line 872
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 875
    iget v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 877
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 880
    const-string v7, " rssStatType="

    .line 882
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    iget v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    .line 887
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 890
    const-string v7, " nextRssTime="

    .line 892
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 895
    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    .line 897
    invoke-static {v14, v15, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 900
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 903
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    const-string/jumbo v7, "lastRss="

    .line 909
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 912
    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 914
    mul-long/2addr v14, v12

    .line 915
    invoke-static {v1, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 918
    const-string v7, " lastCachedRss="

    .line 920
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 923
    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedRss:J

    .line 925
    mul-long/2addr v14, v12

    .line 926
    invoke-static {v1, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 929
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 932
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    const-string/jumbo v7, "trimMemoryLevel="

    .line 938
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 941
    iget v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    .line 943
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 946
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 949
    const-string/jumbo v7, "procStateMemTracker: "

    .line 952
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 955
    iget-object v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 957
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->dumpLine(Ljava/io/PrintWriter;)V

    .line 960
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 963
    const-string/jumbo v7, "lastRequestedGc="

    .line 966
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 969
    iget-wide v12, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 971
    invoke-static {v12, v13, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 974
    const-string v7, " lastLowMemory="

    .line 976
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 979
    iget-wide v12, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    .line 981
    invoke-static {v12, v13, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 984
    const-string v7, " reportLowMemory="

    .line 986
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 989
    iget-boolean v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    .line 991
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 994
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 995
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 998
    const-string/jumbo v7, "currentHostingComponentTypes=0x"

    .line 1001
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1004
    iget-object v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1006
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1009
    move-result v7

    .line 1010
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1013
    move-result-object v7

    .line 1014
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1017
    const-string v7, " historicalHostingComponentTypes=0x"

    .line 1019
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1022
    iget-object v5, v5, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1024
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1027
    move-result v5

    .line 1028
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1031
    move-result-object v5

    .line 1032
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1037
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    .line 1039
    if-nez v7, :cond_19

    .line 1041
    iget-wide v11, v5, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 1043
    cmp-long v7, v11, v9

    .line 1045
    if-eqz v7, :cond_1c

    .line 1047
    :cond_19
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1050
    const-string/jumbo v7, "reportedInteraction="

    .line 1053
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1056
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    .line 1058
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 1061
    iget-wide v11, v5, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 1063
    cmp-long v7, v11, v9

    .line 1065
    if-eqz v7, :cond_1a

    .line 1067
    const-string v7, " time="

    .line 1069
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    iget-wide v11, v5, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 1074
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1077
    move-result-wide v13

    .line 1078
    invoke-static {v11, v12, v13, v14, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1081
    :cond_1a
    iget-wide v11, v5, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 1083
    cmp-long v7, v11, v9

    .line 1085
    if-eqz v7, :cond_1b

    .line 1087
    const-string v7, " fgInteractionTime="

    .line 1089
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1092
    iget-wide v11, v5, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 1094
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1097
    move-result-wide v13

    .line 1098
    invoke-static {v11, v12, v13, v14, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1101
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1104
    :cond_1c
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1107
    const-string v7, "adjSeq="

    .line 1109
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1112
    iget v7, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 1114
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 1117
    const-string v7, " lruSeq="

    .line 1119
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1122
    iget-object v7, v5, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1124
    iget v11, v7, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    .line 1126
    const-string/jumbo v12, "oom adj: max="

    .line 1129
    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 1134
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 1137
    const-string v11, " curRaw="

    .line 1139
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1142
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 1144
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 1147
    const-string v11, " setRaw="

    .line 1149
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1152
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 1154
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 1157
    const-string v11, " cur="

    .line 1159
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 1164
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 1167
    const-string v11, " set="

    .line 1169
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1172
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 1174
    const-string/jumbo v12, "mCurSchedGroup="

    .line 1177
    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 1182
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 1185
    const-string v11, " setSchedGroup="

    .line 1187
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1190
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 1192
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 1195
    const-string v11, " systemNoUi="

    .line 1197
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1200
    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    .line 1202
    const-string/jumbo v12, "curProcState="

    .line 1205
    invoke-static {v1, v2, v12, v11}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1208
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1210
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 1213
    const-string v11, " mRepProcState="

    .line 1215
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1218
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 1220
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 1223
    const-string v11, " setProcState="

    .line 1225
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1228
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1230
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 1233
    const-string v11, " lastStateTime="

    .line 1235
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1238
    iget-wide v11, v5, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 1240
    invoke-static {v11, v12, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1243
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1246
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1249
    const-string/jumbo v11, "curCapability="

    .line 1252
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1255
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 1257
    invoke-static {v1, v11}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 1260
    const-string v11, " setCapability="

    .line 1262
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1265
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 1267
    invoke-static {v1, v11}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 1270
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1273
    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 1275
    if-eqz v11, :cond_1d

    .line 1277
    const-string v11, " backgroundRestricted="

    .line 1279
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1282
    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 1284
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 1287
    const-string v11, " boundByNonBgRestrictedApp="

    .line 1289
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1292
    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    .line 1294
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 1297
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1300
    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 1302
    if-nez v11, :cond_1e

    .line 1304
    iget-object v11, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1306
    iget-boolean v11, v11, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    .line 1308
    if-eqz v11, :cond_1f

    .line 1310
    :cond_1e
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1313
    const-string/jumbo v11, "hasShownUi="

    .line 1316
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1319
    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 1321
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 1324
    const-string v11, " pendingUiClean="

    .line 1326
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1329
    iget-object v11, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1331
    iget-boolean v11, v11, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    .line 1333
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 1336
    :cond_1f
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1339
    const-string/jumbo v11, "cached="

    .line 1342
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 1348
    move-result v11

    .line 1349
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 1352
    const-string v11, " empty="

    .line 1354
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1357
    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1359
    const/16 v12, 0x13

    .line 1361
    if-lt v11, v12, :cond_20

    .line 1363
    const/4 v11, 0x1

    .line 1364
    goto :goto_6

    .line 1365
    :cond_20
    const/4 v11, 0x0

    .line 1366
    :goto_6
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 1369
    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    .line 1371
    if-eqz v11, :cond_21

    .line 1373
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1376
    const-string/jumbo v11, "serviceb="

    .line 1379
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1382
    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    .line 1384
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 1387
    const-string v11, " serviceHighRam="

    .line 1389
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1392
    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    .line 1394
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 1397
    :cond_21
    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    .line 1399
    if-eqz v11, :cond_23

    .line 1401
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1404
    const-string/jumbo v11, "notCachedSinceIdle="

    .line 1407
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1410
    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    .line 1412
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 1415
    iget-object v11, v5, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1417
    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1419
    invoke-virtual {v11}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    .line 1422
    move-result v11

    .line 1423
    if-eqz v11, :cond_22

    .line 1425
    const-string v11, " initialIdlePss="

    .line 1427
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1430
    goto :goto_7

    .line 1431
    :cond_22
    const-string v11, " initialIdleRss="

    .line 1433
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1436
    :goto_7
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1438
    iget-wide v11, v7, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    .line 1440
    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->println(J)V

    .line 1443
    :cond_23
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    .line 1445
    if-nez v7, :cond_24

    .line 1447
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    .line 1449
    if-nez v7, :cond_24

    .line 1451
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    .line 1453
    if-eqz v7, :cond_25

    .line 1455
    :cond_24
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1458
    const-string/jumbo v7, "hasTopUi="

    .line 1461
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1464
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    .line 1466
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 1469
    const-string v7, " hasOverlayUi="

    .line 1471
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1474
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    .line 1476
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 1479
    const-string v7, " runningRemoteAnimation="

    .line 1481
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1484
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    .line 1486
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 1489
    :cond_25
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 1491
    if-nez v7, :cond_26

    .line 1493
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    .line 1495
    if-eqz v7, :cond_27

    .line 1497
    :cond_26
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1500
    const-string/jumbo v7, "foregroundActivities="

    .line 1503
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1506
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 1508
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 1511
    const-string v7, " (rep="

    .line 1513
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1516
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    .line 1518
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 1521
    const-string v7, ")"

    .line 1523
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    :cond_27
    iget v7, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1528
    if-le v7, v6, :cond_28

    .line 1530
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1533
    const-string/jumbo v6, "whenUnimportant="

    .line 1536
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1539
    iget-wide v6, v5, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    .line 1541
    sub-long/2addr v6, v3

    .line 1542
    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1545
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1548
    :cond_28
    iget-wide v6, v5, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    .line 1550
    cmp-long v6, v6, v9

    .line 1552
    if-lez v6, :cond_29

    .line 1554
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1557
    const-string/jumbo v6, "lastTopTime="

    .line 1560
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1563
    iget-wide v6, v5, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    .line 1565
    invoke-static {v6, v7, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1568
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1571
    :cond_29
    iget-wide v6, v5, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    .line 1573
    cmp-long v11, v6, v9

    .line 1575
    if-lez v11, :cond_2a

    .line 1577
    const-wide v11, 0x7fffffffffffffffL

    .line 1582
    cmp-long v6, v6, v11

    .line 1584
    if-gez v6, :cond_2a

    .line 1586
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1589
    const-string/jumbo v6, "lastInvisibleTime="

    .line 1592
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1595
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1598
    move-result-wide v6

    .line 1599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1602
    move-result-wide v11

    .line 1603
    sub-long v6, v11, v6

    .line 1605
    iget-wide v13, v5, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    .line 1607
    add-long/2addr v6, v13

    .line 1608
    invoke-static {v1, v6, v7, v11, v12}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 1611
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1614
    :cond_2a
    iget-boolean v6, v5, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    .line 1616
    if-eqz v6, :cond_2b

    .line 1618
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1621
    const-string/jumbo v6, "hasStartedServices="

    .line 1624
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1627
    iget-boolean v5, v5, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    .line 1629
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1632
    :cond_2b
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1634
    const-string v6, " bad="

    .line 1636
    const-string v7, " "

    .line 1638
    const-string v11, " mNotResponding="

    .line 1640
    const-string v12, " "

    .line 1642
    const-string v13, " mCrashing="

    .line 1644
    iget-object v14, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 1646
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1649
    monitor-enter v14

    .line 1650
    :try_start_2
    iget-boolean v15, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 1652
    if-nez v15, :cond_2e

    .line 1654
    iget-object v15, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 1656
    iget-object v8, v15, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 1658
    if-eqz v8, :cond_2c

    .line 1660
    goto :goto_8

    .line 1661
    :cond_2c
    iget-boolean v8, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 1663
    if-nez v8, :cond_2e

    .line 1665
    iget-object v8, v15, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 1667
    if-eqz v8, :cond_2d

    .line 1669
    goto :goto_8

    .line 1670
    :cond_2d
    iget-boolean v8, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    .line 1672
    if-eqz v8, :cond_30

    .line 1674
    goto :goto_8

    .line 1675
    :catchall_2
    move-exception v0

    .line 1676
    goto/16 :goto_10

    .line 1678
    :cond_2e
    :goto_8
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1681
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1683
    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1686
    iget-boolean v13, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 1688
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1691
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1694
    move-result-object v8

    .line 1695
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1698
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1700
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1703
    iget-object v12, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 1705
    iget-object v12, v12, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 1707
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1710
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1713
    move-result-object v8

    .line 1714
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1717
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1719
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1722
    iget-boolean v11, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 1724
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1727
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1730
    move-result-object v8

    .line 1731
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1734
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1736
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1739
    iget-object v7, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 1741
    iget-object v7, v7, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 1743
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1746
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1749
    move-result-object v7

    .line 1750
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1753
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1755
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1758
    iget-boolean v6, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    .line 1760
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1763
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1766
    move-result-object v6

    .line 1767
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1770
    iget-object v6, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 1772
    if-eqz v6, :cond_2f

    .line 1774
    const-string v6, " errorReportReceiver="

    .line 1776
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1779
    iget-object v5, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 1781
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 1784
    move-result-object v5

    .line 1785
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1788
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1791
    :cond_30
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1792
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1795
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1797
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 1799
    iget-object v7, v5, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1801
    if-nez v6, :cond_31

    .line 1803
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1805
    iget-object v6, v6, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    .line 1807
    if-eqz v6, :cond_32

    .line 1809
    :cond_31
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1812
    const-string/jumbo v6, "mHasForegroundServices="

    .line 1815
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1818
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 1820
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1823
    const-string v6, " forcingToImportant="

    .line 1825
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1828
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1830
    iget-object v6, v6, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    .line 1832
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1835
    :cond_32
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    .line 1837
    if-nez v6, :cond_33

    .line 1839
    iget-wide v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 1841
    cmp-long v6, v6, v9

    .line 1843
    if-lez v6, :cond_34

    .line 1845
    :cond_33
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1848
    const-string/jumbo v6, "mHasTopStartedAlmostPerceptibleServices="

    .line 1851
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1854
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    .line 1856
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1859
    const-string v6, " mLastTopStartedAlmostPerceptibleBindRequestUptimeMs="

    .line 1861
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1864
    iget-wide v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 1866
    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 1869
    :cond_34
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    .line 1871
    if-nez v6, :cond_35

    .line 1873
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    .line 1875
    if-nez v6, :cond_35

    .line 1877
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 1879
    if-eqz v6, :cond_36

    .line 1881
    :cond_35
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1884
    const-string/jumbo v6, "hasClientActivities="

    .line 1887
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1890
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    .line 1892
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1895
    const-string v6, " hasAboveClient="

    .line 1897
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1900
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    .line 1902
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1905
    const-string v6, " treatLikeActivity="

    .line 1907
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1910
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 1912
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1915
    :cond_36
    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    .line 1917
    if-nez v6, :cond_37

    .line 1919
    iget v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 1921
    if-eqz v6, :cond_38

    .line 1923
    :cond_37
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1926
    const-string/jumbo v6, "connectionGroup="

    .line 1929
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1932
    iget v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 1934
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 1937
    const-string v6, " Importance="

    .line 1939
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1942
    iget v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    .line 1944
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 1947
    const-string v6, " Service="

    .line 1949
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1952
    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    .line 1954
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1957
    :cond_38
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    .line 1959
    if-eqz v6, :cond_39

    .line 1961
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1964
    const-string v6, "allowlistManager="

    .line 1966
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1969
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    .line 1971
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1974
    :cond_39
    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 1976
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 1979
    move-result v6

    .line 1980
    const-string v7, "  - "

    .line 1982
    if-lez v6, :cond_3a

    .line 1984
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1987
    const-string v6, "Services:"

    .line 1989
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1992
    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 1994
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 1997
    move-result v6

    .line 1998
    const/4 v8, 0x0

    .line 1999
    :goto_9
    if-ge v8, v6, :cond_3a

    .line 2001
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2004
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2007
    iget-object v11, v5, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 2009
    invoke-virtual {v11, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2012
    move-result-object v11

    .line 2013
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2016
    add-int/lit8 v8, v8, 0x1

    .line 2018
    goto :goto_9

    .line 2019
    :cond_3a
    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 2021
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 2024
    move-result v6

    .line 2025
    if-lez v6, :cond_3b

    .line 2027
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2030
    const-string v6, "Executing Services (fg="

    .line 2032
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2035
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    .line 2037
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 2040
    const-string v6, ")"

    .line 2042
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2045
    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 2047
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 2050
    move-result v6

    .line 2051
    const/4 v8, 0x0

    .line 2052
    :goto_a
    if-ge v8, v6, :cond_3b

    .line 2054
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2060
    iget-object v11, v5, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 2062
    invoke-virtual {v11, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2065
    move-result-object v11

    .line 2066
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2069
    add-int/lit8 v8, v8, 0x1

    .line 2071
    goto :goto_a

    .line 2072
    :cond_3b
    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 2074
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 2077
    move-result v6

    .line 2078
    if-lez v6, :cond_3c

    .line 2080
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2083
    const-string/jumbo v6, "mConnections:"

    .line 2086
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2089
    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 2091
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 2094
    move-result v6

    .line 2095
    const/4 v8, 0x0

    .line 2096
    :goto_b
    if-ge v8, v6, :cond_3c

    .line 2098
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2101
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2104
    iget-object v11, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 2106
    invoke-virtual {v11, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2109
    move-result-object v11

    .line 2110
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2113
    add-int/lit8 v8, v8, 0x1

    .line 2115
    goto :goto_b

    .line 2116
    :cond_3c
    invoke-static {}, Lcom/android/server/am/Flags;->serviceBindingOomAdjPolicy()Z

    .line 2119
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2122
    const-string/jumbo v6, "scheduleServiceTimeoutPending="

    .line 2125
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2128
    iget-boolean v5, v5, Lcom/android/server/am/ProcessServiceRecord;->mScheduleServiceTimeoutPending:Z

    .line 2130
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2133
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 2135
    iget-wide v6, v5, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    .line 2137
    cmp-long v6, v6, v9

    .line 2139
    if-lez v6, :cond_3d

    .line 2141
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2144
    const-string/jumbo v6, "lastProviderTime="

    .line 2147
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2150
    iget-wide v6, v5, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    .line 2152
    invoke-static {v6, v7, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2155
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2158
    :cond_3d
    iget-object v6, v5, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 2160
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 2163
    move-result v6

    .line 2164
    const-string v7, "  - "

    .line 2166
    if-lez v6, :cond_3e

    .line 2168
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2171
    const-string v6, "Published Providers:"

    .line 2173
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    iget-object v6, v5, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 2178
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 2181
    move-result v6

    .line 2182
    const/4 v8, 0x0

    .line 2183
    :goto_c
    if-ge v8, v6, :cond_3e

    .line 2185
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2188
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2191
    iget-object v9, v5, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 2193
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 2196
    move-result-object v9

    .line 2197
    check-cast v9, Ljava/lang/String;

    .line 2199
    const-string v10, "    -> "

    .line 2201
    invoke-static {v1, v9, v2, v10}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    iget-object v9, v5, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 2206
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 2209
    move-result-object v9

    .line 2210
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2213
    add-int/lit8 v8, v8, 0x1

    .line 2215
    goto :goto_c

    .line 2216
    :cond_3e
    iget-object v6, v5, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 2218
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2221
    move-result v6

    .line 2222
    if-lez v6, :cond_3f

    .line 2224
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2227
    const-string v6, "Connected Providers:"

    .line 2229
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2232
    iget-object v6, v5, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 2234
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2237
    move-result v6

    .line 2238
    const/4 v8, 0x0

    .line 2239
    :goto_d
    if-ge v8, v6, :cond_3f

    .line 2241
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2247
    iget-object v9, v5, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 2249
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2252
    move-result-object v9

    .line 2253
    check-cast v9, Lcom/android/server/am/ContentProviderConnection;

    .line 2255
    new-instance v10, Ljava/lang/StringBuilder;

    .line 2257
    const/16 v11, 0x80

    .line 2259
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2262
    iget-object v11, v9, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 2264
    invoke-virtual {v11}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    .line 2267
    move-result-object v11

    .line 2268
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    const-string v11, "->"

    .line 2273
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    invoke-virtual {v9, v10}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    .line 2279
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2282
    move-result-object v9

    .line 2283
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2286
    add-int/lit8 v8, v8, 0x1

    .line 2288
    goto :goto_d

    .line 2289
    :cond_3f
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 2291
    iget-object v6, v5, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    .line 2293
    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    .line 2296
    move-result v6

    .line 2297
    const-string v7, "  - "

    .line 2299
    if-nez v6, :cond_40

    .line 2301
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2304
    const-string v6, "Current mReceivers:"

    .line 2306
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2309
    iget-object v6, v5, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    .line 2311
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 2314
    move-result v6

    .line 2315
    const/4 v8, 0x0

    .line 2316
    :goto_e
    if-ge v8, v6, :cond_40

    .line 2318
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2324
    iget-object v9, v5, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    .line 2326
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2329
    move-result-object v9

    .line 2330
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2333
    add-int/lit8 v8, v8, 0x1

    .line 2335
    goto :goto_e

    .line 2336
    :cond_40
    iget-object v6, v5, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    .line 2338
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 2341
    move-result v6

    .line 2342
    if-lez v6, :cond_41

    .line 2344
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2347
    const-string/jumbo v6, "mReceivers:"

    .line 2350
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2353
    iget-object v6, v5, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    .line 2355
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 2358
    move-result v6

    .line 2359
    const/4 v8, 0x0

    .line 2360
    :goto_f
    if-ge v8, v6, :cond_41

    .line 2362
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2365
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2368
    iget-object v9, v5, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    .line 2370
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2373
    move-result-object v9

    .line 2374
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2377
    add-int/lit8 v8, v8, 0x1

    .line 2379
    goto :goto_f

    .line 2380
    :cond_41
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 2382
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2385
    const-string v6, "    "

    .line 2387
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2390
    const-string/jumbo v7, "lastCompactTime="

    .line 2393
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2396
    iget-wide v7, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    .line 2398
    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 2401
    const-string v7, " lastCompactProfile="

    .line 2403
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2406
    iget-object v7, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 2408
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2411
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2414
    const-string/jumbo v7, "hasPendingCompaction="

    .line 2417
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2420
    iget-boolean v7, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    .line 2422
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 2425
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2428
    const-string/jumbo v7, "isFreezeExempt="

    .line 2431
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2434
    iget-boolean v7, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    .line 2436
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 2439
    const-string v7, " isPendingFreeze="

    .line 2441
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2444
    iget-boolean v7, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 2446
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 2449
    const-string v7, " isFrozen="

    .line 2451
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2454
    iget-boolean v7, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 2456
    const-string/jumbo v8, "earliestFreezableTimeMs="

    .line 2459
    invoke-static {v1, v6, v8, v7}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2462
    iget-wide v5, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    .line 2464
    invoke-static {v5, v6, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2467
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2470
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 2472
    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/WindowProcessController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2475
    const-string v3, "<empty>"

    .line 2477
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->callStack:Ljava/lang/String;

    .line 2479
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2482
    move-result v3

    .line 2483
    if-nez v3, :cond_42

    .line 2485
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2488
    const-string/jumbo v3, "removed from: "

    .line 2491
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->callStack:Ljava/lang/String;

    .line 2496
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2499
    :cond_42
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    .line 2501
    if-eqz v0, :cond_43

    .line 2503
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2506
    const-string/jumbo v0, "isMLException="

    .line 2509
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2512
    const/4 v0, 0x0

    .line 2513
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2516
    :cond_43
    return-void

    .line 2517
    :goto_10
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2518
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2521
    throw v0

    .line 2522
    :goto_11
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2523
    throw v0

    .line 2524
    :goto_12
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2525
    throw v0
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 4
    move-result-wide p2

    .line 5
    const-wide v0, 0x10500000001L

    .line 10
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 12
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 15
    const-wide v0, 0x10900000002L

    .line 20
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 27
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 29
    const-wide v1, 0x10500000003L

    .line 34
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 37
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 39
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 41
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 44
    move-result v0

    .line 45
    const/16 v1, 0x2710

    .line 47
    if-lt v0, v1, :cond_0

    .line 49
    const-wide v0, 0x10500000004L

    .line 54
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 56
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 59
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 61
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 63
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 66
    move-result v0

    .line 67
    const-wide v1, 0x10500000005L

    .line 72
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 75
    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 77
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 79
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 81
    if-eq v0, v1, :cond_1

    .line 83
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 85
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 88
    move-result v0

    .line 89
    const-wide v1, 0x10500000006L

    .line 94
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 97
    :cond_1
    const-wide v0, 0x10800000007L

    .line 102
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 104
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 107
    if-ltz p4, :cond_2

    .line 109
    const-wide v0, 0x10500000008L

    .line 114
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 117
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 120
    return-void
.end method

.method public final getBackgroundStartPrivileges()Landroid/app/BackgroundStartPrivileges;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    .line 6
    if-nez v1, :cond_0

    .line 8
    sget-object v1, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 10
    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    .line 12
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 17
    move-result v1

    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 20
    :goto_0
    if-ltz v1, :cond_0

    .line 22
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    .line 24
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 26
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/app/BackgroundStartPrivileges;

    .line 32
    invoke-virtual {v2, v3}, Landroid/app/BackgroundStartPrivileges;->merge(Landroid/app/BackgroundStartPrivileges;)Landroid/app/BackgroundStartPrivileges;

    .line 35
    move-result-object v2

    .line 36
    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    .line 38
    add-int/lit8 v1, v1, -0x1

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    .line 45
    monitor-exit v0

    .line 46
    return-object p0

    .line 47
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 11
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0x3e8

    .line 17
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 19
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 21
    const-wide/16 v4, 0x0

    .line 23
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 30
    const-string/jumbo v0, "getClientInfoForSdkSandbox called for non-sandbox process"

    .line 33
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
.end method

.method public getLruProcessList()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 7
    return-object p0
.end method

.method public final getPackageListWithVersionCode()Ljava/util/List;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 12
    monitor-exit p0

    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v0, :cond_1

    .line 25
    new-instance v3, Landroid/content/pm/VersionedPackage;

    .line 27
    iget-object v4, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 29
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/String;

    .line 35
    iget-object v5, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 37
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 43
    iget-wide v5, v5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 45
    invoke-direct {v3, v4, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 48
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    monitor-exit p0

    .line 55
    move-object p0, v1

    .line 56
    :goto_1
    return-object p0

    .line 57
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw v0
.end method

.method public final getPid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 3
    return p0
.end method

.method public final getProcessClassEnum()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 3
    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    const/4 p0, 0x3

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 11
    if-nez v0, :cond_1

    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 17
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 19
    const/4 v0, 0x1

    .line 20
    and-int/2addr p0, v0

    .line 21
    if-eqz p0, :cond_2

    .line 23
    const/4 v0, 0x2

    .line 24
    :cond_2
    return v0
.end method

.method public final hasActivitiesOrRecentTasks()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 5
    if-nez v0, :cond_1

    .line 7
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    .line 9
    if-eqz p0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public final isDebuggable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 3
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 5
    and-int/lit8 v0, v0, 0x2

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 22
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 24
    and-int/lit8 p0, p0, 0x2

    .line 26
    if-eqz p0, :cond_1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_0
    return v1

    .line 31
    :cond_2
    return v2
.end method

.method public final isFreezable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 5
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 15
    iget-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    .line 17
    if-nez v1, :cond_0

    .line 19
    iget-boolean v0, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 21
    if-nez v0, :cond_0

    .line 23
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 25
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 27
    const/16 v0, 0x352

    .line 29
    if-lt p0, v0, :cond_0

    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method public final isInterestingToUserLocked()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 3
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_0
    const/4 v5, 0x1

    .line 20
    if-ge v4, v2, :cond_1

    .line 22
    iget-object v6, v0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 30
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_0

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 40
    goto :goto_2

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_5

    .line 43
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :try_start_1
    iget-object v2, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 48
    if-nez v2, :cond_2

    .line 50
    goto :goto_4

    .line 51
    :cond_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 54
    move-result v2

    .line 55
    sub-int/2addr v2, v5

    .line 56
    :goto_1
    if-ltz v2, :cond_5

    .line 58
    iget-object v4, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 60
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 64
    check-cast v4, [I

    .line 66
    aget v4, v4, v3

    .line 68
    and-int/2addr v4, v5

    .line 69
    if-nez v4, :cond_3

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    iget-object v4, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 80
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_4

    .line 86
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 90
    :goto_2
    return v5

    .line 91
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 98
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 100
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 102
    return p0

    .line 103
    :goto_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 107
    throw p0
.end method

.method public final isThreadReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    .line 7
    if-nez p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    .line 2
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 3
    invoke-static {v2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v2

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eq v2, v4, :cond_1

    .line 4
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Not TGL "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->mTGLCallbackPosted:Z

    if-eqz v1, :cond_0

    return-void

    .line 6
    :cond_0
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 7
    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->mTGLCallbackPosted:Z

    .line 8
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v3, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p0}, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/am/ProcessRecord;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 9
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v2, :cond_8

    .line 10
    const-string/jumbo v2, "kill"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 11
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 12
    iget-object v2, v2, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 13
    const-string v2, ": "

    move-object/from16 v6, p4

    .line 14
    invoke-static {v6, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 15
    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 16
    iget-object v6, v6, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object/from16 v6, p4

    move-object v2, v6

    .line 18
    :goto_0
    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v6, :cond_3

    if-nez p5, :cond_4

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v7, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v8, p3

    goto :goto_2

    .line 19
    :cond_4
    :goto_1
    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Killing "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (adj "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 21
    iget v8, v8, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 23
    invoke-virtual {v6, v9, v7}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(ILjava/lang/String;)V

    .line 24
    :goto_2
    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v7, 0x0

    .line 25
    iput-boolean v7, v6, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 26
    iput-boolean v7, v6, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 27
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-lez v6, :cond_6

    .line 28
    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move/from16 v9, p2

    invoke-virtual {v6, p0, v1, v9, v2}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 29
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 31
    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 33
    invoke-static {v1}, Landroid/os/Process;->getRss(I)[J

    move-result-object v1

    if-eqz v1, :cond_5

    .line 34
    array-length v2, v1

    if-lez v2, :cond_5

    aget-wide v1, v1, v7

    goto :goto_3

    :cond_5
    const-wide/16 v1, 0x0

    .line 35
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v13, p3

    filled-new-array/range {v9 .. v14}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x7547

    .line 36
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "B|killProcessQuiet comm="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 38
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 39
    iget-wide v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    .line 40
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v6}, Landroid/os/Process;->killProcessQuiet(I)V

    move/from16 v6, p6

    .line 41
    invoke-virtual {p0, v6}, Lcom/android/server/am/ProcessRecord;->killProcessGroupIfNecessaryLocked(Z)V

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "E|killProcessQuiet pss="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    goto :goto_4

    .line 43
    :cond_6
    iput-boolean v7, v0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 44
    :goto_4
    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v1, :cond_7

    .line 45
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 46
    :try_start_0
    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 47
    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/am/ProcessRecord;->mKillTime:J

    .line 49
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 50
    :cond_7
    :goto_5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_8
    return-void
.end method

.method public final killLocked(ILjava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final killProcessGroupIfNecessaryLocked(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 8
    iget v0, v0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 15
    iget v0, v0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    .line 17
    const/4 v2, 0x2

    .line 18
    if-ne v0, v2, :cond_2

    .line 20
    :goto_0
    monitor-enter p0

    .line 21
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    .line 23
    if-nez v0, :cond_1

    .line 25
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mSkipProcessGroupCreation:Z

    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    :goto_1
    monitor-exit p0

    .line 31
    move v1, v0

    .line 32
    goto :goto_3

    .line 33
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1

    .line 35
    :cond_2
    :goto_3
    if-eqz v1, :cond_4

    .line 37
    if-nez p1, :cond_3

    .line 39
    iget p1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 41
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 43
    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    .line 45
    invoke-static {p1, v0, v1}, Landroid/os/Process;->sendSignalToProcessGroup(III)Z

    .line 48
    :cond_3
    iget p1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 50
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 52
    invoke-static {p1, p0}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 55
    :cond_4
    return-void
.end method

.method public final makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v5, p2

    .line 7
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 9
    iget-object v2, v8, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 11
    if-nez v2, :cond_3

    .line 13
    iget-object v9, v8, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    .line 15
    monitor-enter v9

    .line 16
    :try_start_0
    iget-object v10, v5, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    :try_start_1
    iget-object v4, v8, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 21
    iget-object v2, v8, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 23
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 25
    if-eqz v4, :cond_0

    .line 27
    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    .line 31
    move-result v13

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 35
    move-result-wide v14

    .line 36
    iget-object v2, v7, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 38
    const/4 v12, -0x1

    .line 39
    move-object v11, v4

    .line 40
    move-object/from16 v16, v2

    .line 42
    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 45
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    :try_start_3
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto/16 :goto_5

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 55
    :try_start_5
    throw v0

    .line 56
    :cond_0
    :goto_0
    iget-object v2, v8, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 58
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 60
    iget-object v3, v8, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 62
    iget v6, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 64
    invoke-static {v6}, Landroid/os/Process;->isIsolatedUid(I)Z

    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_1

    .line 70
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 72
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 74
    :goto_1
    move v6, v3

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 78
    goto :goto_1

    .line 79
    :goto_2
    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 81
    iget-wide v14, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 83
    iget-object v2, v8, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 85
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 87
    iget-object v11, v5, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 89
    move v13, v6

    .line 90
    move-object/from16 v16, v2

    .line 92
    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    .line 95
    move-result-object v11

    .line 96
    iput-object v11, v8, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 98
    invoke-virtual {v11}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 101
    new-instance v12, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;

    .line 103
    move-object v2, v12

    .line 104
    move-object v3, v8

    .line 105
    move-object/from16 v5, p2

    .line 107
    move-object v13, v7

    .line 108
    move-object v7, v11

    .line 109
    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;ILcom/android/internal/app/procstats/ProcessState;)V

    .line 112
    monitor-enter v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    :try_start_6
    iget-object v2, v13, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 115
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 118
    move-result v2

    .line 119
    const/4 v3, 0x0

    .line 120
    :goto_3
    if-ge v3, v2, :cond_2

    .line 122
    iget-object v4, v13, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 124
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Ljava/lang/String;

    .line 130
    iget-object v5, v13, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 132
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 138
    invoke-virtual {v12, v4, v5}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 143
    goto :goto_3

    .line 144
    :catchall_2
    move-exception v0

    .line 145
    goto :goto_4

    .line 146
    :cond_2
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 147
    :try_start_7
    iput-object v1, v8, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 149
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 150
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 151
    goto :goto_7

    .line 152
    :catchall_3
    move-exception v0

    .line 153
    goto :goto_6

    .line 154
    :goto_4
    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 155
    :try_start_a
    throw v0

    .line 156
    :goto_5
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 157
    :try_start_b
    throw v0

    .line 158
    :goto_6
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 159
    throw v0

    .line 160
    :cond_3
    iget-object v2, v8, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    .line 162
    monitor-enter v2

    .line 163
    :try_start_c
    iput-object v1, v8, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 165
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 166
    :goto_7
    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 168
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 170
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 173
    move-result v3

    .line 174
    if-ne v2, v3, :cond_4

    .line 176
    new-instance v2, Lcom/android/server/am/SameProcessApplicationThread;

    .line 178
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 181
    move-result-object v3

    .line 182
    invoke-direct {v2, v1, v3}, Lcom/android/server/am/SameProcessApplicationThread;-><init>(Landroid/app/IApplicationThread;Landroid/os/Handler;)V

    .line 185
    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    .line 187
    goto :goto_8

    .line 188
    :cond_4
    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    .line 190
    :goto_8
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 192
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 195
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 197
    iget-boolean v1, v1, Lcom/android/server/wm/WindowProcessController;->mUseFifoUiScheduling:Z

    .line 199
    if-eqz v1, :cond_5

    .line 201
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 203
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSpecifiedFifoProcesses:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_5
    return-void

    .line 209
    :catchall_4
    move-exception v0

    .line 210
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 211
    throw v0
.end method

.method public final onCleanupApplicationRecordLSP(Lcom/android/server/am/ProcessStatsService;ZZ)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 3
    iget-object v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 5
    iget-object v2, v1, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v4, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-direct {v4, v5}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 17
    invoke-virtual {v1, v2, v4}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 20
    iput-object v3, v1, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 22
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 25
    iget-object v2, v1, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 27
    if-nez v2, :cond_1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance v4, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-direct {v4, v5}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 36
    invoke-virtual {v1, v2, v4}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 39
    iput-object v3, v1, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 41
    :goto_1
    iget-object v2, v1, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 43
    if-nez v2, :cond_2

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iget-object v4, v1, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 48
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 50
    new-instance v5, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    .line 52
    const/4 v6, 0x2

    .line 53
    invoke-direct {v5, v6, v2}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 56
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    iput-object v3, v1, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 61
    :goto_2
    const/4 v1, 0x0

    .line 62
    iput-boolean v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 64
    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 66
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 68
    iput-boolean v1, v2, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->resetPackageList(Lcom/android/server/am/ProcessStatsService;)V

    .line 76
    if-eqz p3, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 81
    :cond_3
    iput-object v3, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 83
    iput-object v3, p0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    .line 85
    iget-object p3, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 87
    invoke-virtual {p3, v3}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 90
    iget-object p3, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 92
    iget-boolean p3, p3, Lcom/android/server/wm/WindowProcessController;->mUseFifoUiScheduling:Z

    .line 94
    if-eqz p3, :cond_4

    .line 96
    iget-object p3, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 98
    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mSpecifiedFifoProcesses:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    :cond_4
    iget-object p3, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 105
    iget-object v0, p3, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    .line 107
    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v2, p1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 110
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 111
    :try_start_1
    iget-object v10, p3, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 113
    if-eqz v10, :cond_5

    .line 115
    iget-object v4, p3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 117
    iget-object v11, v4, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 119
    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    .line 123
    move-result v6

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 127
    move-result-wide v7

    .line 128
    iget-object v9, v11, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 130
    const/4 v5, -0x1

    .line 131
    move-object v4, v10

    .line 132
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 135
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    :try_start_3
    invoke-virtual {v10}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 139
    iput-object v3, p3, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 141
    new-instance p1, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;

    .line 143
    invoke-direct {p1, v10}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 146
    invoke-virtual {v11, p1}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    goto :goto_3

    .line 150
    :catchall_0
    move-exception p0

    .line 151
    goto/16 :goto_b

    .line 153
    :catchall_1
    move-exception p0

    .line 154
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    :try_start_5
    throw p0

    .line 156
    :cond_5
    :goto_3
    iput-object v3, p3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 158
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 160
    iget-object p1, p3, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 162
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 165
    iget-object p1, p3, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 167
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 170
    iput-object v3, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    .line 172
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    .line 174
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 176
    iput-boolean v1, p1, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 178
    iput-boolean v1, p1, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 180
    iput-object v3, p1, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    .line 182
    const/16 p3, -0x2710

    .line 184
    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    .line 186
    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 188
    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 190
    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 192
    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 194
    iput v1, p1, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 196
    iput v1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 198
    iput v1, p1, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 200
    iput v1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 202
    const/16 p3, 0x14

    .line 204
    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 206
    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 208
    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 210
    move p3, v1

    .line 211
    :goto_4
    iget-object v0, p1, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    .line 213
    array-length v2, v0

    .line 214
    if-ge p3, v2, :cond_6

    .line 216
    const/4 v2, -0x1

    .line 217
    aput v2, v0, p3

    .line 219
    add-int/lit8 p3, p3, 0x1

    .line 221
    goto :goto_4

    .line 222
    :cond_6
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 224
    iput-boolean v1, p1, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 226
    iput-boolean v1, p1, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    .line 228
    iput-boolean v1, p1, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    .line 230
    iget-object p1, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 232
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 234
    iput-boolean v1, p1, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    .line 236
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 238
    iget-object p3, p1, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    .line 240
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    .line 243
    move-result p3

    .line 244
    const/4 v0, 0x1

    .line 245
    sub-int/2addr p3, v0

    .line 246
    :goto_5
    if-ltz p3, :cond_7

    .line 248
    iget-object v2, p1, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    .line 250
    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Lcom/android/server/am/ReceiverList;

    .line 256
    iget-object v4, p1, Lcom/android/server/am/ProcessReceiverRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 258
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService;->removeReceiverLocked(Lcom/android/server/am/ReceiverList;)V

    .line 261
    add-int/lit8 p3, p3, -0x1

    .line 263
    goto :goto_5

    .line 264
    :cond_7
    iget-object p1, p1, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    .line 266
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 269
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 271
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 273
    invoke-virtual {p1, p0}, Lcom/android/server/am/OomAdjuster;->onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 276
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 278
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 280
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 283
    move-result p1

    .line 284
    sub-int/2addr p1, v0

    .line 285
    move p3, v1

    .line 286
    :goto_6
    iget-object v2, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 288
    iget-object v4, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 290
    if-ltz p1, :cond_d

    .line 292
    iget-object v5, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 294
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 297
    move-result-object v5

    .line 298
    check-cast v5, Lcom/android/server/am/ContentProviderRecord;

    .line 300
    iget-object v6, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 302
    if-eq v6, v4, :cond_8

    .line 304
    goto :goto_9

    .line 305
    :cond_8
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 307
    iget-boolean v6, v6, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    .line 309
    if-nez v6, :cond_a

    .line 311
    if-nez p2, :cond_9

    .line 313
    goto :goto_7

    .line 314
    :cond_9
    move v6, v1

    .line 315
    goto :goto_8

    .line 316
    :cond_a
    :goto_7
    move v6, v0

    .line 317
    :goto_8
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    .line 319
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/ContentProviderHelper;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 322
    move-result v2

    .line 323
    if-nez v6, :cond_c

    .line 325
    if-eqz v2, :cond_c

    .line 327
    iget-object v2, v5, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 329
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 332
    move-result v2

    .line 333
    if-eqz v2, :cond_b

    .line 335
    invoke-virtual {v5}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    .line 338
    move-result v2

    .line 339
    if-eqz v2, :cond_c

    .line 341
    :cond_b
    move p3, v0

    .line 342
    :cond_c
    iput-object v3, v5, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 344
    invoke-virtual {v5, v3}, Lcom/android/server/am/ContentProviderRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 347
    :goto_9
    add-int/lit8 p1, p1, -0x1

    .line 349
    goto :goto_6

    .line 350
    :cond_d
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 352
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 355
    iget-object p1, v2, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    .line 357
    invoke-virtual {p1, v4, v1}, Lcom/android/server/am/ContentProviderHelper;->cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 360
    move-result p1

    .line 361
    if-eqz p1, :cond_e

    .line 363
    iget-object p1, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 365
    invoke-virtual {p1, v4}, Lcom/android/server/am/ProcessList;->noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 368
    move p3, v0

    .line 369
    :cond_e
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 371
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 374
    move-result p1

    .line 375
    if-nez p1, :cond_10

    .line 377
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 379
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 382
    move-result p1

    .line 383
    sub-int/2addr p1, v0

    .line 384
    :goto_a
    if-ltz p1, :cond_f

    .line 386
    iget-object p2, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 388
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 391
    move-result-object p2

    .line 392
    check-cast p2, Lcom/android/server/am/ContentProviderConnection;

    .line 394
    iget-object v0, p2, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 396
    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 398
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 401
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 403
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 405
    iget-object p2, p2, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 407
    iget v2, p2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 409
    iget-object v3, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 411
    iget-wide v5, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 413
    iget-object v3, p2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 415
    iget-object p2, p2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 417
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 419
    iget-object p2, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 421
    invoke-virtual {p2, v3, v1, v0, v2}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 424
    add-int/lit8 p1, p1, -0x1

    .line 426
    goto :goto_a

    .line 427
    :cond_f
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 429
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 432
    :cond_10
    return p3

    .line 433
    :catchall_2
    move-exception p0

    .line 434
    goto :goto_c

    .line 435
    :goto_b
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 436
    :try_start_8
    throw p0

    .line 437
    :goto_c
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 438
    throw p0
.end method

.method public final removeBackgroundStartPrivileges(Landroid/os/Binder;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "entity"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 20
    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessRecord;->setBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0
.end method

.method public final resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 6
    iget-object v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 8
    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 10
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 13
    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->size()I

    .line 16
    move-result v9

    .line 17
    const/4 v10, 0x1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    move-result-wide v5

    .line 24
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    .line 27
    move-result v4

    .line 28
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 30
    iget-object v7, v2, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 32
    const/4 v3, -0x1

    .line 33
    move-object v2, v1

    .line 34
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 37
    if-eq v9, v10, :cond_1

    .line 39
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 41
    new-instance v3, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;

    .line 43
    invoke-direct {v3, v1}, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 46
    invoke-virtual {v2, v3}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V

    .line 49
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 51
    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->clear()V

    .line 54
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 56
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 58
    iget-wide v3, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 60
    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 63
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 65
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 67
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 69
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 71
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 73
    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 75
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 77
    iget-object v9, p1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 79
    invoke-virtual {v9, v3, v4, v5, v6}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 82
    move-result-object v3

    .line 83
    iput-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 85
    iget-object p1, p1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 87
    invoke-virtual {p1, v3, v7}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    .line 90
    move-result-object p1

    .line 91
    iput-object p1, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 93
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 95
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 97
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 99
    invoke-virtual {p1, p0, v2}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    .line 102
    iget-object p0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 104
    if-eq p0, v1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_1

    .line 112
    :cond_0
    if-eq v9, v10, :cond_1

    .line 114
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 116
    invoke-virtual {p1}, Lcom/android/server/am/PackageList;->clear()V

    .line 119
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 121
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 123
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 125
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 127
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 129
    iget-wide v3, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 131
    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 134
    invoke-virtual {p1, v1, v2}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    .line 137
    :cond_1
    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    return-void

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    goto :goto_2

    .line 142
    :goto_1
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    :try_start_4
    throw p0

    .line 144
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    throw p0
.end method

.method public final setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    move v2, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v0

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 12
    const/4 v3, -0x1

    .line 13
    if-eqz v2, :cond_1

    .line 15
    iget v4, p1, Lcom/android/server/am/ActiveInstrumentation;->mSourceUid:I

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v4, v3

    .line 19
    :goto_1
    if-eqz v2, :cond_2

    .line 21
    iget-boolean p1, p1, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    .line 23
    if-eqz p1, :cond_2

    .line 25
    move p1, v1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move p1, v0

    .line 28
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    if-nez v2, :cond_3

    .line 33
    if-ne v4, v3, :cond_4

    .line 35
    :cond_3
    move v0, v1

    .line 36
    :cond_4
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 39
    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    .line 41
    iput v4, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentationSourceUid:I

    .line 43
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    .line 45
    return-void
.end method

.method public final setBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 3
    monitor-enter v0

    .line 4
    if-nez p2, :cond_0

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/app/BackgroundStartPrivileges;

    .line 25
    if-eq p2, p1, :cond_1

    .line 27
    :goto_0
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    .line 30
    :cond_1
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final setPendingUiClean(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 9
    iput-boolean p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    .line 11
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 13
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 15
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 27
    throw p0
.end method

.method public final setPid(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mWasForceStopped:Z

    .line 10
    :cond_0
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 12
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 14
    iput p1, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 23
    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 28
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final setRunningRemoteAnimation(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    move-result v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    const-string p0, "ActivityManager"

    .line 11
    const-string/jumbo p1, "system can\'t run remote animation"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 26
    iget-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    .line 28
    if-ne v1, p1, :cond_1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    .line 33
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 35
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 37
    const/16 v1, 0x9

    .line 39
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 42
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 52
    throw p0
.end method

.method public final toShortString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    return-object v0
.end method

.method public final toShortString(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 5
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 10
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v0, 0x75

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-lt v0, v1, :cond_1

    const/16 v2, 0x61

    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v1

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x73

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    :goto_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_2

    const/16 v0, 0x69

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const v0, 0x182b8

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x80

    .line 8
    const-string v1, "ProcessRecord{"

    .line 10
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const/16 v1, 0x20

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 33
    const/16 v1, 0x7d

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    .line 44
    return-object v0
.end method

.method public final unlinkDeathRecipient()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 22
    return-void
.end method

.method public final updateProcessInfo(ZZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6
    monitor-enter v0

    .line 7
    if-eqz p1, :cond_0

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 11
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 13
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 15
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 23
    if-nez p1, :cond_1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    return-void

    .line 30
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 32
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, p0, v1, p2}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    .line 38
    if-eqz p3, :cond_2

    .line 40
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 42
    const/4 p2, 0x1

    .line 43
    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 46
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 50
    return-void

    .line 51
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 55
    throw p0
.end method

.method public final useFifoUiScheduling()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    .line 5
    if-nez v1, :cond_1

    .line 7
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mAllowSpecifiedFifoScheduling:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 13
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mUseFifoUiScheduling:Z

    .line 15
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method
