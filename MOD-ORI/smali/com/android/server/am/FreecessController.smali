.class public final Lcom/android/server/am/FreecessController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static CACHED_RESTRICTED_BINDER:Z

.field public static DEFAULT_RECV_BUFSIZE:I

.field public static FASTOLAF_FEATURE_DEALY_SERVICE:Z

.field public static FASTOLAF_FEATURE_LESSUFZ:Z

.field public static FASTOLAF_FEATURE_MOREFZ:Z

.field public static FASTOLAF_IMPROVE_SPEED:Z

.field public static FASTOLAF_PENDING_JOB:Z

.field public static FASTOLAF_REDUCE_PROTECT_TIME:Z

.field public static FEATURE_SERVICE_GUARD:Z

.field public static final IS_MINIMIZE_OLAF_LOCK:Z

.field public static final IS_SUPPORT_CALM_MODE:Z

.field public static IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

.field public static final NETLINK_KFREECESS:I

.field public static final mCountry:Ljava/lang/String;

.field public static final productModel:Ljava/lang/String;


# instance fields
.field public FREECESS_ENHANCEMENT:Z

.field public FREECESS_LRS_ENABLED:Z

.field public final calmModeFilterList:Ljava/util/Set;

.field public cntFailFreeze:I

.field public cntFailUnfreeze:I

.field public final fastOlafUfzList:Ljava/util/Set;

.field public final filterList:Ljava/util/Set;

.field public mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

.field public final mCalmModeDefaultAllowList:Ljava/util/Set;

.field public mCalmModeEnabled:Z

.field public final mCameraDeviceStateCallback:Lcom/android/server/am/FreecessController$1;

.field public mCarModeOn:Z

.field public final mConfigFreecess:I

.field public mContext:Landroid/content/Context;

.field public final mCtsGtsList:Ljava/util/Set;

.field public mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field public mEmergencyModeOn:Z

.field public final mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

.field public final mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

.field public final mFreezeExemption:Ljava/util/Set;

.field public final mFreezeExemptionChina:Ljava/util/Set;

.field public final mFreezeExemptionStartsWith:Ljava/util/Set;

.field public final mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

.field public final mFrozenPidListSelfLocked:Ljava/util/HashSet;

.field public final mGPSAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mGameModeEnabled:Z

.field public mGpsDefaultAllowList:Ljava/util/List;

.field public mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public mIsDumpstateWorking:Z

.field public mIsFreecessEnable:Z

.field public mIsKernelSupportFreecess:Z

.field public mIsOLAFEnabled:Z

.field public mIsQuickFreezeEnabled:Z

.field public mIsScreenOnFreecessEnabled:Z

.field public mIsSmartSwitchWorking:Z

.field public mLastTopUid:I

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public mLocationManager:Landroid/location/ILocationManager;

.field public final mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

.field public mMismatchFlag:Z

.field public final mMonitorFreezedList:Ljava/util/ArrayList;

.field public mNMs:Landroid/os/INetworkManagementService;

.field public final mOLAFAllowListForDebug:Ljava/util/ArrayList;

.field public final mOLAFBlockList:Ljava/util/ArrayList;

.field public final mOLAFExemption:Ljava/util/Set;

.field public final mOLAFExemptionGlobal:Ljava/util/Set;

.field public final mOLAFExemptionStartsWith:Ljava/util/Set;

.field public final mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mOlafJobExemptionList:Ljava/util/Set;

.field public mOlafTargetPkg:Ljava/lang/String;

.field public mOlafTargetUserId:I

.field public final mPendingBlocklistForGPS:Ljava/util/ArrayList;

.field public final mPendingIntents:Ljava/util/ArrayList;

.field public final mPendingIntentsIdle:Ljava/util/ArrayList;

.field public final mPendingRemoveConnectionMap:Landroid/util/ArrayMap;

.field public mPidUnfreezeEnabled:Z

.field public final mProcessObserver:Lcom/android/server/am/FreecessController$2;

.field public mRecordingEndTime:J

.field public mRecordingStartTime:J

.field public final mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

.field public mScreenOn:Z

.field public mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

.field public final mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

.field public mSkipTriggerLcdOnFreeze:Z

.field public mUidIdleCheck:Z

.field public final olafUfzList:Ljava/util/Set;

.field public olafUnfreezeEstimatedTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string/jumbo v0, "sys.config.mars_min_olaf_lock"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    sput-object v2, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    .line 16
    .line 17
    const-string/jumbo v2, "ro.product.model"

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    sput-object v3, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    const-string v4, "SM-G98"

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const-string v5, "SM-G99"

    .line 35
    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    const-string v4, "SM-N98"

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    const-string v4, "SM-S91"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_1

    .line 62
    .line 63
    const-string v4, "SM-S92"

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_1

    .line 70
    .line 71
    const-string v4, "SM-S93"

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    :cond_1
    sput-boolean v1, Lcom/android/server/am/FreecessController;->IS_SUPPORT_CALM_MODE:Z

    .line 80
    .line 81
    :cond_2
    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    .line 82
    .line 83
    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    .line 84
    .line 85
    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    .line 86
    .line 87
    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    .line 88
    .line 89
    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    .line 90
    .line 91
    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    .line 92
    .line 93
    sput-boolean v0, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    .line 94
    .line 95
    sput-boolean v0, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    .line 96
    .line 97
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/android/server/am/FreecessController;->mCountry:Ljava/lang/String;

    .line 102
    .line 103
    const/16 v0, 0x1b

    .line 104
    .line 105
    sput v0, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    .line 106
    .line 107
    const-string/jumbo v0, "ro.board.platform"

    .line 108
    .line 109
    .line 110
    const-string v3, ""

    .line 111
    .line 112
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    const-string/jumbo v4, "mt"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    const/16 v0, 0x1f

    .line 128
    .line 129
    sput v0, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    .line 130
    .line 131
    :cond_3
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const-string v2, "A366"

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 144
    .line 145
    sput-boolean v1, Lcom/android/server/am/FreecessHandler;->mOlafEnterDelay:Z

    .line 146
    .line 147
    :cond_4
    const/16 v0, 0x9c

    .line 148
    .line 149
    sput v0, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    .line 150
    .line 151
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/am/FreecessPkgMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/am/FreecessPkgMap;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/am/FreecessPkgMap;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mOlafJobExemptionList:Ljava/util/Set;

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 49
    .line 50
    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 51
    .line 52
    const-string/jumbo v3, "sys.config.mars_freecess_lrs"

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iput-boolean v3, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    .line 60
    .line 61
    new-instance v3, Ljava/util/HashSet;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 67
    .line 68
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 69
    .line 70
    const-string v3, "4"

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iput v3, p0, Lcom/android/server/am/FreecessController;->mConfigFreecess:I

    .line 77
    .line 78
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 79
    .line 80
    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 81
    .line 82
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 83
    .line 84
    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 85
    .line 86
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    .line 87
    .line 88
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    .line 89
    .line 90
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 91
    .line 92
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 93
    .line 94
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 95
    .line 96
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    .line 98
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 99
    .line 100
    .line 101
    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    const-wide/16 v2, 0x0

    .line 104
    .line 105
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 110
    .line 111
    sget-object v4, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 112
    .line 113
    iget-object v5, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mFreezeExemption:Ljava/util/Set;

    .line 114
    .line 115
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    .line 116
    .line 117
    iget-object v5, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mFreezeExemptionStartsWith:Ljava/util/Set;

    .line 118
    .line 119
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mFreezeExemptionStartsWith:Ljava/util/Set;

    .line 120
    .line 121
    iget-object v5, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mFreezeExemptionChina:Ljava/util/Set;

    .line 122
    .line 123
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mFreezeExemptionChina:Ljava/util/Set;

    .line 124
    .line 125
    iget-object v5, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFExemptionGlobal:Ljava/util/Set;

    .line 126
    .line 127
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mOLAFExemptionGlobal:Ljava/util/Set;

    .line 128
    .line 129
    iget-object v5, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFExemption:Ljava/util/Set;

    .line 130
    .line 131
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mOLAFExemption:Ljava/util/Set;

    .line 132
    .line 133
    iget-object v5, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFExemptionStartsWith:Ljava/util/Set;

    .line 134
    .line 135
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mOLAFExemptionStartsWith:Ljava/util/Set;

    .line 136
    .line 137
    new-instance v5, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 143
    .line 144
    new-instance v5, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    .line 150
    .line 151
    iget-object v5, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingIntentList:Ljava/util/ArrayList;

    .line 152
    .line 153
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 154
    .line 155
    iget-object v5, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingIntentIdleList:Ljava/util/ArrayList;

    .line 156
    .line 157
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    .line 158
    .line 159
    iget-object v5, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 160
    .line 161
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 162
    .line 163
    iget-object v5, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mCtsGtsList:Ljava/util/Set;

    .line 164
    .line 165
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mCtsGtsList:Ljava/util/Set;

    .line 166
    .line 167
    new-instance v5, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mGpsDefaultAllowList:Ljava/util/List;

    .line 173
    .line 174
    iget-object v5, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mFilterList:Ljava/util/Set;

    .line 175
    .line 176
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->filterList:Ljava/util/Set;

    .line 177
    .line 178
    iget-object v5, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mOlafUfzList:Ljava/util/Set;

    .line 179
    .line 180
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/Set;

    .line 181
    .line 182
    iget-object v5, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mFastOlafUfzList:Ljava/util/Set;

    .line 183
    .line 184
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->fastOlafUfzList:Ljava/util/Set;

    .line 185
    .line 186
    iget-object v5, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mCalmModeFilterList:Ljava/util/Set;

    .line 187
    .line 188
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->calmModeFilterList:Ljava/util/Set;

    .line 189
    .line 190
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 191
    .line 192
    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 193
    .line 194
    .line 195
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 196
    .line 197
    const/16 v5, -0xa

    .line 198
    .line 199
    iput v5, p0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    .line 200
    .line 201
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 202
    .line 203
    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 204
    .line 205
    .line 206
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 207
    .line 208
    new-instance v5, Lcom/android/server/am/FreecessController$UidPidMap;

    .line 209
    .line 210
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 211
    .line 212
    .line 213
    new-instance v6, Landroid/util/ArrayMap;

    .line 214
    .line 215
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 216
    .line 217
    .line 218
    iput-object v6, v5, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    .line 219
    .line 220
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 221
    .line 222
    new-instance v5, Lcom/android/server/am/FreecessController$1;

    .line 223
    .line 224
    invoke-direct {v5, p0}, Lcom/android/server/am/FreecessController$1;-><init>(Lcom/android/server/am/FreecessController;)V

    .line 225
    .line 226
    .line 227
    iput-object v5, p0, Lcom/android/server/am/FreecessController;->mCameraDeviceStateCallback:Lcom/android/server/am/FreecessController$1;

    .line 228
    .line 229
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 230
    .line 231
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mGameModeEnabled:Z

    .line 232
    .line 233
    iget-object v4, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mCalmModeDefaultList:Ljava/util/Set;

    .line 234
    .line 235
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mCalmModeDefaultAllowList:Ljava/util/Set;

    .line 236
    .line 237
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    .line 238
    .line 239
    new-instance v4, Lcom/android/server/am/FreecessController$2;

    .line 240
    .line 241
    invoke-direct {v4, p0}, Lcom/android/server/am/FreecessController$2;-><init>(Lcom/android/server/am/FreecessController;)V

    .line 242
    .line 243
    .line 244
    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mProcessObserver:Lcom/android/server/am/FreecessController$2;

    .line 245
    .line 246
    iput-wide v2, p0, Lcom/android/server/am/FreecessController;->mRecordingStartTime:J

    .line 247
    .line 248
    iput-wide v2, p0, Lcom/android/server/am/FreecessController;->mRecordingEndTime:J

    .line 249
    .line 250
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 251
    .line 252
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    .line 253
    .line 254
    new-instance v0, Landroid/util/ArrayMap;

    .line 255
    .line 256
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 257
    .line 258
    .line 259
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingRemoveConnectionMap:Landroid/util/ArrayMap;

    .line 260
    .line 261
    return-void
.end method

.method public static checkFgsPkgSkipToFreeze(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 23
    .line 24
    iget v4, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 27
    .line 28
    const-string v6, ") is important[fg-service]"

    .line 29
    .line 30
    const-string v7, "("

    .line 31
    .line 32
    const-string v8, "FreecessController"

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const v0, 0x40001e21

    .line 43
    .line 44
    .line 45
    iget p0, p0, Lcom/android/server/am/FreecessPkgStatus;->serviceTypes:I

    .line 46
    .line 47
    and-int/2addr p0, v0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " has important fgs type according Google fg Api , skip to freeze it. "

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v8, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    return v2

    .line 95
    :cond_2
    if-eqz v0, :cond_3

    .line 96
    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return v2

    .line 122
    :cond_3
    return v1
.end method

.method public static convertLevelChangeInfoToString(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, " "

    .line 11
    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    const-string v1, "[OLAF] "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-lez p0, :cond_1

    .line 42
    .line 43
    const-string p0, "[IMP] "

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method public static formatDateTime(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "null"

    .line 8
    .line 9
    .line 10
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string p1, "%23s"

    .line 15
    .line 16
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 22
    .line 23
    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss.SSS"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/util/Date;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static freezeTargetProcess(ILjava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    const-string v1, "android.app.stubs"

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string/jumbo v1, "com.android.app.cts."

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    :cond_0
    return v0

    .line 22
    :cond_1
    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    return v0

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public static isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 4

    if-eqz p0, :cond_5

    .line 1
    iget v0, p0, Lcom/android/server/am/FreecessPkgStatus;->targetSdkVersion:I

    const/16 v1, 0x22

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/FreecessPkgStatus;->serviceTypes:I

    if-eqz v0, :cond_0

    .line 2
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 3
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez v0, :cond_0

    return v2

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    if-eqz v0, :cond_1

    return v2

    .line 7
    :cond_1
    iget v0, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget v1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    if-eqz v1, :cond_3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const-string v1, " is doing GC, skip to freeze it."

    const-string v3, "FreecessController"

    .line 10
    invoke-static {v0, p0, v1, v3}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 11
    :cond_3
    sget-object p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTAllowList:Ljava/util/List;

    if-eqz p0, :cond_5

    .line 14
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    :goto_0
    return v2

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static isMainProcDepend(Lcom/android/server/am/ProcessRecord;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    :goto_0
    if-ltz v0, :cond_4

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 22
    .line 23
    if-eq v3, p0, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    sub-int/2addr v3, v1

    .line 33
    :goto_1
    if-ltz v3, :cond_3

    .line 34
    .line 35
    iget-object v4, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/android/server/am/ContentProviderConnection;

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    iget-object v5, v4, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    iget-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 50
    .line 51
    if-nez v6, :cond_2

    .line 52
    .line 53
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 54
    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    iget v6, v5, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 58
    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 62
    .line 63
    if-eq v6, v7, :cond_2

    .line 64
    .line 65
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 66
    .line 67
    iget-boolean v6, v6, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 68
    .line 69
    if-nez v6, :cond_1

    .line 70
    .line 71
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 74
    .line 75
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_2

    .line 82
    .line 83
    :cond_1
    iget-object v5, v4, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter v5

    .line 86
    :try_start_0
    iget v4, v4, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 87
    .line 88
    monitor-exit v5

    .line 89
    if-lez v4, :cond_2

    .line 90
    .line 91
    return v1

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0

    .line 95
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    const/4 p0, 0x0

    .line 102
    return p0
.end method

.method public static shouldSkipShareUid()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public static updateFrozenStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 28
    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public canUidBeFrozen(Ljava/util/ArrayList;Lcom/android/server/am/FreecessController$checkResultCallback;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->checkProcDiedOrComponentExecutingForFreeze(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    packed-switch p0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    const-string p0, "UNKNOWN"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_0
    const-string p0, "BTOP"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_1
    const-string p0, "RL"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_2
    const-string p0, "FG"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_3
    const-string p0, "SP"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_4
    const-string p0, "LP"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_5
    const-string p0, "RI"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_6
    const-string p0, "ES"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_7
    const-string p0, "AD"

    .line 52
    .line 53
    :goto_0
    if-eqz p2, :cond_1

    .line 54
    .line 55
    invoke-interface {p2, p0}, Lcom/android/server/am/FreecessController$checkResultCallback;->freezeSkipFrozen(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return v0

    .line 59
    :cond_2
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 62
    .line 63
    const-string p0, "NP"

    .line 64
    .line 65
    invoke-interface {p2, p0}, Lcom/android/server/am/FreecessController$checkResultCallback;->freezeSkipFrozen(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    return v0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final cancelCalmMode()V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-ge v4, v5, :cond_3

    .line 24
    .line 25
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/am/FreecessPkgStatus;

    .line 30
    .line 31
    sget-object v6, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 32
    .line 33
    iget-object v7, v5, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 34
    .line 35
    iget v8, v5, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 36
    .line 37
    invoke-virtual {v6, v8, v7}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    iget-object v8, v5, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 42
    .line 43
    iget v9, v5, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 44
    .line 45
    invoke-virtual {v6, v9, v8}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    if-eqz v7, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    iget-boolean v6, v5, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 55
    .line 56
    if-eqz v6, :cond_2

    .line 57
    .line 58
    iput-boolean v3, v5, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto/16 :goto_9

    .line 63
    .line 64
    :cond_1
    :goto_1
    const-string v6, "CalmMode"

    .line 65
    .line 66
    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/FreecessController;->unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    iget v5, v5, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 75
    .line 76
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v5, " "

    .line 80
    .line 81
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    sget-object v1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 96
    .line 97
    iget-object v1, v1, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 98
    .line 99
    if-nez v1, :cond_4

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    const/16 v2, 0x16

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    .line 106
    .line 107
    :goto_3
    iput-boolean v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 108
    .line 109
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v2, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 125
    .line 126
    monitor-enter v4

    .line 127
    move v5, v3

    .line 128
    :goto_4
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 129
    .line 130
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 131
    .line 132
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-ge v5, v6, :cond_8

    .line 137
    .line 138
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 139
    .line 140
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 141
    .line 142
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    check-cast v6, Landroid/util/SparseArray;

    .line 147
    .line 148
    move v7, v3

    .line 149
    :goto_5
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-ge v7, v8, :cond_7

    .line 154
    .line 155
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    check-cast v8, Lcom/android/server/am/MARsPackageInfo;

    .line 160
    .line 161
    iput v3, v8, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 162
    .line 163
    iget-object v9, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 164
    .line 165
    if-eqz v9, :cond_5

    .line 166
    .line 167
    iget v9, v9, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 168
    .line 169
    const/16 v10, 0x9

    .line 170
    .line 171
    if-ne v9, v10, :cond_5

    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    iput-object v9, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :catchall_1
    move-exception p0

    .line 178
    goto :goto_8

    .line 179
    :cond_5
    :goto_6
    iget-object v9, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 180
    .line 181
    if-nez v9, :cond_6

    .line 182
    .line 183
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_8
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-ge v3, v5, :cond_9

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    .line 203
    .line 204
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 205
    .line 206
    iget-object v7, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 207
    .line 208
    iget v8, v5, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 209
    .line 210
    invoke-virtual {v6, v8, v7}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    iget v5, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 219
    .line 220
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v5, " "

    .line 224
    .line 225
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    add-int/lit8 v3, v3, 0x1

    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_9
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    const-string v2, "Calm"

    .line 240
    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v4, "CancelPolicy-"

    .line 244
    .line 245
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v1, " UFZ-"

    .line 256
    .line 257
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :goto_8
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 276
    throw p0

    .line 277
    :goto_9
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    throw p0
.end method

.method public final closeSocketsForFreecessFirewallChain()V
    .locals 5

    .line 1
    const-string v0, "Error occured while closeSocketsForFreecessFirewallChain: "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    const-string/jumbo v3, "network_management"

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    :try_start_0
    const-string/jumbo v3, "fw_oem_deny_1"

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x7

    .line 32
    invoke-interface {p0, v4, v3}, Landroid/os/INetworkManagementService;->closeSocketsForFreecess(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p0

    .line 42
    :try_start_1
    const-string v3, "FreecessController"

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_1
    :goto_2
    return-void
.end method

.method public final deleteRemovedPackage(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 9
    .line 10
    invoke-virtual {v2, v0, p2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const-string v2, "PkgRemoved"

    .line 17
    .line 18
    invoke-virtual {p0, v0, p2, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final dumpFreecess(Ljava/io/PrintWriter;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 8
    .line 9
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 19
    .line 20
    monitor-enter v4

    .line 21
    :try_start_0
    const-string v5, "FREECESS STATE"

    .line 22
    .line 23
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v5, "-FreecessEnabled : "

    .line 27
    .line 28
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v5, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    const-string v5, "Y"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto/16 :goto_23

    .line 40
    .line 41
    :cond_0
    const-string v5, "N"

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v5, "-KernelSupport : "

    .line 47
    .line 48
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-boolean v5, v0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    .line 52
    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    const-string v5, "Y"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string v5, "N"

    .line 59
    .line 60
    :goto_1
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v5, " -FreecessEnhancementEnabled : "

    .line 64
    .line 65
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v5, v0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 69
    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    const-string v5, "Y"

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    const-string v5, "N"

    .line 76
    .line 77
    :goto_2
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v5, " -EnhancedBackgroundRestricted : (Binder:"

    .line 81
    .line 82
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sget-boolean v5, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    .line 86
    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    const-string v5, "Y,"

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_3
    const-string v5, "N,"

    .line 93
    .line 94
    :goto_3
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v5, "Intent:"

    .line 98
    .line 99
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v5, "N)"

    .line 103
    .line 104
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v5, " -ChinaPolicyEnabled : "

    .line 108
    .line 109
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    const-string v3, "Y"

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_4
    const-string v3, "N"

    .line 118
    .line 119
    :goto_4
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v3, " -Mimimize_OLAF_lock : "

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-boolean v3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 128
    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    const-string v3, "Y"

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_5
    const-string v3, "N"

    .line 135
    .line 136
    :goto_5
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v3, " -QuickFreezeEnabled : "

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 145
    .line 146
    if-eqz v3, :cond_6

    .line 147
    .line 148
    const-string v3, "Y"

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_6
    const-string v3, "N"

    .line 152
    .line 153
    :goto_6
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v3, " -PidUfzEnabled : "

    .line 157
    .line 158
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 162
    .line 163
    if-eqz v3, :cond_7

    .line 164
    .line 165
    const-string v3, "Y"

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_7
    const-string v3, "N"

    .line 169
    .line 170
    :goto_7
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v3, " -RestrictJobDuringOlaf : "

    .line 174
    .line 175
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    sget-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    .line 179
    .line 180
    if-eqz v3, :cond_8

    .line 181
    .line 182
    const-string v3, "Y"

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_8
    const-string v3, "N"

    .line 186
    .line 187
    :goto_8
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v3, " -DealyServiceDuringOlaf : "

    .line 191
    .line 192
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    sget-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    .line 196
    .line 197
    if-eqz v3, :cond_9

    .line 198
    .line 199
    const-string v3, "Y"

    .line 200
    .line 201
    goto :goto_9

    .line 202
    :cond_9
    const-string v3, "N"

    .line 203
    .line 204
    :goto_9
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v3, " -FASTOLAF_FEATURE_MOREFZ : "

    .line 208
    .line 209
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    sget-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    .line 213
    .line 214
    if-eqz v3, :cond_a

    .line 215
    .line 216
    const-string v3, "Y"

    .line 217
    .line 218
    goto :goto_a

    .line 219
    :cond_a
    const-string v3, "N"

    .line 220
    .line 221
    :goto_a
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const-string v3, " -FASTOLAF_FEATURE_LESSUFZ : "

    .line 225
    .line 226
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    sget-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    .line 230
    .line 231
    if-eqz v3, :cond_b

    .line 232
    .line 233
    const-string v3, "Y"

    .line 234
    .line 235
    goto :goto_b

    .line 236
    :cond_b
    const-string v3, "N"

    .line 237
    .line 238
    :goto_b
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string v3, " -CALM : "

    .line 242
    .line 243
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 247
    .line 248
    if-eqz v3, :cond_c

    .line 249
    .line 250
    const-string v3, "Y"

    .line 251
    .line 252
    goto :goto_c

    .line 253
    :cond_c
    const-string v3, "N"

    .line 254
    .line 255
    :goto_c
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const-string v3, " -GAME : "

    .line 259
    .line 260
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->mGameModeEnabled:Z

    .line 264
    .line 265
    if-eqz v3, :cond_d

    .line 266
    .line 267
    const-string v3, "Y"

    .line 268
    .line 269
    goto :goto_d

    .line 270
    :cond_d
    const-string v3, "N"

    .line 271
    .line 272
    :goto_d
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    const-string v3, " -fastolaf_protect_freeze : "

    .line 276
    .line 277
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    sget-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    .line 281
    .line 282
    if-eqz v3, :cond_e

    .line 283
    .line 284
    const-string v3, "Y"

    .line 285
    .line 286
    goto :goto_e

    .line 287
    :cond_e
    const-string v3, "N"

    .line 288
    .line 289
    :goto_e
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    const-string v3, " -FASTOLAF_IMPROVE_SPEED : "

    .line 293
    .line 294
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    sget-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    .line 298
    .line 299
    if-eqz v3, :cond_f

    .line 300
    .line 301
    const-string v3, "Y"

    .line 302
    .line 303
    goto :goto_f

    .line 304
    :cond_f
    const-string v3, "N"

    .line 305
    .line 306
    :goto_f
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const-string v3, " -LRsEnabled : "

    .line 310
    .line 311
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    .line 315
    .line 316
    if-eqz v3, :cond_10

    .line 317
    .line 318
    const-string v3, "Y"

    .line 319
    .line 320
    goto :goto_10

    .line 321
    :cond_10
    const-string v3, "N"

    .line 322
    .line 323
    :goto_10
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const-string v3, " -AUFAllowBucketSize : "

    .line 327
    .line 328
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    sget v3, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    .line 332
    .line 333
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 334
    .line 335
    .line 336
    const-string v3, " -cntFail(FZ/UFZ/UFZ_P) : "

    .line 337
    .line 338
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget v2, v0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    .line 347
    .line 348
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v2, "/"

    .line 352
    .line 353
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    iget v2, v0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    .line 357
    .line 358
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    const-string v2, ""

    .line 369
    .line 370
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    const-string v2, "ACTIVITY MANAGER Freecess (dumpsys activity freecess)"

    .line 374
    .line 375
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    const-string/jumbo v2, "mFreecessManagedPackages --- size "

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 385
    .line 386
    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->totalSize()I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 391
    .line 392
    .line 393
    const-string v2, "%-9s%-6s%-5s%-4s%-2s|%s %s"

    .line 394
    .line 395
    const-string v5, "Uid"

    .line 396
    .line 397
    const-string v6, "Share"

    .line 398
    .line 399
    const-string v7, "Idle"

    .line 400
    .line 401
    const-string v8, "Top"

    .line 402
    .line 403
    const-string v9, "S"

    .line 404
    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 411
    .line 412
    .line 413
    move-result-object v10

    .line 414
    array-length v11, v10

    .line 415
    const/4 v12, 0x0

    .line 416
    move v13, v12

    .line 417
    :goto_11
    if-ge v13, v11, :cond_11

    .line 418
    .line 419
    aget-object v14, v10, v13

    .line 420
    .line 421
    invoke-virtual {v14}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    .line 422
    .line 423
    .line 424
    move-result v14

    .line 425
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    .line 427
    .line 428
    move-result-object v14

    .line 429
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v14

    .line 433
    const-string v15, "T%-3d|"

    .line 434
    .line 435
    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v14

    .line 439
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    add-int/lit8 v13, v13, 0x1

    .line 443
    .line 444
    goto :goto_11

    .line 445
    :cond_11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v10

    .line 449
    const-string v11, "Pkg"

    .line 450
    .line 451
    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    move v2, v12

    .line 463
    :goto_12
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 464
    .line 465
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 466
    .line 467
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-ge v2, v3, :cond_19

    .line 472
    .line 473
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 474
    .line 475
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 476
    .line 477
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    check-cast v3, Landroid/util/SparseArray;

    .line 482
    .line 483
    move v5, v12

    .line 484
    :goto_13
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 485
    .line 486
    .line 487
    move-result v6

    .line 488
    if-ge v5, v6, :cond_18

    .line 489
    .line 490
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v6

    .line 494
    check-cast v6, Lcom/android/server/am/FreecessPkgStatus;

    .line 495
    .line 496
    if-nez v6, :cond_12

    .line 497
    .line 498
    goto/16 :goto_1c

    .line 499
    .line 500
    :cond_12
    const-string v7, "%-9d%3s%5s%5s%3s |%s %s"

    .line 501
    .line 502
    iget v8, v6, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 503
    .line 504
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 505
    .line 506
    .line 507
    move-result-object v13

    .line 508
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 509
    .line 510
    if-eqz v8, :cond_13

    .line 511
    .line 512
    const-string v8, "Y"

    .line 513
    .line 514
    :goto_14
    move-object v14, v8

    .line 515
    goto :goto_15

    .line 516
    :cond_13
    const-string v8, "-"

    .line 517
    .line 518
    goto :goto_14

    .line 519
    :goto_15
    sget-object v8, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 520
    .line 521
    iget v9, v6, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 522
    .line 523
    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 524
    .line 525
    .line 526
    move-result v9

    .line 527
    if-eqz v9, :cond_14

    .line 528
    .line 529
    const-string v9, "Y"

    .line 530
    .line 531
    :goto_16
    move-object v15, v9

    .line 532
    goto :goto_17

    .line 533
    :cond_14
    const-string v9, "-"

    .line 534
    .line 535
    goto :goto_16

    .line 536
    :goto_17
    iget v9, v6, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 537
    .line 538
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 539
    .line 540
    .line 541
    move-result-object v9

    .line 542
    iget-object v10, v8, Lcom/android/server/am/mars/util/UidStateMgr;->mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 543
    .line 544
    invoke-virtual {v10, v9}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v9

    .line 548
    if-eqz v9, :cond_15

    .line 549
    .line 550
    const-string v9, "Y"

    .line 551
    .line 552
    :goto_18
    move-object/from16 v16, v9

    .line 553
    .line 554
    goto :goto_19

    .line 555
    :cond_15
    const-string v9, "-"

    .line 556
    .line 557
    goto :goto_18

    .line 558
    :goto_19
    iget-object v9, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 559
    .line 560
    iget-boolean v9, v9, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 561
    .line 562
    if-eqz v9, :cond_16

    .line 563
    .line 564
    const-string v8, "F"

    .line 565
    .line 566
    :goto_1a
    move-object/from16 v17, v8

    .line 567
    .line 568
    goto :goto_1b

    .line 569
    :cond_16
    iget v9, v6, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 570
    .line 571
    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    .line 572
    .line 573
    .line 574
    move-result v8

    .line 575
    if-eqz v8, :cond_17

    .line 576
    .line 577
    const-string v8, "R"

    .line 578
    .line 579
    goto :goto_1a

    .line 580
    :cond_17
    const-string v8, "-"

    .line 581
    .line 582
    goto :goto_1a

    .line 583
    :goto_1b
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 584
    .line 585
    invoke-virtual {v8}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->dumpUfzContent()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v18

    .line 589
    iget-object v6, v6, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 590
    .line 591
    move-object/from16 v19, v6

    .line 592
    .line 593
    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v6

    .line 597
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v6

    .line 601
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    :goto_1c
    add-int/lit8 v5, v5, 0x1

    .line 605
    .line 606
    goto :goto_13

    .line 607
    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 608
    .line 609
    goto/16 :goto_12

    .line 610
    .line 611
    :cond_19
    move v2, v12

    .line 612
    :goto_1d
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 613
    .line 614
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 615
    .line 616
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 617
    .line 618
    .line 619
    move-result v3

    .line 620
    if-ge v2, v3, :cond_1c

    .line 621
    .line 622
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 623
    .line 624
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 625
    .line 626
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    check-cast v3, Landroid/util/SparseArray;

    .line 631
    .line 632
    move v5, v12

    .line 633
    :goto_1e
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 634
    .line 635
    .line 636
    move-result v6

    .line 637
    if-ge v5, v6, :cond_1b

    .line 638
    .line 639
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v6

    .line 643
    check-cast v6, Lcom/android/server/am/FreecessPkgStatus;

    .line 644
    .line 645
    iget-object v7, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 646
    .line 647
    iget-object v7, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    .line 648
    .line 649
    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    .line 650
    .line 651
    .line 652
    move-result v7

    .line 653
    xor-int/lit8 v7, v7, 0x1

    .line 654
    .line 655
    if-nez v7, :cond_1a

    .line 656
    .line 657
    goto :goto_1f

    .line 658
    :cond_1a
    new-instance v7, Ljava/lang/StringBuilder;

    .line 659
    .line 660
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .line 662
    .line 663
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 664
    .line 665
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    const-string/jumbo v8, "since "

    .line 669
    .line 670
    .line 671
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 675
    .line 676
    iget-wide v8, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->initialStateTime:J

    .line 677
    .line 678
    invoke-static {v8, v9}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v8

    .line 682
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    const-string v8, " has abuse unfreeze "

    .line 686
    .line 687
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 691
    .line 692
    iget-object v8, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    .line 693
    .line 694
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 695
    .line 696
    .line 697
    move-result v8

    .line 698
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    const-string v8, " ---last abnormal time: "

    .line 702
    .line 703
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    iget-object v6, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 707
    .line 708
    iget-object v6, v6, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    .line 709
    .line 710
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 711
    .line 712
    .line 713
    move-result v8

    .line 714
    add-int/lit8 v8, v8, -0x1

    .line 715
    .line 716
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v6

    .line 720
    check-cast v6, Ljava/lang/Long;

    .line 721
    .line 722
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 723
    .line 724
    .line 725
    move-result-wide v8

    .line 726
    invoke-static {v8, v9}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v6

    .line 737
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    :goto_1f
    add-int/lit8 v5, v5, 0x1

    .line 741
    .line 742
    goto :goto_1e

    .line 743
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    .line 744
    .line 745
    goto/16 :goto_1d

    .line 746
    .line 747
    :cond_1c
    const-string/jumbo v2, "mFreezedPackages --- size "

    .line 748
    .line 749
    .line 750
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 754
    .line 755
    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->totalSize()I

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 760
    .line 761
    .line 762
    move v2, v12

    .line 763
    :goto_20
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 764
    .line 765
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 766
    .line 767
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 768
    .line 769
    .line 770
    move-result v3

    .line 771
    if-ge v2, v3, :cond_1e

    .line 772
    .line 773
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 774
    .line 775
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 776
    .line 777
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    check-cast v3, Landroid/util/SparseArray;

    .line 782
    .line 783
    move v5, v12

    .line 784
    :goto_21
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 785
    .line 786
    .line 787
    move-result v6

    .line 788
    if-ge v5, v6, :cond_1d

    .line 789
    .line 790
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v6

    .line 794
    check-cast v6, Lcom/android/server/am/FreecessPkgStatus;

    .line 795
    .line 796
    const-string v7, "-FZT "

    .line 797
    .line 798
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    iget-object v7, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 802
    .line 803
    iget-wide v7, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    .line 804
    .line 805
    invoke-static {v7, v8}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v7

    .line 809
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    const-string v7, "-UFZT "

    .line 813
    .line 814
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    iget-object v7, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 818
    .line 819
    iget-wide v7, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedTime:J

    .line 820
    .line 821
    invoke-static {v7, v8}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v7

    .line 825
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    const-string v7, "-UFZR "

    .line 829
    .line 830
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    const-string v7, "%10s"

    .line 834
    .line 835
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 836
    .line 837
    iget-object v8, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    .line 838
    .line 839
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v8

    .line 843
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v7

    .line 847
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    const-string v7, "-UserId "

    .line 851
    .line 852
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    const-string v7, "%3d"

    .line 856
    .line 857
    iget v8, v6, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 858
    .line 859
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 860
    .line 861
    .line 862
    move-result-object v8

    .line 863
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v8

    .line 867
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v7

    .line 871
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    const-string v7, "-Pkg "

    .line 875
    .line 876
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    iget-object v6, v6, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 880
    .line 881
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    const-string v6, ""

    .line 885
    .line 886
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    add-int/lit8 v5, v5, 0x1

    .line 890
    .line 891
    goto :goto_21

    .line 892
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    .line 893
    .line 894
    goto/16 :goto_20

    .line 895
    .line 896
    :cond_1e
    const-string/jumbo v2, "mMonitorFreezedList --- size "

    .line 897
    .line 898
    .line 899
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 903
    .line 904
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 905
    .line 906
    .line 907
    move-result v2

    .line 908
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 909
    .line 910
    .line 911
    :goto_22
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 912
    .line 913
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 914
    .line 915
    .line 916
    move-result v2

    .line 917
    if-ge v12, v2, :cond_1f

    .line 918
    .line 919
    const-string v2, "%d "

    .line 920
    .line 921
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 922
    .line 923
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v3

    .line 927
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 936
    .line 937
    .line 938
    add-int/lit8 v12, v12, 0x1

    .line 939
    .line 940
    goto :goto_22

    .line 941
    :cond_1f
    const-string v2, ""

    .line 942
    .line 943
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 948
    .line 949
    iget-object v2, v2, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 950
    .line 951
    if-eqz v2, :cond_20

    .line 952
    .line 953
    new-instance v3, Landroid/util/PrintWriterPrinter;

    .line 954
    .line 955
    invoke-direct {v3, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 956
    .line 957
    .line 958
    const-string v4, "Freecess"

    .line 959
    .line 960
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->getTargetUidNameMap()Landroid/util/ArrayMap;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    sget-boolean v2, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 968
    .line 969
    sget-object v2, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 970
    .line 971
    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/mars/EventRecorder;->reportUnfreezeCount(Landroid/util/ArrayMap;Ljava/io/PrintWriter;)V

    .line 972
    .line 973
    .line 974
    return-void

    .line 975
    :goto_23
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 976
    throw v0
.end method

.method public final dumpFreecessCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string/jumbo v3, "dumpMARsCommand(netd off)uid = "

    .line 8
    .line 9
    .line 10
    const-string/jumbo v4, "dumpMARsCommand(netd on)uid = "

    .line 11
    .line 12
    .line 13
    const-string/jumbo v5, "report_unfreeze"

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    aget-object v7, v2, v6

    .line 18
    .line 19
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->getTargetUidNameMap()Landroid/util/ArrayMap;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    sget-boolean v7, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 30
    .line 31
    sget-object v7, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 32
    .line 33
    invoke-virtual {v7, v5, v1}, Lcom/android/server/am/mars/EventRecorder;->reportUnfreezeCount(Landroid/util/ArrayMap;Ljava/io/PrintWriter;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const-string/jumbo v5, "fastolaf_improve_speed"

    .line 37
    .line 38
    .line 39
    aget-object v7, v2, v6

    .line 40
    .line 41
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v8, 0x2

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    const-string/jumbo v5, "on"

    .line 50
    .line 51
    .line 52
    aget-object v9, v2, v8

    .line 53
    .line 54
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    sput-boolean v6, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sput-boolean v7, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    .line 64
    .line 65
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v9, "MARstest -- FASTOLAF_IMPROVE_SPEED "

    .line 68
    .line 69
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-boolean v9, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    .line 73
    .line 74
    invoke-static {v5, v9, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    const-string/jumbo v5, "binder_restriction"

    .line 78
    .line 79
    .line 80
    aget-object v9, v2, v6

    .line 81
    .line 82
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_3

    .line 87
    .line 88
    aget-object v5, v2, v8

    .line 89
    .line 90
    const-string/jumbo v9, "on"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    sput-boolean v5, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    .line 98
    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string/jumbo v9, "restrict binder in cached state : "

    .line 102
    .line 103
    .line 104
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-boolean v9, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    .line 108
    .line 109
    invoke-static {v5, v9, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    const-string/jumbo v5, "service_guard"

    .line 113
    .line 114
    .line 115
    aget-object v9, v2, v6

    .line 116
    .line 117
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_4

    .line 122
    .line 123
    aget-object v5, v2, v8

    .line 124
    .line 125
    const-string/jumbo v9, "on"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    sput-boolean v5, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    .line 133
    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string/jumbo v9, "service_guard has turned to "

    .line 137
    .line 138
    .line 139
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    sget-boolean v9, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    .line 143
    .line 144
    invoke-static {v5, v9, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 145
    .line 146
    .line 147
    :cond_4
    const-string/jumbo v5, "pending_jobscheduler"

    .line 148
    .line 149
    .line 150
    aget-object v9, v2, v6

    .line 151
    .line 152
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_6

    .line 157
    .line 158
    const-string/jumbo v5, "on"

    .line 159
    .line 160
    .line 161
    aget-object v9, v2, v8

    .line 162
    .line 163
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_5

    .line 168
    .line 169
    sput-boolean v6, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    .line 170
    .line 171
    :cond_5
    const-string/jumbo v5, "off"

    .line 172
    .line 173
    .line 174
    aget-object v9, v2, v8

    .line 175
    .line 176
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_6

    .line 181
    .line 182
    sput-boolean v7, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    .line 183
    .line 184
    :cond_6
    const-string/jumbo v5, "delay_service"

    .line 185
    .line 186
    .line 187
    aget-object v9, v2, v6

    .line 188
    .line 189
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-eqz v5, :cond_8

    .line 194
    .line 195
    const-string/jumbo v5, "on"

    .line 196
    .line 197
    .line 198
    aget-object v9, v2, v8

    .line 199
    .line 200
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_7

    .line 205
    .line 206
    sput-boolean v6, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    .line 207
    .line 208
    :cond_7
    const-string/jumbo v5, "off"

    .line 209
    .line 210
    .line 211
    aget-object v9, v2, v8

    .line 212
    .line 213
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_8

    .line 218
    .line 219
    sput-boolean v7, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    .line 220
    .line 221
    :cond_8
    const-string/jumbo v5, "reduce_protect_time"

    .line 222
    .line 223
    .line 224
    aget-object v9, v2, v6

    .line 225
    .line 226
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_b

    .line 231
    .line 232
    const-string/jumbo v5, "on"

    .line 233
    .line 234
    .line 235
    aget-object v9, v2, v8

    .line 236
    .line 237
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-eqz v5, :cond_9

    .line 242
    .line 243
    sput-boolean v6, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_9
    const-string/jumbo v5, "off"

    .line 247
    .line 248
    .line 249
    aget-object v9, v2, v8

    .line 250
    .line 251
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-eqz v5, :cond_a

    .line 256
    .line 257
    sput-boolean v7, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    .line 258
    .line 259
    :cond_a
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string v9, "MARstest -- FASTOLAF_REDUCE_PROTECT_TIME "

    .line 262
    .line 263
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    sget-boolean v9, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    .line 267
    .line 268
    invoke-static {v5, v9, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 269
    .line 270
    .line 271
    :cond_b
    const-string/jumbo v5, "moreFz"

    .line 272
    .line 273
    .line 274
    aget-object v9, v2, v6

    .line 275
    .line 276
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    if-eqz v5, :cond_d

    .line 281
    .line 282
    const-string/jumbo v5, "on"

    .line 283
    .line 284
    .line 285
    aget-object v9, v2, v8

    .line 286
    .line 287
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    if-eqz v5, :cond_c

    .line 292
    .line 293
    sput-boolean v6, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    .line 294
    .line 295
    :cond_c
    const-string/jumbo v5, "off"

    .line 296
    .line 297
    .line 298
    aget-object v9, v2, v8

    .line 299
    .line 300
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    if-eqz v5, :cond_d

    .line 305
    .line 306
    sput-boolean v7, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    .line 307
    .line 308
    :cond_d
    const-string/jumbo v5, "lessUfz"

    .line 309
    .line 310
    .line 311
    aget-object v9, v2, v6

    .line 312
    .line 313
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-eqz v5, :cond_10

    .line 318
    .line 319
    const-string/jumbo v5, "on"

    .line 320
    .line 321
    .line 322
    aget-object v9, v2, v8

    .line 323
    .line 324
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    if-eqz v5, :cond_e

    .line 329
    .line 330
    sput-boolean v6, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    .line 331
    .line 332
    :cond_e
    const-string/jumbo v5, "off"

    .line 333
    .line 334
    .line 335
    aget-object v9, v2, v8

    .line 336
    .line 337
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-eqz v5, :cond_f

    .line 342
    .line 343
    sput-boolean v7, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    .line 344
    .line 345
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v9, "MARstest -- FASTOLAF_FEATURE_LESSUFZ: "

    .line 348
    .line 349
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    sget-boolean v9, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    .line 353
    .line 354
    invoke-static {v5, v9, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 355
    .line 356
    .line 357
    :cond_10
    const-string/jumbo v5, "list"

    .line 358
    .line 359
    .line 360
    aget-object v9, v2, v6

    .line 361
    .line 362
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v5

    .line 366
    if-eqz v5, :cond_11

    .line 367
    .line 368
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/FreecessController;->dumpFreecess(Ljava/io/PrintWriter;)V

    .line 369
    .line 370
    .line 371
    :cond_11
    const-string/jumbo v5, "freecess"

    .line 372
    .line 373
    .line 374
    aget-object v9, v2, v6

    .line 375
    .line 376
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v5

    .line 380
    const/4 v9, 0x3

    .line 381
    if-eqz v5, :cond_16

    .line 382
    .line 383
    array-length v5, v2

    .line 384
    if-ge v5, v9, :cond_12

    .line 385
    .line 386
    const-string v5, "FreecessController"

    .line 387
    .line 388
    new-instance v10, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    const-string/jumbo v11, "dumpMARsCommand(freecess ) !"

    .line 391
    .line 392
    .line 393
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    aget-object v11, v2, v6

    .line 397
    .line 398
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v10

    .line 405
    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v7}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 409
    .line 410
    .line 411
    const-string v5, "MARstest -- freecess enabled has turned to false"

    .line 412
    .line 413
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    goto :goto_2

    .line 417
    :cond_12
    const-string/jumbo v5, "on"

    .line 418
    .line 419
    .line 420
    aget-object v10, v2, v8

    .line 421
    .line 422
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    if-eqz v5, :cond_14

    .line 427
    .line 428
    const-string v5, "1"

    .line 429
    .line 430
    aget-object v10, v2, v9

    .line 431
    .line 432
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    if-eqz v5, :cond_13

    .line 437
    .line 438
    invoke-virtual {v0, v6}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 439
    .line 440
    .line 441
    goto :goto_2

    .line 442
    :cond_13
    const-string v5, "0"

    .line 443
    .line 444
    aget-object v10, v2, v9

    .line 445
    .line 446
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    if-eqz v5, :cond_16

    .line 451
    .line 452
    const-string v5, "FreecessController"

    .line 453
    .line 454
    new-instance v10, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    const-string/jumbo v11, "dumpMARsCommand(freecess off) ! +   "

    .line 457
    .line 458
    .line 459
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    aget-object v11, v2, v8

    .line 463
    .line 464
    invoke-static {v10, v11, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    sget-object v5, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 468
    .line 469
    invoke-virtual {v5}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 470
    .line 471
    .line 472
    const-string v10, "Debug"

    .line 473
    .line 474
    invoke-virtual {v5, v10}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v7}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 478
    .line 479
    .line 480
    goto :goto_2

    .line 481
    :cond_14
    const-string/jumbo v5, "off"

    .line 482
    .line 483
    .line 484
    aget-object v10, v2, v8

    .line 485
    .line 486
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    if-eqz v5, :cond_16

    .line 491
    .line 492
    const-string v5, "1"

    .line 493
    .line 494
    aget-object v10, v2, v9

    .line 495
    .line 496
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result v5

    .line 500
    if-eqz v5, :cond_15

    .line 501
    .line 502
    invoke-virtual {v0, v6}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 503
    .line 504
    .line 505
    goto :goto_2

    .line 506
    :cond_15
    const-string v5, "0"

    .line 507
    .line 508
    aget-object v10, v2, v9

    .line 509
    .line 510
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    if-eqz v5, :cond_16

    .line 515
    .line 516
    invoke-virtual {v0, v7}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 517
    .line 518
    .line 519
    :cond_16
    :goto_2
    const-string/jumbo v5, "netd"

    .line 520
    .line 521
    .line 522
    aget-object v10, v2, v6

    .line 523
    .line 524
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v5

    .line 528
    if-eqz v5, :cond_18

    .line 529
    .line 530
    const-string/jumbo v5, "on"

    .line 531
    .line 532
    .line 533
    aget-object v10, v2, v8

    .line 534
    .line 535
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    move-result v5

    .line 539
    if-eqz v5, :cond_17

    .line 540
    .line 541
    :try_start_0
    invoke-virtual {v0, v6}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(Z)V

    .line 542
    .line 543
    .line 544
    aget-object v3, v2, v9

    .line 545
    .line 546
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    invoke-virtual {v0, v3, v7}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 551
    .line 552
    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->closeSocketsForFreecessFirewallChain()V

    .line 554
    .line 555
    .line 556
    const-string v3, "FreecessController"

    .line 557
    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    aget-object v4, v2, v9

    .line 564
    .line 565
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 566
    .line 567
    .line 568
    move-result v4

    .line 569
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .line 578
    .line 579
    goto :goto_3

    .line 580
    :catch_0
    const-string v3, "FreecessController"

    .line 581
    .line 582
    const-string/jumbo v4, "dumpMARsCommand(netd on) parseInt error!"

    .line 583
    .line 584
    .line 585
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .line 587
    .line 588
    goto :goto_3

    .line 589
    :cond_17
    const-string/jumbo v4, "off"

    .line 590
    .line 591
    .line 592
    aget-object v5, v2, v8

    .line 593
    .line 594
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    if-eqz v4, :cond_18

    .line 599
    .line 600
    :try_start_1
    aget-object v4, v2, v9

    .line 601
    .line 602
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 603
    .line 604
    .line 605
    move-result v4

    .line 606
    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0, v7}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(Z)V

    .line 610
    .line 611
    .line 612
    const-string v4, "FreecessController"

    .line 613
    .line 614
    new-instance v5, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    aget-object v3, v2, v9

    .line 620
    .line 621
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    move-result v3

    .line 625
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 633
    .line 634
    .line 635
    goto :goto_3

    .line 636
    :catch_1
    const-string v3, "FreecessController"

    .line 637
    .line 638
    const-string/jumbo v4, "dumpMARsCommand(netd off) parseInt error!"

    .line 639
    .line 640
    .line 641
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .line 643
    .line 644
    :cond_18
    :goto_3
    const-string/jumbo v3, "olaf"

    .line 645
    .line 646
    .line 647
    aget-object v4, v2, v6

    .line 648
    .line 649
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 650
    .line 651
    .line 652
    move-result v3

    .line 653
    if-eqz v3, :cond_23

    .line 654
    .line 655
    const-string/jumbo v3, "on"

    .line 656
    .line 657
    .line 658
    aget-object v4, v2, v8

    .line 659
    .line 660
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v3

    .line 664
    if-eqz v3, :cond_19

    .line 665
    .line 666
    iput-boolean v6, v0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 667
    .line 668
    goto/16 :goto_6

    .line 669
    .line 670
    :cond_19
    const-string/jumbo v3, "off"

    .line 671
    .line 672
    .line 673
    aget-object v4, v2, v8

    .line 674
    .line 675
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v3

    .line 679
    if-eqz v3, :cond_1a

    .line 680
    .line 681
    iput-boolean v7, v0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 682
    .line 683
    goto/16 :goto_6

    .line 684
    .line 685
    :cond_1a
    const-string/jumbo v3, "debug"

    .line 686
    .line 687
    .line 688
    aget-object v4, v2, v8

    .line 689
    .line 690
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    move-result v3

    .line 694
    if-eqz v3, :cond_1c

    .line 695
    .line 696
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 697
    .line 698
    xor-int/2addr v3, v6

    .line 699
    sput-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 700
    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    .line 702
    .line 703
    const-string/jumbo v4, "olaf debugging mode is "

    .line 704
    .line 705
    .line 706
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 710
    .line 711
    if-eqz v4, :cond_1b

    .line 712
    .line 713
    const-string/jumbo v4, "on"

    .line 714
    .line 715
    .line 716
    goto :goto_4

    .line 717
    :cond_1b
    const-string/jumbo v4, "off"

    .line 718
    .line 719
    .line 720
    :goto_4
    const-string v5, " now!"

    .line 721
    .line 722
    invoke-static {v1, v4, v5, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 723
    .line 724
    .line 725
    goto/16 :goto_6

    .line 726
    .line 727
    :cond_1c
    const-string/jumbo v3, "enter"

    .line 728
    .line 729
    .line 730
    aget-object v4, v2, v8

    .line 731
    .line 732
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result v3

    .line 736
    if-eqz v3, :cond_1d

    .line 737
    .line 738
    aget-object v3, v2, v9

    .line 739
    .line 740
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 741
    .line 742
    .line 743
    move-result v3

    .line 744
    const/4 v4, 0x0

    .line 745
    const/4 v5, -0x1

    .line 746
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/am/FreecessController;->enterOLAF(IILjava/lang/String;)V

    .line 747
    .line 748
    .line 749
    goto/16 :goto_6

    .line 750
    .line 751
    :cond_1d
    const-string/jumbo v3, "exit"

    .line 752
    .line 753
    .line 754
    aget-object v4, v2, v8

    .line 755
    .line 756
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    move-result v3

    .line 760
    if-eqz v3, :cond_1e

    .line 761
    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->exitOLAF()V

    .line 763
    .line 764
    .line 765
    goto/16 :goto_6

    .line 766
    .line 767
    :cond_1e
    const-string v3, "allowlist"

    .line 768
    .line 769
    aget-object v4, v2, v8

    .line 770
    .line 771
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    move-result v3

    .line 775
    if-eqz v3, :cond_23

    .line 776
    .line 777
    const-string v3, "add"

    .line 778
    .line 779
    aget-object v4, v2, v9

    .line 780
    .line 781
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 782
    .line 783
    .line 784
    move-result v3

    .line 785
    const/4 v4, 0x4

    .line 786
    if-eqz v3, :cond_1f

    .line 787
    .line 788
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 789
    .line 790
    aget-object v4, v2, v4

    .line 791
    .line 792
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    goto :goto_6

    .line 796
    :cond_1f
    const-string/jumbo v3, "remove"

    .line 797
    .line 798
    .line 799
    aget-object v5, v2, v9

    .line 800
    .line 801
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    move-result v3

    .line 805
    if-eqz v3, :cond_20

    .line 806
    .line 807
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 808
    .line 809
    aget-object v4, v2, v4

    .line 810
    .line 811
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    goto :goto_6

    .line 815
    :cond_20
    const-string/jumbo v3, "clear"

    .line 816
    .line 817
    .line 818
    aget-object v4, v2, v9

    .line 819
    .line 820
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 821
    .line 822
    .line 823
    move-result v3

    .line 824
    if-eqz v3, :cond_21

    .line 825
    .line 826
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 827
    .line 828
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 829
    .line 830
    .line 831
    goto :goto_6

    .line 832
    :cond_21
    const-string/jumbo v3, "list"

    .line 833
    .line 834
    .line 835
    aget-object v4, v2, v9

    .line 836
    .line 837
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result v3

    .line 841
    if-eqz v3, :cond_23

    .line 842
    .line 843
    new-instance v3, Ljava/lang/StringBuilder;

    .line 844
    .line 845
    const-string/jumbo v4, "list size: "

    .line 846
    .line 847
    .line 848
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 852
    .line 853
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 854
    .line 855
    .line 856
    move-result v4

    .line 857
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v3

    .line 864
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 868
    .line 869
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 870
    .line 871
    .line 872
    move-result-object v3

    .line 873
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 874
    .line 875
    .line 876
    move-result v4

    .line 877
    if-eqz v4, :cond_22

    .line 878
    .line 879
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v4

    .line 883
    check-cast v4, Ljava/lang/String;

    .line 884
    .line 885
    new-instance v5, Ljava/lang/StringBuilder;

    .line 886
    .line 887
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    const-string v4, " "

    .line 894
    .line 895
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v4

    .line 902
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    goto :goto_5

    .line 906
    :cond_22
    const-string v3, ""

    .line 907
    .line 908
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    :cond_23
    :goto_6
    const-string/jumbo v3, "qkfz"

    .line 912
    .line 913
    .line 914
    aget-object v4, v2, v6

    .line 915
    .line 916
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    move-result v3

    .line 920
    if-eqz v3, :cond_28

    .line 921
    .line 922
    const-string/jumbo v3, "switch"

    .line 923
    .line 924
    .line 925
    aget-object v4, v2, v8

    .line 926
    .line 927
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 928
    .line 929
    .line 930
    move-result v3

    .line 931
    if-eqz v3, :cond_24

    .line 932
    .line 933
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 934
    .line 935
    xor-int/2addr v3, v6

    .line 936
    iput-boolean v3, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 937
    .line 938
    goto :goto_7

    .line 939
    :cond_24
    const-string/jumbo v3, "on"

    .line 940
    .line 941
    .line 942
    aget-object v4, v2, v8

    .line 943
    .line 944
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 945
    .line 946
    .line 947
    move-result v3

    .line 948
    if-eqz v3, :cond_25

    .line 949
    .line 950
    iput-boolean v6, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 951
    .line 952
    goto :goto_7

    .line 953
    :cond_25
    const-string/jumbo v3, "off"

    .line 954
    .line 955
    .line 956
    aget-object v4, v2, v8

    .line 957
    .line 958
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 959
    .line 960
    .line 961
    move-result v3

    .line 962
    if-eqz v3, :cond_26

    .line 963
    .line 964
    iput-boolean v7, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 965
    .line 966
    :cond_26
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 967
    .line 968
    const-string v4, "Quick fz is "

    .line 969
    .line 970
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    iget-boolean v4, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 974
    .line 975
    if-eqz v4, :cond_27

    .line 976
    .line 977
    const-string/jumbo v4, "on"

    .line 978
    .line 979
    .line 980
    goto :goto_8

    .line 981
    :cond_27
    const-string/jumbo v4, "off"

    .line 982
    .line 983
    .line 984
    :goto_8
    const-string v5, " now!"

    .line 985
    .line 986
    invoke-static {v1, v4, v5, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 987
    .line 988
    .line 989
    :cond_28
    const-string/jumbo v3, "frz"

    .line 990
    .line 991
    .line 992
    aget-object v4, v2, v6

    .line 993
    .line 994
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 995
    .line 996
    .line 997
    move-result v3

    .line 998
    if-eqz v3, :cond_2b

    .line 999
    .line 1000
    aget-object v3, v2, v8

    .line 1001
    .line 1002
    const-string/jumbo v4, "force"

    .line 1003
    .line 1004
    .line 1005
    iget-boolean v5, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 1006
    .line 1007
    if-nez v5, :cond_29

    .line 1008
    .line 1009
    goto :goto_b

    .line 1010
    :cond_29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1013
    .line 1014
    .line 1015
    sget-object v10, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 1016
    .line 1017
    monitor-enter v10

    .line 1018
    :try_start_2
    invoke-virtual {v0, v7, v3}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v11

    .line 1022
    if-eqz v11, :cond_2a

    .line 1023
    .line 1024
    iget-object v12, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 1025
    .line 1026
    iget-boolean v12, v12, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 1027
    .line 1028
    if-nez v12, :cond_2a

    .line 1029
    .line 1030
    invoke-static {v11}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 1031
    .line 1032
    .line 1033
    move-result v12

    .line 1034
    if-nez v12, :cond_2a

    .line 1035
    .line 1036
    new-instance v12, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;

    .line 1037
    .line 1038
    invoke-direct {v12, v6, v5}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v0, v11, v4, v8, v12}, Lcom/android/server/am/FreecessController;->freezeUid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;ILcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v4

    .line 1045
    goto :goto_9

    .line 1046
    :catchall_0
    move-exception v0

    .line 1047
    goto :goto_a

    .line 1048
    :cond_2a
    move v4, v7

    .line 1049
    :goto_9
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1050
    if-eqz v4, :cond_2b

    .line 1051
    .line 1052
    sget-object v4, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1053
    .line 1054
    invoke-virtual {v4, v7, v3, v6}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    .line 1055
    .line 1056
    .line 1057
    const-string v10, "FRZ"

    .line 1058
    .line 1059
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    const-string v12, "CMD "

    .line 1062
    .line 1063
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    .line 1069
    const-string v3, " 0[IMP]"

    .line 1070
    .line 1071
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v3

    .line 1078
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v3

    .line 1085
    invoke-virtual {v4, v10, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    goto :goto_b

    .line 1089
    :goto_a
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1090
    throw v0

    .line 1091
    :cond_2b
    :goto_b
    const-string/jumbo v3, "ufz"

    .line 1092
    .line 1093
    .line 1094
    aget-object v4, v2, v6

    .line 1095
    .line 1096
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v3

    .line 1100
    if-eqz v3, :cond_2c

    .line 1101
    .line 1102
    aget-object v3, v2, v8

    .line 1103
    .line 1104
    const-string/jumbo v4, "force"

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v0, v7, v3, v4}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    :cond_2c
    const-string/jumbo v3, "lrs"

    .line 1111
    .line 1112
    .line 1113
    aget-object v4, v2, v6

    .line 1114
    .line 1115
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1116
    .line 1117
    .line 1118
    move-result v3

    .line 1119
    if-eqz v3, :cond_2e

    .line 1120
    .line 1121
    const-string/jumbo v3, "on"

    .line 1122
    .line 1123
    .line 1124
    aget-object v4, v2, v8

    .line 1125
    .line 1126
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1127
    .line 1128
    .line 1129
    move-result v3

    .line 1130
    if-eqz v3, :cond_2d

    .line 1131
    .line 1132
    iput-boolean v6, v0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    .line 1133
    .line 1134
    const-string/jumbo v3, "lrs set enable"

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    goto :goto_c

    .line 1141
    :cond_2d
    const-string/jumbo v3, "off"

    .line 1142
    .line 1143
    .line 1144
    aget-object v4, v2, v8

    .line 1145
    .line 1146
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1147
    .line 1148
    .line 1149
    move-result v3

    .line 1150
    if-eqz v3, :cond_2e

    .line 1151
    .line 1152
    iput-boolean v7, v0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    .line 1153
    .line 1154
    const-string/jumbo v3, "lrs set disable"

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1158
    .line 1159
    .line 1160
    :cond_2e
    :goto_c
    const-string/jumbo v3, "uid_idle"

    .line 1161
    .line 1162
    .line 1163
    aget-object v4, v2, v6

    .line 1164
    .line 1165
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v3

    .line 1169
    if-eqz v3, :cond_33

    .line 1170
    .line 1171
    array-length v3, v2

    .line 1172
    if-ge v3, v9, :cond_31

    .line 1173
    .line 1174
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 1175
    .line 1176
    if-eqz v3, :cond_2f

    .line 1177
    .line 1178
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 1179
    .line 1180
    if-nez v3, :cond_2f

    .line 1181
    .line 1182
    move v3, v6

    .line 1183
    goto :goto_d

    .line 1184
    :cond_2f
    move v3, v7

    .line 1185
    :goto_d
    xor-int/2addr v3, v6

    .line 1186
    invoke-virtual {v0, v3}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    .line 1187
    .line 1188
    .line 1189
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1190
    .line 1191
    const-string v4, "MARstest -- uid idle check mode has turned to "

    .line 1192
    .line 1193
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1194
    .line 1195
    .line 1196
    sget-object v4, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1197
    .line 1198
    iget-boolean v5, v4, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 1199
    .line 1200
    if-eqz v5, :cond_30

    .line 1201
    .line 1202
    iget-boolean v4, v4, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 1203
    .line 1204
    if-nez v4, :cond_30

    .line 1205
    .line 1206
    move v4, v6

    .line 1207
    goto :goto_e

    .line 1208
    :cond_30
    move v4, v7

    .line 1209
    :goto_e
    invoke-static {v3, v4, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 1210
    .line 1211
    .line 1212
    goto :goto_f

    .line 1213
    :cond_31
    const-string/jumbo v3, "on"

    .line 1214
    .line 1215
    .line 1216
    aget-object v4, v2, v8

    .line 1217
    .line 1218
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1219
    .line 1220
    .line 1221
    move-result v3

    .line 1222
    if-eqz v3, :cond_32

    .line 1223
    .line 1224
    invoke-virtual {v0, v6}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    .line 1225
    .line 1226
    .line 1227
    goto :goto_f

    .line 1228
    :cond_32
    const-string/jumbo v3, "off"

    .line 1229
    .line 1230
    .line 1231
    aget-object v4, v2, v8

    .line 1232
    .line 1233
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1234
    .line 1235
    .line 1236
    move-result v3

    .line 1237
    if-eqz v3, :cond_33

    .line 1238
    .line 1239
    invoke-virtual {v0, v7}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    .line 1240
    .line 1241
    .line 1242
    :cond_33
    :goto_f
    const-string/jumbo v3, "window"

    .line 1243
    .line 1244
    .line 1245
    aget-object v4, v2, v6

    .line 1246
    .line 1247
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v3

    .line 1251
    if-eqz v3, :cond_35

    .line 1252
    .line 1253
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 1254
    .line 1255
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1256
    .line 1257
    .line 1258
    monitor-enter v3

    .line 1259
    :try_start_4
    aget-object v4, v2, v8

    .line 1260
    .line 1261
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1262
    .line 1263
    .line 1264
    move-result v4

    .line 1265
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 1266
    .line 1267
    if-eqz v5, :cond_34

    .line 1268
    .line 1269
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1270
    .line 1271
    if-eqz v5, :cond_34

    .line 1272
    .line 1273
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    .line 1274
    .line 1275
    .line 1276
    move-result v5

    .line 1277
    if-eqz v5, :cond_34

    .line 1278
    .line 1279
    move v5, v6

    .line 1280
    goto :goto_10

    .line 1281
    :catchall_1
    move-exception v0

    .line 1282
    goto :goto_12

    .line 1283
    :cond_34
    move v5, v7

    .line 1284
    :goto_10
    const-string v10, "FreecessController"

    .line 1285
    .line 1286
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1287
    .line 1288
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1289
    .line 1290
    .line 1291
    const-string/jumbo v12, "dumpMARsCommand(window) "

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1298
    .line 1299
    .line 1300
    const-string v4, " ishasFloatingWindow:"

    .line 1301
    .line 1302
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v4

    .line 1312
    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1313
    .line 1314
    .line 1315
    goto :goto_11

    .line 1316
    :catch_2
    :try_start_5
    const-string v4, "FreecessController"

    .line 1317
    .line 1318
    const-string/jumbo v5, "dumpMARsCommand(window) parseInt error!"

    .line 1319
    .line 1320
    .line 1321
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    .line 1323
    .line 1324
    :goto_11
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1325
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_13

    .line 1329
    :goto_12
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1330
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1331
    .line 1332
    .line 1333
    throw v0

    .line 1334
    :cond_35
    :goto_13
    const-string/jumbo v3, "mfsr"

    .line 1335
    .line 1336
    .line 1337
    aget-object v4, v2, v6

    .line 1338
    .line 1339
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1340
    .line 1341
    .line 1342
    move-result v3

    .line 1343
    if-eqz v3, :cond_39

    .line 1344
    .line 1345
    move v3, v7

    .line 1346
    :goto_14
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 1347
    .line 1348
    iget-object v4, v4, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 1349
    .line 1350
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 1351
    .line 1352
    .line 1353
    move-result v4

    .line 1354
    if-ge v3, v4, :cond_39

    .line 1355
    .line 1356
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 1357
    .line 1358
    iget-object v4, v4, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 1359
    .line 1360
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v4

    .line 1364
    check-cast v4, Landroid/util/SparseArray;

    .line 1365
    .line 1366
    move v5, v7

    .line 1367
    :goto_15
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 1368
    .line 1369
    .line 1370
    move-result v10

    .line 1371
    if-ge v5, v10, :cond_38

    .line 1372
    .line 1373
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v10

    .line 1377
    check-cast v10, Lcom/android/server/am/FreecessPkgStatus;

    .line 1378
    .line 1379
    iget-object v10, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 1380
    .line 1381
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1382
    .line 1383
    .line 1384
    aget-object v11, v2, v6

    .line 1385
    .line 1386
    const-string/jumbo v12, "mfsr"

    .line 1387
    .line 1388
    .line 1389
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1390
    .line 1391
    .line 1392
    move-result v11

    .line 1393
    if-eqz v11, :cond_37

    .line 1394
    .line 1395
    const-string/jumbo v11, "ver"

    .line 1396
    .line 1397
    .line 1398
    aget-object v12, v2, v8

    .line 1399
    .line 1400
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1401
    .line 1402
    .line 1403
    move-result v11

    .line 1404
    if-eqz v11, :cond_36

    .line 1405
    .line 1406
    aget-object v11, v2, v9

    .line 1407
    .line 1408
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1409
    .line 1410
    .line 1411
    move-result v11

    .line 1412
    iput v11, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mDetectionVer:I

    .line 1413
    .line 1414
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1415
    .line 1416
    const-string/jumbo v12, "set real time detection as ver:"

    .line 1417
    .line 1418
    .line 1419
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1420
    .line 1421
    .line 1422
    iget v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mDetectionVer:I

    .line 1423
    .line 1424
    invoke-static {v11, v10, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 1425
    .line 1426
    .line 1427
    goto :goto_16

    .line 1428
    :cond_36
    const-string/jumbo v11, "history"

    .line 1429
    .line 1430
    .line 1431
    aget-object v12, v2, v8

    .line 1432
    .line 1433
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1434
    .line 1435
    .line 1436
    move-result v11

    .line 1437
    if-eqz v11, :cond_37

    .line 1438
    .line 1439
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1440
    .line 1441
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1442
    .line 1443
    .line 1444
    iget-object v12, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    .line 1445
    .line 1446
    iget-object v12, v12, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1447
    .line 1448
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    .line 1450
    .line 1451
    const-string v12, " detection version:"

    .line 1452
    .line 1453
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    .line 1455
    .line 1456
    iget v12, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mDetectionVer:I

    .line 1457
    .line 1458
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1459
    .line 1460
    .line 1461
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v11

    .line 1465
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    .line 1467
    .line 1468
    invoke-virtual {v10}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->dumpUfzContent()Ljava/lang/String;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v10

    .line 1472
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    :cond_37
    :goto_16
    add-int/2addr v5, v6

    .line 1476
    goto :goto_15

    .line 1477
    :cond_38
    add-int/2addr v3, v6

    .line 1478
    goto/16 :goto_14

    .line 1479
    .line 1480
    :cond_39
    const-string/jumbo v3, "startrecording"

    .line 1481
    .line 1482
    .line 1483
    aget-object v4, v2, v6

    .line 1484
    .line 1485
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1486
    .line 1487
    .line 1488
    move-result v3

    .line 1489
    if-eqz v3, :cond_3a

    .line 1490
    .line 1491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1492
    .line 1493
    .line 1494
    move-result-wide v3

    .line 1495
    iput-wide v3, v0, Lcom/android/server/am/FreecessController;->mRecordingStartTime:J

    .line 1496
    .line 1497
    :cond_3a
    const-string/jumbo v3, "endrecording"

    .line 1498
    .line 1499
    .line 1500
    aget-object v4, v2, v6

    .line 1501
    .line 1502
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1503
    .line 1504
    .line 1505
    move-result v3

    .line 1506
    if-eqz v3, :cond_4a

    .line 1507
    .line 1508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1509
    .line 1510
    .line 1511
    move-result-wide v3

    .line 1512
    iput-wide v3, v0, Lcom/android/server/am/FreecessController;->mRecordingEndTime:J

    .line 1513
    .line 1514
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 1515
    .line 1516
    const-wide/16 v4, 0x40

    .line 1517
    .line 1518
    if-eqz v3, :cond_3b

    .line 1519
    .line 1520
    const-string/jumbo v3, "getFrozenTimeForAllPackages"

    .line 1521
    .line 1522
    .line 1523
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1524
    .line 1525
    .line 1526
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->getTargetUidNameMap()Landroid/util/ArrayMap;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v3

    .line 1530
    sget-boolean v10, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 1531
    .line 1532
    sget-object v10, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 1533
    .line 1534
    iget-wide v13, v0, Lcom/android/server/am/FreecessController;->mRecordingStartTime:J

    .line 1535
    .line 1536
    iget-wide v11, v0, Lcom/android/server/am/FreecessController;->mRecordingEndTime:J

    .line 1537
    .line 1538
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1539
    .line 1540
    .line 1541
    const-string v15, "EventRecorder"

    .line 1542
    .line 1543
    sget-boolean v0, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 1544
    .line 1545
    if-nez v0, :cond_3c

    .line 1546
    .line 1547
    goto/16 :goto_25

    .line 1548
    .line 1549
    :cond_3c
    new-instance v4, Landroid/util/ArrayMap;

    .line 1550
    .line 1551
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 1552
    .line 1553
    .line 1554
    new-instance v5, Landroid/util/ArrayMap;

    .line 1555
    .line 1556
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 1557
    .line 1558
    .line 1559
    new-instance v7, Landroid/util/ArrayMap;

    .line 1560
    .line 1561
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 1562
    .line 1563
    .line 1564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1565
    .line 1566
    .line 1567
    move-result-wide v8

    .line 1568
    invoke-virtual {v10, v8, v9}, Lcom/android/server/am/mars/EventRecorder;->performWrite(J)V

    .line 1569
    .line 1570
    .line 1571
    new-instance v8, Landroid/util/ArrayMap;

    .line 1572
    .line 1573
    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 1574
    .line 1575
    .line 1576
    new-instance v9, Landroid/util/ArrayMap;

    .line 1577
    .line 1578
    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 1579
    .line 1580
    .line 1581
    sget-object v10, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1582
    .line 1583
    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1584
    .line 1585
    .line 1586
    :try_start_7
    new-instance v10, Ljava/io/BufferedReader;

    .line 1587
    .line 1588
    new-instance v0, Ljava/io/InputStreamReader;

    .line 1589
    .line 1590
    new-instance v6, Ljava/io/FileInputStream;

    .line 1591
    .line 1592
    sget-object v16, Lcom/android/server/am/mars/EventRecorder;->file:Ljava/io/File;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1593
    .line 1594
    move-wide/from16 v17, v11

    .line 1595
    .line 1596
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v11

    .line 1600
    invoke-direct {v6, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1601
    .line 1602
    .line 1603
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1604
    .line 1605
    invoke-direct {v0, v6, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1606
    .line 1607
    .line 1608
    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1609
    .line 1610
    .line 1611
    :goto_17
    :try_start_9
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v0

    .line 1615
    if-eqz v0, :cond_40

    .line 1616
    .line 1617
    new-instance v6, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 1618
    .line 1619
    invoke-direct {v6, v0}, Lcom/android/server/am/mars/EventRecorder$Event;-><init>(Ljava/lang/String;)V

    .line 1620
    .line 1621
    .line 1622
    iget-object v0, v6, Lcom/android/server/am/mars/EventRecorder$Event;->eventType:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 1623
    .line 1624
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 1625
    .line 1626
    .line 1627
    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1628
    if-eqz v0, :cond_3f

    .line 1629
    .line 1630
    const/4 v11, 0x1

    .line 1631
    if-eq v0, v11, :cond_3f

    .line 1632
    .line 1633
    const/4 v11, 0x2

    .line 1634
    if-eq v0, v11, :cond_3e

    .line 1635
    .line 1636
    const/4 v12, 0x3

    .line 1637
    if-eq v0, v12, :cond_3d

    .line 1638
    .line 1639
    move v0, v11

    .line 1640
    move/from16 v19, v12

    .line 1641
    .line 1642
    move-wide/from16 v22, v13

    .line 1643
    .line 1644
    move-object v2, v15

    .line 1645
    move-wide/from16 v20, v17

    .line 1646
    .line 1647
    goto :goto_1a

    .line 1648
    :cond_3d
    move v0, v11

    .line 1649
    move/from16 v19, v12

    .line 1650
    .line 1651
    move-wide/from16 v20, v17

    .line 1652
    .line 1653
    goto :goto_18

    .line 1654
    :cond_3e
    move v0, v11

    .line 1655
    move-wide/from16 v20, v17

    .line 1656
    .line 1657
    const/16 v19, 0x3

    .line 1658
    .line 1659
    :goto_18
    move-wide v11, v13

    .line 1660
    move-wide/from16 v22, v13

    .line 1661
    .line 1662
    move-wide/from16 v13, v20

    .line 1663
    .line 1664
    move-object v2, v15

    .line 1665
    move-object v15, v6

    .line 1666
    move-object/from16 v16, v8

    .line 1667
    .line 1668
    move-object/from16 v17, v4

    .line 1669
    .line 1670
    move-object/from16 v18, v7

    .line 1671
    .line 1672
    :try_start_a
    invoke-static/range {v11 .. v18}, Lcom/android/server/am/mars/EventRecorder;->processFreezeEvent(JJLcom/android/server/am/mars/EventRecorder$Event;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1673
    .line 1674
    .line 1675
    goto :goto_1a

    .line 1676
    :catchall_2
    move-exception v0

    .line 1677
    :goto_19
    move-object v6, v0

    .line 1678
    goto :goto_1c

    .line 1679
    :cond_3f
    move-wide/from16 v22, v13

    .line 1680
    .line 1681
    move-object v2, v15

    .line 1682
    move-wide/from16 v20, v17

    .line 1683
    .line 1684
    const/4 v0, 0x2

    .line 1685
    const/16 v19, 0x3

    .line 1686
    .line 1687
    move-wide/from16 v11, v22

    .line 1688
    .line 1689
    move-wide/from16 v13, v20

    .line 1690
    .line 1691
    move-object v15, v6

    .line 1692
    move-object/from16 v16, v9

    .line 1693
    .line 1694
    move-object/from16 v17, v5

    .line 1695
    .line 1696
    invoke-static/range {v11 .. v17}, Lcom/android/server/am/mars/EventRecorder;->processUidEvent(JJLcom/android/server/am/mars/EventRecorder$Event;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1697
    .line 1698
    .line 1699
    :goto_1a
    move-object v15, v2

    .line 1700
    move-wide/from16 v17, v20

    .line 1701
    .line 1702
    move-wide/from16 v13, v22

    .line 1703
    .line 1704
    move-object/from16 v2, p2

    .line 1705
    .line 1706
    goto :goto_17

    .line 1707
    :catchall_3
    move-exception v0

    .line 1708
    move-wide/from16 v22, v13

    .line 1709
    .line 1710
    move-object v2, v15

    .line 1711
    move-wide/from16 v20, v17

    .line 1712
    .line 1713
    goto :goto_19

    .line 1714
    :cond_40
    move-wide/from16 v22, v13

    .line 1715
    .line 1716
    move-object v2, v15

    .line 1717
    move-wide/from16 v20, v17

    .line 1718
    .line 1719
    :try_start_b
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1720
    .line 1721
    .line 1722
    :goto_1b
    sget-object v0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1723
    .line 1724
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1725
    .line 1726
    .line 1727
    goto :goto_1f

    .line 1728
    :catchall_4
    move-exception v0

    .line 1729
    goto/16 :goto_26

    .line 1730
    .line 1731
    :catch_3
    move-exception v0

    .line 1732
    goto :goto_1e

    .line 1733
    :goto_1c
    :try_start_c
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1734
    .line 1735
    .line 1736
    goto :goto_1d

    .line 1737
    :catchall_5
    move-exception v0

    .line 1738
    move-object v10, v0

    .line 1739
    :try_start_d
    invoke-virtual {v6, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1740
    .line 1741
    .line 1742
    :goto_1d
    throw v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1743
    :catch_4
    move-exception v0

    .line 1744
    move-wide/from16 v22, v13

    .line 1745
    .line 1746
    move-object v2, v15

    .line 1747
    move-wide/from16 v20, v17

    .line 1748
    .line 1749
    goto :goto_1e

    .line 1750
    :catch_5
    move-exception v0

    .line 1751
    move-wide/from16 v20, v11

    .line 1752
    .line 1753
    move-wide/from16 v22, v13

    .line 1754
    .line 1755
    move-object v2, v15

    .line 1756
    :goto_1e
    :try_start_e
    const-string v6, "Error at getFrozenTime"

    .line 1757
    .line 1758
    invoke-static {v2, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1759
    .line 1760
    .line 1761
    goto :goto_1b

    .line 1762
    :goto_1f
    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v0

    .line 1766
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v0

    .line 1770
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1771
    .line 1772
    .line 1773
    move-result v6

    .line 1774
    const-wide/16 v24, 0x0

    .line 1775
    .line 1776
    if-eqz v6, :cond_41

    .line 1777
    .line 1778
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v6

    .line 1782
    check-cast v6, Ljava/util/Map$Entry;

    .line 1783
    .line 1784
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v8

    .line 1788
    check-cast v8, Ljava/lang/Integer;

    .line 1789
    .line 1790
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v6

    .line 1794
    check-cast v6, Ljava/lang/Long;

    .line 1795
    .line 1796
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v10

    .line 1800
    invoke-virtual {v4, v8, v10}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v10

    .line 1804
    check-cast v10, Ljava/lang/Long;

    .line 1805
    .line 1806
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 1807
    .line 1808
    .line 1809
    move-result-wide v24

    .line 1810
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 1811
    .line 1812
    .line 1813
    move-result-wide v15

    .line 1814
    move-wide/from16 v11, v22

    .line 1815
    .line 1816
    move-wide/from16 v13, v20

    .line 1817
    .line 1818
    move-wide/from16 v17, v20

    .line 1819
    .line 1820
    invoke-static/range {v11 .. v18}, Lcom/android/server/am/mars/EventRecorder;->calculateOverlapPeriod(JJJJ)J

    .line 1821
    .line 1822
    .line 1823
    move-result-wide v10

    .line 1824
    add-long v24, v24, v10

    .line 1825
    .line 1826
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v6

    .line 1830
    invoke-virtual {v4, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    .line 1832
    .line 1833
    goto :goto_20

    .line 1834
    :cond_41
    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v0

    .line 1838
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v0

    .line 1842
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1843
    .line 1844
    .line 1845
    move-result v6

    .line 1846
    if-eqz v6, :cond_42

    .line 1847
    .line 1848
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v6

    .line 1852
    check-cast v6, Ljava/util/Map$Entry;

    .line 1853
    .line 1854
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v8

    .line 1858
    check-cast v8, Ljava/lang/Integer;

    .line 1859
    .line 1860
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v6

    .line 1864
    check-cast v6, Ljava/lang/Long;

    .line 1865
    .line 1866
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v9

    .line 1870
    invoke-virtual {v5, v8, v9}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    .line 1872
    .line 1873
    move-result-object v9

    .line 1874
    check-cast v9, Ljava/lang/Long;

    .line 1875
    .line 1876
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 1877
    .line 1878
    .line 1879
    move-result-wide v9

    .line 1880
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 1881
    .line 1882
    .line 1883
    move-result-wide v15

    .line 1884
    move-wide/from16 v11, v22

    .line 1885
    .line 1886
    move-wide/from16 v13, v20

    .line 1887
    .line 1888
    move-wide/from16 v17, v20

    .line 1889
    .line 1890
    invoke-static/range {v11 .. v18}, Lcom/android/server/am/mars/EventRecorder;->calculateOverlapPeriod(JJJJ)J

    .line 1891
    .line 1892
    .line 1893
    move-result-wide v11

    .line 1894
    add-long/2addr v9, v11

    .line 1895
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v6

    .line 1899
    invoke-virtual {v5, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    .line 1901
    .line 1902
    goto :goto_21

    .line 1903
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1904
    .line 1905
    const-string v6, "From "

    .line 1906
    .line 1907
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1908
    .line 1909
    .line 1910
    new-instance v6, Ljava/util/Date;

    .line 1911
    .line 1912
    move-wide/from16 v8, v22

    .line 1913
    .line 1914
    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1915
    .line 1916
    .line 1917
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1918
    .line 1919
    .line 1920
    const-string v6, " to "

    .line 1921
    .line 1922
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1923
    .line 1924
    .line 1925
    new-instance v6, Ljava/util/Date;

    .line 1926
    .line 1927
    move-wide/from16 v10, v20

    .line 1928
    .line 1929
    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 1930
    .line 1931
    .line 1932
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1933
    .line 1934
    .line 1935
    const-string v6, "("

    .line 1936
    .line 1937
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    .line 1939
    .line 1940
    sub-long v11, v10, v8

    .line 1941
    .line 1942
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1943
    .line 1944
    .line 1945
    const-string/jumbo v6, "ms)"

    .line 1946
    .line 1947
    .line 1948
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    .line 1950
    .line 1951
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1952
    .line 1953
    .line 1954
    move-result-object v0

    .line 1955
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1956
    .line 1957
    .line 1958
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1959
    .line 1960
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1961
    .line 1962
    .line 1963
    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v3

    .line 1967
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1968
    .line 1969
    .line 1970
    move-result-object v3

    .line 1971
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1972
    .line 1973
    .line 1974
    move-result v6

    .line 1975
    if-eqz v6, :cond_49

    .line 1976
    .line 1977
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1978
    .line 1979
    .line 1980
    move-result-object v6

    .line 1981
    check-cast v6, Ljava/util/Map$Entry;

    .line 1982
    .line 1983
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v8

    .line 1987
    check-cast v8, Ljava/lang/Integer;

    .line 1988
    .line 1989
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1990
    .line 1991
    .line 1992
    move-result-object v6

    .line 1993
    check-cast v6, Ljava/lang/String;

    .line 1994
    .line 1995
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v9

    .line 1999
    invoke-virtual {v5, v8, v9}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v9

    .line 2003
    check-cast v9, Ljava/lang/Long;

    .line 2004
    .line 2005
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2006
    .line 2007
    .line 2008
    move-result-object v10

    .line 2009
    invoke-virtual {v4, v8, v10}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v10

    .line 2013
    check-cast v10, Ljava/lang/Long;

    .line 2014
    .line 2015
    new-instance v11, Ljava/util/ArrayList;

    .line 2016
    .line 2017
    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v12

    .line 2021
    array-length v12, v12

    .line 2022
    const/4 v13, 0x0

    .line 2023
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v14

    .line 2027
    invoke-static {v12, v14}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    .line 2028
    .line 2029
    .line 2030
    move-result-object v12

    .line 2031
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2032
    .line 2033
    .line 2034
    invoke-virtual {v7, v8, v11}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v11

    .line 2038
    check-cast v11, Ljava/util/ArrayList;

    .line 2039
    .line 2040
    const-string v12, "Error at reportEvents. uid "

    .line 2041
    .line 2042
    if-nez v9, :cond_43

    .line 2043
    .line 2044
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2045
    .line 2046
    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2047
    .line 2048
    .line 2049
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2050
    .line 2051
    .line 2052
    const-string v8, "\'s running time is null"

    .line 2053
    .line 2054
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    .line 2056
    .line 2057
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v6

    .line 2061
    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    .line 2063
    .line 2064
    goto :goto_22

    .line 2065
    :cond_43
    if-nez v10, :cond_44

    .line 2066
    .line 2067
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2068
    .line 2069
    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2070
    .line 2071
    .line 2072
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2073
    .line 2074
    .line 2075
    const-string v8, "\'s frozenDuration is null"

    .line 2076
    .line 2077
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2078
    .line 2079
    .line 2080
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2081
    .line 2082
    .line 2083
    move-result-object v6

    .line 2084
    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    .line 2086
    .line 2087
    goto :goto_22

    .line 2088
    :cond_44
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 2089
    .line 2090
    .line 2091
    move-result-wide v14

    .line 2092
    cmp-long v12, v14, v24

    .line 2093
    .line 2094
    if-nez v12, :cond_45

    .line 2095
    .line 2096
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    .line 2097
    .line 2098
    move-object v12, v3

    .line 2099
    move-object/from16 p0, v4

    .line 2100
    .line 2101
    goto :goto_23

    .line 2102
    :cond_45
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 2103
    .line 2104
    .line 2105
    move-result-wide v14

    .line 2106
    long-to-double v14, v14

    .line 2107
    move-object v12, v3

    .line 2108
    move-object/from16 p0, v4

    .line 2109
    .line 2110
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 2111
    .line 2112
    .line 2113
    move-result-wide v3

    .line 2114
    long-to-double v3, v3

    .line 2115
    div-double/2addr v14, v3

    .line 2116
    :goto_23
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 2117
    .line 2118
    cmpl-double v3, v14, v3

    .line 2119
    .line 2120
    if-lez v3, :cond_46

    .line 2121
    .line 2122
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2123
    .line 2124
    const-string/jumbo v4, "calculation error. "

    .line 2125
    .line 2126
    .line 2127
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2128
    .line 2129
    .line 2130
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2131
    .line 2132
    .line 2133
    const-string/jumbo v4, "was frozen more than running time"

    .line 2134
    .line 2135
    .line 2136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    .line 2138
    .line 2139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v3

    .line 2143
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    .line 2145
    .line 2146
    :cond_46
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2147
    .line 2148
    .line 2149
    const-string v3, " "

    .line 2150
    .line 2151
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2152
    .line 2153
    .line 2154
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2155
    .line 2156
    .line 2157
    move-result-object v4

    .line 2158
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 2159
    .line 2160
    .line 2161
    move-result-object v4

    .line 2162
    const-string v6, "%.5f"

    .line 2163
    .line 2164
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2165
    .line 2166
    .line 2167
    move-result-object v4

    .line 2168
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    .line 2170
    .line 2171
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    .line 2173
    .line 2174
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2175
    .line 2176
    .line 2177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2178
    .line 2179
    .line 2180
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2181
    .line 2182
    .line 2183
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2184
    .line 2185
    .line 2186
    if-eqz v11, :cond_48

    .line 2187
    .line 2188
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2189
    .line 2190
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2191
    .line 2192
    .line 2193
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2194
    .line 2195
    .line 2196
    move-result-object v6

    .line 2197
    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 2198
    .line 2199
    .line 2200
    move-result v8

    .line 2201
    if-eqz v8, :cond_47

    .line 2202
    .line 2203
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2204
    .line 2205
    .line 2206
    move-result-object v8

    .line 2207
    check-cast v8, Ljava/lang/Integer;

    .line 2208
    .line 2209
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2210
    .line 2211
    .line 2212
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2213
    .line 2214
    .line 2215
    goto :goto_24

    .line 2216
    :cond_47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2217
    .line 2218
    .line 2219
    move-result-object v3

    .line 2220
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    .line 2222
    .line 2223
    :cond_48
    const-string v3, "\n"

    .line 2224
    .line 2225
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2226
    .line 2227
    .line 2228
    move-object/from16 v4, p0

    .line 2229
    .line 2230
    move-object v3, v12

    .line 2231
    goto/16 :goto_22

    .line 2232
    .line 2233
    :cond_49
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2234
    .line 2235
    .line 2236
    :goto_25
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 2237
    .line 2238
    if-eqz v0, :cond_4a

    .line 2239
    .line 2240
    const-wide/16 v2, 0x40

    .line 2241
    .line 2242
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2243
    .line 2244
    .line 2245
    goto :goto_27

    .line 2246
    :goto_26
    sget-object v1, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2247
    .line 2248
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2249
    .line 2250
    .line 2251
    throw v0

    .line 2252
    :cond_4a
    :goto_27
    const-string/jumbo v0, "debugrecord"

    .line 2253
    .line 2254
    .line 2255
    const/4 v2, 0x1

    .line 2256
    aget-object v2, p2, v2

    .line 2257
    .line 2258
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2259
    .line 2260
    .line 2261
    move-result v0

    .line 2262
    if-eqz v0, :cond_4d

    .line 2263
    .line 2264
    sget-boolean v0, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 2265
    .line 2266
    sget-object v0, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 2267
    .line 2268
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2269
    .line 2270
    .line 2271
    new-instance v2, Landroid/util/ArrayMap;

    .line 2272
    .line 2273
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 2274
    .line 2275
    .line 2276
    sget-object v0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2277
    .line 2278
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2279
    .line 2280
    .line 2281
    :try_start_f
    new-instance v3, Ljava/io/BufferedReader;

    .line 2282
    .line 2283
    new-instance v0, Ljava/io/InputStreamReader;

    .line 2284
    .line 2285
    new-instance v4, Ljava/io/FileInputStream;

    .line 2286
    .line 2287
    sget-object v5, Lcom/android/server/am/mars/EventRecorder;->file:Ljava/io/File;

    .line 2288
    .line 2289
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2290
    .line 2291
    .line 2292
    move-result-object v5

    .line 2293
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2294
    .line 2295
    .line 2296
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2297
    .line 2298
    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 2299
    .line 2300
    .line 2301
    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 2302
    .line 2303
    .line 2304
    :goto_28
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 2305
    .line 2306
    .line 2307
    move-result-object v0

    .line 2308
    if-eqz v0, :cond_4b

    .line 2309
    .line 2310
    new-instance v4, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 2311
    .line 2312
    invoke-direct {v4, v0}, Lcom/android/server/am/mars/EventRecorder$Event;-><init>(Ljava/lang/String;)V

    .line 2313
    .line 2314
    .line 2315
    iget-object v0, v4, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 2316
    .line 2317
    new-instance v5, Ljava/util/ArrayList;

    .line 2318
    .line 2319
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2320
    .line 2321
    .line 2322
    invoke-virtual {v2, v0, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v0

    .line 2326
    check-cast v0, Ljava/util/ArrayList;

    .line 2327
    .line 2328
    invoke-virtual {v4}, Lcom/android/server/am/mars/EventRecorder$Event;->toString()Ljava/lang/String;

    .line 2329
    .line 2330
    .line 2331
    move-result-object v5

    .line 2332
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2333
    .line 2334
    .line 2335
    iget-object v4, v4, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 2336
    .line 2337
    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 2338
    .line 2339
    .line 2340
    goto :goto_28

    .line 2341
    :catchall_6
    move-exception v0

    .line 2342
    move-object v4, v0

    .line 2343
    goto :goto_2a

    .line 2344
    :cond_4b
    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 2345
    .line 2346
    .line 2347
    :goto_29
    sget-object v0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2348
    .line 2349
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2350
    .line 2351
    .line 2352
    goto :goto_2d

    .line 2353
    :catchall_7
    move-exception v0

    .line 2354
    goto :goto_2f

    .line 2355
    :catch_6
    move-exception v0

    .line 2356
    goto :goto_2c

    .line 2357
    :goto_2a
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 2358
    .line 2359
    .line 2360
    goto :goto_2b

    .line 2361
    :catchall_8
    move-exception v0

    .line 2362
    move-object v3, v0

    .line 2363
    :try_start_13
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 2364
    .line 2365
    .line 2366
    :goto_2b
    throw v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 2367
    :goto_2c
    :try_start_14
    const-string v3, "EventRecorder"

    .line 2368
    .line 2369
    const-string/jumbo v4, "error at printAllEvents"

    .line 2370
    .line 2371
    .line 2372
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 2373
    .line 2374
    .line 2375
    goto :goto_29

    .line 2376
    :goto_2d
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 2377
    .line 2378
    .line 2379
    move-result-object v0

    .line 2380
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2381
    .line 2382
    .line 2383
    move-result-object v0

    .line 2384
    :cond_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2385
    .line 2386
    .line 2387
    move-result v2

    .line 2388
    if-eqz v2, :cond_4d

    .line 2389
    .line 2390
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2391
    .line 2392
    .line 2393
    move-result-object v2

    .line 2394
    check-cast v2, Ljava/util/Map$Entry;

    .line 2395
    .line 2396
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2397
    .line 2398
    .line 2399
    move-result-object v3

    .line 2400
    check-cast v3, Ljava/lang/Integer;

    .line 2401
    .line 2402
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 2403
    .line 2404
    .line 2405
    move-result v3

    .line 2406
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2407
    .line 2408
    .line 2409
    move-result-object v2

    .line 2410
    check-cast v2, Ljava/util/ArrayList;

    .line 2411
    .line 2412
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2413
    .line 2414
    const-string/jumbo v5, "uid:"

    .line 2415
    .line 2416
    .line 2417
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2418
    .line 2419
    .line 2420
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2421
    .line 2422
    .line 2423
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2424
    .line 2425
    .line 2426
    move-result-object v3

    .line 2427
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2428
    .line 2429
    .line 2430
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2431
    .line 2432
    .line 2433
    move-result-object v2

    .line 2434
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2435
    .line 2436
    .line 2437
    move-result v3

    .line 2438
    if-eqz v3, :cond_4c

    .line 2439
    .line 2440
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2441
    .line 2442
    .line 2443
    move-result-object v3

    .line 2444
    check-cast v3, Ljava/lang/String;

    .line 2445
    .line 2446
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2447
    .line 2448
    .line 2449
    goto :goto_2e

    .line 2450
    :goto_2f
    sget-object v1, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2451
    .line 2452
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2453
    .line 2454
    .line 2455
    throw v0

    .line 2456
    :cond_4d
    return-void
.end method

.method public final enterOLAF(IILjava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_a

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 15
    .line 16
    if-eqz v0, :cond_a

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    .line 19
    .line 20
    if-nez v0, :cond_a

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const-string/jumbo v0, "com.google.android.youtube"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    const-string/jumbo v0, "com.jingdong.app.mall"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    if-eqz p2, :cond_8

    .line 53
    .line 54
    const/16 v0, 0x64

    .line 55
    .line 56
    if-ge p2, v0, :cond_5

    .line 57
    .line 58
    return-void

    .line 59
    :cond_5
    const/16 v0, 0x1388

    .line 60
    .line 61
    if-le p2, v0, :cond_6

    .line 62
    .line 63
    move p2, v0

    .line 64
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    int-to-long v2, p2

    .line 69
    add-long/2addr v0, v2

    .line 70
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 71
    .line 72
    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    cmp-long v3, v0, v3

    .line 80
    .line 81
    if-gtz v3, :cond_7

    .line 82
    .line 83
    monitor-exit v2

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_0

    .line 87
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 92
    .line 93
    monitor-exit v2

    .line 94
    goto :goto_1

    .line 95
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p0

    .line 97
    :cond_8
    :goto_1
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 98
    .line 99
    if-eqz v0, :cond_9

    .line 100
    .line 101
    const-string v0, "FreecessController"

    .line 102
    .line 103
    const-string v1, "Enter OLAF! pkgName: "

    .line 104
    .line 105
    const-string v2, ", uid: "

    .line 106
    .line 107
    const-string v3, ", mills: "

    .line 108
    .line 109
    invoke-static {p1, v1, p3, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_9
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    .line 118
    const/4 p2, 0x1

    .line 119
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    .line 121
    .line 122
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 123
    .line 124
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/FreecessHandler;->sendOLAFMsg(ILjava/lang/String;Z)V

    .line 125
    .line 126
    .line 127
    :cond_a
    :goto_2
    return-void
.end method

.method public final exitOLAF()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "FreecessController"

    .line 6
    .line 7
    const-string v1, "Exit OLAF!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    const-string v0, "FreecessHandler"

    .line 38
    .line 39
    const-string/jumbo v1, "removeOLAFTimeOutMsg...."

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    .line 51
    .line 52
    :goto_0
    const/4 v0, 0x0

    .line 53
    const/4 v1, -0x1

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/am/FreecessHandler;->sendOLAFMsg(ILjava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public freezeAllProcesses(ILjava/util/ArrayList;Lcom/android/server/am/FreecessController$checkResultCallback;)Z
    .locals 5

    .line 1
    const/4 p3, 0x1

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/am/FreecessController;->requestProcessFrozen(ILjava/lang/Integer;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget p2, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    .line 25
    .line 26
    add-int/2addr p2, p3

    .line 27
    iput p2, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo p3, "cntFailFreeze="

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget p0, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    .line 38
    .line 39
    const-string p3, ", uid="

    .line 40
    .line 41
    const-string v1, ", fpid="

    .line 42
    .line 43
    invoke-static {p0, p1, p3, v1, p2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, ")"

    .line 50
    .line 51
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 59
    .line 60
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 61
    .line 62
    const-string p2, "DEV"

    .line 63
    .line 64
    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    return p0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    iput-boolean p3, v1, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 82
    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    .line 94
    .line 95
    new-instance v4, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda7;

    .line 96
    .line 97
    invoke-direct {v4, p3}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda7;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    .line 108
    .line 109
    monitor-exit v1

    .line 110
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 111
    .line 112
    monitor-enter v2

    .line 113
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    monitor-exit v2

    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    throw p0

    .line 123
    :catchall_1
    move-exception p0

    .line 124
    monitor-exit v1

    .line 125
    throw p0

    .line 126
    :cond_2
    return p3
.end method

.method public final freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 17
    .line 18
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 19
    .line 20
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 21
    .line 22
    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 23
    .line 24
    const/4 v4, 0x4

    .line 25
    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 33
    .line 34
    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_5

    .line 39
    .line 40
    iget-object v5, p1, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    sget-object v5, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const/16 v5, 0x12

    .line 51
    .line 52
    invoke-static {v5, v3, v4, v2}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-lez v3, :cond_4

    .line 57
    .line 58
    return v1

    .line 59
    :cond_4
    new-instance v1, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    invoke-direct {v1, v3, p1}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const/4 v3, 0x3

    .line 66
    invoke-virtual {p0, p1, p2, v3, v1}, Lcom/android/server/am/FreecessController;->freezeUid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;ILcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    const/4 v1, 0x1

    .line 71
    if-eqz p0, :cond_5

    .line 72
    .line 73
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 74
    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, " "

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, "FZ"

    .line 102
    .line 103
    invoke-virtual {v0, p1, p0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_0
    return v1
.end method

.method public final freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p2, "Skip olaf fz for <"

    .line 25
    .line 26
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p2, ", "

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget p2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, ">: fzed="

    .line 49
    .line 50
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 54
    .line 55
    iget-boolean p1, p1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "FreecessController"

    .line 69
    .line 70
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void

    .line 74
    :cond_1
    new-instance v0, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda6;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v1, "OLAF"

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/am/FreecessController;->freezeUid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;ILcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v1, " "

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 108
    .line 109
    if-nez p0, :cond_2

    .line 110
    .line 111
    iget p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 112
    .line 113
    const/4 p2, 0x2

    .line 114
    if-ne p0, p2, :cond_2

    .line 115
    .line 116
    iput v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 117
    .line 118
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    const/4 p2, 0x3

    .line 126
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    const/4 p2, 0x4

    .line 130
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    const/16 p2, 0x1c

    .line 134
    .line 135
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_2
    return-void
.end method

.method public final freezePackage(I)Z
    .locals 9

    .line 1
    const-string v0, "LEV"

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    const-string v2, " "

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    return v4

    .line 13
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 18
    .line 19
    invoke-interface {v3, p1}, Lcom/android/server/input/NativeInputManagerService;->isUidTouched(I)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v3, v4

    .line 25
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 31
    .line 32
    monitor-enter v6

    .line 33
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    if-eqz v7, :cond_4

    .line 38
    .line 39
    iget-object v8, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 40
    .line 41
    iget-boolean v8, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 42
    .line 43
    if-nez v8, :cond_4

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const-string p0, "FreecessController"

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v1, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, " has Touch Event, skip to freeze"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    iput p0, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 73
    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, ":s0"

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-static {v7}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, ":s1"

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    new-instance v1, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda8;

    .line 125
    .line 126
    invoke-direct {v1, v7, v5, p1}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;I)V

    .line 127
    .line 128
    .line 129
    const/4 p1, 0x2

    .line 130
    invoke-virtual {p0, v7, v0, p1, v1}, Lcom/android/server/am/FreecessController;->freezeUid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;ILcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    :cond_4
    :goto_1
    monitor-exit v6

    .line 135
    return v4

    .line 136
    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    throw p0
.end method

.method public final freezeUid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;ILcom/android/server/am/FreecessController$checkResultCallback;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

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
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    cmp-long v1, v1, v3

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-gez v1, :cond_1

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const-string v0, "FreecessController"

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, "("

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 39
    .line 40
    const-string v5, ") is protected"

    .line 41
    .line 42
    invoke-static {v1, v4, v5, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    if-ne p3, v0, :cond_0

    .line 47
    .line 48
    iput v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 49
    .line 50
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 51
    .line 52
    if-eqz p0, :cond_0

    .line 53
    .line 54
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 55
    .line 56
    iget p3, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 57
    .line 58
    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0, p3, p1, p2, v2}, Lcom/android/server/am/FreecessHandler;->sendUidLcdOnQuickFzMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    :cond_0
    const-string p0, "Protect"

    .line 64
    .line 65
    invoke-interface {p4, p0}, Lcom/android/server/am/FreecessController$checkResultCallback;->freezeSkipFrozen(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return v3

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 74
    .line 75
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(IZ)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0, p4}, Lcom/android/server/am/FreecessController;->canUidBeFrozen(Ljava/util/ArrayList;Lcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    return v3

    .line 86
    :cond_2
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 87
    .line 88
    const-wide/16 v4, 0x40

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo v2, "freezeUid "

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, " type : "

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 121
    .line 122
    invoke-virtual {p0, v1, v0, p4}, Lcom/android/server/am/FreecessController;->freezeAllProcesses(ILjava/util/ArrayList;Lcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 123
    .line 124
    .line 125
    move-result p4

    .line 126
    if-eqz p4, :cond_4

    .line 127
    .line 128
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/FreecessController;->onUidFrozen(Lcom/android/server/am/FreecessPkgStatus;ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    iget p2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 133
    .line 134
    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/FreecessController;->unfreezeAllProcesses(Ljava/util/ArrayList;I)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-eqz p0, :cond_5

    .line 139
    .line 140
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 141
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide p2

    .line 146
    const-string v0, "FZ-fail"

    .line 147
    .line 148
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->updateUnfreezeState(JLjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 152
    .line 153
    iput-boolean v3, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 154
    .line 155
    iput-boolean v3, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 156
    .line 157
    iput-boolean v3, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 158
    .line 159
    iput-boolean v3, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    .line 160
    .line 161
    :cond_5
    const-string p0, "FreecessController"

    .line 162
    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string p3, "UFZ : "

    .line 166
    .line 167
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object p3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string p3, "("

    .line 176
    .line 177
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 181
    .line 182
    const-string p3, ") because failed to freeze"

    .line 183
    .line 184
    invoke-static {p2, p1, p3, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :goto_0
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 188
    .line 189
    if-eqz p0, :cond_6

    .line 190
    .line 191
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 192
    .line 193
    .line 194
    :cond_6
    return p4

    .line 195
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    throw p0
.end method

.method public getAllRunningPackagePids(IZ)Ljava/util/ArrayList;
    .locals 16

    .line 1
    move/from16 v1, p1

    .line 2
    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "/sys/fs/cgroup/uid_"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    new-instance v0, Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v5, "FreecessController"

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v7, 0x0

    .line 27
    if-eqz v4, :cond_6

    .line 28
    .line 29
    array-length v0, v4

    .line 30
    if-lez v0, :cond_6

    .line 31
    .line 32
    array-length v8, v4

    .line 33
    move v0, v7

    .line 34
    move v9, v0

    .line 35
    :goto_0
    if-ge v9, v8, :cond_5

    .line 36
    .line 37
    aget-object v10, v4, v9

    .line 38
    .line 39
    const-string/jumbo v11, "pid_"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    if-eqz v11, :cond_4

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    move v11, v6

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    move v11, v0

    .line 53
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v12, "/"

    .line 62
    .line 63
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v10, "/cgroup.procs"

    .line 70
    .line 71
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    :try_start_0
    new-instance v12, Ljava/io/FileReader;

    .line 79
    .line 80
    invoke-direct {v12, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .line 82
    .line 83
    :try_start_1
    new-instance v13, Ljava/io/BufferedReader;

    .line 84
    .line 85
    invoke-direct {v13, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 86
    .line 87
    .line 88
    move v14, v7

    .line 89
    :goto_2
    :try_start_2
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    if-nez v14, :cond_1

    .line 96
    .line 97
    move v14, v6

    .line 98
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    move-object v15, v0

    .line 108
    goto :goto_3

    .line 109
    :cond_2
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    .line 111
    .line 112
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_8

    .line 116
    :catch_0
    move-exception v0

    .line 117
    goto :goto_7

    .line 118
    :catchall_1
    move-exception v0

    .line 119
    move-object v13, v0

    .line 120
    goto :goto_5

    .line 121
    :goto_3
    :try_start_5
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :catchall_2
    move-exception v0

    .line 126
    move-object v13, v0

    .line 127
    :try_start_6
    invoke-virtual {v15, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :goto_4
    throw v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 131
    :catchall_3
    move-exception v0

    .line 132
    move-object v13, v0

    .line 133
    move v14, v7

    .line 134
    :goto_5
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :catchall_4
    move-exception v0

    .line 139
    move-object v12, v0

    .line 140
    :try_start_8
    invoke-virtual {v13, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    :goto_6
    throw v13
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 144
    :catch_1
    move-exception v0

    .line 145
    move v14, v7

    .line 146
    :goto_7
    const-string v12, "Error occurred when reading "

    .line 147
    .line 148
    const-string v13, " - "

    .line 149
    .line 150
    invoke-static {v1, v12, v13}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    :goto_8
    if-nez p2, :cond_3

    .line 169
    .line 170
    if-nez v14, :cond_3

    .line 171
    .line 172
    const-string/jumbo v0, "getAllRunningPackagePids: Failed to read pid from "

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v10, v5}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_3
    move v0, v11

    .line 179
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_5
    if-nez p2, :cond_8

    .line 184
    .line 185
    if-nez v0, :cond_8

    .line 186
    .line 187
    const-string/jumbo v0, "getAllRunningPackagePids: Cannot find any pid for u="

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v0, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_a

    .line 194
    :cond_6
    if-nez p2, :cond_8

    .line 195
    .line 196
    const-string/jumbo v0, "getAllRunningPackagePids: ls failed or empty for "

    .line 197
    .line 198
    .line 199
    const-string v8, " isNull="

    .line 200
    .line 201
    invoke-static {v0, v3, v8}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-nez v4, :cond_7

    .line 206
    .line 207
    goto :goto_9

    .line 208
    :cond_7
    move v6, v7

    .line 209
    :goto_9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    :cond_8
    :goto_a
    if-nez p2, :cond_a

    .line 220
    .line 221
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    move-object/from16 v1, p0

    .line 226
    .line 227
    iget-object v1, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessController$UidPidMap;->getPidList(Ljava/lang/Integer;)Ljava/util/ArrayList;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    :cond_9
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_a

    .line 242
    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    check-cast v1, Ljava/lang/Integer;

    .line 248
    .line 249
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-nez v3, :cond_9

    .line 254
    .line 255
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    goto :goto_b

    .line 259
    :cond_a
    return-object v2
.end method

.method public final getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    .locals 2

    .line 7
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 12
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/am/FreecessPkgStatus;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getFrozenPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/FreecessPkgStatus;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    .locals 7

    .line 27
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 32
    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v1, :cond_1

    .line 35
    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v3, p1, :cond_1

    .line 36
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    move-object v1, v2

    .line 37
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    .line 38
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 39
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x0

    .line 40
    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    .line 41
    const-string v4, ".cts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 42
    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v4, 0x100f

    int-to-long v4, v4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 43
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v4

    .line 44
    new-instance v5, Lcom/android/server/am/FreecessPkgStatus;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v3, p1, v6, v4}, Lcom/android/server/am/FreecessPkgStatus;-><init>(Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_3

    .line 45
    :try_start_2
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 46
    iput-object v1, v5, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v1, v5

    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    monitor-enter v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 48
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1, v3, p1, v5}, Lcom/android/server/am/FreecessPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 49
    invoke-virtual {p0, v5}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V

    .line 50
    monitor-exit v0

    move-object v1, v5

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 51
    :goto_1
    const-string p1, "FreecessController"

    const-string/jumbo v0, "getPackageStatus() failed to create ps "

    .line 52
    invoke-static {v0, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-object v1

    .line 53
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    const-string v1, ".cts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 4
    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v0, :cond_1

    .line 7
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 8
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 9
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x100f

    int-to-long v3, v3

    invoke-interface {v2, p2, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 10
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    .line 11
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 12
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p2}, Landroid/content/pm/IPackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v4

    .line 13
    new-instance v5, Lcom/android/server/am/FreecessPkgStatus;

    invoke-direct {v5, p2, v3, p1, v4}, Lcom/android/server/am/FreecessPkgStatus;-><init>(Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    :try_start_2
    iget-object p1, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iput-object p1, v5, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v0, v5

    goto :goto_1

    .line 15
    :cond_2
    :goto_0
    monitor-enter v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 16
    :try_start_3
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p1, p2, v3, v5}, Lcom/android/server/am/FreecessPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 17
    invoke-virtual {p0, v5}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V

    .line 18
    monitor-exit v1

    move-object v0, v5

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_1
    move-exception p0

    .line 19
    :goto_1
    const-string p1, "FreecessController"

    const-string/jumbo p2, "getPackageStatus() failed to create ps "

    .line 20
    invoke-static {p2, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0

    .line 21
    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final getTargetUidNameMap()Landroid/util/ArrayMap;
    .locals 7

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/server/am/FreecessPkgStatus;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 30
    .line 31
    sget-object v4, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 32
    .line 33
    iget-object v5, v3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 34
    .line 35
    iget v6, v3, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 36
    .line 37
    invoke-virtual {v4, v6, v5}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget v4, v3, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    monitor-exit v1

    .line 61
    return-object v0

    .line 62
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/HandlerThread;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 7
    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->reportSocketResult(Z)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p1, p0, p3, p4}, Lcom/android/server/am/FreecessHandler;->init(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/os/HandlerThread;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isInFreezeExemptionList(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->isInOlafAllowList(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    return v0

    .line 21
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mCalmModeDefaultAllowList:Ljava/util/Set;

    .line 22
    .line 23
    check-cast v2, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    return v0

    .line 32
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    .line 33
    .line 34
    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 35
    .line 36
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_4

    .line 41
    .line 42
    return v0

    .line 43
    :cond_4
    sget-object p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    .line 44
    .line 45
    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 46
    .line 47
    const/16 v3, 0x12

    .line 48
    .line 49
    invoke-virtual {p0, v2, p1, v3, v1}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->filter(IIILjava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const/4 p1, 0x2

    .line 54
    if-ne p1, p0, :cond_5

    .line 55
    .line 56
    return v0

    .line 57
    :cond_5
    const/4 p0, 0x0

    .line 58
    return p0
.end method

.method public final isFreezedPackage(I)Z
    .locals 1

    .line 7
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz p0, :cond_0

    .line 10
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 11
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 12
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isFreezedPackage(ILjava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz p0, :cond_0

    .line 4
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isInFreecessExcludeList(Lcom/android/server/am/MARsPackageInfo;)Z
    .locals 1

    .line 19
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 20
    :try_start_0
    iget p1, p1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 22
    invoke-static {p0}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result p0

    .line 23
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 24
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isInFreezeExemptionList(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 3
    .line 4
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezeExemptionChina:Ljava/util/Set;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezeExemptionChina:Ljava/util/Set;

    .line 20
    .line 21
    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 22
    .line 23
    check-cast v3, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    monitor-exit v1

    .line 32
    return v2

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    monitor-exit v1

    .line 36
    goto :goto_1

    .line 37
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    .line 40
    .line 41
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 42
    .line 43
    check-cast v1, Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezeExemptionStartsWith:Ljava/util/Set;

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-instance v1, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda2;

    .line 58
    .line 59
    invoke-direct {v1, v0, p1}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_3

    .line 67
    .line 68
    :cond_2
    move v0, v2

    .line 69
    :cond_3
    return v0
.end method

.method public final isInOlafAllowList(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFExemption:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFExemptionStartsWith:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda2;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v1, v2, p1}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 36
    :goto_1
    sget-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mOLAFExemptionGlobal:Ljava/util/Set;

    .line 47
    .line 48
    check-cast p0, Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    or-int/2addr v0, p0

    .line 55
    :cond_3
    return v0
.end method

.method public final kernelFreecessReport(Lcom/android/server/am/mars/netlink/StructFreeCessMsg;)V
    .locals 9

    .line 1
    iget v0, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_10

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_8

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq v0, v2, :cond_3

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_9

    .line 17
    .line 18
    :cond_0
    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 19
    .line 20
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v0, "Receive cfb-module info(uid:"

    .line 25
    .line 26
    const-string v1, ") from kernel"

    .line 27
    .line 28
    const-string v2, "FreecessController"

    .line 29
    .line 30
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const-string v0, "Cfb"

    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    goto/16 :goto_9

    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_9

    .line 47
    .line 48
    :cond_3
    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 49
    .line 50
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    const-string v0, "FreecessController"

    .line 55
    .line 56
    const-string v2, "Receive packet-module info(uid:"

    .line 57
    .line 58
    const-string v3, ") from kernel"

    .line 59
    .line 60
    invoke-static {p1, v2, v3, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 64
    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 69
    .line 70
    monitor-enter v0

    .line 71
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    iget-boolean v1, v2, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 78
    .line 79
    monitor-exit v0

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    if-eqz v1, :cond_7

    .line 85
    .line 86
    goto/16 :goto_9

    .line 87
    .line 88
    :cond_7
    const-string v0, "Packet"

    .line 89
    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_9

    .line 94
    .line 95
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p0

    .line 97
    :cond_8
    iget v0, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 98
    .line 99
    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    .line 100
    .line 101
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 102
    .line 103
    if-eqz v3, :cond_9

    .line 104
    .line 105
    const-string v3, "FreecessController"

    .line 106
    .line 107
    const-string v4, "Receive signal-module info(uid: "

    .line 108
    .line 109
    const-string v5, ",pid: "

    .line 110
    .line 111
    const-string v6, ") from kernel"

    .line 112
    .line 113
    invoke-static {v0, p1, v4, v5, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    monitor-enter v3

    .line 131
    :try_start_2
    iget-object v6, v3, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    .line 132
    .line 133
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Ljava/util/ArrayList;

    .line 138
    .line 139
    if-eqz v4, :cond_a

    .line 140
    .line 141
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    if-eqz v4, :cond_a

    .line 146
    .line 147
    move v4, v2

    .line 148
    goto :goto_2

    .line 149
    :catchall_1
    move-exception p0

    .line 150
    goto/16 :goto_7

    .line 151
    .line 152
    :cond_a
    move v4, v1

    .line 153
    :goto_2
    monitor-exit v3

    .line 154
    if-eqz v4, :cond_c

    .line 155
    .line 156
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 157
    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    monitor-enter v3

    .line 163
    :try_start_3
    iget-object v5, v3, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    .line 164
    .line 165
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Ljava/util/ArrayList;

    .line 170
    .line 171
    if-eqz v4, :cond_b

    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 177
    goto :goto_3

    .line 178
    :catchall_2
    move-exception p0

    .line 179
    goto :goto_4

    .line 180
    :cond_b
    move v4, v1

    .line 181
    :goto_3
    monitor-exit v3

    .line 182
    if-le v4, v2, :cond_c

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :goto_4
    monitor-exit v3

    .line 186
    throw p0

    .line 187
    :cond_c
    move v2, v1

    .line 188
    :goto_5
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 189
    .line 190
    if-eqz v3, :cond_f

    .line 191
    .line 192
    if-eqz v2, :cond_f

    .line 193
    .line 194
    const-string v2, "Signal"

    .line 195
    .line 196
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 197
    .line 198
    monitor-enter v3

    .line 199
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    iget-boolean v5, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 204
    .line 205
    if-eqz v5, :cond_d

    .line 206
    .line 207
    if-eqz v4, :cond_e

    .line 208
    .line 209
    iget-object v1, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 210
    .line 211
    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 212
    .line 213
    if-eqz v1, :cond_e

    .line 214
    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->unfreezeProcess(ILjava/lang/Integer;)Z

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    if-eqz p0, :cond_e

    .line 224
    .line 225
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 226
    .line 227
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 228
    .line 229
    const-string v1, "PROC: Signal <u="

    .line 230
    .line 231
    const-string v2, ", p="

    .line 232
    .line 233
    const-string v4, ">"

    .line 234
    .line 235
    invoke-static {v0, p1, v1, v2, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    const-string v0, "UFZ"

    .line 240
    .line 241
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_d
    invoke-virtual {p0, v4, v2, v1}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 246
    .line 247
    .line 248
    :cond_e
    :goto_6
    monitor-exit v3

    .line 249
    goto :goto_9

    .line 250
    :catchall_3
    move-exception p0

    .line 251
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 252
    throw p0

    .line 253
    :cond_f
    const-string p1, "Signal"

    .line 254
    .line 255
    const-wide/16 v1, 0x3e8

    .line 256
    .line 257
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)V

    .line 258
    .line 259
    .line 260
    goto :goto_9

    .line 261
    :goto_7
    monitor-exit v3

    .line 262
    throw p0

    .line 263
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    .line 264
    .line 265
    if-eqz v0, :cond_11

    .line 266
    .line 267
    const-string/jumbo v0, "mismatch"

    .line 268
    .line 269
    .line 270
    move-object v8, v0

    .line 271
    move v7, v2

    .line 272
    goto :goto_8

    .line 273
    :cond_11
    new-instance v0, Ljava/lang/String;

    .line 274
    .line 275
    iget-object v2, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->rpcname:[B

    .line 276
    .line 277
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    move-object v8, v0

    .line 285
    move v7, v1

    .line 286
    :goto_8
    iget v3, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 287
    .line 288
    iget v4, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    .line 289
    .line 290
    iget v5, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    .line 291
    .line 292
    iget v6, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    .line 293
    .line 294
    move-object v2, p0

    .line 295
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/FreecessController;->reportBinderUid(IIIIILjava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :goto_9
    return-void
.end method

.method public final killPkgForCalmMode(ILjava/lang/String;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_4

    .line 23
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_3

    .line 33
    .line 34
    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 35
    .line 36
    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 37
    .line 38
    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 41
    .line 42
    const-string v5, "CalmMode"

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x1

    .line 46
    move v3, p1

    .line 47
    move-object v4, p2

    .line 48
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->killProcessForMARs(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    monitor-enter v0

    .line 57
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 58
    .line 59
    invoke-static {v1, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 66
    .line 67
    iput-object v1, p1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 68
    .line 69
    const/16 v1, 0x8

    .line 70
    .line 71
    iput v1, p1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 74
    .line 75
    iget-object v2, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 76
    .line 77
    iget v3, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 78
    .line 79
    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 86
    .line 87
    iget-object v2, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 88
    .line 89
    iget v3, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 90
    .line 91
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_1
    move-exception p0

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    const-string p1, "EXE"

    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v1, "CalmMode "

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    throw p0

    .line 120
    :cond_3
    :goto_3
    const/4 p0, 0x1

    .line 121
    return p0

    .line 122
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    throw p0
.end method

.method public final lcdOnFreezePackage(ILjava/lang/String;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    move v1, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v1, v2

    .line 33
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    iget-object v4, v4, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 38
    .line 39
    invoke-interface {v4, p1}, Lcom/android/server/input/NativeInputManagerService;->isUidTouched(I)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v4, v2

    .line 45
    :goto_1
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 46
    .line 47
    monitor-enter v5

    .line 48
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-virtual {p0, v6, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    const-string/jumbo p0, "s0"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    monitor-exit v5

    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto/16 :goto_6

    .line 69
    .line 70
    :cond_3
    invoke-static {v6}, Lcom/android/server/am/FreecessController;->checkFgsPkgSkipToFreeze(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_4

    .line 75
    .line 76
    const-string v7, "FreecessController"

    .line 77
    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v9, " has important Fg-service , skip to freeze"

    .line 87
    .line 88
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iput v3, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 99
    .line 100
    const-string/jumbo v7, "s1"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move v7, v3

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move v7, v2

    .line 109
    :goto_2
    if-nez v7, :cond_5

    .line 110
    .line 111
    iget-boolean v8, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 112
    .line 113
    if-eqz v8, :cond_5

    .line 114
    .line 115
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 116
    .line 117
    iget-boolean v9, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 118
    .line 119
    if-eqz v9, :cond_5

    .line 120
    .line 121
    iget-boolean v8, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 122
    .line 123
    if-eqz v8, :cond_5

    .line 124
    .line 125
    invoke-virtual {p0, v6}, Lcom/android/server/am/FreecessController;->overrideOlafForBgFreeze(Lcom/android/server/am/FreecessPkgStatus;)V

    .line 126
    .line 127
    .line 128
    const-string p0, "FreecessController"

    .line 129
    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p2, " is OLAF FZed, override it with bg fz."

    .line 139
    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    monitor-exit v5

    .line 151
    goto/16 :goto_7

    .line 152
    .line 153
    :cond_5
    if-nez v7, :cond_6

    .line 154
    .line 155
    iget-object v8, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 156
    .line 157
    iget-boolean v8, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 158
    .line 159
    if-eqz v8, :cond_6

    .line 160
    .line 161
    const-string/jumbo p0, "s2"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    monitor-exit v5

    .line 168
    goto/16 :goto_7

    .line 169
    .line 170
    :cond_6
    if-nez v7, :cond_7

    .line 171
    .line 172
    sget-object v8, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 173
    .line 174
    iget-object v9, v6, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 175
    .line 176
    iget v10, v6, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 177
    .line 178
    invoke-virtual {v8, v10, v9}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-nez v8, :cond_7

    .line 183
    .line 184
    const-string v7, "FreecessController"

    .line 185
    .line 186
    new-instance v8, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v9, " is not MARs target, skip to freeze"

    .line 195
    .line 196
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    iput v3, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 207
    .line 208
    const-string/jumbo v7, "s3"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    move v7, v3

    .line 215
    :cond_7
    if-nez v7, :cond_8

    .line 216
    .line 217
    const-string/jumbo v8, "com.samsung.android.spay"

    .line 218
    .line 219
    .line 220
    iget-object v9, v6, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    if-eqz v8, :cond_8

    .line 227
    .line 228
    iput v3, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 229
    .line 230
    const-string/jumbo p0, "s4"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    monitor-exit v5

    .line 237
    goto/16 :goto_7

    .line 238
    .line 239
    :cond_8
    if-nez v7, :cond_9

    .line 240
    .line 241
    if-eqz v1, :cond_9

    .line 242
    .line 243
    const-string v1, "FreecessController"

    .line 244
    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v8, " has floating or onScreen window, skip to freeze"

    .line 254
    .line 255
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    iput v3, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 266
    .line 267
    const-string/jumbo v1, "s5"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    move v7, v3

    .line 274
    :cond_9
    if-nez v7, :cond_a

    .line 275
    .line 276
    if-eqz v4, :cond_a

    .line 277
    .line 278
    const-string v1, "FreecessController"

    .line 279
    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v7, " has Touch Event, skip to freeze"

    .line 289
    .line 290
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    iput v3, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 301
    .line 302
    const-string/jumbo v1, "s6"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    move v7, v3

    .line 309
    :cond_a
    if-nez v7, :cond_b

    .line 310
    .line 311
    const-string v1, "Bg"

    .line 312
    .line 313
    new-instance v4, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;

    .line 314
    .line 315
    const/4 v7, 0x0

    .line 316
    invoke-direct {v4, v7, v0}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    const/4 v7, 0x3

    .line 320
    invoke-virtual {p0, v6, v1, v7, v4}, Lcom/android/server/am/FreecessController;->freezeUid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;ILcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    goto :goto_3

    .line 325
    :cond_b
    move v1, v2

    .line 326
    :goto_3
    if-nez v1, :cond_f

    .line 327
    .line 328
    const-string v1, "NP"

    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-nez v1, :cond_f

    .line 339
    .line 340
    const-string v1, "NProc"

    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-eqz v1, :cond_c

    .line 351
    .line 352
    goto :goto_4

    .line 353
    :cond_c
    sget-object v1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 354
    .line 355
    iget v4, v6, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 356
    .line 357
    iget-object v6, v6, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 358
    .line 359
    iget-boolean v7, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 360
    .line 361
    if-nez v7, :cond_d

    .line 362
    .line 363
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 364
    .line 365
    if-eqz p0, :cond_e

    .line 366
    .line 367
    :cond_d
    move v2, v3

    .line 368
    :cond_e
    const-string p0, "Bg-refreeze"

    .line 369
    .line 370
    invoke-virtual {v1, v4, v6, p0, v2}, Lcom/android/server/am/FreecessHandler;->sendUidLcdOnQuickFzMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 371
    .line 372
    .line 373
    :cond_f
    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 375
    .line 376
    const-string v1, "FRZ"

    .line 377
    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    const-string v3, "Bg "

    .line 381
    .line 382
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string p2, " "

    .line 389
    .line 390
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    if-lez p1, :cond_10

    .line 401
    .line 402
    new-instance p1, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string p2, " [IMP]"

    .line 405
    .line 406
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    goto :goto_5

    .line 421
    :cond_10
    const-string p1, ""

    .line 422
    .line 423
    :goto_5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    goto :goto_7

    .line 434
    :goto_6
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    throw p0

    .line 436
    :cond_11
    :goto_7
    return-void
.end method

.method public final lcdOnFreezedStateChange(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p4}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p4, p2, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    if-ne p4, p1, :cond_1

    .line 21
    .line 22
    iput v1, p2, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 23
    .line 24
    :cond_1
    iget p1, p2, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 25
    .line 26
    invoke-virtual {p0, p4, p1, p3, p2}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final makePkgIdleIfNeeded(I)V
    .locals 5

    .line 1
    const-string v0, "Try to make pkg idle: <"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 17
    .line 18
    iget v2, v2, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 19
    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    sget-object v1, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const-string v1, "FreecessController"

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ", "

    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, ">."

    .line 56
    .line 57
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 71
    .line 72
    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/ActivityManagerService;->makePackageIdle(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :goto_1
    const-string p1, "FreecessController"

    .line 77
    .line 78
    const-string/jumbo v0, "makePkgIdleIfNeeded Exception : "

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v0, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_2
    return-void

    .line 85
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw p0
.end method

.method public final matchFreezeState(ILjava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 p1, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 13
    .line 14
    iget-boolean p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v1, p2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move p1, v1

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return p1

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final onUidFrozen(Lcom/android/server/am/FreecessPkgStatus;ILjava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    iput-boolean v5, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 13
    .line 14
    iput v2, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 15
    .line 16
    invoke-static {v1, v5}, Lcom/android/server/am/FreecessController;->updateFrozenStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V

    .line 17
    .line 18
    .line 19
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 20
    .line 21
    sget-object v4, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 22
    .line 23
    iget-object v6, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 24
    .line 25
    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 26
    .line 27
    invoke-virtual {v4, v7, v6}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    sget-boolean v6, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 34
    .line 35
    sget-object v6, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 36
    .line 37
    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 38
    .line 39
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v8

    .line 47
    invoke-virtual {v6, v7, v8, v9, v3}, Lcom/android/server/am/mars/EventRecorder;->addFreezeEvent(Ljava/lang/Integer;JLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 51
    .line 52
    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 53
    .line 54
    iget-object v6, v6, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-nez v6, :cond_1

    .line 61
    .line 62
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 63
    .line 64
    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 65
    .line 66
    iget-object v8, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v6, v8, v7, v1}, Lcom/android/server/am/FreecessPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    sget-object v6, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 72
    .line 73
    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 74
    .line 75
    iget-object v8, v6, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;

    .line 76
    .line 77
    if-nez v8, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const-string/jumbo v8, "uid"

    .line 81
    .line 82
    .line 83
    invoke-static {v7, v8}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    iget-object v8, v6, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;

    .line 88
    .line 89
    const/16 v9, 0x20

    .line 90
    .line 91
    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-virtual {v8, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 96
    .line 97
    .line 98
    iget-object v7, v6, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;

    .line 99
    .line 100
    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    .line 102
    .line 103
    :goto_0
    if-ne v2, v5, :cond_3

    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    iget-object v7, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 107
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v8

    .line 112
    iput-wide v8, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    .line 113
    .line 114
    sget-object v8, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->FREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    .line 115
    .line 116
    invoke-virtual {v8}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->getTypeNum()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    iget-object v7, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeCounts:[I

    .line 121
    .line 122
    aget v9, v7, v8

    .line 123
    .line 124
    add-int/2addr v9, v5

    .line 125
    aput v9, v7, v8

    .line 126
    .line 127
    iget-object v7, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 128
    .line 129
    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 130
    .line 131
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    invoke-virtual {v4, v8, v7}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(ILjava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    const/4 v9, 0x0

    .line 144
    if-eqz v8, :cond_4

    .line 145
    .line 146
    if-eq v7, v5, :cond_5

    .line 147
    .line 148
    :cond_4
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-nez v7, :cond_6

    .line 153
    .line 154
    iget-boolean v7, v0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 155
    .line 156
    if-nez v7, :cond_6

    .line 157
    .line 158
    :cond_5
    move v7, v5

    .line 159
    goto :goto_1

    .line 160
    :cond_6
    move v7, v9

    .line 161
    :goto_1
    iget-object v8, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 162
    .line 163
    iget v10, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 164
    .line 165
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    invoke-virtual {v4, v10, v8}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(ILjava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    iget-boolean v10, v0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 174
    .line 175
    if-eqz v10, :cond_9

    .line 176
    .line 177
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    if-eqz v10, :cond_7

    .line 182
    .line 183
    if-eqz v8, :cond_8

    .line 184
    .line 185
    :cond_7
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    if-nez v8, :cond_9

    .line 190
    .line 191
    :cond_8
    move v8, v5

    .line 192
    goto :goto_2

    .line 193
    :cond_9
    move v8, v9

    .line 194
    :goto_2
    iput-boolean v7, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 195
    .line 196
    iput-boolean v8, v1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    .line 197
    .line 198
    const/16 v10, 0x1a

    .line 199
    .line 200
    iget v11, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 201
    .line 202
    invoke-virtual {v6, v10, v11}, Lcom/android/server/am/FreecessHandler;->sendUpdateBTMsg(II)V

    .line 203
    .line 204
    .line 205
    if-eqz v8, :cond_a

    .line 206
    .line 207
    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 208
    .line 209
    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 210
    .line 211
    .line 212
    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 213
    .line 214
    invoke-virtual {v4, v8}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    .line 215
    .line 216
    .line 217
    :cond_a
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 218
    .line 219
    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 220
    .line 221
    monitor-enter v8

    .line 222
    :try_start_0
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 223
    .line 224
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    check-cast v10, Ljava/util/HashSet;

    .line 229
    .line 230
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v10

    .line 234
    if-nez v10, :cond_b

    .line 235
    .line 236
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 237
    .line 238
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    check-cast v10, Ljava/util/HashSet;

    .line 243
    .line 244
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :catchall_0
    move-exception v0

    .line 249
    goto/16 :goto_8

    .line 250
    .line 251
    :cond_b
    :goto_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v6, v4, v5}, Lcom/android/server/am/FreecessHandler;->sendOnFreezeStateChanged(IZ)V

    .line 253
    .line 254
    .line 255
    iget-object v13, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 256
    .line 257
    iget v10, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 258
    .line 259
    iget v11, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 260
    .line 261
    if-eqz v7, :cond_c

    .line 262
    .line 263
    move v14, v5

    .line 264
    goto :goto_4

    .line 265
    :cond_c
    const/4 v4, -0x1

    .line 266
    move v14, v4

    .line 267
    :goto_4
    const/4 v4, 0x3

    .line 268
    if-ne v2, v4, :cond_d

    .line 269
    .line 270
    move v15, v5

    .line 271
    goto :goto_5

    .line 272
    :cond_d
    move v15, v9

    .line 273
    :goto_5
    const/16 v17, 0x1

    .line 274
    .line 275
    const/4 v12, 0x1

    .line 276
    const/16 v16, 0x0

    .line 277
    .line 278
    move-object v9, v6

    .line 279
    invoke-virtual/range {v9 .. v17}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(IIZLjava/lang/String;IZZI)V

    .line 280
    .line 281
    .line 282
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 283
    .line 284
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 285
    .line 286
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v2, v4}, Lcom/android/server/am/FreecessController$UidPidMap;->getPidList(Ljava/lang/Integer;)Ljava/util/ArrayList;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-nez v4, :cond_f

    .line 299
    .line 300
    invoke-virtual {v6, v2}, Lcom/android/server/am/FreecessHandler;->sendReportToBroadcastQueueMsg(Ljava/util/ArrayList;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    :cond_e
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    if-eqz v5, :cond_f

    .line 312
    .line 313
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    check-cast v5, Ljava/lang/Integer;

    .line 318
    .line 319
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 320
    .line 321
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 330
    .line 331
    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 332
    .line 333
    if-eqz v6, :cond_e

    .line 334
    .line 335
    if-eqz v5, :cond_e

    .line 336
    .line 337
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    iget v8, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 342
    .line 343
    iget v9, v5, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 344
    .line 345
    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 346
    .line 347
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 348
    .line 349
    iget v11, v6, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 350
    .line 351
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 352
    .line 353
    iget-boolean v12, v5, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 354
    .line 355
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->onProcessFrozen(IILjava/lang/String;IZ)V

    .line 356
    .line 357
    .line 358
    goto :goto_6

    .line 359
    :cond_f
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 360
    .line 361
    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 362
    .line 363
    iget v5, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 364
    .line 365
    iget-object v6, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 366
    .line 367
    if-nez v6, :cond_10

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_10
    const/16 v7, 0xf

    .line 371
    .line 372
    invoke-virtual {v6, v7, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    if-nez v6, :cond_11

    .line 377
    .line 378
    iget-object v6, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 379
    .line 380
    invoke-virtual {v6, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    new-instance v7, Landroid/os/Bundle;

    .line 385
    .line 386
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 387
    .line 388
    .line 389
    const-string/jumbo v8, "packageName"

    .line 390
    .line 391
    .line 392
    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    const-string/jumbo v4, "uid"

    .line 396
    .line 397
    .line 398
    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 402
    .line 403
    .line 404
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 405
    .line 406
    const-wide/16 v4, 0x3e8

    .line 407
    .line 408
    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 409
    .line 410
    .line 411
    :cond_11
    :goto_7
    const-string v0, "FreecessController"

    .line 412
    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    const-string v5, "FZ : "

    .line 416
    .line 417
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    iget-object v5, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v5, "("

    .line 426
    .line 427
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    iget v1, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 431
    .line 432
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string v1, ") "

    .line 436
    .line 437
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v1, " reason: "

    .line 444
    .line 445
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-static {v4, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    return-void

    .line 452
    :goto_8
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    throw v0
.end method

.method public final onUidUnfrozen(Lcom/android/server/am/FreecessPkgStatus;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    iput-boolean v10, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 13
    .line 14
    const/4 v11, 0x1

    .line 15
    iput v11, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 16
    .line 17
    iput v10, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 18
    .line 19
    invoke-static {v1, v10}, Lcom/android/server/am/FreecessController;->updateFrozenStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V

    .line 20
    .line 21
    .line 22
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 23
    .line 24
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 25
    .line 26
    iget-object v5, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 35
    .line 36
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 37
    .line 38
    iget-object v5, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 44
    .line 45
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 46
    .line 47
    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 48
    .line 49
    iget v5, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 50
    .line 51
    invoke-virtual {v3, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    sget-boolean v3, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 58
    .line 59
    sget-object v3, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 60
    .line 61
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 62
    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->latestProcState:I

    .line 72
    .line 73
    move-object/from16 v7, p3

    .line 74
    .line 75
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/mars/EventRecorder;->addUnFreezeEvent(Ljava/lang/Integer;JLjava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    sget-boolean v3, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    sget-object v3, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 83
    .line 84
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 85
    .line 86
    iget-object v5, v3, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;

    .line 87
    .line 88
    if-nez v5, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const/16 v6, 0x22

    .line 92
    .line 93
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    new-instance v6, Landroid/os/Bundle;

    .line 98
    .line 99
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string/jumbo v7, "uid"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    iget-object v3, v3, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;

    .line 112
    .line 113
    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_0
    const-string v3, "OLAF:"

    .line 117
    .line 118
    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_4

    .line 123
    .line 124
    return-void

    .line 125
    :cond_4
    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 126
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 128
    .line 129
    .line 130
    move-result-wide v4

    .line 131
    invoke-virtual {v3, v4, v5, v9}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->updateUnfreezeState(JLjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-boolean v3, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 135
    .line 136
    iget-boolean v4, v1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    .line 137
    .line 138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 139
    .line 140
    .line 141
    move-result-wide v5

    .line 142
    :try_start_0
    sget-object v7, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 143
    .line 144
    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 145
    .line 146
    const/16 v12, 0x1b

    .line 147
    .line 148
    invoke-virtual {v7, v12, v8}, Lcom/android/server/am/FreecessHandler;->sendUpdateBTMsg(II)V

    .line 149
    .line 150
    .line 151
    if-eqz v4, :cond_5

    .line 152
    .line 153
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 154
    .line 155
    invoke-virtual {v0, v4, v11}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    goto/16 :goto_6

    .line 161
    .line 162
    :cond_5
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    .line 164
    .line 165
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 166
    .line 167
    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 168
    .line 169
    monitor-enter v8

    .line 170
    :try_start_1
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 171
    .line 172
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    check-cast v5, Ljava/util/HashSet;

    .line 177
    .line 178
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-nez v5, :cond_6

    .line 183
    .line 184
    monitor-exit v8

    .line 185
    goto :goto_2

    .line 186
    :catchall_1
    move-exception v0

    .line 187
    goto/16 :goto_5

    .line 188
    .line 189
    :cond_6
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 190
    .line 191
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    check-cast v0, Ljava/util/HashSet;

    .line 196
    .line 197
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    invoke-virtual {v7, v4, v10}, Lcom/android/server/am/FreecessHandler;->sendOnFreezeStateChanged(IZ)V

    .line 202
    .line 203
    .line 204
    :goto_2
    iget-object v0, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 205
    .line 206
    iget v13, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 207
    .line 208
    iget v14, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 209
    .line 210
    if-eqz v3, :cond_7

    .line 211
    .line 212
    move/from16 v17, v10

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_7
    const/4 v3, -0x1

    .line 216
    move/from16 v17, v3

    .line 217
    .line 218
    :goto_3
    const/16 v20, 0x0

    .line 219
    .line 220
    const/4 v15, 0x0

    .line 221
    const/16 v18, 0x0

    .line 222
    .line 223
    const/16 v19, 0x1

    .line 224
    .line 225
    move-object v12, v7

    .line 226
    move-object/from16 v16, v0

    .line 227
    .line 228
    invoke-virtual/range {v12 .. v20}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(IIZLjava/lang/String;IZZI)V

    .line 229
    .line 230
    .line 231
    iput-boolean v10, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 232
    .line 233
    iput-boolean v10, v1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    .line 234
    .line 235
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-nez v0, :cond_8

    .line 240
    .line 241
    invoke-virtual {v7, v2}, Lcom/android/server/am/FreecessHandler;->sendReportToBroadcastQueueMsg(Ljava/util/ArrayList;)V

    .line 242
    .line 243
    .line 244
    :cond_8
    iget-object v0, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 245
    .line 246
    iget-object v3, v7, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 247
    .line 248
    if-nez v3, :cond_9

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_9
    const/16 v4, 0xf

    .line 252
    .line 253
    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-eqz v3, :cond_a

    .line 258
    .line 259
    iget-object v3, v7, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 260
    .line 261
    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_a
    :goto_4
    const-string v0, "FreecessController"

    .line 265
    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v4, "UFZ : "

    .line 269
    .line 270
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v4, "("

    .line 279
    .line 280
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    iget v1, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 284
    .line 285
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v1, ") "

    .line 289
    .line 290
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v1, " reason: "

    .line 297
    .line 298
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-static {v3, v9, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :goto_5
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 306
    throw v0

    .line 307
    :goto_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    .line 309
    .line 310
    throw v0
.end method

.method public final overrideOlafForBgFreeze(Lcom/android/server/am/FreecessPkgStatus;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x3

    .line 20
    const-string v1, "Bg"

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/FreecessController;->onUidFrozen(Lcom/android/server/am/FreecessPkgStatus;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "Olaf2Bg "

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "OVR"

    .line 54
    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final protectFreezePackage(ILjava/lang/String;J)V
    .locals 2

    .line 10
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/FreecessPkgStatus;->updateProtectionTime(J)V

    .line 13
    iget-object p3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p3, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v1

    .line 15
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 16
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 17
    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    :cond_1
    return-void

    .line 18
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p3, p4}, Lcom/android/server/am/FreecessPkgStatus;->updateProtectionTime(J)V

    .line 4
    iget-object p3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p3, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 5
    invoke-virtual {p0, v1, p5, p3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v2

    move p3, p0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 7
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 8
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    :cond_1
    return p3

    .line 9
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final readSysfs()V
    .locals 15

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    const-string/jumbo v1, "e = "

    .line 4
    .line 5
    .line 6
    const-string v2, "FreecessController"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    .line 10
    .line 11
    new-instance v5, Ljava/io/FileReader;

    .line 12
    .line 13
    const-string v6, "/data/system/ssrm_local_freecess"

    .line 14
    .line 15
    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_f

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    array-length v6, v3

    .line 39
    const/4 v7, 0x2

    .line 40
    if-le v6, v7, :cond_0

    .line 41
    .line 42
    aget-object v6, v3, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    const-string v8, ""

    .line 45
    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    :try_start_2
    const-string v9, "-"

    .line 49
    .line 50
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    invoke-virtual {v6, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    move-object v3, v4

    .line 61
    goto/16 :goto_9

    .line 62
    .line 63
    :catch_0
    move-exception p0

    .line 64
    move-object v3, v4

    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :catch_1
    move-exception p0

    .line 68
    move-object v3, v4

    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :cond_1
    move-object v6, v8

    .line 72
    :goto_1
    const/4 v9, 0x1

    .line 73
    aget-object v10, v3, v9

    .line 74
    .line 75
    if-eqz v10, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    move-object v10, v8

    .line 79
    :goto_2
    aget-object v3, v3, v7

    .line 80
    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    move-object v8, v3

    .line 84
    :cond_3
    const-string v3, "ALL"

    .line 85
    .line 86
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    const-string v7, "Enhance_Switch"

    .line 91
    .line 92
    const-string v11, "Switch"

    .line 93
    .line 94
    const-string v12, "@"

    .line 95
    .line 96
    const-string v13, "WL"

    .line 97
    .line 98
    const-string v14, "1"

    .line 99
    .line 100
    if-eqz v3, :cond_9

    .line 101
    .line 102
    :try_start_3
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    invoke-virtual {v8, v12, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    array-length v6, v3

    .line 113
    :goto_3
    if-ge v5, v6, :cond_0

    .line 114
    .line 115
    aget-object v7, v3, v5

    .line 116
    .line 117
    if-eqz v7, :cond_4

    .line 118
    .line 119
    iget-object v8, p0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    .line 120
    .line 121
    check-cast v8, Ljava/util/HashSet;

    .line 122
    .line 123
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-nez v8, :cond_4

    .line 128
    .line 129
    iget-object v8, p0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    .line 130
    .line 131
    invoke-static {v7}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v8, Ljava/util/HashSet;

    .line 136
    .line 137
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_7

    .line 148
    .line 149
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_6

    .line 154
    .line 155
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 156
    .line 157
    if-eqz v3, :cond_6

    .line 158
    .line 159
    move v5, v9

    .line 160
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_7
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_0

    .line 170
    .line 171
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_8

    .line 176
    .line 177
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 178
    .line 179
    if-eqz v3, :cond_8

    .line 180
    .line 181
    move v5, v9

    .line 182
    :cond_8
    iput-boolean v5, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_9
    sget-object v3, Lcom/android/server/am/FreecessController;->mCountry:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_0

    .line 193
    .line 194
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_b

    .line 199
    .line 200
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    .line 201
    .line 202
    if-eqz v3, :cond_0

    .line 203
    .line 204
    check-cast v3, Ljava/util/HashSet;

    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v8, v12, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    array-length v6, v3

    .line 214
    :goto_4
    if-ge v5, v6, :cond_0

    .line 215
    .line 216
    aget-object v7, v3, v5

    .line 217
    .line 218
    if-eqz v7, :cond_a

    .line 219
    .line 220
    iget-object v8, p0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    .line 221
    .line 222
    check-cast v8, Ljava/util/HashSet;

    .line 223
    .line 224
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    if-nez v8, :cond_a

    .line 229
    .line 230
    iget-object v8, p0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    .line 231
    .line 232
    invoke-static {v7}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    check-cast v8, Ljava/util/HashSet;

    .line 237
    .line 238
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_b
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_d

    .line 249
    .line 250
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_c

    .line 255
    .line 256
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 257
    .line 258
    if-eqz v3, :cond_c

    .line 259
    .line 260
    move v5, v9

    .line 261
    :cond_c
    invoke-virtual {p0, v5}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_d
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_0

    .line 271
    .line 272
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-eqz v3, :cond_e

    .line 277
    .line 278
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 279
    .line 280
    if-eqz v3, :cond_e

    .line 281
    .line 282
    move v5, v9

    .line 283
    :cond_e
    iput-boolean v5, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :cond_f
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 288
    .line 289
    .line 290
    goto :goto_8

    .line 291
    :catch_2
    move-exception p0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    :goto_5
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    goto :goto_8

    .line 312
    :catchall_1
    move-exception p0

    .line 313
    goto :goto_9

    .line 314
    :catch_3
    move-exception p0

    .line 315
    goto :goto_6

    .line 316
    :catch_4
    move-exception p0

    .line 317
    goto :goto_7

    .line 318
    :goto_6
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 338
    .line 339
    .line 340
    if-eqz v3, :cond_10

    .line 341
    .line 342
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 343
    .line 344
    .line 345
    goto :goto_8

    .line 346
    :catch_5
    move-exception p0

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    goto :goto_5

    .line 353
    :goto_7
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 373
    .line 374
    .line 375
    if-eqz v3, :cond_10

    .line 376
    .line 377
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 378
    .line 379
    .line 380
    goto :goto_8

    .line 381
    :catch_6
    move-exception p0

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    goto :goto_5

    .line 388
    :cond_10
    :goto_8
    return-void

    .line 389
    :goto_9
    if-eqz v3, :cond_11

    .line 390
    .line 391
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 392
    .line 393
    .line 394
    goto :goto_a

    .line 395
    :catch_7
    move-exception v0

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    :cond_11
    :goto_a
    throw p0
.end method

.method public final releaseFreezedAppPid(I)V
    .locals 8

    .line 1
    const-string v0, "UFZ : release pid "

    .line 2
    .line 3
    const-string v1, "UFZ error : pid "

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_4

    .line 30
    :cond_0
    move v2, v5

    .line 31
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 37
    .line 38
    if-nez v6, :cond_1

    .line 39
    .line 40
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const-string v7, "CustomFrequencyManagerService"

    .line 43
    .line 44
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Landroid/os/CustomFrequencyManager;

    .line 49
    .line 50
    iput-object v6, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 56
    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    const-string/jumbo v2, "freeze"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, v5, v2}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    const/4 v2, -0x1

    .line 69
    if-ne p0, v2, :cond_2

    .line 70
    .line 71
    const-string p0, "FreecessController"

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, " (when app died or watchdog half)"

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    const-string p0, "FreecessController"

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, " (when app died or watchdog half)"

    .line 105
    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    throw p0
.end method

.method public final reportBinderUid(IIIIILjava/lang/String;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p2

    .line 4
    move v3, p3

    .line 5
    move v4, p4

    .line 6
    move-object/from16 v5, p6

    .line 7
    .line 8
    const/4 v6, 0x1

    .line 9
    if-ne v4, v6, :cond_11

    .line 10
    .line 11
    const-string/jumbo v4, "u="

    .line 12
    .line 13
    .line 14
    const-string v7, ""

    .line 15
    .line 16
    if-eqz v5, :cond_10

    .line 17
    .line 18
    sget-object v8, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 19
    .line 20
    monitor-enter v8

    .line 21
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    const/4 v10, 0x0

    .line 26
    if-eqz v9, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v6, v10

    .line 30
    :goto_0
    if-eqz v6, :cond_1

    .line 31
    .line 32
    iget-object v7, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 33
    .line 34
    iget v10, v9, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_1
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    const-string/jumbo v8, "free_buffer_full"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    const/4 v9, 0x0

    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    const/4 v8, -0x1

    .line 52
    if-eq v3, v8, :cond_3

    .line 53
    .line 54
    :cond_2
    const-string/jumbo v8, "mismatch"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_9

    .line 62
    .line 63
    :cond_3
    const-string v3, "Binder(1)-"

    .line 64
    .line 65
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_4
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 74
    .line 75
    invoke-virtual {v3, p2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v6, :cond_6

    .line 80
    .line 81
    sget-object v6, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 82
    .line 83
    invoke-virtual {v6, v10, v7}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_6

    .line 88
    .line 89
    sget-boolean v4, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    .line 90
    .line 91
    if-eqz v4, :cond_5

    .line 92
    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_5

    .line 102
    .line 103
    const-string v1, "FreecessController"

    .line 104
    .line 105
    const-string/jumbo v4, "pid "

    .line 106
    .line 107
    .line 108
    const-string v5, " "

    .line 109
    .line 110
    const-string v6, " received async transactions while frozen, binder buffer full."

    .line 111
    .line 112
    invoke-static {p2, v4, v5, v7, v6}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 120
    .line 121
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 122
    .line 123
    .line 124
    monitor-enter v2

    .line 125
    :try_start_1
    const-string v0, "AsyncBinderFull while frozen"

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    const/16 v4, 0xd

    .line 129
    .line 130
    const/16 v5, 0x3ea

    .line 131
    .line 132
    const/4 v6, 0x1

    .line 133
    move-object p0, v3

    .line 134
    move p1, v4

    .line 135
    move p2, v5

    .line 136
    move-object p3, v0

    .line 137
    move-object p4, v0

    .line 138
    move/from16 p5, v6

    .line 139
    .line 140
    move/from16 p6, v1

    .line 141
    .line 142
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 143
    .line 144
    .line 145
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_7

    .line 150
    .line 151
    :catchall_1
    move-exception v0

    .line 152
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_5
    const-string v2, "Binder(1)-"

    .line 158
    .line 159
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_7

    .line 167
    .line 168
    :cond_6
    if-eqz v3, :cond_16

    .line 169
    .line 170
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 171
    .line 172
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 173
    .line 174
    .line 175
    monitor-enter v5

    .line 176
    :try_start_3
    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 177
    .line 178
    if-eqz v6, :cond_7

    .line 179
    .line 180
    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 181
    .line 182
    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :catchall_2
    move-exception v0

    .line 186
    goto :goto_3

    .line 187
    :cond_7
    :goto_2
    iget v6, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 188
    .line 189
    invoke-static {v6, v9}, Lcom/android/server/am/FreecessController;->freezeTargetProcess(ILjava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-eqz v6, :cond_8

    .line 194
    .line 195
    const-string v6, "FreecessController"

    .line 196
    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v1, " is not mars target, try google freezer ufz p="

    .line 206
    .line 207
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 221
    .line 222
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 225
    .line 226
    iget-wide v1, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 227
    .line 228
    const/16 v4, 0x1a

    .line 229
    .line 230
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(IJLcom/android/server/am/ProcessRecord;)V

    .line 231
    .line 232
    .line 233
    :cond_8
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 234
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_7

    .line 238
    .line 239
    :goto_3
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 240
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 241
    .line 242
    .line 243
    throw v0

    .line 244
    :cond_9
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 245
    .line 246
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 247
    .line 248
    const/16 v4, 0x9

    .line 249
    .line 250
    invoke-virtual {v2, v4, v9, v9, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_e

    .line 255
    .line 256
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 262
    .line 263
    if-eqz v2, :cond_a

    .line 264
    .line 265
    const-string v2, "android.media.IAudioFocusDispatcher"

    .line 266
    .line 267
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_a

    .line 272
    .line 273
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 274
    .line 275
    const-string v3, "audio"

    .line 276
    .line 277
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    check-cast v2, Landroid/media/AudioManager;

    .line 282
    .line 283
    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetAudioFocusedPackageName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    if-eqz v2, :cond_16

    .line 288
    .line 289
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_16

    .line 294
    .line 295
    const-string v2, "Binder(1)- focus audio"

    .line 296
    .line 297
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_7

    .line 305
    .line 306
    :cond_a
    const-string v2, "android.service.notification"

    .line 307
    .line 308
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_b

    .line 313
    .line 314
    const/4 v2, 0x2

    .line 315
    if-ne v3, v2, :cond_16

    .line 316
    .line 317
    const-string v2, "Binder(1)-"

    .line 318
    .line 319
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_7

    .line 327
    .line 328
    :cond_b
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 329
    .line 330
    if-eqz v2, :cond_d

    .line 331
    .line 332
    const-string v2, "accessibility"

    .line 333
    .line 334
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-eqz v2, :cond_d

    .line 339
    .line 340
    sget-object v2, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    .line 341
    .line 342
    iget-object v3, v2, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 343
    .line 344
    monitor-enter v3

    .line 345
    :try_start_5
    iget-object v2, v2, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 346
    .line 347
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    if-eqz v2, :cond_c

    .line 352
    .line 353
    monitor-exit v3

    .line 354
    goto :goto_5

    .line 355
    :catchall_3
    move-exception v0

    .line 356
    goto :goto_4

    .line 357
    :cond_c
    monitor-exit v3

    .line 358
    goto/16 :goto_7

    .line 359
    .line 360
    :goto_4
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 361
    throw v0

    .line 362
    :cond_d
    :goto_5
    const-string v2, "Binder(1)-"

    .line 363
    .line 364
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_7

    .line 372
    .line 373
    :cond_e
    const/16 v4, 0x11

    .line 374
    .line 375
    invoke-virtual {v2, v4, v9, v9, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    if-eqz v4, :cond_f

    .line 380
    .line 381
    sget-object v2, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 382
    .line 383
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    iget-object v2, v2, Lcom/android/server/am/mars/util/UidStateMgr;->mUidForegroundList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 388
    .line 389
    invoke-virtual {v2, v4}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    if-eqz v2, :cond_10

    .line 394
    .line 395
    const-string v2, "Binder(1)-"

    .line 396
    .line 397
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_7

    .line 405
    .line 406
    :cond_f
    if-eqz v6, :cond_10

    .line 407
    .line 408
    const/16 v4, 0x1c

    .line 409
    .line 410
    invoke-virtual {v2, v4, v7, v9, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    if-eqz v2, :cond_10

    .line 415
    .line 416
    const-string v2, "Binder(1)-"

    .line 417
    .line 418
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_7

    .line 426
    .line 427
    :goto_6
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 428
    throw v0

    .line 429
    :cond_10
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 430
    .line 431
    if-eqz v0, :cond_16

    .line 432
    .line 433
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 434
    .line 435
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 436
    .line 437
    const-string v2, "ABI"

    .line 438
    .line 439
    const-string v4, "0 "

    .line 440
    .line 441
    const-string v6, " "

    .line 442
    .line 443
    const-string v7, " "

    .line 444
    .line 445
    invoke-static {p1, v4, v6, v5, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    const-string v3, " "

    .line 453
    .line 454
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    move/from16 v3, p5

    .line 458
    .line 459
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    goto/16 :goto_7

    .line 470
    .line 471
    :cond_11
    sget-boolean v6, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 472
    .line 473
    if-eqz v6, :cond_12

    .line 474
    .line 475
    const-string v6, "FreecessController"

    .line 476
    .line 477
    const-string v7, "Receive binder-module info(callerPid:0,uid:"

    .line 478
    .line 479
    const-string v8, ",code:"

    .line 480
    .line 481
    const-string v9, ",interfaceToken:"

    .line 482
    .line 483
    invoke-static {p1, p3, v7, v8, v9}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    const-string v7, ",flag:"

    .line 488
    .line 489
    const-string v8, ") from kernel"

    .line 490
    .line 491
    invoke-static {p4, v5, v7, v8, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    :cond_12
    const-string v3, "Binder(0)"

    .line 499
    .line 500
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    if-eqz v3, :cond_13

    .line 505
    .line 506
    return-void

    .line 507
    :cond_13
    const-string v3, "Binder(0)"

    .line 508
    .line 509
    sget-boolean v4, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    .line 510
    .line 511
    if-eqz v4, :cond_15

    .line 512
    .line 513
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 514
    .line 515
    invoke-virtual {v4, p2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    if-eqz v4, :cond_14

    .line 520
    .line 521
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 522
    .line 523
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 524
    .line 525
    .line 526
    move-result v5

    .line 527
    if-eqz v5, :cond_14

    .line 528
    .line 529
    const-string v1, "FreecessController"

    .line 530
    .line 531
    const-string/jumbo v3, "pid "

    .line 532
    .line 533
    .line 534
    const-string v5, " "

    .line 535
    .line 536
    invoke-static {p2, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 541
    .line 542
    const-string v5, " received sync transactions while frozen, killing"

    .line 543
    .line 544
    invoke-static {v2, v3, v5, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 548
    .line 549
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 550
    .line 551
    .line 552
    monitor-enter v2

    .line 553
    :try_start_7
    const-string v0, "Sync transaction while in frozen state"

    .line 554
    .line 555
    const/4 v1, 0x1

    .line 556
    const/16 v3, 0xd

    .line 557
    .line 558
    const/16 v5, 0x3ea

    .line 559
    .line 560
    const/4 v6, 0x1

    .line 561
    move-object p0, v4

    .line 562
    move p1, v3

    .line 563
    move p2, v5

    .line 564
    move-object p3, v0

    .line 565
    move-object p4, v0

    .line 566
    move/from16 p5, v6

    .line 567
    .line 568
    move/from16 p6, v1

    .line 569
    .line 570
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 571
    .line 572
    .line 573
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 574
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 575
    .line 576
    .line 577
    goto :goto_7

    .line 578
    :catchall_4
    move-exception v0

    .line 579
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 580
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 581
    .line 582
    .line 583
    throw v0

    .line 584
    :cond_14
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 585
    .line 586
    .line 587
    goto :goto_7

    .line 588
    :cond_15
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 589
    .line 590
    .line 591
    :cond_16
    :goto_7
    return-void
.end method

.method public final reportSocketResult(Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string v2, "FreecessController"

    .line 10
    .line 11
    const-string v3, "Receive socket exception from kernel"

    .line 12
    .line 13
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 17
    .line 18
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 19
    .line 20
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 23
    .line 24
    .line 25
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mProcessObserver:Lcom/android/server/am/FreecessController$2;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    sget-object v1, Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;->INSTANCE:Lcom/android/server/am/FreecessTrigger;

    .line 41
    .line 42
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    iput-object v2, v1, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    new-instance v2, Landroid/content/IntentFilter;

    .line 47
    .line 48
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v3, "sec.app.policy.UPDATE.ssrm_update_freecess"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 68
    .line 69
    const-string/jumbo v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 70
    .line 71
    .line 72
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    .line 73
    .line 74
    const-string v6, "android.intent.action.REBOOT"

    .line 75
    .line 76
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/16 v3, 0x3e8

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 82
    .line 83
    .line 84
    iget-object v3, v1, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    iget-object v4, v1, Lcom/android/server/am/FreecessTrigger;->mIntentReceiver:Lcom/android/server/am/FreecessTrigger$1;

    .line 87
    .line 88
    const/4 v5, 0x2

    .line 89
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    new-instance v8, Landroid/content/IntentFilter;

    .line 93
    .line 94
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 98
    .line 99
    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string/jumbo v2, "package"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v6, v1, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    const/4 v11, 0x4

    .line 111
    const/4 v9, 0x0

    .line 112
    iget-object v7, v1, Lcom/android/server/am/FreecessTrigger;->mPkgIntentReceiver:Lcom/android/server/am/FreecessTrigger$2;

    .line 113
    .line 114
    const/4 v10, 0x0

    .line 115
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    new-instance v14, Landroid/content/IntentFilter;

    .line 119
    .line 120
    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string/jumbo v2, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string/jumbo v2, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string/jumbo v2, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v12, v1, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 142
    .line 143
    iget-object v13, v1, Lcom/android/server/am/FreecessTrigger;->mSmartSwitchIntentReceiver:Lcom/android/server/am/FreecessTrigger$2;

    .line 144
    .line 145
    const/16 v17, 0x2

    .line 146
    .line 147
    const-string/jumbo v15, "com.wssnps.permission.COM_WSSNPS"

    .line 148
    .line 149
    .line 150
    const/16 v16, 0x0

    .line 151
    .line 152
    invoke-virtual/range {v12 .. v17}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 153
    .line 154
    .line 155
    const-string/jumbo v1, "input"

    .line 156
    .line 157
    .line 158
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Lcom/android/server/input/InputManagerService;

    .line 163
    .line 164
    iput-object v1, v0, Lcom/android/server/am/FreecessController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 165
    .line 166
    iget-boolean v1, v0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 167
    .line 168
    if-eqz v1, :cond_2

    .line 169
    .line 170
    const/4 v1, 0x1

    .line 171
    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(Z)V

    .line 172
    .line 173
    .line 174
    :cond_2
    return-void
.end method

.method public final requestProcessFrozen(ILjava/lang/Integer;Z)Z
    .locals 12

    .line 1
    const-string v0, "FreecessController"

    .line 2
    .line 3
    const-string/jumbo v1, "there is an error at "

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    const-string/jumbo v4, "freezeProcess"

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string/jumbo v4, "unfreezeProcess"

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x1

    .line 21
    const-wide/16 v7, 0x40

    .line 22
    .line 23
    const/4 v9, -0x1

    .line 24
    :try_start_0
    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 25
    .line 26
    if-eqz v10, :cond_1

    .line 27
    .line 28
    new-instance v10, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v11, " "

    .line 37
    .line 38
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    invoke-static {v7, v8, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_5

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 57
    .line 58
    if-nez v10, :cond_2

    .line 59
    .line 60
    iget-object v10, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    const-string v11, "CustomFrequencyManagerService"

    .line 63
    .line 64
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    check-cast v10, Landroid/os/CustomFrequencyManager;

    .line 69
    .line 70
    iput-object v10, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 71
    .line 72
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    const-string/jumbo v11, "freeze"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v10, p3, v11}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eq v9, v6, :cond_4

    .line 86
    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p3, ". uid="

    .line 96
    .line 97
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, ", pid="

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 119
    .line 120
    if-eqz p0, :cond_3

    .line 121
    .line 122
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 123
    .line 124
    .line 125
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    .line 127
    .line 128
    return v5

    .line 129
    :cond_4
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 130
    .line 131
    if-eqz p0, :cond_5

    .line 132
    .line 133
    :goto_2
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 134
    .line 135
    .line 136
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :goto_3
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .line 154
    .line 155
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 156
    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :goto_4
    if-ne v9, v6, :cond_6

    .line 161
    .line 162
    move v5, v6

    .line 163
    :cond_6
    return v5

    .line 164
    :goto_5
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 165
    .line 166
    if-eqz p1, :cond_7

    .line 167
    .line 168
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 169
    .line 170
    .line 171
    :cond_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    .line 173
    .line 174
    throw p0
.end method

.method public final restrictJobsByOlaf(IZ)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "com.samsung.intent.action.OLAF_STATE_CHANGED"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "job_restriction"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    if-eq p1, v1, :cond_0

    .line 28
    .line 29
    const-string/jumbo v1, "olaf_target_uid"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v2, "restrictJobsByOlaf: restrict="

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, ", uid="

    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "FreecessController"

    .line 59
    .line 60
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    new-instance p2, Landroid/os/UserHandle;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-direct {p2, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method public final sendFreecessMsg2kernel(IIII)I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x1

    .line 3
    :try_start_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->newFreecessRequest(IIIII)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    sget p2, Landroid/system/OsConstants;->SOL_SOCKET:I

    .line 12
    .line 13
    sget p3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    .line 14
    .line 15
    const-wide/16 v2, 0x1f4

    .line 16
    .line 17
    invoke-static {v2, v3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    invoke-static {p0, p2, p3, p4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    const/16 p3, 0x9c

    .line 26
    .line 27
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    .line 28
    .line 29
    .line 30
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return v1
.end method

.method public final setFirewallChainEnabled(Z)V
    .locals 4

    .line 1
    const-string v0, "Error occured while setFirewallChainEnabled: "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    const-string/jumbo v3, "network_management"

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const/4 v3, 0x7

    .line 29
    :try_start_0
    invoke-interface {p0, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p0

    .line 39
    :try_start_1
    const-string p1, "FreecessController"

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_1
    :goto_2
    return-void
.end method

.method public final setFreecessEnableForSpecificReason(IZ)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "default"

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "SmartSwitch"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const-string v0, "BugReport"

    .line 15
    .line 16
    :goto_0
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 17
    .line 18
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    const-string v4, "ON"

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const-string v4, "OFF"

    .line 31
    .line 32
    :goto_1
    const-string v5, " by "

    .line 33
    .line 34
    invoke-static {v3, v4, v5, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "FRZ"

    .line 39
    .line 40
    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v3, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 44
    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 48
    .line 49
    .line 50
    iput-boolean p2, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 51
    .line 52
    iput-boolean p2, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_7

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/android/server/am/MARsHandler;->sendRepeatTriggerMsgToMainHandler()V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    sget-object v4, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 65
    .line 66
    invoke-virtual {v4, p1}, Lcom/android/server/am/FreecessHandler;->sendSetFreecessEnableDelayedMsg(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    iget-object p1, v3, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 76
    .line 77
    if-nez p1, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    .line 82
    .line 83
    :cond_5
    :goto_2
    invoke-virtual {v4}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 87
    .line 88
    .line 89
    iget-object p1, v4, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 90
    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    const/16 v1, 0x9

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    .line 97
    .line 98
    :cond_6
    iput-boolean p2, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 99
    .line 100
    iput-boolean p2, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_7
    :goto_3
    return-void
.end method

.method public final setFreecessPolicyFromSCPM(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string/jumbo v1, "true"

    .line 3
    .line 4
    .line 5
    :try_start_0
    new-instance v2, Lcom/android/server/am/FreecessPolicy;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v3, v2, Lcom/android/server/am/FreecessPolicy;->googleFreezeExemptionList:Ljava/util/ArrayList;

    .line 16
    .line 17
    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 18
    .line 19
    new-instance v2, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 25
    .line 26
    const-string/jumbo v3, "master_switch"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iput-boolean v3, p1, Lcom/android/server/am/FreecessPolicy;->masterSwitch:Z

    .line 34
    .line 35
    const-string/jumbo p1, "freeze_enhanced_mode"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    iput-boolean v5, v3, Lcom/android/server/am/FreecessPolicy;->quickFreezeEnabled:Z

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput-boolean p1, v3, Lcom/android/server/am/FreecessPolicy;->lessUnfreezeEnabled:Z

    .line 74
    .line 75
    const-string/jumbo p1, "freeze_timeout"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 83
    .line 84
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    iput v3, v1, Lcom/android/server/am/FreecessPolicy;->quickFreezeCheckTime:I

    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    const-string/jumbo p1, "google_freeze_timeout"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 122
    .line 123
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    iput p1, v1, Lcom/android/server/am/FreecessPolicy;->googleFreezeTime:I

    .line 136
    .line 137
    const-string/jumbo p1, "google_freezer_exemption_list"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-ge v4, v1, :cond_0

    .line 149
    .line 150
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 151
    .line 152
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    iget-object v1, v1, Lcom/android/server/am/FreecessPolicy;->googleFreezeExemptionList:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    add-int/2addr v4, v0

    .line 166
    goto :goto_0

    .line 167
    :catch_0
    move-exception p0

    .line 168
    goto :goto_1

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 170
    .line 171
    iget-boolean v0, p1, Lcom/android/server/am/FreecessPolicy;->masterSwitch:Z

    .line 172
    .line 173
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 174
    .line 175
    iget-boolean v0, p1, Lcom/android/server/am/FreecessPolicy;->quickFreezeEnabled:Z

    .line 176
    .line 177
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 178
    .line 179
    iget-boolean v0, p1, Lcom/android/server/am/FreecessPolicy;->lessUnfreezeEnabled:Z

    .line 180
    .line 181
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 182
    .line 183
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 184
    .line 185
    iget v0, p1, Lcom/android/server/am/FreecessPolicy;->quickFreezeCheckTime:I

    .line 186
    .line 187
    sput v0, Lcom/android/server/am/FreecessHandler;->mScreenOnQuickFreezeCheckDelay:I

    .line 188
    .line 189
    sput v0, Lcom/android/server/am/FreecessHandler;->mScreenOnQuickFreezeDelayInterval:I

    .line 190
    .line 191
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 192
    .line 193
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 196
    .line 197
    iget p1, p1, Lcom/android/server/am/FreecessPolicy;->googleFreezeTime:I

    .line 198
    .line 199
    int-to-long v1, p1

    .line 200
    iput-wide v1, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 201
    .line 202
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/am/FreecessPolicy;->googleFreezeExemptionList:Ljava/util/ArrayList;

    .line 205
    .line 206
    if-eqz p0, :cond_1

    .line 207
    .line 208
    sget-object p1, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 209
    .line 210
    iget-object v0, p1, Ljava/com/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    .line 211
    .line 212
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :try_start_1
    iget-object p1, p1, Ljava/com/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    .line 214
    .line 215
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 216
    .line 217
    .line 218
    monitor-exit v0

    .line 219
    goto :goto_2

    .line 220
    :catchall_0
    move-exception p0

    .line 221
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 223
    :goto_1
    const-string/jumbo p1, "setFreecessPolicyFromSCPM Exception error!"

    .line 224
    .line 225
    .line 226
    const-string v0, "FreecessController"

    .line 227
    .line 228
    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :cond_1
    :goto_2
    return-void
.end method

.method public final setIsDoingGC(IZ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 13
    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    iput p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    iput p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 26
    .line 27
    :cond_1
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final setScreenOnFreecessEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 6
    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final setScreenOnState(Z)V
    .locals 7

    .line 1
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 24
    .line 25
    const-string v6, "TopApp-ScreenOn"

    .line 26
    .line 27
    const-wide/16 v4, 0x2710

    .line 28
    .line 29
    move-object v1, p0

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->unfreezeWallPaperPackage()V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 37
    .line 38
    monitor-enter p1

    .line 39
    :try_start_0
    iget v0, p0, Lcom/android/server/am/FreecessController;->mLastTopUid:I

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    :cond_1
    monitor-exit p1

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public final setUidIdleCheckMode(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 2
    .line 3
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "FRECESS DEBUGGING MODE CHANGED ! Uid Idle Checking will be "

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 15
    .line 16
    const-string v0, "FreecessController"

    .line 17
    .line 18
    invoke-static {v0, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final shouldDelayService(Lcom/android/server/am/ServiceRecord;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 11
    .line 12
    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 13
    .line 14
    and-int/lit8 v2, v0, 0x2

    .line 15
    .line 16
    if-nez v2, :cond_4

    .line 17
    .line 18
    and-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 27
    .line 28
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 31
    .line 32
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 33
    .line 34
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/am/ProcessList;->getSharedIsolatedProcess(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 43
    .line 44
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 51
    .line 52
    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    const-string/jumbo v2, "com.samsung"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 73
    .line 74
    const-string/jumbo v2, "com.sec"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 84
    .line 85
    const-string/jumbo v2, "com.google"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_2

    .line 93
    .line 94
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 95
    .line 96
    const-string/jumbo v2, "com.android"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 106
    .line 107
    const-string v2, ".cts."

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_2

    .line 114
    .line 115
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 116
    .line 117
    const-string v2, ".cts"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_2

    .line 124
    .line 125
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCtsGtsList:Ljava/util/Set;

    .line 128
    .line 129
    check-cast p0, Ljava/util/HashSet;

    .line 130
    .line 131
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-nez p0, :cond_2

    .line 136
    .line 137
    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-nez p0, :cond_3

    .line 146
    .line 147
    :cond_2
    return v1

    .line 148
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string/jumbo v0, "delay service: "

    .line 151
    .line 152
    .line 153
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 157
    .line 158
    const-string v0, "FreecessController"

    .line 159
    .line 160
    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const/4 p0, 0x1

    .line 164
    return p0

    .line 165
    :cond_4
    :goto_0
    return v1
.end method

.method public stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, p2, :cond_4

    .line 4
    .line 5
    const-string v2, "FreecessController"

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v4, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v4, "(state: "

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    if-eq p1, v1, :cond_1

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    const-string p1, "Unknown"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p1, "Frozen"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string p1, "Initial"

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " -> "

    .line 38
    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    if-eq p2, v1, :cond_3

    .line 43
    .line 44
    if-eq p2, v0, :cond_2

    .line 45
    .line 46
    const-string p1, "Unknown"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const-string p1, "Frozen"

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const-string p1, "Initial"

    .line 53
    .line 54
    :goto_1
    const-string v4, ", Reason: "

    .line 55
    .line 56
    const-string v5, ")"

    .line 57
    .line 58
    invoke-static {v3, p1, v4, p3, v5}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_4
    if-eq p2, v1, :cond_7

    .line 66
    .line 67
    if-eq p2, v0, :cond_5

    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_5
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 72
    .line 73
    iget-object p1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 74
    .line 75
    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 76
    .line 77
    iget-object p3, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 78
    .line 79
    if-nez p3, :cond_6

    .line 80
    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :cond_6
    const-string/jumbo p3, "packageName"

    .line 84
    .line 85
    .line 86
    const-string/jumbo p4, "uid"

    .line 87
    .line 88
    .line 89
    invoke-static {p2, p3, p1, p4}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 94
    .line 95
    const/4 p3, 0x4

    .line 96
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 104
    .line 105
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    .line 107
    .line 108
    goto/16 :goto_4

    .line 109
    .line 110
    :cond_7
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 111
    .line 112
    if-nez p1, :cond_8

    .line 113
    .line 114
    sget-object p1, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 115
    .line 116
    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_8

    .line 123
    .line 124
    const-string p0, "FreecessController"

    .line 125
    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    iget-object p2, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p2, "("

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 142
    .line 143
    const-string v1, ") is important[!isUidIdle]"

    .line 144
    .line 145
    invoke-static {p1, p2, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_8
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 150
    .line 151
    monitor-enter p1

    .line 152
    :try_start_0
    invoke-static {p4}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_9

    .line 157
    .line 158
    monitor-exit p1

    .line 159
    goto :goto_2

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    goto/16 :goto_5

    .line 162
    .line 163
    :cond_9
    iget-object p2, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 164
    .line 165
    iget v1, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 166
    .line 167
    iget v2, p4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 168
    .line 169
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    sget-object p1, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    const/16 p1, 0xf

    .line 176
    .line 177
    invoke-static {p1, v1, v2, p2}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_c

    .line 182
    .line 183
    const-string p0, "FreecessController"

    .line 184
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string p2, "("

    .line 194
    .line 195
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string p2, ") is important["

    .line 202
    .line 203
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string p1, "]"

    .line 210
    .line 211
    invoke-static {v1, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :goto_2
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 215
    .line 216
    iget-object p1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 217
    .line 218
    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 219
    .line 220
    iget-object p4, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 221
    .line 222
    if-nez p4, :cond_a

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_a
    const-string/jumbo p4, "packageName"

    .line 226
    .line 227
    .line 228
    const-string/jumbo v1, "userId"

    .line 229
    .line 230
    .line 231
    invoke-static {p2, p4, p1, v1}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    const-string/jumbo p4, "reason"

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object p3, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 242
    .line 243
    invoke-virtual {p3, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 244
    .line 245
    .line 246
    move-result-object p3

    .line 247
    invoke-virtual {p3, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 248
    .line 249
    .line 250
    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 251
    .line 252
    iget-boolean p2, p2, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 253
    .line 254
    if-eqz p2, :cond_b

    .line 255
    .line 256
    sget p2, Lcom/android/server/am/FreecessHandler;->mScreenOnQuickFreezeDelayInterval:I

    .line 257
    .line 258
    int-to-long v1, p2

    .line 259
    goto :goto_3

    .line 260
    :cond_b
    const-wide/16 v1, 0x2710

    .line 261
    .line 262
    :goto_3
    iget-object p2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 263
    .line 264
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-nez p1, :cond_e

    .line 269
    .line 270
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 271
    .line 272
    invoke-virtual {p0, p3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_c
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 277
    .line 278
    if-eqz p0, :cond_d

    .line 279
    .line 280
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 281
    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 286
    .line 287
    .line 288
    move-result p0

    .line 289
    if-eqz p0, :cond_d

    .line 290
    .line 291
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 292
    .line 293
    iget-object v1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 294
    .line 295
    iget v4, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 296
    .line 297
    const/4 v3, 0x0

    .line 298
    iget v2, p4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 299
    .line 300
    move-object v5, p3

    .line 301
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessHandler;->sendMakePkgIdleMsg(Ljava/lang/String;IZILjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_d
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 306
    .line 307
    iget-object p1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 308
    .line 309
    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 310
    .line 311
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/FreecessHandler;->sendChangeToFrozenMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    :cond_e
    :goto_4
    return-void

    .line 315
    :goto_5
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    throw p0
.end method

.method public final triggerCalmMode(Ljava/util/ArrayList;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    new-instance v3, Lcom/android/server/am/FreecessPkgMap;

    .line 18
    .line 19
    invoke-direct {v3}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/lang/String;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, ", "

    .line 45
    .line 46
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    array-length v6, v4

    .line 51
    const/4 v7, 0x2

    .line 52
    if-ne v6, v7, :cond_0

    .line 53
    .line 54
    aget-object v6, v4, v2

    .line 55
    .line 56
    :try_start_0
    aget-object v4, v4, v0

    .line 57
    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 63
    .line 64
    .line 65
    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_1

    .line 67
    :catch_0
    const-string v4, "FreecessController"

    .line 68
    .line 69
    const-string v7, "CalmMode parseInt error!"

    .line 70
    .line 71
    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    const/4 v6, 0x0

    .line 76
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v6, v5, v4}, Lcom/android/server/am/FreecessPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    .line 85
    .line 86
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 96
    .line 97
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 98
    .line 99
    if-eqz v5, :cond_3

    .line 100
    .line 101
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :cond_3
    sget-object v5, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 106
    .line 107
    invoke-virtual {v5}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 108
    .line 109
    .line 110
    iput-boolean v0, v5, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mIsUsingAudioList:Z

    .line 111
    .line 112
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 113
    .line 114
    monitor-enter v5

    .line 115
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 116
    .line 117
    iget-object v6, v6, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 118
    .line 119
    move v7, v2

    .line 120
    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-ge v7, v8, :cond_7

    .line 125
    .line 126
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-lez v9, :cond_4

    .line 137
    .line 138
    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    if-eqz v9, :cond_4

    .line 145
    .line 146
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 147
    .line 148
    if-eqz v9, :cond_6

    .line 149
    .line 150
    const-string v9, "FreecessController"

    .line 151
    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v8, " has window surface, skip to freeze CalmMode"

    .line 163
    .line 164
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :catchall_0
    move-exception p0

    .line 176
    goto :goto_4

    .line 177
    :cond_4
    const-string v9, "CalmMode First trigger"

    .line 178
    .line 179
    invoke-virtual {p0, v8, v9}, Lcom/android/server/am/FreecessController;->freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-eqz v9, :cond_5

    .line 184
    .line 185
    iget-boolean v9, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 186
    .line 187
    if-eqz v9, :cond_5

    .line 188
    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v10, " "

    .line 195
    .line 196
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget v8, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 200
    .line 201
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_5
    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 213
    .line 214
    iget-boolean v9, v9, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 215
    .line 216
    if-eqz v9, :cond_6

    .line 217
    .line 218
    invoke-virtual {p0, v8}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    if-nez v9, :cond_6

    .line 223
    .line 224
    iput-boolean v0, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 225
    .line 226
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    sget-object p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 231
    .line 232
    iput-boolean v2, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mIsUsingAudioList:Z

    .line 233
    .line 234
    new-instance p0, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string p1, " ["

    .line 237
    .line 238
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 242
    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-static {v3, v4}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v0, "]"

    .line 254
    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string p0, "CalmMode "

    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :goto_4
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    throw p0
.end method

.method public final triggerLcdOnFreeze(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    move v3, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v1

    .line 14
    :goto_0
    if-eqz v3, :cond_1

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :cond_1
    move v1, v2

    .line 27
    :cond_2
    sget-object v0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->updateBTUsingPackages()V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/server/am/FreecessPkgStatus;

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    if-nez p3, :cond_4

    .line 52
    .line 53
    const-string/jumbo p3, "uidIdle"

    .line 54
    .line 55
    .line 56
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 57
    .line 58
    if-nez v4, :cond_6

    .line 59
    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/am/FreecessHandler;->sendUidLcdOnQuickFzMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_6
    :goto_1
    iget p1, v3, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 70
    .line 71
    invoke-virtual {p0, p1, v2, p3, v3}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final triggerOLAF(ILjava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/4 v9, 0x0

    .line 30
    invoke-virtual {v7, v8, v2, v9}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(ILjava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    const-string v8, "activity"

    .line 38
    .line 39
    invoke-virtual {v0, v7, v2, v8}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-boolean v7, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 43
    .line 44
    const-wide/16 v10, 0x40

    .line 45
    .line 46
    if-eqz v7, :cond_0

    .line 47
    .line 48
    const-string v7, "Trigger OLAF"

    .line 49
    .line 50
    invoke-static {v10, v11, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 59
    .line 60
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 61
    .line 62
    if-eqz v8, :cond_1

    .line 63
    .line 64
    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    :cond_1
    sget-object v8, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 69
    .line 70
    invoke-virtual {v8}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 71
    .line 72
    .line 73
    sget-boolean v8, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 74
    .line 75
    if-eqz v8, :cond_1d

    .line 76
    .line 77
    new-instance v8, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 83
    .line 84
    monitor-enter v14

    .line 85
    :try_start_0
    iget-object v15, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 86
    .line 87
    iget-object v15, v15, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 88
    .line 89
    :goto_0
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    if-ge v9, v10, :cond_3

    .line 94
    .line 95
    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    check-cast v10, Lcom/android/server/am/FreecessPkgStatus;

    .line 100
    .line 101
    sget-boolean v11, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    .line 102
    .line 103
    if-eqz v11, :cond_2

    .line 104
    .line 105
    if-eqz v10, :cond_2

    .line 106
    .line 107
    sget-object v11, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 108
    .line 109
    iget v12, v10, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 110
    .line 111
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    iget-object v11, v11, Lcom/android/server/am/mars/util/UidStateMgr;->mUidGoneList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 116
    .line 117
    invoke-virtual {v11, v12}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-eqz v11, :cond_2

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    goto/16 :goto_9

    .line 126
    .line 127
    :cond_2
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v9

    .line 138
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    if-eqz v11, :cond_2c

    .line 147
    .line 148
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    check-cast v11, Lcom/android/server/am/FreecessPkgStatus;

    .line 153
    .line 154
    sget-object v12, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 155
    .line 156
    monitor-enter v12

    .line 157
    if-eqz v11, :cond_4

    .line 158
    .line 159
    :try_start_1
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 160
    .line 161
    if-nez v14, :cond_5

    .line 162
    .line 163
    :cond_4
    move-object/from16 v16, v8

    .line 164
    .line 165
    goto/16 :goto_7

    .line 166
    .line 167
    :cond_5
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 168
    .line 169
    invoke-static {v14}, Landroid/os/UserHandle;->isCore(I)Z

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    if-eqz v14, :cond_6

    .line 174
    .line 175
    monitor-exit v12

    .line 176
    :goto_3
    move-object/from16 v16, v8

    .line 177
    .line 178
    goto/16 :goto_5

    .line 179
    .line 180
    :catchall_1
    move-exception v0

    .line 181
    goto/16 :goto_8

    .line 182
    .line 183
    :cond_6
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 184
    .line 185
    iget-boolean v14, v14, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 186
    .line 187
    if-eqz v14, :cond_8

    .line 188
    .line 189
    sget-boolean v14, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 190
    .line 191
    if-eqz v14, :cond_7

    .line 192
    .line 193
    const-string v14, "FreecessController"

    .line 194
    .line 195
    new-instance v15, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string/jumbo v13, "skip freezed app:"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v13, "("

    .line 212
    .line 213
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget v13, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 217
    .line 218
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v13, ")"

    .line 222
    .line 223
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v13

    .line 230
    invoke-static {v14, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v14, " "

    .line 239
    .line 240
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 244
    .line 245
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v11, ":s0"

    .line 249
    .line 250
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    monitor-exit v12

    .line 261
    goto :goto_3

    .line 262
    :cond_8
    if-eqz v2, :cond_9

    .line 263
    .line 264
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v13

    .line 270
    if-eqz v13, :cond_9

    .line 271
    .line 272
    iget v13, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 273
    .line 274
    if-ne v13, v1, :cond_9

    .line 275
    .line 276
    monitor-exit v12

    .line 277
    goto :goto_3

    .line 278
    :cond_9
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 279
    .line 280
    if-eqz v13, :cond_b

    .line 281
    .line 282
    invoke-static {}, Lcom/android/server/am/FreecessController;->shouldSkipShareUid()Z

    .line 283
    .line 284
    .line 285
    move-result v13

    .line 286
    if-nez v13, :cond_b

    .line 287
    .line 288
    sget-boolean v13, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 289
    .line 290
    if-eqz v13, :cond_a

    .line 291
    .line 292
    const-string v13, "FreecessController"

    .line 293
    .line 294
    new-instance v14, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string/jumbo v15, "skip sharedUidName app:"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    iget-object v15, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v15, "("

    .line 311
    .line 312
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    iget v15, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 316
    .line 317
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v15, ")"

    .line 321
    .line 322
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v14

    .line 329
    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    const-string v14, " "

    .line 338
    .line 339
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 343
    .line 344
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v11, ":s1"

    .line 348
    .line 349
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    monitor-exit v12

    .line 360
    goto/16 :goto_3

    .line 361
    .line 362
    :cond_b
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 363
    .line 364
    .line 365
    move-result-object v13

    .line 366
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 367
    .line 368
    iget v15, v11, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 369
    .line 370
    move-object/from16 v16, v8

    .line 371
    .line 372
    const/4 v8, 0x4

    .line 373
    invoke-virtual {v13, v15, v8, v14}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    .line 374
    .line 375
    .line 376
    move-result v13

    .line 377
    if-eqz v13, :cond_d

    .line 378
    .line 379
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 380
    .line 381
    if-eqz v8, :cond_c

    .line 382
    .line 383
    const-string v8, "FreecessController"

    .line 384
    .line 385
    new-instance v13, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    const-string/jumbo v14, "skip isInPolicyExceptionList app:"

    .line 391
    .line 392
    .line 393
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v14, "("

    .line 402
    .line 403
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 407
    .line 408
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v14, ")"

    .line 412
    .line 413
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v13

    .line 420
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    const-string v13, " "

    .line 429
    .line 430
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 434
    .line 435
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string v11, ":s2"

    .line 439
    .line 440
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    monitor-exit v12

    .line 451
    goto/16 :goto_5

    .line 452
    .line 453
    :cond_d
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 454
    .line 455
    .line 456
    move-result-object v8

    .line 457
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    .line 459
    .line 460
    sget-boolean v8, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 461
    .line 462
    if-eqz v8, :cond_f

    .line 463
    .line 464
    iget-object v8, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 465
    .line 466
    if-eqz v8, :cond_f

    .line 467
    .line 468
    sget-object v13, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 469
    .line 470
    iget-object v13, v13, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    .line 471
    .line 472
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v8

    .line 476
    if-eqz v8, :cond_f

    .line 477
    .line 478
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 479
    .line 480
    if-eqz v8, :cond_e

    .line 481
    .line 482
    const-string v8, "FreecessController"

    .line 483
    .line 484
    new-instance v13, Ljava/lang/StringBuilder;

    .line 485
    .line 486
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .line 488
    .line 489
    const-string/jumbo v14, "skip to freeze prev app:"

    .line 490
    .line 491
    .line 492
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 496
    .line 497
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v14, ", uid : "

    .line 501
    .line 502
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 506
    .line 507
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v13

    .line 514
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    const-string v13, " "

    .line 523
    .line 524
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 528
    .line 529
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    const-string v11, ":s3"

    .line 533
    .line 534
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v8

    .line 541
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    monitor-exit v12

    .line 545
    goto/16 :goto_5

    .line 546
    .line 547
    :cond_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 548
    .line 549
    .line 550
    move-result v8

    .line 551
    if-lez v8, :cond_11

    .line 552
    .line 553
    iget-object v8, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 554
    .line 555
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v8

    .line 559
    if-eqz v8, :cond_11

    .line 560
    .line 561
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 562
    .line 563
    if-eqz v8, :cond_10

    .line 564
    .line 565
    const-string v8, "FreecessController"

    .line 566
    .line 567
    new-instance v13, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .line 571
    .line 572
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 573
    .line 574
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const-string v14, "("

    .line 578
    .line 579
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 583
    .line 584
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    const-string v14, ") has window surface, skip to freeze"

    .line 588
    .line 589
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v13

    .line 596
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .line 598
    .line 599
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    .line 600
    .line 601
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    .line 603
    .line 604
    const-string v13, " "

    .line 605
    .line 606
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 610
    .line 611
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    const-string v11, ":s4"

    .line 615
    .line 616
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v8

    .line 623
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    monitor-exit v12

    .line 627
    goto/16 :goto_5

    .line 628
    .line 629
    :cond_11
    iget-boolean v8, v11, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    .line 630
    .line 631
    if-eqz v8, :cond_13

    .line 632
    .line 633
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 634
    .line 635
    if-eqz v8, :cond_12

    .line 636
    .line 637
    const-string v8, "FreecessController"

    .line 638
    .line 639
    new-instance v13, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .line 643
    .line 644
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 645
    .line 646
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    const-string v14, "("

    .line 650
    .line 651
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 655
    .line 656
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    const-string v14, ") olaf allowlist, skip to freeze"

    .line 660
    .line 661
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v13

    .line 668
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .line 670
    .line 671
    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .line 675
    .line 676
    const-string v13, " "

    .line 677
    .line 678
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 682
    .line 683
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    const-string v11, ":s5"

    .line 687
    .line 688
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v8

    .line 695
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    monitor-exit v12

    .line 699
    goto/16 :goto_5

    .line 700
    .line 701
    :cond_13
    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 702
    .line 703
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 704
    .line 705
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    move-result v8

    .line 709
    if-nez v8, :cond_1b

    .line 710
    .line 711
    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 712
    .line 713
    iget v13, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 714
    .line 715
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v13

    .line 719
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    move-result v8

    .line 723
    if-eqz v8, :cond_14

    .line 724
    .line 725
    goto/16 :goto_6

    .line 726
    .line 727
    :cond_14
    sget-object v8, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 728
    .line 729
    iget v13, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 730
    .line 731
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 732
    .line 733
    .line 734
    move-result-object v13

    .line 735
    iget-object v8, v8, Lcom/android/server/am/mars/util/UidStateMgr;->mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 736
    .line 737
    invoke-virtual {v8, v13}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    move-result v8

    .line 741
    if-eqz v8, :cond_16

    .line 742
    .line 743
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 744
    .line 745
    if-eqz v8, :cond_15

    .line 746
    .line 747
    const-string v8, "FreecessController"

    .line 748
    .line 749
    new-instance v13, Ljava/lang/StringBuilder;

    .line 750
    .line 751
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    .line 753
    .line 754
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 755
    .line 756
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    const-string v14, "("

    .line 760
    .line 761
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 765
    .line 766
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    const-string v14, ") is top app, skip to freeze"

    .line 770
    .line 771
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v13

    .line 778
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    .line 780
    .line 781
    :cond_15
    new-instance v8, Ljava/lang/StringBuilder;

    .line 782
    .line 783
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    .line 785
    .line 786
    const-string v13, " "

    .line 787
    .line 788
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 792
    .line 793
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    const-string v11, ":s7"

    .line 797
    .line 798
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v8

    .line 805
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    monitor-exit v12

    .line 809
    goto/16 :goto_5

    .line 810
    .line 811
    :cond_16
    iget-boolean v8, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 812
    .line 813
    if-eqz v8, :cond_18

    .line 814
    .line 815
    iget-object v8, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 816
    .line 817
    if-eqz v8, :cond_18

    .line 818
    .line 819
    iget-boolean v8, v8, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 820
    .line 821
    if-eqz v8, :cond_18

    .line 822
    .line 823
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 824
    .line 825
    if-eqz v8, :cond_17

    .line 826
    .line 827
    const-string v8, "FreecessController"

    .line 828
    .line 829
    new-instance v13, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 832
    .line 833
    .line 834
    const-string v14, "BG freezed, skip OLAF freeze for "

    .line 835
    .line 836
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 840
    .line 841
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    const-string v14, "("

    .line 845
    .line 846
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 850
    .line 851
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    const-string v14, ")"

    .line 855
    .line 856
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v13

    .line 863
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    .line 865
    .line 866
    :cond_17
    new-instance v8, Ljava/lang/StringBuilder;

    .line 867
    .line 868
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    .line 870
    .line 871
    const-string v13, " "

    .line 872
    .line 873
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 877
    .line 878
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    const-string v11, ":s8"

    .line 882
    .line 883
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v8

    .line 890
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    monitor-exit v12

    .line 894
    goto :goto_5

    .line 895
    :cond_18
    sget-object v8, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 896
    .line 897
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 898
    .line 899
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 900
    .line 901
    iget v15, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 902
    .line 903
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 904
    .line 905
    .line 906
    const/16 v8, 0xb

    .line 907
    .line 908
    invoke-static {v8, v14, v15, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 909
    .line 910
    .line 911
    move-result v13

    .line 912
    if-nez v13, :cond_19

    .line 913
    .line 914
    invoke-virtual {v0, v11, v3}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V

    .line 915
    .line 916
    .line 917
    goto :goto_4

    .line 918
    :cond_19
    new-instance v8, Ljava/lang/StringBuilder;

    .line 919
    .line 920
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 921
    .line 922
    .line 923
    const-string v14, " "

    .line 924
    .line 925
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 929
    .line 930
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    const-string v11, ":"

    .line 934
    .line 935
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v8

    .line 945
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    .line 947
    .line 948
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 949
    .line 950
    .line 951
    move-result-wide v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 952
    sub-long/2addr v13, v9

    .line 953
    const-wide/16 v17, 0x5

    .line 954
    .line 955
    cmp-long v8, v13, v17

    .line 956
    .line 957
    if-ltz v8, :cond_1a

    .line 958
    .line 959
    const-wide/16 v8, 0x1

    .line 960
    .line 961
    :try_start_2
    invoke-virtual {v12, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 962
    .line 963
    .line 964
    :catch_0
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 965
    .line 966
    .line 967
    move-result-wide v8

    .line 968
    move-wide v9, v8

    .line 969
    :cond_1a
    monitor-exit v12

    .line 970
    :goto_5
    move-object/from16 v8, v16

    .line 971
    .line 972
    goto/16 :goto_2

    .line 973
    .line 974
    :cond_1b
    :goto_6
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 975
    .line 976
    if-eqz v8, :cond_1c

    .line 977
    .line 978
    const-string v8, "FreecessController"

    .line 979
    .line 980
    new-instance v13, Ljava/lang/StringBuilder;

    .line 981
    .line 982
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
    .line 984
    .line 985
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 986
    .line 987
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    const-string v14, "("

    .line 991
    .line 992
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 996
    .line 997
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    const-string v14, ") olaf debug allowlist, skip to freeze"

    .line 1001
    .line 1002
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v13

    .line 1009
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .line 1011
    .line 1012
    :cond_1c
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1015
    .line 1016
    .line 1017
    const-string v13, " "

    .line 1018
    .line 1019
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    .line 1022
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1023
    .line 1024
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    const-string v11, ":s6"

    .line 1028
    .line 1029
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v8

    .line 1036
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    .line 1039
    monitor-exit v12

    .line 1040
    goto :goto_5

    .line 1041
    :goto_7
    monitor-exit v12

    .line 1042
    goto :goto_5

    .line 1043
    :goto_8
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1044
    throw v0

    .line 1045
    :goto_9
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1046
    throw v0

    .line 1047
    :cond_1d
    sget-object v8, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 1048
    .line 1049
    monitor-enter v8

    .line 1050
    :try_start_5
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 1051
    .line 1052
    iget-object v10, v10, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 1053
    .line 1054
    :goto_a
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 1055
    .line 1056
    .line 1057
    move-result v11

    .line 1058
    if-ge v9, v11, :cond_2b

    .line 1059
    .line 1060
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v11

    .line 1064
    check-cast v11, Lcom/android/server/am/FreecessPkgStatus;

    .line 1065
    .line 1066
    iget-object v12, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 1067
    .line 1068
    if-eqz v12, :cond_1f

    .line 1069
    .line 1070
    iget-boolean v12, v12, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 1071
    .line 1072
    if-eqz v12, :cond_1f

    .line 1073
    .line 1074
    :cond_1e
    :goto_b
    const/16 v12, 0xb

    .line 1075
    .line 1076
    goto/16 :goto_d

    .line 1077
    .line 1078
    :catchall_2
    move-exception v0

    .line 1079
    goto/16 :goto_11

    .line 1080
    .line 1081
    :cond_1f
    if-eqz v2, :cond_20

    .line 1082
    .line 1083
    iget-object v12, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1084
    .line 1085
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v12

    .line 1089
    if-eqz v12, :cond_20

    .line 1090
    .line 1091
    iget v12, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1092
    .line 1093
    if-ne v12, v1, :cond_20

    .line 1094
    .line 1095
    goto :goto_b

    .line 1096
    :cond_20
    iget-object v12, v11, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 1097
    .line 1098
    if-eqz v12, :cond_21

    .line 1099
    .line 1100
    goto :goto_b

    .line 1101
    :cond_21
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v12

    .line 1105
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1106
    .line 1107
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 1108
    .line 1109
    const/4 v15, 0x4

    .line 1110
    invoke-virtual {v12, v14, v15, v13}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    .line 1111
    .line 1112
    .line 1113
    move-result v12

    .line 1114
    if-eqz v12, :cond_22

    .line 1115
    .line 1116
    sget-boolean v12, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 1117
    .line 1118
    if-eqz v12, :cond_1e

    .line 1119
    .line 1120
    const-string v12, "FreecessController"

    .line 1121
    .line 1122
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1125
    .line 1126
    .line 1127
    const-string/jumbo v14, "skip isInPolicyExceptionList app:"

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    .line 1133
    iget-object v11, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1134
    .line 1135
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v11

    .line 1142
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    .line 1144
    .line 1145
    goto :goto_b

    .line 1146
    :cond_22
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v12

    .line 1150
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1151
    .line 1152
    .line 1153
    sget-boolean v12, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 1154
    .line 1155
    if-eqz v12, :cond_23

    .line 1156
    .line 1157
    iget-object v12, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1158
    .line 1159
    if-eqz v12, :cond_23

    .line 1160
    .line 1161
    sget-object v13, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 1162
    .line 1163
    iget-object v13, v13, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    .line 1164
    .line 1165
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v12

    .line 1169
    if-eqz v12, :cond_23

    .line 1170
    .line 1171
    sget-boolean v12, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 1172
    .line 1173
    if-eqz v12, :cond_1e

    .line 1174
    .line 1175
    const-string v12, "FreecessController"

    .line 1176
    .line 1177
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    .line 1181
    .line 1182
    const-string/jumbo v14, "skip to freeze prev app:"

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    .line 1188
    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1189
    .line 1190
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    .line 1193
    const-string v14, ", uid : "

    .line 1194
    .line 1195
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    .line 1197
    .line 1198
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1199
    .line 1200
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1201
    .line 1202
    .line 1203
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v11

    .line 1207
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    .line 1209
    .line 1210
    goto/16 :goto_b

    .line 1211
    .line 1212
    :cond_23
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1213
    .line 1214
    .line 1215
    move-result v12

    .line 1216
    if-lez v12, :cond_24

    .line 1217
    .line 1218
    iget-object v12, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1219
    .line 1220
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1221
    .line 1222
    .line 1223
    move-result v12

    .line 1224
    if-eqz v12, :cond_24

    .line 1225
    .line 1226
    sget-boolean v12, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 1227
    .line 1228
    if-eqz v12, :cond_1e

    .line 1229
    .line 1230
    const-string v12, "FreecessController"

    .line 1231
    .line 1232
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1235
    .line 1236
    .line 1237
    iget-object v11, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1238
    .line 1239
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    .line 1241
    .line 1242
    const-string v11, " has window surface, skip to freeze"

    .line 1243
    .line 1244
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v11

    .line 1251
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    .line 1253
    .line 1254
    goto/16 :goto_b

    .line 1255
    .line 1256
    :cond_24
    iget-boolean v12, v11, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    .line 1257
    .line 1258
    if-eqz v12, :cond_25

    .line 1259
    .line 1260
    sget-boolean v12, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 1261
    .line 1262
    if-eqz v12, :cond_1e

    .line 1263
    .line 1264
    const-string v12, "FreecessController"

    .line 1265
    .line 1266
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1267
    .line 1268
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1269
    .line 1270
    .line 1271
    iget-object v11, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1272
    .line 1273
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    .line 1276
    const-string v11, " olaf allowlist, skip to freeze"

    .line 1277
    .line 1278
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v11

    .line 1285
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    .line 1287
    .line 1288
    goto/16 :goto_b

    .line 1289
    .line 1290
    :cond_25
    iget-object v12, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 1291
    .line 1292
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1293
    .line 1294
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1295
    .line 1296
    .line 1297
    move-result v12

    .line 1298
    if-nez v12, :cond_26

    .line 1299
    .line 1300
    iget-object v12, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 1301
    .line 1302
    iget v13, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1303
    .line 1304
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v13

    .line 1308
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1309
    .line 1310
    .line 1311
    move-result v12

    .line 1312
    if-eqz v12, :cond_27

    .line 1313
    .line 1314
    :cond_26
    const/16 v12, 0xb

    .line 1315
    .line 1316
    goto :goto_c

    .line 1317
    :cond_27
    sget-object v12, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 1318
    .line 1319
    iget v13, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1320
    .line 1321
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v13

    .line 1325
    iget-object v12, v12, Lcom/android/server/am/mars/util/UidStateMgr;->mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 1326
    .line 1327
    invoke-virtual {v12, v13}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 1328
    .line 1329
    .line 1330
    move-result v12

    .line 1331
    if-eqz v12, :cond_28

    .line 1332
    .line 1333
    const-string v12, "FreecessController"

    .line 1334
    .line 1335
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1338
    .line 1339
    .line 1340
    iget-object v11, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1341
    .line 1342
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    .line 1344
    .line 1345
    const-string v11, " is top app, skip to freeze"

    .line 1346
    .line 1347
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v11

    .line 1354
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    .line 1356
    .line 1357
    goto/16 :goto_b

    .line 1358
    .line 1359
    :cond_28
    sget-object v12, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 1360
    .line 1361
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1362
    .line 1363
    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 1364
    .line 1365
    iget v15, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1366
    .line 1367
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1368
    .line 1369
    .line 1370
    const/16 v12, 0xb

    .line 1371
    .line 1372
    invoke-static {v12, v14, v15, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 1373
    .line 1374
    .line 1375
    move-result v13

    .line 1376
    if-nez v13, :cond_29

    .line 1377
    .line 1378
    invoke-virtual {v0, v11, v3}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V

    .line 1379
    .line 1380
    .line 1381
    goto :goto_d

    .line 1382
    :cond_29
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1383
    .line 1384
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1385
    .line 1386
    .line 1387
    const-string v15, " "

    .line 1388
    .line 1389
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    .line 1391
    .line 1392
    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1393
    .line 1394
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1395
    .line 1396
    .line 1397
    const-string v11, ":"

    .line 1398
    .line 1399
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v11

    .line 1409
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    .line 1411
    .line 1412
    goto :goto_d

    .line 1413
    :goto_c
    sget-boolean v13, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 1414
    .line 1415
    if-eqz v13, :cond_2a

    .line 1416
    .line 1417
    const-string v13, "FreecessController"

    .line 1418
    .line 1419
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1420
    .line 1421
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1422
    .line 1423
    .line 1424
    iget-object v11, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1425
    .line 1426
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    .line 1428
    .line 1429
    const-string v11, " olaf debug allowlist, skip to freeze"

    .line 1430
    .line 1431
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v11

    .line 1438
    invoke-static {v13, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    .line 1440
    .line 1441
    :cond_2a
    :goto_d
    add-int/lit8 v9, v9, 0x1

    .line 1442
    .line 1443
    goto/16 :goto_a

    .line 1444
    .line 1445
    :cond_2b
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1446
    :cond_2c
    iget-object v7, v0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 1447
    .line 1448
    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    .line 1449
    .line 1450
    .line 1451
    move-result v7

    .line 1452
    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    .line 1453
    .line 1454
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v8

    .line 1458
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1459
    .line 1460
    .line 1461
    move-result v9

    .line 1462
    if-eqz v9, :cond_30

    .line 1463
    .line 1464
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v9

    .line 1468
    check-cast v9, Ljava/lang/String;

    .line 1469
    .line 1470
    if-nez v9, :cond_2d

    .line 1471
    .line 1472
    goto :goto_e

    .line 1473
    :cond_2d
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1474
    .line 1475
    .line 1476
    move-result v10

    .line 1477
    if-eqz v10, :cond_2e

    .line 1478
    .line 1479
    goto :goto_e

    .line 1480
    :cond_2e
    sget-object v10, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 1481
    .line 1482
    monitor-enter v10

    .line 1483
    :try_start_6
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v11

    .line 1487
    invoke-virtual {v11, v7, v9}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 1488
    .line 1489
    .line 1490
    move-result v11

    .line 1491
    if-eqz v11, :cond_2f

    .line 1492
    .line 1493
    invoke-virtual {v0, v7, v9}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v9

    .line 1497
    if-eqz v9, :cond_2f

    .line 1498
    .line 1499
    invoke-virtual {v0, v9, v3}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V

    .line 1500
    .line 1501
    .line 1502
    goto :goto_f

    .line 1503
    :catchall_3
    move-exception v0

    .line 1504
    goto :goto_10

    .line 1505
    :cond_2f
    :goto_f
    monitor-exit v10

    .line 1506
    goto :goto_e

    .line 1507
    :goto_10
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1508
    throw v0

    .line 1509
    :cond_30
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 1510
    .line 1511
    if-eqz v2, :cond_31

    .line 1512
    .line 1513
    const-wide/16 v7, 0x40

    .line 1514
    .line 1515
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1516
    .line 1517
    .line 1518
    :cond_31
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v2

    .line 1522
    const-string v7, "OLAF "

    .line 1523
    .line 1524
    const-string v8, " ["

    .line 1525
    .line 1526
    invoke-static {v1, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v1

    .line 1530
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v7

    .line 1534
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1535
    .line 1536
    .line 1537
    invoke-static {v5, v6}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v5

    .line 1541
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    .line 1544
    const-string v5, "]"

    .line 1545
    .line 1546
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v1

    .line 1553
    invoke-static {v3, v4}, Lcom/android/server/am/FreecessController;->convertLevelChangeInfoToString(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v3

    .line 1557
    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    sget-object v1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 1561
    .line 1562
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 1563
    .line 1564
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 1565
    .line 1566
    .line 1567
    move-result-wide v2

    .line 1568
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessHandler;->sendOLAFTimeOutMsg(J)V

    .line 1569
    .line 1570
    .line 1571
    return-void

    .line 1572
    :goto_11
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1573
    throw v0
.end method

.method public final turnOnOffFreecessMonitor(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string v0, "DisableFC"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    const-string v2, "Packet"

    .line 8
    .line 9
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_e

    .line 15
    .line 16
    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 17
    .line 18
    iget-boolean v6, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 19
    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    sget-object v6, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 25
    .line 26
    iget-boolean v6, v6, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 27
    .line 28
    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 29
    .line 30
    if-eqz v6, :cond_1

    .line 31
    .line 32
    sget-object v6, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 33
    .line 34
    const-string v8, "Signal"

    .line 35
    .line 36
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    iget-object v6, v6, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;

    .line 41
    .line 42
    new-instance v9, Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-direct {v9, v7, v8}, Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;-><init>(IZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v9}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-boolean v6, v0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 51
    .line 52
    const/4 v8, 0x1

    .line 53
    const-string v9, " "

    .line 54
    .line 55
    if-eqz v6, :cond_7

    .line 56
    .line 57
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_7

    .line 64
    .line 65
    sget-boolean v6, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    .line 66
    .line 67
    const-string v10, "UFA"

    .line 68
    .line 69
    const-string v11, "OLAF:"

    .line 70
    .line 71
    if-eqz v6, :cond_5

    .line 72
    .line 73
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->fastOlafUfzList:Ljava/util/Set;

    .line 74
    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    check-cast v6, Ljava/util/HashSet;

    .line 78
    .line 79
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-nez v6, :cond_3

    .line 84
    .line 85
    :cond_2
    const-string v6, "BTOP(0)"

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_4

    .line 92
    .line 93
    :cond_3
    iget-boolean v6, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 94
    .line 95
    if-eqz v6, :cond_7

    .line 96
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 119
    .line 120
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 121
    .line 122
    invoke-static {v11, v5, v9}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v10, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return v0

    .line 141
    :cond_4
    iput-boolean v8, v1, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 142
    .line 143
    iput-object v5, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    .line 144
    .line 145
    return v3

    .line 146
    :cond_5
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/Set;

    .line 147
    .line 148
    if-eqz v6, :cond_6

    .line 149
    .line 150
    check-cast v6, Ljava/util/HashSet;

    .line 151
    .line 152
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-eqz v6, :cond_6

    .line 157
    .line 158
    iget-boolean v6, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 159
    .line 160
    if-eqz v6, :cond_6

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 184
    .line 185
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 186
    .line 187
    invoke-static {v11, v5, v9}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v10, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return v0

    .line 206
    :cond_6
    if-eqz p3, :cond_7

    .line 207
    .line 208
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/Set;

    .line 209
    .line 210
    if-eqz v6, :cond_7

    .line 211
    .line 212
    check-cast v6, Ljava/util/HashSet;

    .line 213
    .line 214
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-nez v6, :cond_7

    .line 219
    .line 220
    iput-boolean v8, v1, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 221
    .line 222
    iput-object v5, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    .line 223
    .line 224
    return v3

    .line 225
    :cond_7
    invoke-virtual {v0, v7, v3}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(IZ)Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/FreecessController;->unfreezeAllProcesses(Ljava/util/ArrayList;I)Z

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    iget-object v15, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 234
    .line 235
    if-eqz v10, :cond_c

    .line 236
    .line 237
    iget-boolean v2, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 238
    .line 239
    if-nez v2, :cond_9

    .line 240
    .line 241
    iget-boolean v2, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    .line 242
    .line 243
    if-eqz v2, :cond_8

    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_8
    move v2, v3

    .line 247
    goto :goto_1

    .line 248
    :cond_9
    :goto_0
    move v2, v8

    .line 249
    :goto_1
    invoke-virtual {v0, v1, v6, v5}, Lcom/android/server/am/FreecessController;->onUidUnfrozen(Lcom/android/server/am/FreecessPkgStatus;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    sget-object v6, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 253
    .line 254
    new-instance v11, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iget-wide v12, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    .line 278
    .line 279
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    invoke-static {v12, v13}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    const-string v9, "UFZ"

    .line 294
    .line 295
    invoke-virtual {v6, v9, v4}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-boolean v4, v0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 299
    .line 300
    if-eqz v4, :cond_a

    .line 301
    .line 302
    iput-boolean v3, v1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 303
    .line 304
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->calmModeFilterList:Ljava/util/Set;

    .line 305
    .line 306
    check-cast v2, Ljava/util/HashSet;

    .line 307
    .line 308
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-nez v2, :cond_b

    .line 313
    .line 314
    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 315
    .line 316
    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 317
    .line 318
    const-string v4, "CalmMode"

    .line 319
    .line 320
    invoke-virtual {v2, v3, v15, v4}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_a
    if-eqz v2, :cond_b

    .line 325
    .line 326
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->filterList:Ljava/util/Set;

    .line 327
    .line 328
    if-eqz v2, :cond_b

    .line 329
    .line 330
    check-cast v2, Ljava/util/HashSet;

    .line 331
    .line 332
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-nez v2, :cond_b

    .line 337
    .line 338
    iget-boolean v2, v0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 339
    .line 340
    if-eqz v2, :cond_b

    .line 341
    .line 342
    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 343
    .line 344
    invoke-virtual {v2, v7, v15, v5, v8}, Lcom/android/server/am/FreecessHandler;->sendUidLcdOnQuickFzMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 345
    .line 346
    .line 347
    :cond_b
    :goto_2
    iget v2, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 348
    .line 349
    const-wide/16 v3, 0x5dc

    .line 350
    .line 351
    iget-object v6, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 352
    .line 353
    move-object/from16 v0, p0

    .line 354
    .line 355
    move v1, v2

    .line 356
    move-object v2, v6

    .line 357
    move-object/from16 v5, p2

    .line 358
    .line 359
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z

    .line 360
    .line 361
    .line 362
    goto :goto_4

    .line 363
    :cond_c
    if-eqz v2, :cond_d

    .line 364
    .line 365
    iget-boolean v0, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 366
    .line 367
    if-eqz v0, :cond_d

    .line 368
    .line 369
    sget-object v11, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 370
    .line 371
    iget v12, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 372
    .line 373
    iget v13, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 374
    .line 375
    const/16 v19, -0x1

    .line 376
    .line 377
    const/4 v14, 0x0

    .line 378
    const/16 v16, 0x1

    .line 379
    .line 380
    const/16 v17, 0x0

    .line 381
    .line 382
    const/16 v18, 0x1

    .line 383
    .line 384
    move-object v0, v15

    .line 385
    invoke-virtual/range {v11 .. v19}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(IIZLjava/lang/String;IZZI)V

    .line 386
    .line 387
    .line 388
    goto :goto_3

    .line 389
    :cond_d
    move-object v0, v15

    .line 390
    :goto_3
    const-string v1, "UFZ error : "

    .line 391
    .line 392
    const-string v2, "("

    .line 393
    .line 394
    const-string v3, ") "

    .line 395
    .line 396
    invoke-static {v7, v1, v0, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    const-string v1, "FreecessController"

    .line 401
    .line 402
    invoke-static {v0, v5, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    :goto_4
    return v10

    .line 406
    :cond_e
    :goto_5
    return v3
.end method

.method public final unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iput-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 9
    .line 10
    :cond_0
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "CalmMode UFZ : "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "("

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, "), reason: "

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "FreecessController"

    .line 49
    .line 50
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    return p0
.end method

.method public final unFreezeForOLAF(Ljava/lang/String;)V
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 18
    .line 19
    const-wide/16 v4, 0x40

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const-string v2, "FreecessController"

    .line 24
    .line 25
    const-string v6, "OLAF unfreeze for "

    .line 26
    .line 27
    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const-string v2, "Unfreeze OLAF"

    .line 35
    .line 36
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 45
    .line 46
    monitor-enter v6

    .line 47
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 48
    .line 49
    iget-object v7, v7, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 50
    .line 51
    move v8, v3

    .line 52
    :goto_0
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    if-ge v8, v9, :cond_1

    .line 57
    .line 58
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    check-cast v9, Lcom/android/server/am/FreecessPkgStatus;

    .line 63
    .line 64
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 v8, v8, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_b

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    .line 93
    .line 94
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 95
    .line 96
    monitor-enter v9

    .line 97
    if-eqz v8, :cond_a

    .line 98
    .line 99
    :try_start_1
    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 100
    .line 101
    if-nez v10, :cond_2

    .line 102
    .line 103
    goto/16 :goto_4

    .line 104
    .line 105
    :cond_2
    iget-boolean v11, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 106
    .line 107
    if-eqz v11, :cond_3

    .line 108
    .line 109
    iget-boolean v11, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 110
    .line 111
    if-eqz v11, :cond_3

    .line 112
    .line 113
    iget-boolean v11, v8, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 114
    .line 115
    if-nez v11, :cond_3

    .line 116
    .line 117
    const-string v10, "FreecessController"

    .line 118
    .line 119
    new-instance v11, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v12, "BG freezed, skip OLAF unfreeze for ("

    .line 125
    .line 126
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v12, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v12, ", "

    .line 135
    .line 136
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget v8, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 140
    .line 141
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v8, ")"

    .line 145
    .line 146
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    monitor-exit v9

    .line 157
    goto :goto_1

    .line 158
    :catchall_1
    move-exception p0

    .line 159
    goto/16 :goto_5

    .line 160
    .line 161
    :cond_3
    iget-boolean v11, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 162
    .line 163
    if-eqz v11, :cond_4

    .line 164
    .line 165
    iget-boolean v11, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 166
    .line 167
    if-eqz v11, :cond_4

    .line 168
    .line 169
    iput-boolean v3, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 170
    .line 171
    const/4 v10, 0x3

    .line 172
    iput v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 173
    .line 174
    const/4 v10, 0x2

    .line 175
    iput v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 176
    .line 177
    monitor-exit v9

    .line 178
    goto :goto_1

    .line 179
    :cond_4
    sget-object v10, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 180
    .line 181
    iget-object v11, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 182
    .line 183
    iget v12, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 184
    .line 185
    invoke-virtual {v10, v12, v11}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    if-nez v10, :cond_6

    .line 190
    .line 191
    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 192
    .line 193
    iget-boolean v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 194
    .line 195
    if-eqz v10, :cond_5

    .line 196
    .line 197
    new-instance v10, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v11, "OLAF:"

    .line 203
    .line 204
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    invoke-virtual {p0, v8, v10, v0}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v11, ":nMARsTG"

    .line 227
    .line 228
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    invoke-virtual {p0, v8, v10, v3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_6
    iget-boolean v10, v8, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 240
    .line 241
    if-eqz v10, :cond_7

    .line 242
    .line 243
    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 244
    .line 245
    iget-object v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {p0, v8, v10}, Lcom/android/server/am/FreecessController;->unfreezePackageForPending(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iput-boolean v3, v8, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_7
    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 254
    .line 255
    iget-boolean v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 256
    .line 257
    if-eqz v10, :cond_8

    .line 258
    .line 259
    new-instance v10, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v11, "OLAF:"

    .line 265
    .line 266
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    .line 276
    invoke-virtual {p0, v8, v10, v0}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 277
    .line 278
    .line 279
    :cond_8
    :goto_2
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 283
    .line 284
    .line 285
    move-result-wide v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    sub-long/2addr v10, v6

    .line 287
    const-wide/16 v12, 0x5

    .line 288
    .line 289
    cmp-long v8, v10, v12

    .line 290
    .line 291
    if-ltz v8, :cond_9

    .line 292
    .line 293
    const-wide/16 v6, 0x1

    .line 294
    .line 295
    :try_start_2
    invoke-virtual {v9, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    .line 297
    .line 298
    :catch_0
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 299
    .line 300
    .line 301
    move-result-wide v6

    .line 302
    :cond_9
    monitor-exit v9

    .line 303
    goto/16 :goto_1

    .line 304
    .line 305
    :cond_a
    :goto_4
    monitor-exit v9

    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :goto_5
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 309
    throw p0

    .line 310
    :cond_b
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 311
    .line 312
    if-eqz v2, :cond_c

    .line 313
    .line 314
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 315
    .line 316
    .line 317
    :cond_c
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 318
    .line 319
    const-string v4, "UFA"

    .line 320
    .line 321
    const-string v5, "OLAF:"

    .line 322
    .line 323
    const-string v6, " "

    .line 324
    .line 325
    invoke-static {v5, p1, v6}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-virtual {v2, v4, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 344
    .line 345
    if-nez p1, :cond_e

    .line 346
    .line 347
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    if-ge v3, p1, :cond_e

    .line 352
    .line 353
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    check-cast p1, Lcom/android/server/am/FreecessPkgStatus;

    .line 358
    .line 359
    if-eqz p1, :cond_d

    .line 360
    .line 361
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 362
    .line 363
    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 364
    .line 365
    const-string/jumbo v2, "uidIdle"

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/am/FreecessController;->triggerLcdOnFreeze(ILjava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 372
    .line 373
    goto :goto_6

    .line 374
    :cond_e
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 375
    .line 376
    monitor-enter p1

    .line 377
    const-wide/16 v0, 0x0

    .line 378
    .line 379
    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 384
    .line 385
    monitor-exit p1

    .line 386
    return-void

    .line 387
    :catchall_2
    move-exception p0

    .line 388
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 389
    throw p0

    .line 390
    :goto_7
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 391
    throw p0
.end method

.method public final unFreezePackage(ILjava/lang/String;)V
    .locals 5

    .line 9
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 11
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 12
    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v4, 0x1

    .line 13
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move p0, v1

    move v3, p0

    .line 14
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    if-eqz v2, :cond_1

    .line 15
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 16
    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    :cond_1
    return-void

    .line 17
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v3, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {p0, v1, p3, v3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v2

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 6
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 7
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    :cond_1
    return-void

    .line 8
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unFreezePackage(Ljava/lang/String;)V
    .locals 5

    .line 18
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 20
    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 22
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 23
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 24
    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 25
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unFreezeSpecialPackage(ILjava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 27
    .line 28
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 29
    .line 30
    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 31
    .line 32
    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    iput v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 46
    .line 47
    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 48
    .line 49
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 50
    .line 51
    const/4 v4, 0x2

    .line 52
    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 56
    .line 57
    const/4 v4, 0x3

    .line 58
    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 62
    .line 63
    const/4 v4, 0x4

    .line 64
    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 68
    .line 69
    const/16 v4, 0x1c

    .line 70
    .line 71
    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 75
    .line 76
    invoke-virtual {p0, v2, v1, p2, p1}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0
.end method

.method public final unfreezeAllProcesses(Ljava/util/ArrayList;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/FreecessController;->unfreezeProcess(ILjava/lang/Integer;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    and-int/2addr v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return v0
.end method

.method public final unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(IZ)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->unfreezeAllProcesses(Ljava/util/ArrayList;I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/FreecessController;->onUidUnfrozen(Lcom/android/server/am/FreecessPkgStatus;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p0, " "

    .line 20
    .line 21
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    new-instance p0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p3, "OLAF UFZ : "

    .line 34
    .line 35
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 39
    .line 40
    const-string p3, "("

    .line 41
    .line 42
    const-string v3, ") "

    .line 43
    .line 44
    invoke-static {v1, p1, p3, v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " reason: "

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p1, "FreecessController"

    .line 63
    .line 64
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_0
    return v2
.end method

.method public final unfreezePackageForPending(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "Packet"

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(IZ)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    iget v5, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 21
    .line 22
    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/FreecessController;->unfreezeAllProcesses(Ljava/util/ArrayList;I)Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    iget-object v15, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 27
    .line 28
    const-string v14, "("

    .line 29
    .line 30
    const-string v13, "FreecessController"

    .line 31
    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/am/FreecessController;->onUidUnfrozen(Lcom/android/server/am/FreecessPkgStatus;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 38
    .line 39
    const-string v3, "OLAF:P-"

    .line 40
    .line 41
    const-string v4, " "

    .line 42
    .line 43
    invoke-static {v3, v2, v4, v15, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 54
    .line 55
    iget-wide v6, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {v6, v7}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v3, "UFZ"

    .line 72
    .line 73
    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    const-string v0, "OLAF Pending UFZ : "

    .line 81
    .line 82
    const-string v1, "), reason: "

    .line 83
    .line 84
    invoke-static {v5, v0, v15, v14, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0, v2, v13}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_0
    if-eqz v3, :cond_1

    .line 93
    .line 94
    iget-boolean v0, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 95
    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    sget-object v7, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 99
    .line 100
    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 101
    .line 102
    iget v9, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 103
    .line 104
    const/4 v0, -0x1

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v12, 0x1

    .line 107
    const/4 v1, 0x0

    .line 108
    const/4 v3, 0x1

    .line 109
    move-object v11, v15

    .line 110
    move-object v4, v13

    .line 111
    move v13, v1

    .line 112
    move-object v1, v14

    .line 113
    move v14, v3

    .line 114
    move-object v3, v15

    .line 115
    move v15, v0

    .line 116
    invoke-virtual/range {v7 .. v15}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(IIZLjava/lang/String;IZZI)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    move-object v4, v13

    .line 121
    move-object v1, v14

    .line 122
    move-object v3, v15

    .line 123
    :goto_0
    const-string v0, "UFZ error : "

    .line 124
    .line 125
    const-string v6, ")"

    .line 126
    .line 127
    invoke-static {v5, v0, v3, v1, v6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_1
    return-void
.end method

.method public final unfreezeProcess(ILjava/lang/Integer;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/FreecessController;->requestProcessFrozen(ILjava/lang/Integer;Z)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    .line 10
    .line 11
    add-int/2addr v1, v2

    .line 12
    iput v1, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "cntFailUnfreeze="

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p0, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    .line 23
    .line 24
    const-string v2, ", uid="

    .line 25
    .line 26
    const-string v3, ", fpid="

    .line 27
    .line 28
    invoke-static {p0, p1, v2, v3, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p0, ")"

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 44
    .line 45
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 46
    .line 47
    const-string p2, "DEV"

    .line 48
    .line 49
    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    monitor-exit v0

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    iget-object v1, v0, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    .line 99
    .line 100
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    :goto_0
    monitor-exit v0

    .line 107
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 108
    .line 109
    monitor-enter p1

    .line 110
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 111
    .line 112
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    monitor-exit p1

    .line 116
    return v2

    .line 117
    :catchall_1
    move-exception p0

    .line 118
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    throw p0

    .line 120
    :goto_2
    monitor-exit v0

    .line 121
    throw p0
.end method

.method public final unfreezeWallPaperPackage()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const-string v4, "WallPaper"

    .line 32
    .line 33
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0

    .line 40
    throw p0
.end method

.method public final updateAbnormalAppFirewall(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updateAbnormalAppFirewall uid "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", allow "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "FreecessController"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isInFreezeExemptionList(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 9
    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->isInOlafAllowList(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    .line 19
    .line 20
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mGpsDefaultAllowList:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 29
    .line 30
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCtsGtsList:Ljava/util/Set;

    .line 31
    .line 32
    check-cast p0, Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    .line 41
    .line 42
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 43
    .line 44
    :cond_3
    return-void
.end method

.method public updateFreezedUidFirewall(IZ)V
    .locals 8

    .line 1
    const-string v0, "Error occured while updateFreezedUidFirewall: "

    .line 2
    .line 3
    const-string v1, ",7,2"

    .line 4
    .line 5
    const-string v2, "[FRZ] "

    .line 6
    .line 7
    const-string v3, ",7,1"

    .line 8
    .line 9
    const-string v4, "[UFZ] "

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 16
    .line 17
    if-nez v7, :cond_0

    .line 18
    .line 19
    const-string/jumbo v7, "network_management"

    .line 20
    .line 21
    .line 22
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-static {v7}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    iput-object v7, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 31
    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    const/4 v7, 0x7

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    :try_start_0
    invoke-interface {p0, v7, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 59
    .line 60
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Lcom/android/server/am/MARsPolicyManager;->addNetDebugInfoToHistory(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 p2, 0x2

    .line 71
    invoke-interface {p0, v7, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 72
    .line 73
    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 90
    .line 91
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Lcom/android/server/am/MARsPolicyManager;->addNetDebugInfoToHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :goto_1
    :try_start_1
    const-string p1, "FreecessController"

    .line 101
    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_2
    :goto_3
    return-void
.end method

.method public final updateRunningLocationPackages()V
    .locals 4

    .line 1
    const-string v0, "FreecessController"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v1, "location"

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 21
    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    invoke-interface {v1}, Landroid/location/ILocationManager;->getGPSUsingApps()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/Integer;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string/jumbo v2, "mGPSAllowList: "

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_0
    const-string/jumbo p0, "failed to updateRunningLocationPackages!"

    .line 92
    .line 93
    .line 94
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_4
    :goto_1
    return-void
.end method
