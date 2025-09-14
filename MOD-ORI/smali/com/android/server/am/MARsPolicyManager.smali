.class public Lcom/android/server/am/MARsPolicyManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static AUFAllowBucketSize:I = 0x0

.field public static App_StartUp_History:Z = false

.field public static ENABLE_KILL_LONG_RUNNING_PROCESS:Z = false

.field public static final FGS_BATTERY_USAGE_THRESHOLD:I

.field public static GlobalModelWithChinaSIM:Z = false

.field public static final MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

.field public static MARs_ENABLE:Z = false

.field public static final SMART_MANAGER_PKG_NAME:Ljava/lang/String;

.field public static isChinaModel:Z


# instance fields
.field public ENABLE_RESTRICTED_BUCKET:Z

.field public KEEP_NO_FILTER_MIN_DURATION:J

.field public THRESHOLD_POWER_USAGE:D

.field public THRESHOLD_POWER_USAGE_BACKUP:D

.field public appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public isTimeChangedForDebug:Z

.field public mAllPoliciesOn:I

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field public mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field public mAutoDeepSleepTimeForDebug:J

.field public final mAutoDisabledLockingTime:J

.field public final mBackupExpirationUptimeMap:Ljava/util/HashMap;

.field public mCarModeOn:Z

.field public mContext:Landroid/content/Context;

.field public final mCtsGtsList:Ljava/util/Set;

.field public mCurrentUserId:I

.field public mDualAppEnabled:Z

.field public mDualAppUserId:I

.field public mEnabledProfileUserIds:[I

.field public final mFGServiceStartTimeMap:Ljava/util/HashMap;

.field public mFilterHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

.field public mFirstTimeUpdatePackages:Z

.field public mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

.field public mInitDisabledPackage:Z

.field public mIsDeviceIdleMode:Z

.field public mIsLastNotiSentTimeForDisabledDismiss:Z

.field public mIsManualMode:Z

.field public mLastNotiSentTimeForDisabled:J

.field public mLastPkgName:Ljava/lang/String;

.field public mLastUid:I

.field public mLastUpdateTime:J

.field public final mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

.field public final mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

.field public mNMs:Landroid/os/INetworkManagementService;

.field public final mNeedtoDisablePackages:Ljava/util/ArrayList;

.field public mNetHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

.field public final mScpmList:Ljava/util/HashSet;

.field public mScreenOn:Z

.field public sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    .line 6
    .line 7
    const-string/jumbo v2, "com.samsung.android.lool"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 22
    .line 23
    const-string/jumbo v0, "sys.config.mars_auf_bucket"

    .line 24
    .line 25
    .line 26
    const-string v1, "0"

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sput v0, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 43
    .line 44
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 45
    .line 46
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 47
    .line 48
    const/16 v0, 0x64

    .line 49
    .line 50
    sput v0, Lcom/android/server/am/MARsPolicyManager;->FGS_BATTERY_USAGE_THRESHOLD:I

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    .line 6
    .line 7
    const/16 v1, -0xa

    .line 8
    .line 9
    iput v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUid:I

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdateTime:J

    .line 14
    .line 15
    new-array v3, v0, [I

    .line 16
    .line 17
    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 18
    .line 19
    new-instance v3, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v3, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    .line 32
    .line 33
    new-instance v3, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    .line 39
    .line 40
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    .line 46
    .line 47
    sget-object v3, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 48
    .line 49
    iget-object v3, v3, Ljava/com/android/server/am/mars/database/MARsListManager;->mCtsGtsList:Ljava/util/Set;

    .line 50
    .line 51
    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mCtsGtsList:Ljava/util/Set;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    .line 55
    .line 56
    const-wide/32 v4, 0x5265c00

    .line 57
    .line 58
    .line 59
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 62
    .line 63
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 64
    .line 65
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z

    .line 66
    .line 67
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 68
    .line 69
    iput v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 70
    .line 71
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    .line 72
    .line 73
    new-instance v3, Lcom/android/server/am/MARsPkgMap;

    .line 74
    .line 75
    invoke-direct {v3}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 79
    .line 80
    new-instance v3, Lcom/android/server/am/MARsPkgMap;

    .line 81
    .line 82
    invoke-direct {v3}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 86
    .line 87
    const-wide/32 v3, 0x5265c000

    .line 88
    .line 89
    .line 90
    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    .line 91
    .line 92
    iput-wide v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 93
    .line 94
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    .line 95
    .line 96
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 97
    .line 98
    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    .line 99
    .line 100
    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    .line 101
    .line 102
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    .line 103
    .line 104
    iput-wide v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 110
    .line 111
    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 114
    .line 115
    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 118
    .line 119
    const-string/jumbo p0, "persist.sys.bub_onoff"

    .line 120
    .line 121
    .line 122
    const-string v0, "1"

    .line 123
    .line 124
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public static convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    aget-object v2, p0, v1

    .line 8
    .line 9
    const-string v3, "[FRZ]"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string v4, " "

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    aget-object v5, p0, v1

    .line 25
    .line 26
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 v2, 0x2

    .line 40
    aget-object v5, p0, v2

    .line 41
    .line 42
    const-string v6, "[FAS]"

    .line 43
    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_1

    .line 49
    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    aget-object v7, p0, v2

    .line 56
    .line 57
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :cond_1
    const/4 v5, 0x3

    .line 71
    aget-object v7, p0, v5

    .line 72
    .line 73
    const-string v8, "[FOS]"

    .line 74
    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-nez v7, :cond_2

    .line 80
    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    aget-object v9, p0, v5

    .line 87
    .line 88
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :cond_2
    const/4 v7, 0x4

    .line 102
    aget-object v9, p0, v7

    .line 103
    .line 104
    const-string v10, "[DIS]"

    .line 105
    .line 106
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-nez v9, :cond_3

    .line 111
    .line 112
    aget-object p0, p0, v7

    .line 113
    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    :cond_3
    aget-object p0, p1, v1

    .line 118
    .line 119
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_4

    .line 124
    .line 125
    aget-object p0, p1, v2

    .line 126
    .line 127
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-eqz p0, :cond_4

    .line 132
    .line 133
    aget-object p0, p1, v5

    .line 134
    .line 135
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-eqz p0, :cond_4

    .line 140
    .line 141
    aget-object p0, p1, v7

    .line 142
    .line 143
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-nez p0, :cond_5

    .line 148
    .line 149
    :cond_4
    const-string p0, " [IMP] "

    .line 150
    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    :cond_5
    aget-object p0, p1, v1

    .line 155
    .line 156
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-nez p0, :cond_6

    .line 161
    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    aget-object v1, p1, v1

    .line 168
    .line 169
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    :cond_6
    aget-object p0, p1, v2

    .line 183
    .line 184
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-nez p0, :cond_7

    .line 189
    .line 190
    new-instance p0, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    aget-object v1, p1, v2

    .line 196
    .line 197
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    :cond_7
    aget-object p0, p1, v5

    .line 211
    .line 212
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    if-nez p0, :cond_8

    .line 217
    .line 218
    new-instance p0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    aget-object v1, p1, v5

    .line 224
    .line 225
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    :cond_8
    aget-object p0, p1, v7

    .line 239
    .line 240
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result p0

    .line 244
    if-nez p0, :cond_9

    .line 245
    .line 246
    aget-object p0, p1, v7

    .line 247
    .line 248
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    return-object p0
.end method

.method public static disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    :try_start_0
    const-string/jumbo v3, "package"

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v3, v2, v1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    if-ne v4, v0, :cond_1

    .line 32
    .line 33
    :cond_0
    invoke-interface {v3, v2, v1}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    .line 34
    .line 35
    .line 36
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v3

    .line 41
    const-string v4, "Error occurred in getEnabledStateIfCanBeDisabled()"

    .line 42
    .line 43
    const-string v5, "MARsPolicyManager"

    .line 44
    .line 45
    invoke-static {v3, v4, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    const/4 v4, -0x1

    .line 49
    :goto_0
    if-ltz v4, :cond_2

    .line 50
    .line 51
    const/4 v3, 0x4

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-static {v1, v3, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(IIILjava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    iput v4, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    .line 62
    .line 63
    iput v3, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    .line 64
    .line 65
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    .line 66
    .line 67
    return p0
.end method

.method public static enableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    const/4 v4, 0x4

    .line 13
    if-eq v0, v4, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v3

    .line 17
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 18
    .line 19
    iget v5, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 20
    .line 21
    invoke-static {v5, v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(IIILjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iput v2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    .line 28
    .line 29
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    .line 30
    .line 31
    iput v3, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    .line 32
    .line 33
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    .line 34
    .line 35
    xor-int/2addr p0, v1

    .line 36
    return p0
.end method

.method public static formatDateTimeWithoutYear(J)Ljava/lang/String;
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
    const-string p1, "%18s"

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
    const-string v1, "MM/dd HH:mm:ss.SSS"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/util/Date;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static getChangedByUserFromReason(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "added_from_user_manual"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "added_from_anomaly_manual"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string/jumbo v0, "deleted_from_user_manual"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public static getInstance()Lcom/android/server/am/MARsPolicyManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/am/MARsPackageInfo;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method

.method public static hasPermission(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "package"

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :try_start_0
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/16 v3, 0x3e8

    .line 21
    .line 22
    if-eq v3, v2, :cond_0

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v1, p0, v0}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    const-string/jumbo v0, "hasPermission exception:"

    .line 36
    .line 37
    .line 38
    const-string v1, "MARsPolicyManager"

    .line 39
    .line 40
    invoke-static {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    const/4 p0, 0x1

    .line 44
    return p0
.end method

.method public static isAnomalyFGSPackage(I)Z
    .locals 5

    .line 1
    sget v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->$r8$clinit:I

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$ForegroundServiceMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/am/mars/ForegroundServiceRecord;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v2, "type : "

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mForegroundType:I

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ", using : "

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, " isAnomalyFGS : "

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v2, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mForegroundType:I

    .line 51
    .line 52
    not-int v2, v2

    .line 53
    iget v3, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    .line 54
    .line 55
    and-int/2addr v2, v3

    .line 56
    const/4 v3, 0x1

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    move v2, v3

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move v2, v1

    .line 62
    :goto_0
    const-string v4, "MARsPolicyManager"

    .line 63
    .line 64
    invoke-static {v4, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 65
    .line 66
    .line 67
    iget v0, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mForegroundType:I

    .line 68
    .line 69
    not-int v0, v0

    .line 70
    iget p0, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    .line 71
    .line 72
    and-int/2addr p0, v0

    .line 73
    if-eqz p0, :cond_1

    .line 74
    .line 75
    move v1, v3

    .line 76
    :cond_1
    return v1
.end method

.method public static isChinaPolicyEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public static isDisabledByUser(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    if-ne p0, v0, :cond_0

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

.method public static isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "equals"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string/jumbo v0, "contains"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string/jumbo v0, "startsWith"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string/jumbo v0, "endsWith"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const-string/jumbo v0, "equalsIgnoreCase"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const/4 p0, 0x0

    .line 72
    :goto_0
    return p0
.end method

.method public static onSpecialUnBindServiceActions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string/jumbo v0, "com.google.android.projection.gearhead"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    sget-object v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$AndroidAutoFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->userIdPackageListSelfLocked:Landroid/util/ArrayMap;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->userIdPackageListSelfLocked:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    monitor-exit v1

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    monitor-exit v1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->logExcludeList:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    const-string v0, "FILTER 32 remove"

    .line 57
    .line 58
    invoke-static {v0, p1}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0

    .line 64
    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    const-string v0, "android.intent.action.TTS_SERVICE"

    .line 68
    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    if-eqz p3, :cond_6

    .line 76
    .line 77
    sget-object v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 78
    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    .line 84
    .line 85
    monitor-enter v2

    .line 86
    :try_start_2
    iget-object v3, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    .line 87
    .line 88
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/util/ArrayList;

    .line 93
    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_5

    .line 101
    .line 102
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    .line 106
    .line 107
    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    goto :goto_3

    .line 113
    :cond_5
    :goto_2
    monitor-exit v2

    .line 114
    goto :goto_4

    .line 115
    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    throw p0

    .line 117
    :cond_6
    :goto_4
    const-string v0, "android.net.VpnService"

    .line 118
    .line 119
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_8

    .line 124
    .line 125
    sget-object v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter$VPNPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    .line 126
    .line 127
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    .line 132
    .line 133
    monitor-enter v2

    .line 134
    :try_start_3
    iget-object v3, v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    .line 135
    .line 136
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Ljava/util/ArrayList;

    .line 141
    .line 142
    if-eqz v3, :cond_7

    .line 143
    .line 144
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_7

    .line 149
    .line 150
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    .line 154
    .line 155
    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :catchall_2
    move-exception p0

    .line 160
    goto :goto_6

    .line 161
    :cond_7
    :goto_5
    monitor-exit v2

    .line 162
    goto :goto_7

    .line 163
    :goto_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 164
    throw p0

    .line 165
    :cond_8
    :goto_7
    const-string v0, "android.service.notification.NotificationListenerService"

    .line 166
    .line 167
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_a

    .line 172
    .line 173
    sget-object v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    .line 174
    .line 175
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    iget-object v1, v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNLSPkgMap:Landroid/util/ArrayMap;

    .line 180
    .line 181
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Ljava/util/ArrayList;

    .line 186
    .line 187
    if-eqz v1, :cond_9

    .line 188
    .line 189
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    :cond_9
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNLSPkgMap:Landroid/util/ArrayMap;

    .line 193
    .line 194
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :cond_a
    const-string p0, "android.service.wallpaper.WallpaperService"

    .line 198
    .line 199
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    if-nez p0, :cond_b

    .line 204
    .line 205
    const-string/jumbo p0, "com.samsung.android.service.wallpaper.LiveWallpaperService"

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    if-nez p0, :cond_b

    .line 213
    .line 214
    const-string/jumbo p0, "com.samsung.android.service.wallpaper.CoverWallpaperService"

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    if-eqz p0, :cond_c

    .line 222
    .line 223
    :cond_b
    const-string p0, "android"

    .line 224
    .line 225
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    if-eqz p0, :cond_c

    .line 230
    .line 231
    sget-object p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    .line 232
    .line 233
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;

    .line 234
    .line 235
    monitor-enter p2

    .line 236
    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    const-string p0, "FILTER 10 remove"

    .line 242
    .line 243
    invoke-static {p0, p1}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    monitor-exit p2

    .line 247
    goto :goto_8

    .line 248
    :catchall_3
    move-exception p0

    .line 249
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 250
    throw p0

    .line 251
    :cond_c
    :goto_8
    return-void
.end method

.method public static resetAbusiveFlag(Lcom/android/server/am/MARsPackageInfo;)V
    .locals 5

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const-string v2, "MARsPolicyManager"

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v4, "resetAbusiveFlag uid:"

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v4, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v4, " pkgname:"

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v3, v4, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 31
    .line 32
    monitor-enter v2

    .line 33
    :try_start_0
    iget v3, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 34
    .line 35
    and-int/lit8 v4, v3, 0x8

    .line 36
    .line 37
    if-ne v4, v1, :cond_0

    .line 38
    .line 39
    and-int/lit8 v1, v3, -0x9

    .line 40
    .line 41
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 42
    .line 43
    :cond_0
    iget v1, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 44
    .line 45
    and-int/lit8 v3, v1, 0x10

    .line 46
    .line 47
    if-ne v3, v0, :cond_1

    .line 48
    .line 49
    and-int/lit8 v0, v1, -0x11

    .line 50
    .line 51
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 52
    .line 53
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 54
    .line 55
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 56
    .line 57
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/FreecessController;->updateAbnormalAppFirewall(IZ)V

    .line 61
    .line 62
    .line 63
    :cond_1
    monitor-exit v2

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public static setEnabledSetting(IIILjava/lang/String;)Z
    .locals 10

    .line 1
    const-string v0, "Error occurred in setEnabledSetting()"

    .line 2
    .line 3
    const-string/jumbo v1, "package"

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v8

    .line 18
    :try_start_0
    const-string v7, "auto_disabler"

    .line 19
    .line 20
    move-object v3, p3

    .line 21
    move v4, p1

    .line 22
    move v5, p2

    .line 23
    move v6, p0

    .line 24
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    :try_start_1
    const-string p1, "MARsPolicyManager"

    .line 36
    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return p0

    .line 57
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public static updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    .line 2
    .line 3
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 4
    .line 5
    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 8
    .line 9
    iget-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 12
    .line 13
    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    .line 14
    .line 15
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 16
    .line 17
    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    .line 18
    .line 19
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 20
    .line 21
    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    .line 22
    .line 23
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 24
    .line 25
    iget-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 28
    .line 29
    iget-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isInRestrictedBucket:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    .line 32
    .line 33
    iget p1, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableReason:I

    .line 34
    .line 35
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 36
    .line 37
    return-void
.end method

.method public static updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 2
    .line 3
    iput v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 6
    .line 7
    iput v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 10
    .line 11
    iput-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    .line 12
    .line 13
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 14
    .line 15
    iput v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    .line 16
    .line 17
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 18
    .line 19
    iput v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    .line 20
    .line 21
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 22
    .line 23
    iput v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 26
    .line 27
    iput-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    .line 30
    .line 31
    iput-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isInRestrictedBucket:Z

    .line 32
    .line 33
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 34
    .line 35
    iput p0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableReason:I

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "["

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-static {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, "] "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "["

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, "] "

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "["

    .line 74
    .line 75
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p2, "]\n"

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/HistoryBuffer;->put(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v1, "["

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v1

    .line 119
    invoke-static {v1, v2}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, "] "

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v1, "["

    .line 141
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p1, "] "

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v0, "["

    .line 163
    .line 164
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string p2, "]\n"

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    sget-object p1, Lcom/android/server/am/mars/MARsHistoryBuffer$MARsHistoryBufferHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryBuffer;

    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    monitor-enter p1

    .line 189
    :try_start_0
    iget-object p2, p1, Lcom/android/server/am/mars/MARsHistoryBuffer;->buffer:[Ljava/lang/String;

    .line 190
    .line 191
    iget v0, p1, Lcom/android/server/am/mars/MARsHistoryBuffer;->pointer:I

    .line 192
    .line 193
    add-int/lit8 v1, v0, 0x1

    .line 194
    .line 195
    iput v1, p1, Lcom/android/server/am/mars/MARsHistoryBuffer;->pointer:I

    .line 196
    .line 197
    aput-object p0, p2, v0

    .line 198
    .line 199
    iget p0, p1, Lcom/android/server/am/mars/MARsHistoryBuffer;->size:I

    .line 200
    .line 201
    if-lt v1, p0, :cond_2

    .line 202
    .line 203
    sget-object p0, Lcom/android/server/am/mars/MARsHistoryLog$MARsHistoryLogHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryLog;

    .line 204
    .line 205
    const/4 p2, 0x1

    .line 206
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/mars/MARsHistoryLog;->saveLogToFile(ZZ)V

    .line 208
    .line 209
    .line 210
    iput v0, p1, Lcom/android/server/am/mars/MARsHistoryBuffer;->pointer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :catchall_0
    move-exception p0

    .line 214
    goto :goto_3

    .line 215
    :cond_2
    :goto_1
    monitor-exit p1

    .line 216
    :cond_3
    :goto_2
    return-void

    .line 217
    :goto_3
    monitor-exit p1

    .line 218
    throw p0
.end method

.method public final addNetDebugInfoToHistory(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "["

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-static {v3, v4}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, "] "

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, "[NET] "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, "]\n"

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/HistoryBuffer;->put(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void
.end method

.method public final addRestrictListAvoidAssoicationLaunch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 5
    .line 6
    invoke-static {v1, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 13
    .line 14
    iput-object v1, p1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    iput v1, p1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 20
    .line 21
    iget-object v2, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 22
    .line 23
    iget v3, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 24
    .line 25
    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 32
    .line 33
    iget-object v2, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 34
    .line 35
    iget v3, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p3, " "

    .line 53
    .line 54
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p4, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
.end method

.method public final awakePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_7

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-nez v7, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 52
    .line 53
    monitor-enter v7

    .line 54
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 55
    .line 56
    invoke-static {v8, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-eqz v5, :cond_6

    .line 61
    .line 62
    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 63
    .line 64
    const/4 v8, 0x4

    .line 65
    if-ne v6, v8, :cond_1

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_1
    iget-boolean v4, v5, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 76
    .line 77
    if-nez v4, :cond_2

    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    if-le v6, v4, :cond_3

    .line 81
    .line 82
    :cond_2
    const/16 v4, 0x100

    .line 83
    .line 84
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 85
    .line 86
    .line 87
    sget-object v4, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 88
    .line 89
    iget-object v6, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 90
    .line 91
    iget v8, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    invoke-virtual {v4, v8, v9, v6}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    iput v4, v5, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 102
    .line 103
    iput-object p1, v5, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 104
    .line 105
    const/4 v4, 0x0

    .line 106
    iput-object v4, v5, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 107
    .line 108
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 109
    .line 110
    iget-object v8, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 111
    .line 112
    iget v9, v5, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 113
    .line 114
    invoke-virtual {v6, v9, v8}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v6, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 118
    .line 119
    invoke-direct {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v8, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 123
    .line 124
    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 125
    .line 126
    iget v8, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 127
    .line 128
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 133
    .line 134
    iget-boolean v8, v5, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 135
    .line 136
    if-eqz v8, :cond_4

    .line 137
    .line 138
    const-string v9, "1"

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    const-string v9, "0"

    .line 142
    .line 143
    :goto_1
    iput-object v9, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 144
    .line 145
    if-eqz v8, :cond_5

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    iget v4, v5, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 149
    .line 150
    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    :goto_2
    iput-object v4, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 155
    .line 156
    iget v4, v5, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 157
    .line 158
    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    iput-object v4, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 163
    .line 164
    iget-wide v8, v5, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 165
    .line 166
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    iput-object v4, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 171
    .line 172
    iget v4, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 173
    .line 174
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    iput-object v4, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 179
    .line 180
    iget v4, v5, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 181
    .line 182
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    iput-object v4, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    .line 187
    .line 188
    iget v4, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 189
    .line 190
    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    iput-object v4, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    iget v4, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 204
    .line 205
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    :cond_6
    :goto_3
    monitor-exit v7

    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :goto_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    throw p0

    .line 217
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_8

    .line 222
    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 228
    .line 229
    .line 230
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    if-nez p0, :cond_9

    .line 235
    .line 236
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 237
    .line 238
    .line 239
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 240
    .line 241
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 242
    .line 243
    .line 244
    :cond_9
    return-object v2
.end method

.method public final canRestrictBySEPWithoutPermissionCheck(IILjava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    if-eqz p3, :cond_a

    .line 14
    .line 15
    invoke-virtual {p0, v0, p3}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_1
    const/4 v1, 0x3

    .line 24
    const/4 v3, 0x2

    .line 25
    const/4 v4, 0x1

    .line 26
    if-nez p1, :cond_5

    .line 27
    .line 28
    sget-object p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 29
    .line 30
    sget-object p0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 31
    .line 32
    const/16 p1, 0x15

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-virtual {p0, p1, p3, v5, p3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    return v2

    .line 42
    :cond_2
    :try_start_0
    const-string/jumbo p0, "package"

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p0, p3, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    if-eq p0, v3, :cond_4

    .line 58
    .line 59
    if-ne p0, v1, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    sget-object p0, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const/16 p0, 0x8

    .line 68
    .line 69
    invoke-static {p0, v0, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_a

    .line 74
    .line 75
    return v4

    .line 76
    :cond_4
    :goto_0
    return v2

    .line 77
    :catch_0
    move-exception p0

    .line 78
    const-string p1, "MARsPolicyManager"

    .line 79
    .line 80
    const-string p2, "Exception "

    .line 81
    .line 82
    invoke-static {p0, p2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v2

    .line 86
    :cond_5
    if-ne p1, v4, :cond_6

    .line 87
    .line 88
    return v4

    .line 89
    :cond_6
    if-ne p1, v1, :cond_7

    .line 90
    .line 91
    return v4

    .line 92
    :cond_7
    if-ne p1, v3, :cond_a

    .line 93
    .line 94
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 95
    .line 96
    monitor-enter p1

    .line 97
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 98
    .line 99
    invoke-static {p0, p3, v0}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-eqz p0, :cond_9

    .line 104
    .line 105
    sget-object v1, Lcom/android/server/am/mars/filter/filter/AllowListFilter$AllowListFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    .line 106
    .line 107
    iget-object v3, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->isInDefaultAllowList(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_9

    .line 114
    .line 115
    iget-boolean p0, p0, Lcom/android/server/am/MARsPackageInfo;->hasAppIcon:Z

    .line 116
    .line 117
    if-nez p0, :cond_8

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_8
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    sget-object p0, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    const/4 p0, 0x7

    .line 127
    invoke-static {p0, v0, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-nez p0, :cond_a

    .line 132
    .line 133
    return v4

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    goto :goto_2

    .line 136
    :cond_9
    :goto_1
    :try_start_2
    monitor-exit p1

    .line 137
    return v2

    .line 138
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    throw p0

    .line 140
    :cond_a
    :goto_3
    return v2
.end method

.method public final cancelDisablePolicy(Ljava/lang/String;II)Z
    .locals 6

    .line 1
    const-string/jumbo v0, "cancelDisablePolicy "

    .line 2
    .line 3
    .line 4
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 8
    .line 9
    invoke-static {v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    monitor-exit v1

    .line 17
    return v3

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    const-string v4, "MARsPolicyManager"

    .line 21
    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "("

    .line 31
    .line 32
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ") "

    .line 39
    .line 40
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-boolean v0, v2, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 44
    .line 45
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string/jumbo v0, "|"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v0, v2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 55
    .line 56
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string/jumbo v0, "|"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v0, v2, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 66
    .line 67
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object v0, v2, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    iget v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 82
    .line 83
    const/16 v4, 0x8

    .line 84
    .line 85
    if-eq v0, v4, :cond_1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    iget-boolean v0, v2, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 89
    .line 90
    const/4 v4, 0x1

    .line 91
    if-nez v0, :cond_2

    .line 92
    .line 93
    iget v0, v2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 94
    .line 95
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    monitor-exit v1

    .line 102
    return v4

    .line 103
    :cond_2
    iget v0, v2, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 104
    .line 105
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const/4 v1, -0x1

    .line 107
    if-eq v0, v1, :cond_3

    .line 108
    .line 109
    const/4 v1, 0x4

    .line 110
    if-eq v0, v1, :cond_3

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    move v0, v3

    .line 114
    :goto_0
    invoke-static {p2, v0, p3, p1}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(IIILjava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    if-eqz p3, :cond_4

    .line 121
    .line 122
    move v3, v4

    .line 123
    :cond_4
    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/am/MARsPolicyManager;->changeAutoDisabledAppState(ILjava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    return v4

    .line 127
    :cond_5
    return v3

    .line 128
    :cond_6
    :goto_1
    :try_start_1
    monitor-exit v1

    .line 129
    return v3

    .line 130
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    throw p0
.end method

.method public final cancelPolicy(IILjava/lang/String;Z)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 10
    .line 11
    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 12
    .line 13
    iget-boolean v2, v3, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const-string v8, "CancelPolicy"

    .line 18
    .line 19
    if-eqz p4, :cond_0

    .line 20
    .line 21
    sget-boolean p4, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    .line 22
    .line 23
    if-eqz p4, :cond_0

    .line 24
    .line 25
    const-wide/16 v4, 0x5dc

    .line 26
    .line 27
    :goto_0
    move-wide v6, v4

    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_0
    const-wide/16 v4, 0xbb8

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    move v4, p2

    .line 36
    move-object v5, p3

    .line 37
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    if-eqz p4, :cond_1

    .line 42
    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 45
    :cond_1
    iget-object p4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 46
    .line 47
    invoke-static {p4, p3, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const/4 p3, 0x0

    .line 52
    const/4 p4, 0x0

    .line 53
    if-eqz p2, :cond_6

    .line 54
    .line 55
    iget-object v2, p2, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 56
    .line 57
    const/16 v3, 0x8

    .line 58
    .line 59
    if-eqz v2, :cond_5

    .line 60
    .line 61
    iget v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 62
    .line 63
    if-ne v2, p1, :cond_5

    .line 64
    .line 65
    if-eq p1, v3, :cond_2

    .line 66
    .line 67
    iput-object p3, p2, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 68
    .line 69
    iput p4, p2, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 70
    .line 71
    :cond_2
    const/4 v2, 0x6

    .line 72
    if-ne p1, v2, :cond_3

    .line 73
    .line 74
    iput p4, p2, Lcom/android/server/am/MARsPackageInfo;->sbike:I

    .line 75
    .line 76
    :cond_3
    if-ne p1, v3, :cond_5

    .line 77
    .line 78
    iget-boolean v2, p2, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 79
    .line 80
    if-nez v2, :cond_4

    .line 81
    .line 82
    iget v2, p2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 83
    .line 84
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    :cond_4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_5
    iget-object v2, p2, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 94
    .line 95
    if-nez v2, :cond_6

    .line 96
    .line 97
    if-eq p1, v3, :cond_6

    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 100
    .line 101
    iget-object v2, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 102
    .line 103
    iget p2, p2, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 104
    .line 105
    invoke-virtual {p1, p2, v2}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    move p1, p4

    .line 110
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-ge p1, p2, :cond_8

    .line 115
    .line 116
    sget-object p2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 117
    .line 118
    monitor-enter p2

    .line 119
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lcom/android/server/am/MARsPackageInfo;

    .line 124
    .line 125
    if-eqz v1, :cond_7

    .line 126
    .line 127
    iget-object v2, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 128
    .line 129
    iget v1, v1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_7
    const/4 v1, -0x1

    .line 133
    move-object v2, p3

    .line 134
    :goto_3
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    invoke-virtual {p0, v2, v1, p4}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 136
    .line 137
    .line 138
    add-int/lit8 p1, p1, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catchall_1
    move-exception p0

    .line 142
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    throw p0

    .line 144
    :cond_8
    return-void

    .line 145
    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    throw p0
.end method

.method public final changeAutoDisabledAppState(ILjava/lang/String;Z)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 5
    .line 6
    invoke-static {v1, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    if-eqz p1, :cond_5

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 14
    .line 15
    if-eqz v1, :cond_5

    .line 16
    .line 17
    iget v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    if-ne v1, v2, :cond_5

    .line 22
    .line 23
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 24
    .line 25
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v3, 0x0

    .line 30
    const/16 v4, 0x400

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 35
    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_0
    if-eqz p3, :cond_1

    .line 43
    .line 44
    const/16 v1, 0x800

    .line 45
    .line 46
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 47
    .line 48
    .line 49
    iput v2, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x4

    .line 56
    iput v1, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 57
    .line 58
    :goto_0
    if-eqz p3, :cond_2

    .line 59
    .line 60
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-eqz p3, :cond_2

    .line 65
    .line 66
    const/4 p2, 0x2

    .line 67
    iput p2, p1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 70
    .line 71
    iput-object p0, p1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iput v3, p1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 75
    .line 76
    iput-object p2, p1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 79
    .line 80
    iget-object p2, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 81
    .line 82
    iget p3, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 83
    .line 84
    invoke-virtual {p0, p3, p2}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    const/4 p0, -0x1

    .line 88
    iput p0, p1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 89
    .line 90
    new-instance p0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 91
    .line 92
    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object p2, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 96
    .line 97
    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 98
    .line 99
    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 100
    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 106
    .line 107
    iget-boolean p2, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 108
    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    const-string p3, "1"

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    const-string p3, "0"

    .line 115
    .line 116
    :goto_2
    iput-object p3, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 117
    .line 118
    if-eqz p2, :cond_4

    .line 119
    .line 120
    const-string p2, "1"

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_4
    const-string p2, "0"

    .line 124
    .line 125
    :goto_3
    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    .line 126
    .line 127
    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 128
    .line 129
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 134
    .line 135
    iget-wide p2, p1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 136
    .line 137
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 142
    .line 143
    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 144
    .line 145
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 150
    .line 151
    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 152
    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    .line 158
    .line 159
    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 160
    .line 161
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 166
    .line 167
    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 168
    .line 169
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    :goto_4
    iput-boolean v3, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 180
    .line 181
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    if-eqz p2, :cond_6

    .line 183
    .line 184
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 185
    .line 186
    .line 187
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 188
    .line 189
    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 190
    .line 191
    .line 192
    :cond_6
    return-void

    .line 193
    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    throw p0
.end method

.method public final checkUnusedTargetForDeepSleep()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "MARsPolicyManager"

    .line 10
    .line 11
    const-string v1, "Now manual mode is on, we will not update anything!"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    iget-wide v6, v1, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 32
    .line 33
    const-wide/16 v8, 0x0

    .line 34
    .line 35
    cmp-long v0, v6, v8

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    sub-long/2addr v4, v6

    .line 40
    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-wide/16 v6, 0x2

    .line 45
    .line 46
    iget-wide v10, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    .line 47
    .line 48
    mul-long/2addr v10, v6

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-wide/32 v10, 0x4d3f6400

    .line 51
    .line 52
    .line 53
    :goto_0
    cmp-long v0, v4, v10

    .line 54
    .line 55
    if-lez v0, :cond_d

    .line 56
    .line 57
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-wide v5, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-wide v5, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    .line 70
    .line 71
    :goto_1
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 72
    .line 73
    monitor-enter v7

    .line 74
    const/4 v0, 0x0

    .line 75
    move v10, v0

    .line 76
    :goto_2
    :try_start_1
    iget-object v11, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 77
    .line 78
    iget-object v11, v11, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    if-ge v10, v11, :cond_8

    .line 85
    .line 86
    iget-object v11, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 87
    .line 88
    iget-object v11, v11, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    check-cast v11, Landroid/util/SparseArray;

    .line 95
    .line 96
    move v12, v0

    .line 97
    :goto_3
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-ge v12, v13, :cond_7

    .line 102
    .line 103
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v13

    .line 107
    check-cast v13, Lcom/android/server/am/MARsPackageInfo;

    .line 108
    .line 109
    iget v14, v13, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 110
    .line 111
    const/16 v15, 0x100

    .line 112
    .line 113
    if-eq v14, v15, :cond_5

    .line 114
    .line 115
    iget-boolean v14, v13, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 116
    .line 117
    if-nez v14, :cond_5

    .line 118
    .line 119
    iget v14, v13, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 120
    .line 121
    invoke-virtual {v1, v14}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    if-eqz v14, :cond_5

    .line 126
    .line 127
    iget-wide v14, v13, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 128
    .line 129
    cmp-long v14, v14, v8

    .line 130
    .line 131
    if-lez v14, :cond_4

    .line 132
    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 134
    .line 135
    .line 136
    move-result-wide v14

    .line 137
    iget-wide v8, v13, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 138
    .line 139
    sub-long/2addr v14, v8

    .line 140
    cmp-long v8, v14, v5

    .line 141
    .line 142
    if-gez v8, :cond_4

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    goto/16 :goto_b

    .line 147
    .line 148
    :cond_4
    sget-object v8, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 149
    .line 150
    iget-object v9, v13, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 151
    .line 152
    iget v14, v13, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 153
    .line 154
    iget v15, v13, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 155
    .line 156
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    const/4 v8, 0x7

    .line 160
    invoke-static {v8, v14, v15, v9}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-nez v8, :cond_5

    .line 165
    .line 166
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 167
    .line 168
    iget-object v9, v13, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 169
    .line 170
    iget v14, v13, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 171
    .line 172
    iget v15, v13, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 173
    .line 174
    invoke-direct {v8, v14, v15, v9}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v13, v8}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_5
    const/4 v8, 0x0

    .line 182
    :goto_4
    if-eqz v8, :cond_6

    .line 183
    .line 184
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :cond_6
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 188
    .line 189
    const-wide/16 v8, 0x0

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 193
    .line 194
    const-wide/16 v8, 0x0

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_8
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    move v5, v0

    .line 199
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-ge v5, v0, :cond_b

    .line 204
    .line 205
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    move-object v6, v0

    .line 210
    check-cast v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 211
    .line 212
    iget-object v7, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 213
    .line 214
    iget v0, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 215
    .line 216
    :try_start_2
    const-class v8, Landroid/content/pm/PackageManagerInternal;

    .line 217
    .line 218
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    .line 223
    .line 224
    invoke-virtual {v8, v0, v7}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(ILjava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 228
    goto :goto_7

    .line 229
    :catch_0
    move-exception v0

    .line 230
    new-instance v8, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v9, "Failed getPackageStoppedState : "

    .line 233
    .line 234
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v7, ": "

    .line 241
    .line 242
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v7, "MARsPolicyManager"

    .line 253
    .line 254
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    const/4 v0, 0x1

    .line 258
    :goto_7
    if-eqz v0, :cond_9

    .line 259
    .line 260
    goto :goto_9

    .line 261
    :cond_9
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 262
    .line 263
    monitor-enter v7

    .line 264
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 265
    .line 266
    iget-object v8, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 267
    .line 268
    iget v6, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 269
    .line 270
    invoke-static {v0, v8, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-eqz v0, :cond_a

    .line 275
    .line 276
    const/4 v6, 0x4

    .line 277
    invoke-virtual {v1, v6, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    if-eqz v6, :cond_a

    .line 282
    .line 283
    new-instance v6, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 284
    .line 285
    invoke-direct {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    iget-object v8, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 289
    .line 290
    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 291
    .line 292
    iget v8, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 293
    .line 294
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 299
    .line 300
    iget v8, v0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 301
    .line 302
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 307
    .line 308
    iget v8, v0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 309
    .line 310
    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    const-string v8, " "

    .line 329
    .line 330
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    iget v0, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 334
    .line 335
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    goto :goto_8

    .line 346
    :catchall_1
    move-exception v0

    .line 347
    goto :goto_a

    .line 348
    :cond_a
    :goto_8
    monitor-exit v7

    .line 349
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 350
    .line 351
    goto/16 :goto_6

    .line 352
    .line 353
    :goto_a
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 354
    throw v0

    .line 355
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    if-nez v0, :cond_c

    .line 360
    .line 361
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 362
    .line 363
    .line 364
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 365
    .line 366
    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 367
    .line 368
    .line 369
    :cond_c
    const-string v0, "NOTI"

    .line 370
    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    const-string v4, "D-Candi:"

    .line 374
    .line 375
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    :cond_d
    return-void

    .line 393
    :goto_b
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 394
    throw v0

    .line 395
    :catchall_2
    move-exception v0

    .line 396
    move-object v2, v0

    .line 397
    monitor-exit p0

    .line 398
    throw v2
.end method

.method public final closeSocketsForUid(I)V
    .locals 4

    .line 1
    const-string v0, "Error occurred while closeSocketsForUid: "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

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
    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->closeSocketsForUid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception p0

    .line 38
    :try_start_1
    const-string p1, "MARsPolicyManager"

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_1
    :goto_2
    return-void
.end method

.method public final deletePkgInfoInMARs(Ljava/util/ArrayList;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "MARsPolicyManager"

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v3, "deletePkgInfoInMARs size = "

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 37
    .line 38
    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-int/lit8 v2, v2, -0x1

    .line 48
    .line 49
    :goto_0
    const/4 v3, 0x0

    .line 50
    if-ltz v2, :cond_3

    .line 51
    .line 52
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 53
    .line 54
    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Landroid/util/SparseArray;

    .line 61
    .line 62
    move v5, v3

    .line 63
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-ge v5, v6, :cond_2

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 74
    .line 75
    move v7, v3

    .line 76
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-ge v7, v8, :cond_1

    .line 81
    .line 82
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    check-cast v8, Lcom/android/server/am/mars/database/FASEntity;

    .line 87
    .line 88
    new-instance v9, Lcom/android/server/am/MARsPackageInfo;

    .line 89
    .line 90
    invoke-direct {v9, v8}, Lcom/android/server/am/MARsPackageInfo;-><init>(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 91
    .line 92
    .line 93
    iget-object v8, v6, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v10, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_0

    .line 102
    .line 103
    iget v8, v6, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 104
    .line 105
    iget v10, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 106
    .line 107
    if-ne v8, v10, :cond_0

    .line 108
    .line 109
    iget-boolean v7, v6, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 110
    .line 111
    iput-boolean v7, v9, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 112
    .line 113
    invoke-virtual {v6, v9}, Lcom/android/server/am/MARsPackageInfo;->updatePackageInfo(Lcom/android/server/am/MARsPackageInfo;)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    goto :goto_5

    .line 119
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-ge v3, p1, :cond_4

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Lcom/android/server/am/MARsPackageInfo;

    .line 142
    .line 143
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 144
    .line 145
    iget-object v4, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 146
    .line 147
    iget v5, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 148
    .line 149
    invoke-virtual {v2, v5, v4}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 153
    .line 154
    iget-object v4, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 155
    .line 156
    iget p1, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 157
    .line 158
    invoke-virtual {v2, p1, v4}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v3, v3, 0x1

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_4
    monitor-exit v1

    .line 165
    goto :goto_6

    .line 166
    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    throw p0

    .line 168
    :cond_5
    :goto_6
    return-void
.end method

.method public final disablePackageForSpecific(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    const-string/jumbo v2, "pkg "

    .line 6
    .line 7
    .line 8
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 13
    .line 14
    monitor-enter v4

    .line 15
    :try_start_0
    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 16
    .line 17
    move-object/from16 v7, p2

    .line 18
    .line 19
    invoke-static {v5, v7, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v5, 0x1

    .line 24
    const/16 v16, 0x0

    .line 25
    .line 26
    const/16 v17, 0x0

    .line 27
    .line 28
    if-eqz v3, :cond_7

    .line 29
    .line 30
    const-string v6, "added_from_anomaly_manual"

    .line 31
    .line 32
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_0

    .line 37
    .line 38
    iput-boolean v5, v3, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    .line 39
    .line 40
    :cond_0
    sget-boolean v6, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 41
    .line 42
    sget-object v6, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 43
    .line 44
    iget-boolean v8, v6, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 45
    .line 46
    if-eqz v8, :cond_1

    .line 47
    .line 48
    iget-object v8, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 49
    .line 50
    iget v9, v3, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 51
    .line 52
    invoke-virtual {v6, v9, v8}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-eqz v8, :cond_1

    .line 57
    .line 58
    iget-object v8, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 59
    .line 60
    iget v9, v3, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 61
    .line 62
    const-string/jumbo v10, "specificDisable"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v9, v8, v10}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto/16 :goto_12

    .line 71
    .line 72
    :cond_1
    :goto_0
    new-instance v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 73
    .line 74
    iget-object v6, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 75
    .line 76
    iget v8, v3, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 77
    .line 78
    iget v9, v3, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 79
    .line 80
    invoke-direct {v14, v8, v9, v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/16 v6, 0x2000

    .line 84
    .line 85
    invoke-virtual {v1, v6, v3}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 86
    .line 87
    .line 88
    move-result v18

    .line 89
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    iput v6, v3, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 94
    .line 95
    invoke-static {}, Landroid/app/Flags;->appRestrictionsApi()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_5

    .line 100
    .line 101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 102
    .line 103
    .line 104
    move-result-wide v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :try_start_1
    const-string v6, "added_from_anomaly_manual"

    .line 106
    .line 107
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 112
    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    const/16 v8, 0x5a

    .line 116
    .line 117
    :goto_1
    move v9, v8

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    const/16 v8, 0x46

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :goto_2
    if-eqz v0, :cond_3

    .line 123
    .line 124
    const/4 v8, 0x5

    .line 125
    :goto_3
    move v11, v8

    .line 126
    goto :goto_4

    .line 127
    :cond_3
    const/4 v8, 0x6

    .line 128
    goto :goto_3

    .line 129
    :goto_4
    if-eqz v0, :cond_4

    .line 130
    .line 131
    const-string v0, "anomaly"

    .line 132
    .line 133
    :goto_5
    move-object v12, v0

    .line 134
    goto :goto_6

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    goto :goto_7

    .line 137
    :cond_4
    const-string/jumbo v0, "cleaner"

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :goto_6
    const-wide/16 v21, 0x0

    .line 142
    .line 143
    const/4 v10, 0x1

    .line 144
    const/4 v13, 0x3

    .line 145
    move-object/from16 v7, p2

    .line 146
    .line 147
    move/from16 v8, p1

    .line 148
    .line 149
    move-object v0, v14

    .line 150
    move-wide/from16 v14, v21

    .line 151
    .line 152
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/am/ActivityManagerService;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    .line 154
    .line 155
    :try_start_2
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    .line 157
    .line 158
    goto :goto_8

    .line 159
    :goto_7
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_5
    move-object v0, v14

    .line 164
    :goto_8
    invoke-static {v3, v0}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 165
    .line 166
    .line 167
    sget-object v6, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 168
    .line 169
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_6

    .line 177
    .line 178
    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->resetAbusiveFlag(Lcom/android/server/am/MARsPackageInfo;)V

    .line 179
    .line 180
    .line 181
    :cond_6
    move-object v14, v0

    .line 182
    goto :goto_9

    .line 183
    :cond_7
    move-object/from16 v14, v16

    .line 184
    .line 185
    move/from16 v18, v17

    .line 186
    .line 187
    :goto_9
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    if-eqz v18, :cond_b

    .line 189
    .line 190
    if-eqz v14, :cond_b

    .line 191
    .line 192
    :try_start_3
    const-string/jumbo v0, "package"

    .line 193
    .line 194
    .line 195
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    iget-object v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 204
    .line 205
    iget v3, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 206
    .line 207
    invoke-interface {v6, v0, v3}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_9

    .line 212
    .line 213
    if-ne v0, v5, :cond_8

    .line 214
    .line 215
    goto :goto_a

    .line 216
    :cond_8
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 217
    .line 218
    if-eqz v0, :cond_b

    .line 219
    .line 220
    const-string v0, "MARsPolicyManager"

    .line 221
    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v2, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v2, " uid "

    .line 233
    .line 234
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget v2, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 238
    .line 239
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v2, " is already disabled, so we will not disable"

    .line 243
    .line 244
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    goto :goto_c

    .line 255
    :catch_0
    move-exception v0

    .line 256
    goto :goto_b

    .line 257
    :cond_9
    :goto_a
    iget-object v2, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 258
    .line 259
    iget v3, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 260
    .line 261
    invoke-interface {v6, v2, v3}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-nez v2, :cond_a

    .line 266
    .line 267
    iget-object v7, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 268
    .line 269
    iget v10, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 270
    .line 271
    const-string v11, "auto_disabler"

    .line 272
    .line 273
    const/4 v8, 0x4

    .line 274
    const/4 v9, 0x0

    .line 275
    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iput v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    .line 279
    .line 280
    iput-boolean v5, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 281
    .line 282
    :cond_a
    move/from16 v17, v5

    .line 283
    .line 284
    goto :goto_c

    .line 285
    :goto_b
    const-string v2, "MARsPolicyManager"

    .line 286
    .line 287
    const-string v3, "Error occurred in disable package : "

    .line 288
    .line 289
    invoke-static {v0, v3, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_b
    :goto_c
    if-eqz v14, :cond_11

    .line 293
    .line 294
    if-eqz v17, :cond_11

    .line 295
    .line 296
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 297
    .line 298
    monitor-enter v2

    .line 299
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 300
    .line 301
    iget-object v3, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 302
    .line 303
    iget v4, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 304
    .line 305
    invoke-static {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    if-eqz v0, :cond_10

    .line 310
    .line 311
    invoke-static {v0, v14}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 312
    .line 313
    .line 314
    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 315
    .line 316
    iput-object v3, v0, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 317
    .line 318
    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 319
    .line 320
    iget-object v4, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 321
    .line 322
    iget v6, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 323
    .line 324
    invoke-virtual {v3, v6, v4}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    if-nez v3, :cond_c

    .line 329
    .line 330
    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 331
    .line 332
    iget-object v3, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 333
    .line 334
    iget v4, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 335
    .line 336
    invoke-virtual {v1, v3, v4, v0}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    .line 337
    .line 338
    .line 339
    goto :goto_d

    .line 340
    :catchall_2
    move-exception v0

    .line 341
    goto :goto_10

    .line 342
    :cond_c
    :goto_d
    new-instance v1, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 343
    .line 344
    invoke-direct {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    iget-object v3, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 348
    .line 349
    iput-object v3, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 350
    .line 351
    iget v3, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 352
    .line 353
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    iput-object v3, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 358
    .line 359
    iget-boolean v3, v0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 360
    .line 361
    if-eqz v3, :cond_d

    .line 362
    .line 363
    const-string v4, "1"

    .line 364
    .line 365
    goto :goto_e

    .line 366
    :cond_d
    move-object/from16 v4, v16

    .line 367
    .line 368
    :goto_e
    iput-object v4, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 369
    .line 370
    if-eqz v3, :cond_e

    .line 371
    .line 372
    const-string v3, "1"

    .line 373
    .line 374
    goto :goto_f

    .line 375
    :cond_e
    move-object/from16 v3, v16

    .line 376
    .line 377
    :goto_f
    iput-object v3, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    .line 378
    .line 379
    iget v3, v0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 380
    .line 381
    if-ne v3, v5, :cond_f

    .line 382
    .line 383
    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v16

    .line 387
    :cond_f
    move-object/from16 v3, v16

    .line 388
    .line 389
    iput-object v3, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 390
    .line 391
    iget v3, v0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 392
    .line 393
    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    iput-object v3, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 398
    .line 399
    iget v3, v0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 400
    .line 401
    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    iput-object v3, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 406
    .line 407
    iget v0, v0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 408
    .line 409
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    iput-object v0, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 416
    .line 417
    .line 418
    move-result-object v16

    .line 419
    :cond_10
    monitor-exit v2

    .line 420
    :cond_11
    move-object/from16 v0, v16

    .line 421
    .line 422
    goto :goto_11

    .line 423
    :goto_10
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 424
    throw v0

    .line 425
    :goto_11
    if-eqz v0, :cond_12

    .line 426
    .line 427
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 428
    .line 429
    .line 430
    sget-object v1, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 431
    .line 432
    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 433
    .line 434
    .line 435
    :cond_12
    return v17

    .line 436
    :goto_12
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 437
    throw v0
.end method

.method public final disablePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/16 v2, 0x80

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v2, 0x8

    .line 21
    .line 22
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_d

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 64
    .line 65
    monitor-enter v5

    .line 66
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 67
    .line 68
    invoke-static {v6, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    const/4 v7, 0x0

    .line 73
    if-eqz v6, :cond_7

    .line 74
    .line 75
    iget-boolean v8, v6, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 76
    .line 77
    if-eqz v8, :cond_4

    .line 78
    .line 79
    iget v8, v6, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 80
    .line 81
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_4

    .line 90
    .line 91
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 92
    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    const-string v3, "MARsPolicyManager"

    .line 96
    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string/jumbo v7, "pkg : "

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v7, v6, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v7, " uid : "

    .line 114
    .line 115
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v6, v6, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 119
    .line 120
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v6, " is already disabled, so we will not disable"

    .line 124
    .line 125
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    goto/16 :goto_7

    .line 138
    .line 139
    :cond_3
    :goto_2
    monitor-exit v5

    .line 140
    goto :goto_1

    .line 141
    :cond_4
    invoke-virtual {p0, v2, v6}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-nez v8, :cond_6

    .line 146
    .line 147
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 148
    .line 149
    if-eqz v3, :cond_5

    .line 150
    .line 151
    const-string v3, "MARsPolicyManager"

    .line 152
    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string/jumbo v7, "pkg "

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object v7, v6, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v7, " uid "

    .line 170
    .line 171
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget v6, v6, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 175
    .line 176
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v6, " can\'t be disabled, so we will not disable"

    .line 180
    .line 181
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    :cond_5
    monitor-exit v5

    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :cond_6
    new-instance v9, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 195
    .line 196
    iget-object v10, v6, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 197
    .line 198
    iget v11, v6, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 199
    .line 200
    iget v12, v6, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 201
    .line 202
    invoke-direct {v9, v11, v12, v10}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v6, v9}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_7
    const/4 v8, 0x0

    .line 210
    move-object v9, v7

    .line 211
    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    if-eqz v8, :cond_1

    .line 213
    .line 214
    if-eqz v9, :cond_1

    .line 215
    .line 216
    sget-boolean v6, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 217
    .line 218
    sget-object v6, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 219
    .line 220
    iget-boolean v8, v6, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 221
    .line 222
    if-eqz v8, :cond_8

    .line 223
    .line 224
    invoke-virtual {v6, v3, v4}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    if-eqz v8, :cond_8

    .line 229
    .line 230
    const-string/jumbo v8, "manualDisable"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v3, v4, v8}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_8
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    monitor-enter v5

    .line 241
    :try_start_1
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 242
    .line 243
    invoke-static {v8, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    if-eqz v3, :cond_c

    .line 248
    .line 249
    invoke-static {v3, v9}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 250
    .line 251
    .line 252
    if-eqz v6, :cond_9

    .line 253
    .line 254
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 255
    .line 256
    iput-object v4, v3, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 257
    .line 258
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 259
    .line 260
    iget-object v6, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 261
    .line 262
    iget v8, v3, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 263
    .line 264
    invoke-virtual {v4, v8, v6}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    if-nez v4, :cond_9

    .line 269
    .line 270
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 271
    .line 272
    iget-object v6, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 273
    .line 274
    iget v8, v3, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 275
    .line 276
    invoke-virtual {v4, v6, v8, v3}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :catchall_1
    move-exception p0

    .line 281
    goto :goto_6

    .line 282
    :cond_9
    :goto_4
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 283
    .line 284
    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    iget-object v6, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 288
    .line 289
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 290
    .line 291
    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 292
    .line 293
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 298
    .line 299
    iget-boolean v6, v3, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 300
    .line 301
    if-eqz v6, :cond_a

    .line 302
    .line 303
    const-string v8, "1"

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_a
    move-object v8, v7

    .line 307
    :goto_5
    iput-object v8, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 308
    .line 309
    if-eqz v6, :cond_b

    .line 310
    .line 311
    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 312
    .line 313
    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    :cond_b
    iput-object v7, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 318
    .line 319
    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 320
    .line 321
    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 326
    .line 327
    iget-wide v6, v3, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 328
    .line 329
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 334
    .line 335
    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 336
    .line 337
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 342
    .line 343
    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 344
    .line 345
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    .line 350
    .line 351
    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 352
    .line 353
    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    iget v3, v3, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 367
    .line 368
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    :cond_c
    monitor-exit v5

    .line 376
    goto/16 :goto_1

    .line 377
    .line 378
    :goto_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 379
    throw p0

    .line 380
    :goto_7
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    throw p0

    .line 382
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 383
    .line 384
    .line 385
    move-result p0

    .line 386
    if-nez p0, :cond_e

    .line 387
    .line 388
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 389
    .line 390
    .line 391
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 392
    .line 393
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 394
    .line 395
    .line 396
    :cond_e
    return-object v1
.end method

.method public final disablePackageListForSpecific(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->disablePackageForSpecific(ILjava/lang/String;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "DIS_SPE "

    .line 53
    .line 54
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " f: "

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    sub-int/2addr p2, v1

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string p2, "SEP"

    .line 86
    .line 87
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-object v0
.end method

.method public final dumpMARs(Ljava/io/PrintWriter;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "mMARsTargetPackages --- size "

    .line 2
    .line 3
    .line 4
    const-string v1, "ENABLE_KILL_LONG_RUNNING_PROCESS="

    .line 5
    .line 6
    const-string v2, "ENABLE_ALARM_WAKEUP_BLOCK="

    .line 7
    .line 8
    const-string/jumbo v3, "mLastNotiSentTimeForDisabled : "

    .line 9
    .line 10
    .line 11
    const-string v4, "ACTIVITY MANAGER MARs (dumpsys activity mars)\n"

    .line 12
    .line 13
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 14
    .line 15
    .line 16
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 17
    .line 18
    monitor-enter v4

    .line 19
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 25
    .line 26
    invoke-static {v6, v7}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->ENABLE_ALARM_WAKEUP_BLOCK:Z

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    const-string v3, "Y"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto/16 :goto_d

    .line 49
    .line 50
    :cond_0
    const-string v3, "N"

    .line 51
    .line 52
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    const-string v2, "Y"

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const-string v2, "N"

    .line 67
    .line 68
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    move v1, v0

    .line 98
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 99
    .line 100
    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-ge v1, v2, :cond_c

    .line 107
    .line 108
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Landroid/util/SparseArray;

    .line 117
    .line 118
    move v3, v0

    .line 119
    :goto_3
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-ge v3, v5, :cond_b

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    .line 130
    .line 131
    if-eqz v5, :cond_a

    .line 132
    .line 133
    const-string v6, "-RST "

    .line 134
    .line 135
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-wide v6, v5, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 139
    .line 140
    const-wide/16 v8, 0x0

    .line 141
    .line 142
    cmp-long v8, v6, v8

    .line 143
    .line 144
    if-nez v8, :cond_2

    .line 145
    .line 146
    const-string/jumbo v6, "null"

    .line 147
    .line 148
    .line 149
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    const-string v7, "%23s"

    .line 154
    .line 155
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    goto :goto_4

    .line 160
    :cond_2
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 161
    .line 162
    const-string/jumbo v9, "yyyy/MM/dd HH:mm:ss.SSS"

    .line 163
    .line 164
    .line 165
    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance v9, Ljava/util/Date;

    .line 169
    .line 170
    invoke-direct {v9, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    :goto_4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string v6, "-PT "

    .line 181
    .line 182
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string v6, "%6d"

    .line 186
    .line 187
    iget v7, v5, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    .line 188
    .line 189
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v6, "-ST "

    .line 205
    .line 206
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string v6, "%2d"

    .line 210
    .line 211
    iget v7, v5, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 212
    .line 213
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    const-string v6, "-SC "

    .line 229
    .line 230
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-boolean v6, v5, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    .line 234
    .line 235
    if-eqz v6, :cond_3

    .line 236
    .line 237
    const-string v6, "T"

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_3
    const-string v6, "F"

    .line 241
    .line 242
    :goto_5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    const-string v6, "-DT "

    .line 246
    .line 247
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const-string v6, "%2d"

    .line 251
    .line 252
    iget v7, v5, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 253
    .line 254
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const-string v6, "-DR "

    .line 270
    .line 271
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string v6, "%2d"

    .line 275
    .line 276
    iget v7, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 277
    .line 278
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    const-string v6, "-DD "

    .line 294
    .line 295
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-boolean v6, v5, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 299
    .line 300
    if-eqz v6, :cond_4

    .line 301
    .line 302
    const-string v6, "T"

    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_4
    const-string v6, "F"

    .line 306
    .line 307
    :goto_6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string v6, "-Uid "

    .line 311
    .line 312
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    const-string v6, "%8d"

    .line 316
    .line 317
    iget v7, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 318
    .line 319
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string v6, "("

    .line 335
    .line 336
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iget-object v6, v5, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    .line 340
    .line 341
    if-eqz v6, :cond_5

    .line 342
    .line 343
    const-string v6, "S"

    .line 344
    .line 345
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_5
    const-string v6, "-"

    .line 350
    .line 351
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    :goto_7
    const-string v6, ")"

    .line 355
    .line 356
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    const-string v6, "-Idle"

    .line 360
    .line 361
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    const-string v6, "("

    .line 365
    .line 366
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    const-string v6, ")"

    .line 370
    .line 371
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    sget-boolean v6, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 375
    .line 376
    if-eqz v6, :cond_6

    .line 377
    .line 378
    const-string v6, "-curLv "

    .line 379
    .line 380
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    :cond_6
    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 384
    .line 385
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 386
    .line 387
    .line 388
    const-string v6, "-maxLv "

    .line 389
    .line 390
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 394
    .line 395
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 396
    .line 397
    .line 398
    const-string v6, "-FAS "

    .line 399
    .line 400
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    new-instance v6, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    iget-boolean v7, v5, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 409
    .line 410
    if-eqz v7, :cond_7

    .line 411
    .line 412
    const-string v7, "Y"

    .line 413
    .line 414
    goto :goto_8

    .line 415
    :cond_7
    const-string v7, "N"

    .line 416
    .line 417
    :goto_8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v7, "/"

    .line 421
    .line 422
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v7, "%4d"

    .line 426
    .line 427
    iget v8, v5, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 428
    .line 429
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 430
    .line 431
    .line 432
    move-result-object v8

    .line 433
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v8

    .line 437
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v6

    .line 448
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    const-string v6, "("

    .line 452
    .line 453
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 457
    .line 458
    and-int/lit16 v6, v6, 0x81

    .line 459
    .line 460
    if-eqz v6, :cond_8

    .line 461
    .line 462
    const-string v6, "A"

    .line 463
    .line 464
    goto :goto_9

    .line 465
    :cond_8
    const-string v6, "-"

    .line 466
    .line 467
    :goto_9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    const-string v6, ")"

    .line 471
    .line 472
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    const-string v6, "-BU "

    .line 476
    .line 477
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    const-string v6, "%10f"

    .line 481
    .line 482
    iget-wide v7, v5, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    .line 483
    .line 484
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v7

    .line 492
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v6

    .line 496
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    const-string v6, "-Pkg "

    .line 500
    .line 501
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    iget-object v6, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 505
    .line 506
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    sget-object v6, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 510
    .line 511
    iget v5, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 512
    .line 513
    invoke-virtual {v6, v5}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    if-eqz v5, :cond_9

    .line 518
    .line 519
    const-string v5, "--(R)"

    .line 520
    .line 521
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    :cond_9
    const-string v5, ""

    .line 525
    .line 526
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 530
    .line 531
    goto/16 :goto_3

    .line 532
    .line 533
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 534
    .line 535
    goto/16 :goto_2

    .line 536
    .line 537
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .line 541
    .line 542
    const-string/jumbo v2, "mMARsRestrictedPackages --- size "

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 549
    .line 550
    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    move v1, v0

    .line 565
    :goto_a
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 566
    .line 567
    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 568
    .line 569
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 570
    .line 571
    .line 572
    move-result v2

    .line 573
    if-ge v1, v2, :cond_f

    .line 574
    .line 575
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 576
    .line 577
    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 578
    .line 579
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    check-cast v2, Landroid/util/SparseArray;

    .line 584
    .line 585
    move v3, v0

    .line 586
    :goto_b
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 587
    .line 588
    .line 589
    move-result v5

    .line 590
    if-ge v3, v5, :cond_e

    .line 591
    .line 592
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v5

    .line 596
    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    .line 597
    .line 598
    const-string v6, "-Uid "

    .line 599
    .line 600
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    const-string v6, "%8d"

    .line 604
    .line 605
    iget v7, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 606
    .line 607
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 608
    .line 609
    .line 610
    move-result-object v7

    .line 611
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v7

    .line 615
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v6

    .line 619
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    const-string v6, "-Pkg "

    .line 623
    .line 624
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    iget-object v6, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 628
    .line 629
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    const-string v6, "-POL "

    .line 633
    .line 634
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    iget-object v5, v5, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 638
    .line 639
    if-eqz v5, :cond_d

    .line 640
    .line 641
    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager$Policy;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v5

    .line 645
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 646
    .line 647
    .line 648
    move-result v6

    .line 649
    add-int/lit8 v6, v6, -0x3

    .line 650
    .line 651
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 652
    .line 653
    .line 654
    move-result v7

    .line 655
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v5

    .line 659
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    goto :goto_c

    .line 663
    :cond_d
    const-string/jumbo v5, "null"

    .line 664
    .line 665
    .line 666
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    :goto_c
    const-string v5, ""

    .line 670
    .line 671
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    add-int/lit8 v3, v3, 0x1

    .line 675
    .line 676
    goto :goto_b

    .line 677
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 678
    .line 679
    goto :goto_a

    .line 680
    :cond_f
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    const-string p0, ""

    .line 682
    .line 683
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    sget-object p0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 687
    .line 688
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 689
    .line 690
    if-eqz p0, :cond_10

    .line 691
    .line 692
    new-instance v0, Landroid/util/PrintWriterPrinter;

    .line 693
    .line 694
    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 695
    .line 696
    .line 697
    const-string p1, "MARsHandler"

    .line 698
    .line 699
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    :cond_10
    return-void

    .line 703
    :goto_d
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 704
    throw p0
.end method

.method public final dumpMARsCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    const-string v10, "AUFAllowBucketSize set "

    .line 8
    .line 9
    const-string v11, "Filter -- freecess "

    .line 10
    .line 11
    array-length v0, v9

    .line 12
    const/4 v12, 0x1

    .line 13
    if-ne v0, v12, :cond_1

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->dumpMARs(Ljava/io/PrintWriter;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->dumpMARsHistory(Ljava/io/PrintWriter;)V

    .line 19
    .line 20
    .line 21
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 22
    .line 23
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 24
    .line 25
    iget-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v8}, Lcom/android/server/am/FreecessController;->dumpFreecess(Ljava/io/PrintWriter;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    const-string/jumbo v0, "exempt_freeze"

    .line 34
    .line 35
    .line 36
    aget-object v1, v9, v12

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v13, 0x2

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    sget-object v0, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    aget-object v2, v9, v13

    .line 50
    .line 51
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    .line 59
    .line 60
    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v3, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    .line 62
    .line 63
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string/jumbo v2, "exemptionList : "

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    .line 76
    .line 77
    monitor-enter v3

    .line 78
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    .line 79
    .line 80
    iget-object v0, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    .line 81
    .line 82
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 83
    .line 84
    .line 85
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw v0

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    throw v0

    .line 103
    :cond_2
    :goto_0
    const-string/jumbo v0, "dbtest"

    .line 104
    .line 105
    .line 106
    aget-object v1, v9, v12

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getSCPMList()V

    .line 117
    .line 118
    .line 119
    :cond_3
    const-string/jumbo v0, "ct_on"

    .line 120
    .line 121
    .line 122
    aget-object v1, v9, v12

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 131
    .line 132
    iput-boolean v12, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v2, "ComponentTracker : "

    .line 137
    .line 138
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 142
    .line 143
    invoke-static {v1, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    const-string/jumbo v0, "ct_off"

    .line 147
    .line 148
    .line 149
    aget-object v1, v9, v12

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    const/4 v14, 0x0

    .line 156
    if-eqz v0, :cond_5

    .line 157
    .line 158
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 159
    .line 160
    iput-boolean v14, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v2, "ComponentTracker : "

    .line 165
    .line 166
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 170
    .line 171
    invoke-static {v1, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 172
    .line 173
    .line 174
    :cond_5
    const-string/jumbo v0, "ct_onoff"

    .line 175
    .line 176
    .line 177
    aget-object v1, v9, v12

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 186
    .line 187
    iget-boolean v1, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 188
    .line 189
    xor-int/2addr v1, v12

    .line 190
    iput-boolean v1, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 191
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v2, "ComponentTracker : "

    .line 195
    .line 196
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 200
    .line 201
    invoke-static {v1, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 202
    .line 203
    .line 204
    :cond_6
    const-string/jumbo v0, "restrict_onoff"

    .line 205
    .line 206
    .line 207
    aget-object v1, v9, v12

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_7

    .line 214
    .line 215
    iget-boolean v0, v7, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    .line 216
    .line 217
    xor-int/2addr v0, v12

    .line 218
    iput-boolean v0, v7, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    .line 219
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v1, "ENABLE_RESTRICTED_BUCKET : "

    .line 223
    .line 224
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-boolean v1, v7, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    .line 228
    .line 229
    invoke-static {v0, v1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 230
    .line 231
    .line 232
    :cond_7
    const-string v0, "bigdata"

    .line 233
    .line 234
    aget-object v1, v9, v12

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_8

    .line 241
    .line 242
    sget-object v1, Lcom/android/server/am/mars/MARsBigData$MARsBigDataHolder;->INSTANCE:Lcom/android/server/am/mars/MARsBigData;

    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/am/mars/MARsBigData;->updateBigdataInfo()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 248
    .line 249
    .line 250
    goto :goto_1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    move-object v2, v0

    .line 253
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 254
    .line 255
    .line 256
    new-instance v0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;

    .line 257
    .line 258
    invoke-direct {v0}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iput-object v0, v1, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    .line 266
    .line 267
    :goto_1
    iget-object v0, v1, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    .line 268
    .line 269
    if-eqz v0, :cond_8

    .line 270
    .line 271
    const-string v2, "PLEV"

    .line 272
    .line 273
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/mars/MARsBigData;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_8
    const-string/jumbo v0, "bstat"

    .line 277
    .line 278
    .line 279
    aget-object v1, v9, v12

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_9

    .line 286
    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getBatteryStats()V

    .line 288
    .line 289
    .line 290
    :cond_9
    const-string/jumbo v0, "disable"

    .line 291
    .line 292
    .line 293
    aget-object v1, v9, v12

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    const/4 v15, 0x3

    .line 300
    if-eqz v0, :cond_12

    .line 301
    .line 302
    array-length v0, v9

    .line 303
    if-ge v0, v15, :cond_b

    .line 304
    .line 305
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 306
    .line 307
    if-eqz v0, :cond_12

    .line 308
    .line 309
    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 310
    .line 311
    xor-int/2addr v0, v12

    .line 312
    invoke-virtual {v7, v0}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    .line 313
    .line 314
    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_a

    .line 320
    .line 321
    const-string/jumbo v0, "on"

    .line 322
    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_a
    const-string/jumbo v0, "off"

    .line 326
    .line 327
    .line 328
    :goto_2
    const-string v1, "Disabler policy has been turned "

    .line 329
    .line 330
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_7

    .line 338
    .line 339
    :cond_b
    array-length v0, v9

    .line 340
    if-ne v0, v15, :cond_12

    .line 341
    .line 342
    aget-object v0, v9, v13

    .line 343
    .line 344
    if-nez v0, :cond_c

    .line 345
    .line 346
    const-string v0, "Disable will not work, please input proper packageName!"

    .line 347
    .line 348
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :cond_c
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 353
    .line 354
    monitor-enter v1

    .line 355
    :try_start_5
    iget-object v2, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 356
    .line 357
    iget-object v3, v7, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 358
    .line 359
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    invoke-static {v2, v0, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    const/4 v3, -0x1

    .line 368
    if-eqz v2, :cond_d

    .line 369
    .line 370
    iget v4, v2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 371
    .line 372
    iget-boolean v2, v2, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 373
    .line 374
    move/from16 v16, v2

    .line 375
    .line 376
    move v5, v4

    .line 377
    goto :goto_3

    .line 378
    :cond_d
    move v5, v3

    .line 379
    move/from16 v16, v14

    .line 380
    .line 381
    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 382
    if-eq v5, v3, :cond_11

    .line 383
    .line 384
    if-eqz v16, :cond_e

    .line 385
    .line 386
    const/4 v3, 0x2

    .line 387
    const/4 v6, 0x0

    .line 388
    const/4 v2, 0x0

    .line 389
    move-object/from16 v1, p0

    .line 390
    .line 391
    move-object v4, v0

    .line 392
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager;->restrictBySEP(IILjava/lang/String;IZ)Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    goto :goto_4

    .line 397
    :cond_e
    const/4 v3, 0x1

    .line 398
    const/4 v6, 0x0

    .line 399
    const/4 v2, 0x0

    .line 400
    move-object/from16 v1, p0

    .line 401
    .line 402
    move-object v4, v0

    .line 403
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager;->restrictBySEP(IILjava/lang/String;IZ)Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    :goto_4
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    if-eqz v1, :cond_10

    .line 412
    .line 413
    if-eqz v16, :cond_f

    .line 414
    .line 415
    const-string/jumbo v1, "enabled"

    .line 416
    .line 417
    .line 418
    goto :goto_5

    .line 419
    :cond_f
    const-string/jumbo v1, "disabled!"

    .line 420
    .line 421
    .line 422
    :goto_5
    const-string v2, " has been "

    .line 423
    .line 424
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    goto :goto_6

    .line 429
    :cond_10
    const-string v1, " is not in our target, we will not manage it!"

    .line 430
    .line 431
    :goto_6
    invoke-static {v0, v1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 432
    .line 433
    .line 434
    goto :goto_7

    .line 435
    :cond_11
    const-string/jumbo v1, "is not in our target, we will not manage it!"

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    goto :goto_7

    .line 446
    :catchall_2
    move-exception v0

    .line 447
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 448
    throw v0

    .line 449
    :cond_12
    :goto_7
    const-string/jumbo v0, "filter"

    .line 450
    .line 451
    .line 452
    aget-object v1, v9, v12

    .line 453
    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    const/4 v1, 0x4

    .line 459
    if-eqz v0, :cond_13

    .line 460
    .line 461
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    sget-object v2, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 467
    .line 468
    aget-object v3, v9, v13

    .line 469
    .line 470
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    aget-object v4, v9, v15

    .line 475
    .line 476
    aget-object v5, v9, v1

    .line 477
    .line 478
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    move-result v5

    .line 482
    const/4 v6, 0x5

    .line 483
    aget-object v6, v9, v6

    .line 484
    .line 485
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 486
    .line 487
    .line 488
    move-result v6

    .line 489
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    .line 491
    .line 492
    invoke-static {v3, v5, v6, v4}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1

    .line 504
    .line 505
    .line 506
    goto :goto_8

    .line 507
    :catch_1
    const-string v0, "MARsPolicyManager"

    .line 508
    .line 509
    const-string/jumbo v2, "dumpMARsCommand(filter) parseInt error!"

    .line 510
    .line 511
    .line 512
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    :cond_13
    :goto_8
    const-string v0, "aufbucket"

    .line 516
    .line 517
    aget-object v2, v9, v12

    .line 518
    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-eqz v0, :cond_14

    .line 524
    .line 525
    :try_start_8
    aget-object v0, v9, v13

    .line 526
    .line 527
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    sput v0, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    .line 532
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    sget v2, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    .line 539
    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2

    .line 548
    .line 549
    .line 550
    goto :goto_9

    .line 551
    :catch_2
    const-string v0, "MARsPolicyManager"

    .line 552
    .line 553
    const-string/jumbo v2, "dumpMARsCommand(aufbucket) parseInt error!"

    .line 554
    .line 555
    .line 556
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    :cond_14
    :goto_9
    const-string/jumbo v0, "longrunning"

    .line 560
    .line 561
    .line 562
    aget-object v2, v9, v12

    .line 563
    .line 564
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    if-eqz v0, :cond_18

    .line 569
    .line 570
    array-length v0, v9

    .line 571
    if-lt v0, v15, :cond_17

    .line 572
    .line 573
    const-string/jumbo v0, "on"

    .line 574
    .line 575
    .line 576
    aget-object v2, v9, v13

    .line 577
    .line 578
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v0

    .line 582
    if-eqz v0, :cond_15

    .line 583
    .line 584
    sput-boolean v12, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    .line 585
    .line 586
    goto :goto_a

    .line 587
    :cond_15
    const-string/jumbo v0, "off"

    .line 588
    .line 589
    .line 590
    aget-object v2, v9, v13

    .line 591
    .line 592
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    if-eqz v0, :cond_16

    .line 597
    .line 598
    sput-boolean v14, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    .line 599
    .line 600
    goto :goto_a

    .line 601
    :cond_16
    const-string/jumbo v0, "duration"

    .line 602
    .line 603
    .line 604
    aget-object v2, v9, v13

    .line 605
    .line 606
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    if-eqz v0, :cond_17

    .line 611
    .line 612
    array-length v0, v9

    .line 613
    if-lt v0, v1, :cond_17

    .line 614
    .line 615
    :try_start_9
    aget-object v0, v9, v15

    .line 616
    .line 617
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 618
    .line 619
    .line 620
    move-result v0

    .line 621
    int-to-long v2, v0

    .line 622
    iput-wide v2, v7, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3

    .line 623
    .line 624
    goto :goto_a

    .line 625
    :catch_3
    const-string v0, "MARsPolicyManager"

    .line 626
    .line 627
    const-string/jumbo v2, "dumpMARsCommand(longrunning) parseInt error!"

    .line 628
    .line 629
    .line 630
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .line 632
    .line 633
    :cond_17
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 634
    .line 635
    const-string/jumbo v2, "enable="

    .line 636
    .line 637
    .line 638
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    .line 642
    .line 643
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    const-string v2, ", d="

    .line 647
    .line 648
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    iget-wide v2, v7, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    .line 652
    .line 653
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    :cond_18
    const-string/jumbo v0, "fgsRunningTime"

    .line 664
    .line 665
    .line 666
    aget-object v2, v9, v12

    .line 667
    .line 668
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    move-result v0

    .line 672
    if-eqz v0, :cond_1a

    .line 673
    .line 674
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 675
    .line 676
    .line 677
    move-result-wide v2

    .line 678
    iget-object v4, v7, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    .line 679
    .line 680
    monitor-enter v4

    .line 681
    :try_start_a
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    .line 682
    .line 683
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 692
    .line 693
    .line 694
    move-result v5

    .line 695
    if-eqz v5, :cond_19

    .line 696
    .line 697
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v5

    .line 701
    check-cast v5, Ljava/lang/Integer;

    .line 702
    .line 703
    iget-object v6, v7, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    .line 704
    .line 705
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v6

    .line 709
    check-cast v6, Ljava/lang/Long;

    .line 710
    .line 711
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 712
    .line 713
    .line 714
    move-result-wide v10

    .line 715
    new-instance v6, Ljava/lang/StringBuilder;

    .line 716
    .line 717
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    .line 719
    .line 720
    const-string/jumbo v14, "uid="

    .line 721
    .line 722
    .line 723
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    const-string v5, ", fgsRunningTime="

    .line 730
    .line 731
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    sub-long v13, v2, v10

    .line 735
    .line 736
    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    const-string v13, ", fgsStartTime="

    .line 740
    .line 741
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v6

    .line 751
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    const/4 v13, 0x2

    .line 755
    const/4 v14, 0x0

    .line 756
    goto :goto_b

    .line 757
    :catchall_3
    move-exception v0

    .line 758
    goto :goto_c

    .line 759
    :cond_19
    monitor-exit v4

    .line 760
    goto :goto_d

    .line 761
    :goto_c
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 762
    throw v0

    .line 763
    :cond_1a
    :goto_d
    const-string/jumbo v0, "history"

    .line 764
    .line 765
    .line 766
    aget-object v2, v9, v12

    .line 767
    .line 768
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v0

    .line 772
    if-eqz v0, :cond_1b

    .line 773
    .line 774
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->dumpMARsHistory(Ljava/io/PrintWriter;)V

    .line 775
    .line 776
    .line 777
    :cond_1b
    const-string/jumbo v0, "hold"

    .line 778
    .line 779
    .line 780
    aget-object v2, v9, v12

    .line 781
    .line 782
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 783
    .line 784
    .line 785
    move-result v0

    .line 786
    if-nez v0, :cond_1c

    .line 787
    .line 788
    const-string/jumbo v0, "release"

    .line 789
    .line 790
    .line 791
    aget-object v2, v9, v12

    .line 792
    .line 793
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    move-result v0

    .line 797
    if-eqz v0, :cond_1f

    .line 798
    .line 799
    :cond_1c
    array-length v0, v9

    .line 800
    const/4 v2, 0x2

    .line 801
    if-ge v0, v2, :cond_1d

    .line 802
    .line 803
    const-string/jumbo v0, "hold/release requires at least 1 argument: uid"

    .line 804
    .line 805
    .line 806
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    return-void

    .line 810
    :cond_1d
    aget-object v0, v9, v2

    .line 811
    .line 812
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 813
    .line 814
    .line 815
    move-result v0

    .line 816
    const-string/jumbo v2, "hold"

    .line 817
    .line 818
    .line 819
    aget-object v3, v9, v12

    .line 820
    .line 821
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    move-result v2

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    .line 826
    .line 827
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    .line 829
    .line 830
    if-eqz v2, :cond_1e

    .line 831
    .line 832
    const-string v4, "Hold"

    .line 833
    .line 834
    goto :goto_e

    .line 835
    :cond_1e
    const-string v4, "Release"

    .line 836
    .line 837
    :goto_e
    const-string v6, " jobs by u="

    .line 838
    .line 839
    const-string v10, " calling by MARs."

    .line 840
    .line 841
    invoke-static {v0, v4, v6, v10, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v3

    .line 845
    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v7, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->restrictJobsByUid(IZ)V

    .line 849
    .line 850
    .line 851
    :cond_1f
    const-string/jumbo v0, "level"

    .line 852
    .line 853
    .line 854
    aget-object v2, v9, v12

    .line 855
    .line 856
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    move-result v0

    .line 860
    if-eqz v0, :cond_25

    .line 861
    .line 862
    array-length v0, v9

    .line 863
    if-ge v0, v15, :cond_20

    .line 864
    .line 865
    const-string v0, "MARstest -- need levelNum and packageName"

    .line 866
    .line 867
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    goto :goto_13

    .line 871
    :cond_20
    array-length v0, v9

    .line 872
    if-ne v0, v1, :cond_25

    .line 873
    .line 874
    const/4 v2, 0x2

    .line 875
    :try_start_b
    aget-object v0, v9, v2

    .line 876
    .line 877
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 878
    .line 879
    .line 880
    move-result v0

    .line 881
    const-string v2, "-a"

    .line 882
    .line 883
    aget-object v3, v9, v15

    .line 884
    .line 885
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    move-result v2

    .line 889
    if-eqz v2, :cond_24

    .line 890
    .line 891
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 892
    .line 893
    monitor-enter v2
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4

    .line 894
    const/4 v3, 0x0

    .line 895
    :goto_f
    :try_start_c
    iget-object v4, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 896
    .line 897
    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 898
    .line 899
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 900
    .line 901
    .line 902
    move-result v4

    .line 903
    if-ge v3, v4, :cond_23

    .line 904
    .line 905
    iget-object v4, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 906
    .line 907
    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 908
    .line 909
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v4

    .line 913
    check-cast v4, Landroid/util/SparseArray;

    .line 914
    .line 915
    const/4 v6, 0x0

    .line 916
    :goto_10
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 917
    .line 918
    .line 919
    move-result v10

    .line 920
    if-ge v6, v10, :cond_22

    .line 921
    .line 922
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v10

    .line 926
    check-cast v10, Lcom/android/server/am/MARsPackageInfo;

    .line 927
    .line 928
    if-eqz v10, :cond_21

    .line 929
    .line 930
    iget-object v10, v10, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 931
    .line 932
    invoke-virtual {v7, v0, v10}, Lcom/android/server/am/MARsPolicyManager;->setMaxLevel(ILjava/lang/String;)V

    .line 933
    .line 934
    .line 935
    goto :goto_11

    .line 936
    :catchall_4
    move-exception v0

    .line 937
    goto :goto_12

    .line 938
    :cond_21
    :goto_11
    add-int/2addr v6, v12

    .line 939
    goto :goto_10

    .line 940
    :cond_22
    add-int/2addr v3, v12

    .line 941
    goto :goto_f

    .line 942
    :cond_23
    monitor-exit v2

    .line 943
    goto :goto_13

    .line 944
    :goto_12
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 945
    :try_start_d
    throw v0

    .line 946
    :cond_24
    aget-object v2, v9, v15

    .line 947
    .line 948
    invoke-virtual {v7, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->setMaxLevel(ILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_4

    .line 949
    .line 950
    .line 951
    goto :goto_13

    .line 952
    :catch_4
    const-string v0, "MARstest -- NumberFormatException!"

    .line 953
    .line 954
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    :cond_25
    :goto_13
    const-string/jumbo v0, "list"

    .line 958
    .line 959
    .line 960
    aget-object v2, v9, v12

    .line 961
    .line 962
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 963
    .line 964
    .line 965
    move-result v0

    .line 966
    if-eqz v0, :cond_26

    .line 967
    .line 968
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->dumpMARs(Ljava/io/PrintWriter;)V

    .line 969
    .line 970
    .line 971
    :cond_26
    const-string/jumbo v0, "close_socket"

    .line 972
    .line 973
    .line 974
    aget-object v2, v9, v12

    .line 975
    .line 976
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 977
    .line 978
    .line 979
    move-result v0

    .line 980
    if-eqz v0, :cond_28

    .line 981
    .line 982
    array-length v0, v9

    .line 983
    if-ge v0, v15, :cond_27

    .line 984
    .line 985
    const-string/jumbo v0, "usage: close_socket <uid>"

    .line 986
    .line 987
    .line 988
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    goto :goto_14

    .line 992
    :cond_27
    const/4 v2, 0x2

    .line 993
    aget-object v0, v9, v2

    .line 994
    .line 995
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 996
    .line 997
    .line 998
    move-result v0

    .line 999
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    const-string v3, "Calling closeSocketsForUid: u="

    .line 1002
    .line 1003
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v2

    .line 1013
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v7, v0}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    .line 1017
    .line 1018
    .line 1019
    :cond_28
    :goto_14
    const-string/jumbo v0, "time_disable"

    .line 1020
    .line 1021
    .line 1022
    aget-object v2, v9, v12

    .line 1023
    .line 1024
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1025
    .line 1026
    .line 1027
    move-result v0

    .line 1028
    if-eqz v0, :cond_29

    .line 1029
    .line 1030
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1031
    .line 1032
    const/4 v2, 0x2

    .line 1033
    aget-object v3, v9, v2

    .line 1034
    .line 1035
    iget-object v2, v7, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 1036
    .line 1037
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 1038
    .line 1039
    .line 1040
    move-result v2

    .line 1041
    invoke-static {v0, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    if-eqz v0, :cond_29

    .line 1046
    .line 1047
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1048
    .line 1049
    .line 1050
    move-result-wide v2

    .line 1051
    iget-wide v10, v7, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    .line 1052
    .line 1053
    sub-long/2addr v2, v10

    .line 1054
    iput-wide v2, v0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 1055
    .line 1056
    :cond_29
    const-string/jumbo v0, "update"

    .line 1057
    .line 1058
    .line 1059
    aget-object v2, v9, v12

    .line 1060
    .line 1061
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v0

    .line 1065
    if-eqz v0, :cond_2a

    .line 1066
    .line 1067
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->updateFromMARsMainThread()V

    .line 1068
    .line 1069
    .line 1070
    :cond_2a
    const-string/jumbo v0, "widget"

    .line 1071
    .line 1072
    .line 1073
    aget-object v2, v9, v12

    .line 1074
    .line 1075
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1076
    .line 1077
    .line 1078
    move-result v0

    .line 1079
    if-eqz v0, :cond_2b

    .line 1080
    .line 1081
    sget-object v0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    .line 1082
    .line 1083
    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getBoundAppWidgetPackages()V

    .line 1084
    .line 1085
    .line 1086
    :cond_2b
    const-string/jumbo v0, "deepsleep_target"

    .line 1087
    .line 1088
    .line 1089
    aget-object v2, v9, v12

    .line 1090
    .line 1091
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1092
    .line 1093
    .line 1094
    move-result v0

    .line 1095
    if-eqz v0, :cond_2c

    .line 1096
    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->checkUnusedTargetForDeepSleep()V

    .line 1098
    .line 1099
    .line 1100
    :cond_2c
    const-string/jumbo v0, "candidate"

    .line 1101
    .line 1102
    .line 1103
    aget-object v2, v9, v12

    .line 1104
    .line 1105
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1106
    .line 1107
    .line 1108
    move-result v0

    .line 1109
    if-eqz v0, :cond_31

    .line 1110
    .line 1111
    array-length v0, v9

    .line 1112
    if-ge v0, v15, :cond_2d

    .line 1113
    .line 1114
    const-string v0, "MARstest -- need type and packageName"

    .line 1115
    .line 1116
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    goto :goto_17

    .line 1120
    :cond_2d
    array-length v0, v9

    .line 1121
    if-ne v0, v1, :cond_31

    .line 1122
    .line 1123
    :try_start_e
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 1124
    .line 1125
    monitor-enter v2
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_5

    .line 1126
    :try_start_f
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1127
    .line 1128
    aget-object v3, v9, v15

    .line 1129
    .line 1130
    iget-object v4, v7, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 1131
    .line 1132
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    .line 1133
    .line 1134
    .line 1135
    move-result v4

    .line 1136
    invoke-static {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v0

    .line 1140
    if-eqz v0, :cond_2f

    .line 1141
    .line 1142
    const-string v3, "-s"

    .line 1143
    .line 1144
    const/4 v4, 0x2

    .line 1145
    aget-object v6, v9, v4

    .line 1146
    .line 1147
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v3

    .line 1151
    if-eqz v3, :cond_2e

    .line 1152
    .line 1153
    invoke-virtual {v7, v12, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 1154
    .line 1155
    .line 1156
    goto :goto_15

    .line 1157
    :catchall_5
    move-exception v0

    .line 1158
    goto :goto_16

    .line 1159
    :cond_2e
    const-string v3, "-d"

    .line 1160
    .line 1161
    const/4 v4, 0x2

    .line 1162
    aget-object v6, v9, v4

    .line 1163
    .line 1164
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1165
    .line 1166
    .line 1167
    move-result v3

    .line 1168
    if-eqz v3, :cond_30

    .line 1169
    .line 1170
    invoke-virtual {v7, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 1171
    .line 1172
    .line 1173
    goto :goto_15

    .line 1174
    :cond_2f
    const-string v0, "MARstest -- not mars target!"

    .line 1175
    .line 1176
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1177
    .line 1178
    .line 1179
    :cond_30
    :goto_15
    monitor-exit v2

    .line 1180
    goto :goto_17

    .line 1181
    :goto_16
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1182
    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_5

    .line 1183
    :catch_5
    const-string v0, "MARstest -- NumberFormatException!"

    .line 1184
    .line 1185
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    .line 1187
    .line 1188
    :cond_31
    :goto_17
    const-string/jumbo v0, "debug"

    .line 1189
    .line 1190
    .line 1191
    aget-object v1, v9, v12

    .line 1192
    .line 1193
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1194
    .line 1195
    .line 1196
    move-result v0

    .line 1197
    if-eqz v0, :cond_3f

    .line 1198
    .line 1199
    const-string/jumbo v0, "help"

    .line 1200
    .line 1201
    .line 1202
    const/4 v1, 0x2

    .line 1203
    aget-object v2, v9, v1

    .line 1204
    .line 1205
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v0

    .line 1209
    if-eqz v0, :cond_32

    .line 1210
    .line 1211
    const-string v0, "MARs debug options commands:"

    .line 1212
    .line 1213
    const-string v1, "  help"

    .line 1214
    .line 1215
    const-string v2, "     Print this help text."

    .line 1216
    .line 1217
    const-string v3, "  all"

    .line 1218
    .line 1219
    invoke-static {v8, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    .line 1221
    .line 1222
    const-string v0, "     Enable/Disable all mars debug message."

    .line 1223
    .line 1224
    const-string v1, "  olaf"

    .line 1225
    .line 1226
    const-string v2, "     Enable/Disable olaf debug message."

    .line 1227
    .line 1228
    const-string v3, "  freecess"

    .line 1229
    .line 1230
    invoke-static {v8, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    const-string v0, "     Enable/Disable freecess debug message."

    .line 1234
    .line 1235
    const-string v1, "  database"

    .line 1236
    .line 1237
    const-string v2, "     Enable/Disable MARs database debug message."

    .line 1238
    .line 1239
    const-string v3, "  filter"

    .line 1240
    .line 1241
    invoke-static {v8, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    .line 1243
    .line 1244
    const-string v0, "     Enable/Disable MARs filter debug message."

    .line 1245
    .line 1246
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    .line 1248
    .line 1249
    goto/16 :goto_1e

    .line 1250
    .line 1251
    :cond_32
    const-string v0, "all"

    .line 1252
    .line 1253
    const/4 v1, 0x2

    .line 1254
    aget-object v2, v9, v1

    .line 1255
    .line 1256
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1257
    .line 1258
    .line 1259
    move-result v0

    .line 1260
    if-eqz v0, :cond_34

    .line 1261
    .line 1262
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 1263
    .line 1264
    xor-int/2addr v0, v12

    .line 1265
    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 1266
    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1268
    .line 1269
    const-string v1, " mars debugging mode is "

    .line 1270
    .line 1271
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1272
    .line 1273
    .line 1274
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 1275
    .line 1276
    if-eqz v1, :cond_33

    .line 1277
    .line 1278
    const-string/jumbo v1, "on"

    .line 1279
    .line 1280
    .line 1281
    goto :goto_18

    .line 1282
    :cond_33
    const-string/jumbo v1, "off"

    .line 1283
    .line 1284
    .line 1285
    :goto_18
    const-string v2, " now!"

    .line 1286
    .line 1287
    invoke-static {v8, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1288
    .line 1289
    .line 1290
    goto/16 :goto_1e

    .line 1291
    .line 1292
    :cond_34
    const-string/jumbo v0, "olaf"

    .line 1293
    .line 1294
    .line 1295
    const/4 v1, 0x2

    .line 1296
    aget-object v2, v9, v1

    .line 1297
    .line 1298
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1299
    .line 1300
    .line 1301
    move-result v0

    .line 1302
    if-eqz v0, :cond_36

    .line 1303
    .line 1304
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 1305
    .line 1306
    xor-int/2addr v0, v12

    .line 1307
    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 1308
    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1310
    .line 1311
    const-string v1, " olaf debugging mode is "

    .line 1312
    .line 1313
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1314
    .line 1315
    .line 1316
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 1317
    .line 1318
    if-eqz v1, :cond_35

    .line 1319
    .line 1320
    const-string/jumbo v1, "on"

    .line 1321
    .line 1322
    .line 1323
    goto :goto_19

    .line 1324
    :cond_35
    const-string/jumbo v1, "off"

    .line 1325
    .line 1326
    .line 1327
    :goto_19
    const-string v2, " now!"

    .line 1328
    .line 1329
    invoke-static {v8, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1330
    .line 1331
    .line 1332
    goto/16 :goto_1e

    .line 1333
    .line 1334
    :cond_36
    const-string/jumbo v0, "freecess"

    .line 1335
    .line 1336
    .line 1337
    const/4 v1, 0x2

    .line 1338
    aget-object v2, v9, v1

    .line 1339
    .line 1340
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1341
    .line 1342
    .line 1343
    move-result v0

    .line 1344
    if-eqz v0, :cond_38

    .line 1345
    .line 1346
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 1347
    .line 1348
    xor-int/2addr v0, v12

    .line 1349
    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 1350
    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1352
    .line 1353
    const-string v1, " freecess debugging mode is "

    .line 1354
    .line 1355
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1356
    .line 1357
    .line 1358
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 1359
    .line 1360
    if-eqz v1, :cond_37

    .line 1361
    .line 1362
    const-string/jumbo v1, "on"

    .line 1363
    .line 1364
    .line 1365
    goto :goto_1a

    .line 1366
    :cond_37
    const-string/jumbo v1, "off"

    .line 1367
    .line 1368
    .line 1369
    :goto_1a
    const-string v2, " now!"

    .line 1370
    .line 1371
    invoke-static {v8, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1372
    .line 1373
    .line 1374
    goto/16 :goto_1e

    .line 1375
    .line 1376
    :cond_38
    const-string/jumbo v0, "database"

    .line 1377
    .line 1378
    .line 1379
    const/4 v1, 0x2

    .line 1380
    aget-object v2, v9, v1

    .line 1381
    .line 1382
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1383
    .line 1384
    .line 1385
    move-result v0

    .line 1386
    if-eqz v0, :cond_3a

    .line 1387
    .line 1388
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    .line 1389
    .line 1390
    xor-int/2addr v0, v12

    .line 1391
    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    .line 1392
    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1394
    .line 1395
    const-string v1, " database debugging mode is "

    .line 1396
    .line 1397
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1398
    .line 1399
    .line 1400
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    .line 1401
    .line 1402
    if-eqz v1, :cond_39

    .line 1403
    .line 1404
    const-string/jumbo v1, "on"

    .line 1405
    .line 1406
    .line 1407
    goto :goto_1b

    .line 1408
    :cond_39
    const-string/jumbo v1, "off"

    .line 1409
    .line 1410
    .line 1411
    :goto_1b
    const-string v2, " now!"

    .line 1412
    .line 1413
    invoke-static {v8, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1414
    .line 1415
    .line 1416
    goto :goto_1e

    .line 1417
    :cond_3a
    const-string/jumbo v0, "filter"

    .line 1418
    .line 1419
    .line 1420
    const/4 v1, 0x2

    .line 1421
    aget-object v2, v9, v1

    .line 1422
    .line 1423
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1424
    .line 1425
    .line 1426
    move-result v0

    .line 1427
    if-eqz v0, :cond_3c

    .line 1428
    .line 1429
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    .line 1430
    .line 1431
    xor-int/2addr v0, v12

    .line 1432
    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    .line 1433
    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1435
    .line 1436
    const-string v1, " filter debugging mode is "

    .line 1437
    .line 1438
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1439
    .line 1440
    .line 1441
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    .line 1442
    .line 1443
    if-eqz v1, :cond_3b

    .line 1444
    .line 1445
    const-string/jumbo v1, "on"

    .line 1446
    .line 1447
    .line 1448
    goto :goto_1c

    .line 1449
    :cond_3b
    const-string/jumbo v1, "off"

    .line 1450
    .line 1451
    .line 1452
    :goto_1c
    const-string v2, " now!"

    .line 1453
    .line 1454
    invoke-static {v8, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1455
    .line 1456
    .line 1457
    goto :goto_1e

    .line 1458
    :cond_3c
    const-string/jumbo v0, "netlink"

    .line 1459
    .line 1460
    .line 1461
    const/4 v1, 0x2

    .line 1462
    aget-object v1, v9, v1

    .line 1463
    .line 1464
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1465
    .line 1466
    .line 1467
    move-result v0

    .line 1468
    if-eqz v0, :cond_3e

    .line 1469
    .line 1470
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 1471
    .line 1472
    xor-int/2addr v0, v12

    .line 1473
    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 1474
    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1476
    .line 1477
    const-string v1, " netlink debugging mode is "

    .line 1478
    .line 1479
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1480
    .line 1481
    .line 1482
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 1483
    .line 1484
    if-eqz v1, :cond_3d

    .line 1485
    .line 1486
    const-string/jumbo v1, "on"

    .line 1487
    .line 1488
    .line 1489
    goto :goto_1d

    .line 1490
    :cond_3d
    const-string/jumbo v1, "off"

    .line 1491
    .line 1492
    .line 1493
    :goto_1d
    const-string v2, " now!"

    .line 1494
    .line 1495
    invoke-static {v8, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1496
    .line 1497
    .line 1498
    goto :goto_1e

    .line 1499
    :cond_3e
    const-string v0, "Error: debug command requires argument"

    .line 1500
    .line 1501
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    .line 1503
    .line 1504
    :cond_3f
    :goto_1e
    return-void
.end method

.method public final dumpMARsHistory(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ACTIVITY MANAGER MARs HISTORY (dumpsys activity mars history)"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/am/mars/HistoryBuffer;->getBuffer()[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move v2, v1

    .line 30
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 31
    .line 32
    iget v3, v3, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    .line 33
    .line 34
    if-ge v2, v3, :cond_1

    .line 35
    .line 36
    aget-object v3, v0, v2

    .line 37
    .line 38
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v0, ""

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/server/am/mars/MARsHistoryBuffer$MARsHistoryBufferHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryBuffer;

    .line 51
    .line 52
    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v2, Lcom/android/server/am/mars/MARsHistoryLog$MARsHistoryLogHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryLog;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/server/am/mars/MARsHistoryLog;->getLog()Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v0

    .line 60
    move v0, v1

    .line 61
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ge v0, v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const-string v0, ""

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_3
    const-string v0, ""

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v2, "ACTIVITY MANAGER NET HISTORY (dumpsys activity net history)"

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 95
    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/android/server/am/mars/HistoryBuffer;->getBuffer()[Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    move v3, v1

    .line 103
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 104
    .line 105
    iget v4, v4, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    .line 106
    .line 107
    if-ge v3, v4, :cond_5

    .line 108
    .line 109
    aget-object v4, v2, v3

    .line 110
    .line 111
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    const-string v0, ""

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v2, "ACTIVITY MANAGER FILTER HISTORY"

    .line 126
    .line 127
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mFilterHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 131
    .line 132
    if-eqz v2, :cond_8

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/android/server/am/mars/HistoryBuffer;->getBuffer()[Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    :goto_5
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFilterHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 139
    .line 140
    iget v3, v3, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    .line 141
    .line 142
    if-ge v1, v3, :cond_7

    .line 143
    .line 144
    aget-object v3, v2, v1

    .line 145
    .line 146
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_8
    return-void

    .line 156
    :catchall_0
    move-exception p0

    .line 157
    monitor-exit v0

    .line 158
    throw p0
.end method

.method public final enablePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/16 v2, 0x800

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    const/16 v2, 0x200

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v2, 0x400

    .line 28
    .line 29
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_a

    .line 38
    .line 39
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 71
    .line 72
    monitor-enter v5

    .line 73
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 74
    .line 75
    invoke-static {v6, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    const/4 v7, 0x0

    .line 80
    if-eqz v6, :cond_4

    .line 81
    .line 82
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 83
    .line 84
    iget-object v9, v6, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 85
    .line 86
    iget v10, v6, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 87
    .line 88
    iget v11, v6, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 89
    .line 90
    invoke-direct {v8, v10, v11, v9}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v6, v8}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto/16 :goto_7

    .line 99
    .line 100
    :cond_4
    move-object v8, v7

    .line 101
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    if-eqz v8, :cond_2

    .line 103
    .line 104
    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->enableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    monitor-enter v5

    .line 109
    :try_start_1
    iget-object v9, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 110
    .line 111
    invoke-static {v9, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_9

    .line 116
    .line 117
    invoke-static {v3, v8}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 118
    .line 119
    .line 120
    if-eqz v6, :cond_6

    .line 121
    .line 122
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_6

    .line 127
    .line 128
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 129
    .line 130
    if-eqz v4, :cond_5

    .line 131
    .line 132
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 133
    .line 134
    iput-object v4, v3, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :catchall_1
    move-exception p0

    .line 138
    goto :goto_6

    .line 139
    :cond_5
    iput-object v7, v3, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 140
    .line 141
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 142
    .line 143
    iget-object v6, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 144
    .line 145
    iget v8, v3, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 146
    .line 147
    invoke-virtual {v4, v8, v6}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :goto_3
    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    iput v4, v3, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 155
    .line 156
    :cond_6
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 157
    .line 158
    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    iget-object v6, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 162
    .line 163
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 164
    .line 165
    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 166
    .line 167
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 172
    .line 173
    iget-boolean v6, v3, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 174
    .line 175
    if-eqz v6, :cond_7

    .line 176
    .line 177
    move-object v8, v7

    .line 178
    goto :goto_4

    .line 179
    :cond_7
    const-string v8, "0"

    .line 180
    .line 181
    :goto_4
    iput-object v8, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 182
    .line 183
    if-eqz v6, :cond_8

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_8
    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 187
    .line 188
    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    :goto_5
    iput-object v7, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 193
    .line 194
    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 195
    .line 196
    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 201
    .line 202
    iget-wide v6, v3, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 203
    .line 204
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 209
    .line 210
    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 211
    .line 212
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 217
    .line 218
    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 219
    .line 220
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    .line 225
    .line 226
    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 227
    .line 228
    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    iget v3, v3, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 242
    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    :cond_9
    monitor-exit v5

    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :goto_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    throw p0

    .line 255
    :goto_7
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    throw p0

    .line 257
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result p0

    .line 261
    if-nez p0, :cond_b

    .line 262
    .line 263
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 264
    .line 265
    .line 266
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 267
    .line 268
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 269
    .line 270
    .line 271
    :cond_b
    return-object v1
.end method

.method public final forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MARs #"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v9

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x1

    .line 19
    move v3, v0

    .line 20
    move v4, v3

    .line 21
    move v6, v4

    .line 22
    move v7, v6

    .line 23
    move v2, v1

    .line 24
    :goto_0
    const/16 v5, 0x10

    .line 25
    .line 26
    if-gt v2, v5, :cond_4

    .line 27
    .line 28
    iget v5, p2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    .line 29
    .line 30
    and-int/2addr v5, v2

    .line 31
    if-eq v5, v1, :cond_3

    .line 32
    .line 33
    const/4 v8, 0x2

    .line 34
    if-eq v5, v8, :cond_0

    .line 35
    .line 36
    const/4 v8, 0x4

    .line 37
    if-eq v5, v8, :cond_2

    .line 38
    .line 39
    const/16 v8, 0x8

    .line 40
    .line 41
    if-eq v5, v8, :cond_1

    .line 42
    .line 43
    :cond_0
    move v3, v0

    .line 44
    move v6, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v7, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/16 v3, 0x1f4

    .line 49
    .line 50
    move v6, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move v4, v1

    .line 53
    :goto_1
    shl-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    sget-boolean p2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 57
    .line 58
    const-string v0, "MARsPolicyManager"

    .line 59
    .line 60
    if-eqz p2, :cond_5

    .line 61
    .line 62
    const-string/jumbo p2, "forceKillPackage: pkgName: "

    .line 63
    .line 64
    .line 65
    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_5
    invoke-virtual {p0, p4}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    .line 69
    .line 70
    .line 71
    if-eqz v4, :cond_6

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 74
    .line 75
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 80
    .line 81
    move v4, p3

    .line 82
    move v5, p4

    .line 83
    move-object v8, p1

    .line 84
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(IIIZZLjava/lang/String;Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_7

    .line 89
    .line 90
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 91
    .line 92
    if-eqz p0, :cond_7

    .line 93
    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string/jumbo p2, "forceKillPackage: don\'t force stop package = "

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, ", userId = "

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_7
    :goto_2
    return v1
.end method

.method public final forceRunPolicyForRecentKill(Ljava/lang/String;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Recent_Kill: add mRestrictedPackages "

    .line 6
    .line 7
    const-string v3, "Recent "

    .line 8
    .line 9
    const-string v4, " "

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    if-eqz v6, :cond_a

    .line 20
    .line 21
    iget-boolean v8, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 22
    .line 23
    if-nez v8, :cond_0

    .line 24
    .line 25
    goto/16 :goto_8

    .line 26
    .line 27
    :cond_0
    sget-object v8, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 28
    .line 29
    monitor-enter v8

    .line 30
    :try_start_0
    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v9}, Landroid/content/Context;->getUserId()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    const/4 v10, 0x1

    .line 37
    const/4 v11, 0x2

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    const-string v12, ","

    .line 41
    .line 42
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v12

    .line 46
    if-eqz v12, :cond_3

    .line 47
    .line 48
    const-string v12, ","

    .line 49
    .line 50
    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v12, 0x0

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    array-length v13, v1

    .line 58
    if-ne v13, v11, :cond_2

    .line 59
    .line 60
    aget-object v13, v1, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    if-eqz v13, :cond_1

    .line 63
    .line 64
    move-object v12, v13

    .line 65
    :cond_1
    :try_start_1
    aget-object v1, v1, v10

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto/16 :goto_7

    .line 76
    .line 77
    :catch_0
    :try_start_2
    const-string v1, "MARsPolicyManager"

    .line 78
    .line 79
    const-string/jumbo v13, "forceRunPolicyForRecentKill parseInt error!"

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_0
    move-object v1, v12

    .line 86
    :cond_3
    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 87
    .line 88
    invoke-static {v12, v1, v9}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    monitor-exit v8

    .line 95
    return v7

    .line 96
    :cond_4
    iget-object v9, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 97
    .line 98
    iget v12, v1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 99
    .line 100
    iget v13, v1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 101
    .line 102
    iget v14, v1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 103
    .line 104
    iget v15, v1, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 105
    .line 106
    iget-boolean v7, v1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 107
    .line 108
    iget v10, v1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 109
    .line 110
    iget v11, v1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 111
    .line 112
    move-object/from16 v16, v2

    .line 113
    .line 114
    iget-boolean v2, v1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 115
    .line 116
    move-object/from16 v17, v3

    .line 117
    .line 118
    iget-boolean v3, v1, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    .line 119
    .line 120
    move/from16 p1, v3

    .line 121
    .line 122
    iget v3, v1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 123
    .line 124
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 126
    .line 127
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 128
    .line 129
    .line 130
    monitor-enter v8

    .line 131
    :try_start_3
    sget-boolean v18, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 132
    .line 133
    move/from16 v18, v3

    .line 134
    .line 135
    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 136
    .line 137
    move/from16 v19, v2

    .line 138
    .line 139
    iget-boolean v2, v3, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 140
    .line 141
    if-eqz v2, :cond_5

    .line 142
    .line 143
    invoke-virtual {v3, v13, v9}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    const-string v2, "RecentKill"

    .line 150
    .line 151
    invoke-virtual {v3, v13, v9, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :catchall_1
    move-exception v0

    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :cond_5
    :goto_1
    invoke-virtual {v0, v9, v6, v13, v12}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_9

    .line 163
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 181
    .line 182
    .line 183
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 184
    .line 185
    monitor-enter v2

    .line 186
    :try_start_4
    iput v14, v1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 187
    .line 188
    iput v15, v1, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 189
    .line 190
    iput-boolean v7, v1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 191
    .line 192
    iput v10, v1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 193
    .line 194
    const/4 v3, 0x3

    .line 195
    iput v3, v1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 196
    .line 197
    iput v11, v1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 198
    .line 199
    move/from16 v3, v19

    .line 200
    .line 201
    iput-boolean v3, v1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 202
    .line 203
    move/from16 v3, p1

    .line 204
    .line 205
    iput-boolean v3, v1, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    .line 206
    .line 207
    move/from16 v3, v18

    .line 208
    .line 209
    iput v3, v1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 210
    .line 211
    iget-object v3, v1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 212
    .line 213
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 214
    .line 215
    if-eq v3, v4, :cond_6

    .line 216
    .line 217
    iput-object v6, v1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 218
    .line 219
    const/4 v3, 0x2

    .line 220
    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :catchall_2
    move-exception v0

    .line 225
    goto :goto_4

    .line 226
    :cond_6
    :goto_2
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 227
    .line 228
    iget-object v4, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 229
    .line 230
    iget v6, v1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 231
    .line 232
    invoke-virtual {v3, v6, v4}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    if-nez v3, :cond_7

    .line 237
    .line 238
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 239
    .line 240
    iget-object v4, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 241
    .line 242
    iget v6, v1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 243
    .line 244
    invoke-virtual {v3, v4, v6, v1}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_7
    iget-object v3, v1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 249
    .line 250
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 251
    .line 252
    if-ne v3, v4, :cond_8

    .line 253
    .line 254
    iget v3, v1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 255
    .line 256
    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-eqz v3, :cond_8

    .line 261
    .line 262
    const/4 v3, 0x4

    .line 263
    iput v3, v1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 264
    .line 265
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 266
    .line 267
    iget-object v4, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 268
    .line 269
    iget v6, v1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 270
    .line 271
    invoke-virtual {v3, v4, v6, v1}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    .line 272
    .line 273
    .line 274
    :cond_8
    :goto_3
    const-string v3, "EXE"

    .line 275
    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    move-object/from16 v6, v17

    .line 279
    .line 280
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const-string v0, "MARsPolicyManager"

    .line 298
    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    move-object/from16 v4, v16

    .line 302
    .line 303
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-object v4, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v4, " policy --"

    .line 312
    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    iget-object v1, v1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 317
    .line 318
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    monitor-exit v2

    .line 329
    const/4 v0, 0x1

    .line 330
    return v0

    .line 331
    :goto_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 332
    throw v0

    .line 333
    :cond_9
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 334
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 335
    .line 336
    .line 337
    :goto_5
    const/4 v0, 0x0

    .line 338
    return v0

    .line 339
    :goto_6
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 340
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 341
    .line 342
    .line 343
    throw v0

    .line 344
    :goto_7
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 345
    throw v0

    .line 346
    :cond_a
    :goto_8
    const-string v0, "MARsPolicyManager"

    .line 347
    .line 348
    const-string/jumbo v1, "policy is not exist or not enabled!"

    .line 349
    .line 350
    .line 351
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    goto :goto_5
.end method

.method public final forceRunPolicyForSpecificPolicy(Ljava/util/ArrayList;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    new-instance v5, Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v6, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    if-eqz v8, :cond_26

    .line 28
    .line 29
    iget-boolean v9, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 30
    .line 31
    if-nez v9, :cond_0

    .line 32
    .line 33
    goto/16 :goto_14

    .line 34
    .line 35
    :cond_0
    iget v9, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 36
    .line 37
    const/16 v12, 0x8

    .line 38
    .line 39
    const/4 v13, 0x4

    .line 40
    const/16 v14, 0x9

    .line 41
    .line 42
    const/4 v15, 0x6

    .line 43
    const/4 v10, 0x2

    .line 44
    const/16 v16, 0x0

    .line 45
    .line 46
    if-eq v9, v4, :cond_5

    .line 47
    .line 48
    if-eq v9, v10, :cond_5

    .line 49
    .line 50
    if-eq v9, v13, :cond_4

    .line 51
    .line 52
    if-eq v9, v15, :cond_3

    .line 53
    .line 54
    if-eq v9, v12, :cond_2

    .line 55
    .line 56
    if-eq v9, v14, :cond_1

    .line 57
    .line 58
    move/from16 v9, v16

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v9, v12

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move v9, v13

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/4 v9, 0x7

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    move v9, v4

    .line 68
    goto :goto_0

    .line 69
    :cond_5
    const/4 v9, 0x3

    .line 70
    :goto_0
    sget-object v17, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 71
    .line 72
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 73
    .line 74
    .line 75
    sget-object v17, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 76
    .line 77
    monitor-enter v17

    .line 78
    const/16 v18, 0x0

    .line 79
    .line 80
    if-eqz v0, :cond_b

    .line 81
    .line 82
    move/from16 v11, v16

    .line 83
    .line 84
    :goto_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-ge v11, v3, :cond_b

    .line 89
    .line 90
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/lang/String;

    .line 95
    .line 96
    iget-object v12, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {v12}, Landroid/content/Context;->getUserId()I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    if-eqz v3, :cond_a

    .line 103
    .line 104
    const-string v15, ", "

    .line 105
    .line 106
    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    if-eqz v15, :cond_a

    .line 111
    .line 112
    const-string v15, ", "

    .line 113
    .line 114
    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-eqz v3, :cond_7

    .line 119
    .line 120
    array-length v15, v3

    .line 121
    if-ne v15, v10, :cond_7

    .line 122
    .line 123
    aget-object v15, v3, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    if-eqz v15, :cond_6

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    move-object/from16 v15, v18

    .line 129
    .line 130
    :goto_2
    :try_start_1
    aget-object v3, v3, v4

    .line 131
    .line 132
    if-eqz v3, :cond_8

    .line 133
    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 139
    .line 140
    .line 141
    move-result v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    goto :goto_3

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    goto/16 :goto_13

    .line 145
    .line 146
    :catch_0
    :try_start_2
    const-string v3, "MARsPolicyManager"

    .line 147
    .line 148
    const-string/jumbo v13, "forceRunPolicyForGamePolicy parseInt error!"

    .line 149
    .line 150
    .line 151
    invoke-static {v3, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    move-object/from16 v15, v18

    .line 156
    .line 157
    :cond_8
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    check-cast v13, Landroid/util/SparseArray;

    .line 166
    .line 167
    if-nez v13, :cond_9

    .line 168
    .line 169
    new-instance v13, Landroid/util/SparseArray;

    .line 170
    .line 171
    invoke-direct {v13, v10}, Landroid/util/SparseArray;-><init>(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v15, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    :cond_9
    invoke-virtual {v13, v12, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_a
    add-int/2addr v11, v4

    .line 181
    const/16 v12, 0x8

    .line 182
    .line 183
    const/4 v13, 0x4

    .line 184
    const/4 v15, 0x6

    .line 185
    goto :goto_1

    .line 186
    :cond_b
    move/from16 v0, v16

    .line 187
    .line 188
    :goto_4
    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 189
    .line 190
    iget-object v3, v3, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 191
    .line 192
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-ge v0, v3, :cond_1c

    .line 197
    .line 198
    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 199
    .line 200
    iget-object v3, v3, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 201
    .line 202
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    check-cast v3, Landroid/util/SparseArray;

    .line 207
    .line 208
    move/from16 v11, v16

    .line 209
    .line 210
    :goto_5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 211
    .line 212
    .line 213
    move-result v12

    .line 214
    if-ge v11, v12, :cond_1b

    .line 215
    .line 216
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    check-cast v12, Lcom/android/server/am/MARsPackageInfo;

    .line 221
    .line 222
    if-ne v2, v14, :cond_f

    .line 223
    .line 224
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 225
    .line 226
    .line 227
    move-result v13

    .line 228
    if-eqz v13, :cond_d

    .line 229
    .line 230
    iget-boolean v13, v12, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 231
    .line 232
    if-nez v13, :cond_d

    .line 233
    .line 234
    sget-boolean v13, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 235
    .line 236
    if-eqz v13, :cond_c

    .line 237
    .line 238
    const-string v13, "MARsPolicyManager"

    .line 239
    .line 240
    new-instance v15, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string/jumbo v14, "package "

    .line 246
    .line 247
    .line 248
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-object v12, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v12, " is not game policy target, don\'t execute this policy "

    .line 257
    .line 258
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    invoke-static {v13, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    :cond_c
    :goto_6
    const/4 v10, 0x6

    .line 272
    goto/16 :goto_a

    .line 273
    .line 274
    :cond_d
    iget-object v13, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 275
    .line 276
    iget v14, v12, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 277
    .line 278
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v13

    .line 282
    check-cast v13, Landroid/util/SparseArray;

    .line 283
    .line 284
    if-nez v13, :cond_e

    .line 285
    .line 286
    move-object/from16 v13, v18

    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_e
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v13

    .line 293
    :goto_7
    if-eqz v13, :cond_f

    .line 294
    .line 295
    sget-boolean v13, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 296
    .line 297
    if-eqz v13, :cond_c

    .line 298
    .line 299
    const-string v13, "MARsPolicyManager"

    .line 300
    .line 301
    new-instance v14, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    const-string/jumbo v15, "package "

    .line 307
    .line 308
    .line 309
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    iget-object v12, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v12, " in survivePkgs, don\'t execute this policy "

    .line 318
    .line 319
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v12

    .line 329
    invoke-static {v13, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_f
    iget-object v13, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 334
    .line 335
    iget v14, v12, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 336
    .line 337
    iget v15, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 338
    .line 339
    invoke-virtual {v1, v14, v15, v13}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    .line 340
    .line 341
    .line 342
    move-result v13

    .line 343
    if-eqz v13, :cond_10

    .line 344
    .line 345
    sget-boolean v13, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 346
    .line 347
    if-eqz v13, :cond_c

    .line 348
    .line 349
    const-string v13, "MARsPolicyManager"

    .line 350
    .line 351
    new-instance v14, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string/jumbo v15, "package "

    .line 357
    .line 358
    .line 359
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    iget-object v12, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v12, " inPolicyAllowList, don\'t execute this policy "

    .line 368
    .line 369
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v12

    .line 379
    invoke-static {v13, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_10
    sget-object v13, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 384
    .line 385
    iget v14, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 386
    .line 387
    if-eqz v14, :cond_17

    .line 388
    .line 389
    if-eq v14, v4, :cond_16

    .line 390
    .line 391
    if-eq v14, v10, :cond_15

    .line 392
    .line 393
    const/4 v15, 0x4

    .line 394
    if-eq v14, v15, :cond_14

    .line 395
    .line 396
    const/4 v10, 0x6

    .line 397
    if-eq v14, v10, :cond_13

    .line 398
    .line 399
    const/16 v10, 0x8

    .line 400
    .line 401
    if-eq v14, v10, :cond_12

    .line 402
    .line 403
    const/16 v10, 0x9

    .line 404
    .line 405
    if-eq v14, v10, :cond_11

    .line 406
    .line 407
    const/4 v14, -0x1

    .line 408
    goto :goto_8

    .line 409
    :cond_11
    move v14, v10

    .line 410
    goto :goto_8

    .line 411
    :cond_12
    const/4 v14, 0x7

    .line 412
    goto :goto_8

    .line 413
    :cond_13
    const/4 v14, 0x6

    .line 414
    goto :goto_8

    .line 415
    :cond_14
    move v14, v15

    .line 416
    goto :goto_8

    .line 417
    :cond_15
    const/4 v15, 0x4

    .line 418
    const/4 v14, 0x3

    .line 419
    goto :goto_8

    .line 420
    :cond_16
    const/4 v15, 0x4

    .line 421
    const/4 v14, 0x2

    .line 422
    goto :goto_8

    .line 423
    :cond_17
    const/4 v15, 0x4

    .line 424
    move v14, v4

    .line 425
    :goto_8
    iget-object v10, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 426
    .line 427
    iget v15, v12, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 428
    .line 429
    iget v4, v12, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 430
    .line 431
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    invoke-static {v14, v15, v4, v10}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    if-lez v4, :cond_18

    .line 439
    .line 440
    const/4 v4, 0x1

    .line 441
    goto/16 :goto_6

    .line 442
    .line 443
    :cond_18
    new-instance v4, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 444
    .line 445
    iget-object v10, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 446
    .line 447
    iget v13, v12, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 448
    .line 449
    iget v14, v12, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 450
    .line 451
    invoke-direct {v4, v13, v14, v10}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-static {v12, v4}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 455
    .line 456
    .line 457
    const/4 v10, 0x6

    .line 458
    if-ne v2, v10, :cond_1a

    .line 459
    .line 460
    iget v12, v12, Lcom/android/server/am/MARsPackageInfo;->sbike:I

    .line 461
    .line 462
    const/4 v13, 0x1

    .line 463
    if-ne v12, v13, :cond_19

    .line 464
    .line 465
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    :goto_9
    const/4 v4, 0x1

    .line 469
    goto :goto_a

    .line 470
    :cond_19
    move v4, v13

    .line 471
    goto :goto_a

    .line 472
    :cond_1a
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    goto :goto_9

    .line 476
    :goto_a
    add-int/2addr v11, v4

    .line 477
    const/4 v10, 0x2

    .line 478
    const/16 v14, 0x9

    .line 479
    .line 480
    goto/16 :goto_5

    .line 481
    .line 482
    :cond_1b
    move v3, v4

    .line 483
    const/4 v10, 0x6

    .line 484
    add-int/2addr v0, v3

    .line 485
    const/4 v10, 0x2

    .line 486
    const/16 v14, 0x9

    .line 487
    .line 488
    goto/16 :goto_4

    .line 489
    .line 490
    :cond_1c
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 491
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 492
    .line 493
    .line 494
    move-result-wide v2

    .line 495
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    const/4 v4, 0x1

    .line 500
    sub-int/2addr v0, v4

    .line 501
    move-wide v3, v2

    .line 502
    move/from16 v13, v16

    .line 503
    .line 504
    move v2, v0

    .line 505
    :goto_b
    if-ltz v2, :cond_20

    .line 506
    .line 507
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 508
    .line 509
    .line 510
    move-result-wide v10

    .line 511
    sub-long/2addr v10, v3

    .line 512
    const-wide/16 v14, 0x32

    .line 513
    .line 514
    cmp-long v0, v10, v14

    .line 515
    .line 516
    if-ltz v0, :cond_1d

    .line 517
    .line 518
    const-wide/16 v3, 0xa

    .line 519
    .line 520
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 521
    .line 522
    .line 523
    goto :goto_c

    .line 524
    :catch_1
    move-exception v0

    .line 525
    move-object v3, v0

    .line 526
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 527
    .line 528
    .line 529
    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 530
    .line 531
    .line 532
    move-result-wide v3

    .line 533
    :cond_1d
    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 534
    .line 535
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 536
    .line 537
    .line 538
    monitor-enter v5

    .line 539
    :try_start_4
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    check-cast v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 544
    .line 545
    sget-boolean v10, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 546
    .line 547
    sget-object v10, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 548
    .line 549
    iget-boolean v11, v10, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 550
    .line 551
    if-eqz v11, :cond_1e

    .line 552
    .line 553
    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 554
    .line 555
    iget v12, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 556
    .line 557
    invoke-virtual {v10, v12, v11}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 558
    .line 559
    .line 560
    move-result v11

    .line 561
    if-eqz v11, :cond_1e

    .line 562
    .line 563
    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 564
    .line 565
    iget v12, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 566
    .line 567
    iget-object v14, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    .line 568
    .line 569
    invoke-virtual {v10, v12, v11, v14}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    goto :goto_d

    .line 573
    :catchall_1
    move-exception v0

    .line 574
    goto :goto_f

    .line 575
    :cond_1e
    :goto_d
    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 576
    .line 577
    iget v11, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 578
    .line 579
    iget v12, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 580
    .line 581
    invoke-virtual {v1, v10, v8, v11, v12}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    .line 582
    .line 583
    .line 584
    move-result v10

    .line 585
    if-eqz v10, :cond_1f

    .line 586
    .line 587
    iput v9, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    .line 588
    .line 589
    new-instance v10, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .line 593
    .line 594
    const-string v11, " "

    .line 595
    .line 596
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    iget v0, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 600
    .line 601
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    const/4 v13, 0x1

    .line 612
    goto :goto_e

    .line 613
    :cond_1f
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    :goto_e
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 617
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 618
    .line 619
    .line 620
    const/4 v10, -0x1

    .line 621
    add-int/2addr v2, v10

    .line 622
    goto :goto_b

    .line 623
    :goto_f
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 624
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 625
    .line 626
    .line 627
    throw v0

    .line 628
    :cond_20
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 629
    .line 630
    monitor-enter v2

    .line 631
    move/from16 v0, v16

    .line 632
    .line 633
    :goto_10
    :try_start_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 634
    .line 635
    .line 636
    move-result v3

    .line 637
    if-ge v0, v3, :cond_24

    .line 638
    .line 639
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    check-cast v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 644
    .line 645
    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 646
    .line 647
    iget-object v5, v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 648
    .line 649
    iget v9, v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 650
    .line 651
    invoke-static {v4, v5, v9}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 652
    .line 653
    .line 654
    move-result-object v4

    .line 655
    if-eqz v4, :cond_23

    .line 656
    .line 657
    invoke-static {v4, v3}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 658
    .line 659
    .line 660
    iget-object v3, v4, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 661
    .line 662
    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 663
    .line 664
    if-eq v3, v5, :cond_21

    .line 665
    .line 666
    iput-object v8, v4, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 667
    .line 668
    :cond_21
    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 669
    .line 670
    iget-object v5, v4, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 671
    .line 672
    iget v9, v4, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 673
    .line 674
    invoke-virtual {v3, v9, v5}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    if-nez v3, :cond_22

    .line 679
    .line 680
    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 681
    .line 682
    iget-object v5, v4, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 683
    .line 684
    iget v9, v4, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 685
    .line 686
    invoke-virtual {v3, v5, v9, v4}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    .line 687
    .line 688
    .line 689
    goto :goto_11

    .line 690
    :catchall_2
    move-exception v0

    .line 691
    goto :goto_12

    .line 692
    :cond_22
    :goto_11
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 693
    .line 694
    if-eqz v3, :cond_23

    .line 695
    .line 696
    const-string v3, "MARsPolicyManager"

    .line 697
    .line 698
    new-instance v5, Ljava/lang/StringBuilder;

    .line 699
    .line 700
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    .line 702
    .line 703
    const-string v9, "add mRestrictedPackages "

    .line 704
    .line 705
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    iget-object v4, v4, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 709
    .line 710
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    const-string v4, " policy --"

    .line 714
    .line 715
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v4

    .line 725
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    .line 727
    .line 728
    :cond_23
    const/4 v3, 0x1

    .line 729
    add-int/2addr v0, v3

    .line 730
    goto :goto_10

    .line 731
    :cond_24
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 732
    if-eqz v13, :cond_25

    .line 733
    .line 734
    const-string v0, "EXE"

    .line 735
    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    .line 737
    .line 738
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 739
    .line 740
    .line 741
    iget-object v3, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    .line 742
    .line 743
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    const-string v3, " "

    .line 747
    .line 748
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v3

    .line 755
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    :cond_25
    return-void

    .line 766
    :goto_12
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 767
    throw v0

    .line 768
    :goto_13
    :try_start_8
    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 769
    throw v0

    .line 770
    :cond_26
    :goto_14
    const-string v0, "MARsPolicyManager"

    .line 771
    .line 772
    const-string/jumbo v1, "policy is not exist or not enabled!"

    .line 773
    .line 774
    .line 775
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .line 777
    .line 778
    return-void
.end method

.method public final getAutorunForFreezedPackage(ILjava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 11
    .line 12
    invoke-static {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-boolean p0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 19
    .line 20
    xor-int/lit8 p0, p0, 0x1

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    goto :goto_1

    .line 28
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_1
    const/4 p0, -0x1

    .line 31
    return p0
.end method

.method public final getBatteryStats()V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "MARsPolicyManager"

    .line 6
    .line 7
    const-string/jumbo v1, "getBatteryStats called!"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/samsung/android/sdhms/SemDeviceHealthManager;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v8

    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    const/4 v2, 0x1

    .line 31
    move-wide v5, v8

    .line 32
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getBatteryStats(IJJZ)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/samsung/android/sdhms/SemBatteryStats;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemBatteryStats;->getEndTimestamp()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    new-instance v5, Ljava/util/GregorianCalendar;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Ljava/util/GregorianCalendar;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    .line 75
    .line 76
    const/4 v4, 0x1

    .line 77
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-ne v6, v4, :cond_2

    .line 86
    .line 87
    const/4 v4, 0x2

    .line 88
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-ne v6, v4, :cond_2

    .line 97
    .line 98
    const/4 v4, 0x5

    .line 99
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-ne v5, v3, :cond_2

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemBatteryStats;->getAppDetailUsages()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_4

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    .line 141
    .line 142
    .line 143
    move-result-wide v5

    .line 144
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 152
    .line 153
    if-eqz v4, :cond_3

    .line 154
    .line 155
    const-string v4, "MARsPolicyManager"

    .line 156
    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemBatteryStats;->getEndTimestamp()J

    .line 163
    .line 164
    .line 165
    move-result-wide v6

    .line 166
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v6, " getBatteryStats(D) app : "

    .line 170
    .line 171
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string/jumbo v6, "|"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    .line 188
    .line 189
    .line 190
    move-result-wide v6

    .line 191
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string/jumbo v6, "|"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getScreenPowerUsage()D

    .line 201
    .line 202
    .line 203
    move-result-wide v6

    .line 204
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_4
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 216
    .line 217
    monitor-enter v1

    .line 218
    const/4 v2, 0x0

    .line 219
    move v3, v2

    .line 220
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 221
    .line 222
    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 223
    .line 224
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-ge v3, v4, :cond_8

    .line 229
    .line 230
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 231
    .line 232
    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 233
    .line 234
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    check-cast v4, Landroid/util/SparseArray;

    .line 239
    .line 240
    move v5, v2

    .line 241
    :goto_3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-ge v5, v6, :cond_7

    .line 246
    .line 247
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 252
    .line 253
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 258
    .line 259
    if-lez v7, :cond_6

    .line 260
    .line 261
    iget v7, v6, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 262
    .line 263
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    check-cast v7, Ljava/lang/Double;

    .line 272
    .line 273
    if-eqz v7, :cond_5

    .line 274
    .line 275
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 276
    .line 277
    .line 278
    move-result-wide v7

    .line 279
    iput-wide v7, v6, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :catchall_0
    move-exception p0

    .line 283
    goto :goto_5

    .line 284
    :cond_5
    iput-wide v8, v6, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_6
    iput-wide v8, v6, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    .line 288
    .line 289
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_8
    monitor-exit v1

    .line 296
    return-void

    .line 297
    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    throw p0
.end method

.method public final getForegroundServiceStartTime(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/Long;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    monitor-exit v0

    .line 27
    return-wide p0

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

.method public getMARsEnabled()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getPackageDisablerEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const/4 v0, 0x4

    .line 14
    if-ne p1, v0, :cond_2

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_2
    const/4 v0, 0x6

    .line 20
    if-ne p1, v0, :cond_3

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_3
    const/16 v0, 0x8

    .line 26
    .line 27
    if-ne p1, v0, :cond_4

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_4
    const/16 v0, 0x9

    .line 33
    .line 34
    if-ne p1, v0, :cond_5

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_5
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public final declared-synchronized getScreenOnState()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final getSharedUidName(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "MARsPolicyManager"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const v2, 0x402000

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2, v2, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p2, "NullPointerException occurred in getSharedUidName() "

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_1
    const-string p0, "NameNotFoundException occurred for package : "

    .line 46
    .line 47
    invoke-static {p0, p2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    return-object v1
.end method

.method public final isAutoRunBlockedApp(Ljava/lang/String;I)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const-string p0, "MARsPolicyManager"

    .line 13
    .line 14
    const-string p1, "AR not enabled"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    return v1

    .line 20
    :cond_1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 24
    .line 25
    invoke-static {v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_6

    .line 30
    .line 31
    iget-boolean v3, v2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v3, 0x2

    .line 37
    invoke-virtual {p0, p2, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return v1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    sget-object p0, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 48
    .line 49
    iget v2, v2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const/16 p0, 0x13

    .line 55
    .line 56
    invoke-static {p0, p2, v2, p1}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-lez p0, :cond_4

    .line 61
    .line 62
    monitor-exit v0

    .line 63
    return v1

    .line 64
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 66
    .line 67
    if-eqz p0, :cond_5

    .line 68
    .line 69
    const-string p0, "MARsPolicyManager"

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " Auto run OFF, userId = "

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_5
    const/4 p0, 0x1

    .line 95
    return p0

    .line 96
    :cond_6
    :goto_0
    :try_start_1
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 97
    .line 98
    if-eqz p0, :cond_7

    .line 99
    .line 100
    const-string p0, "MARsPolicyManager"

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p1, " Auto run ON, userId = "

    .line 111
    .line 112
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_7
    monitor-exit v0

    .line 126
    return v1

    .line 127
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    throw p0
.end method

.method public final isAutoRunOn(ILjava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 5
    .line 6
    invoke-static {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final isCurrentUser(I)Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x5f

    .line 12
    .line 13
    if-lt p1, v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x63

    .line 16
    .line 17
    if-gt p1, v0, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    move v3, v2

    .line 21
    goto :goto_3

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 26
    .line 27
    array-length v4, v3

    .line 28
    move v5, v2

    .line 29
    :goto_0
    if-ge v5, v4, :cond_2

    .line 30
    .line 31
    aget v6, v3, v5

    .line 32
    .line 33
    if-ne p1, v6, :cond_1

    .line 34
    .line 35
    move v3, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move v3, v2

    .line 43
    :goto_1
    monitor-exit v0

    .line 44
    move v0, v2

    .line 45
    goto :goto_3

    .line 46
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0

    .line 48
    :cond_3
    move v0, v2

    .line 49
    move v3, v0

    .line 50
    :goto_3
    iget p0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    .line 51
    .line 52
    if-eq p0, p1, :cond_5

    .line 53
    .line 54
    if-nez v0, :cond_5

    .line 55
    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_4
    move v1, v2

    .line 60
    :cond_5
    :goto_4
    return v1
.end method

.method public final isFirstTimeTriggerAutorun()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method public final isForegroundPackage(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez p0, :cond_1

    .line 11
    .line 12
    return v1

    .line 13
    :cond_1
    sget-object p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter$TopPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    monitor-exit v2

    .line 39
    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    monitor-exit v2

    .line 44
    :goto_0
    return v0

    .line 45
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final isInPolicyExceptionList(IILjava/lang/String;)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 6
    .line 7
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 8
    .line 9
    iget-object v5, v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-ge v2, v5, :cond_6

    .line 16
    .line 17
    iget-object v5, v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    .line 24
    .line 25
    iget v5, v5, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->policyNum:I

    .line 26
    .line 27
    iget-object v6, v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    .line 34
    .line 35
    iget v6, v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->condition:I

    .line 36
    .line 37
    iget-object v7, v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    .line 44
    .line 45
    iget-object v7, v7, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->pkgNameMatchType:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v4, v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    .line 54
    .line 55
    iget-object v4, v4, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    const/4 v8, 0x2

    .line 60
    if-eq v5, v8, :cond_1

    .line 61
    .line 62
    const/4 v6, 0x4

    .line 63
    if-eq v5, v6, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    if-ne p2, v6, :cond_4

    .line 67
    .line 68
    invoke-static {p3, v7, v4}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    if-ne p2, v8, :cond_4

    .line 74
    .line 75
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 76
    .line 77
    invoke-static {v5, p3, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    if-nez v5, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-boolean v8, v5, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 85
    .line 86
    xor-int/2addr v8, v0

    .line 87
    if-ne v6, v8, :cond_4

    .line 88
    .line 89
    iget-object v3, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v3, v7, v4}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-static {p3, v7, v4}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 101
    .line 102
    return v0

    .line 103
    :cond_5
    add-int/2addr v2, v0

    .line 104
    goto :goto_0

    .line 105
    :cond_6
    return v1
.end method

.method public final isMARsTarget(ILjava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 5
    .line 6
    invoke-static {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final levelChange(ILcom/android/server/am/MARsPackageInfo;)Z
    .locals 12

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "levelChange:"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "("

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ") state:"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "MARsPolicyManager"

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    const/16 v0, 0x8

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    if-gt p1, v0, :cond_2

    .line 49
    .line 50
    sget-object v2, Lcom/android/server/am/mars/filter/filter/AllowListFilter$AllowListFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    .line 51
    .line 52
    iget-object v3, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->isInDefaultAllowList(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    iget-boolean v2, p2, Lcom/android/server/am/MARsPackageInfo;->hasAppIcon:Z

    .line 61
    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    :cond_1
    return v1

    .line 65
    :cond_2
    const/4 v2, 0x2

    .line 66
    const/4 v3, 0x1

    .line 67
    if-eq p1, v3, :cond_14

    .line 68
    .line 69
    sget-object v4, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 70
    .line 71
    const/16 v5, 0x2d

    .line 72
    .line 73
    const/4 v6, 0x4

    .line 74
    if-eq p1, v2, :cond_12

    .line 75
    .line 76
    const/4 v7, 0x3

    .line 77
    const/16 v8, 0x10

    .line 78
    .line 79
    const-wide/16 v9, 0x0

    .line 80
    .line 81
    sparse-switch p1, :sswitch_data_0

    .line 82
    .line 83
    .line 84
    goto/16 :goto_3

    .line 85
    .line 86
    :sswitch_0
    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 87
    .line 88
    iput v8, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 89
    .line 90
    iget-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 91
    .line 92
    if-nez v0, :cond_15

    .line 93
    .line 94
    iget-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 95
    .line 96
    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 97
    .line 98
    invoke-virtual {v4, v1, v3, v0}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 102
    .line 103
    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 104
    .line 105
    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 110
    .line 111
    goto/16 :goto_3

    .line 112
    .line 113
    :sswitch_1
    iput v1, p2, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 114
    .line 115
    goto/16 :goto_3

    .line 116
    .line 117
    :sswitch_2
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    move v2, v7

    .line 124
    :cond_3
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 125
    .line 126
    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 127
    .line 128
    iget-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 129
    .line 130
    if-nez v0, :cond_15

    .line 131
    .line 132
    iget-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 133
    .line 134
    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 135
    .line 136
    invoke-virtual {v4, v1, v3, v0}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 140
    .line 141
    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 142
    .line 143
    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 148
    .line 149
    goto/16 :goto_3

    .line 150
    .line 151
    :sswitch_3
    iget v5, p2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 152
    .line 153
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-nez v5, :cond_c

    .line 158
    .line 159
    iget-boolean v5, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 160
    .line 161
    const/16 v6, 0x80

    .line 162
    .line 163
    if-eqz v5, :cond_7

    .line 164
    .line 165
    iget v5, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 166
    .line 167
    if-eq v5, v3, :cond_6

    .line 168
    .line 169
    const/16 v8, 0x40

    .line 170
    .line 171
    if-eq v5, v8, :cond_6

    .line 172
    .line 173
    if-nez v5, :cond_4

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    .line 177
    .line 178
    if-eqz v4, :cond_5

    .line 179
    .line 180
    iput-boolean v1, p2, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    .line 181
    .line 182
    :cond_5
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    :goto_0
    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 186
    .line 187
    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    iput-object v5, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-nez v5, :cond_8

    .line 198
    .line 199
    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 200
    .line 201
    iget-object v5, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 202
    .line 203
    iget v8, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 204
    .line 205
    invoke-virtual {v4, v8, v1, v5}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iput-boolean v1, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_7
    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 212
    .line 213
    :cond_8
    :goto_1
    iget v4, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 214
    .line 215
    if-eq v4, v0, :cond_9

    .line 216
    .line 217
    if-ne v4, v2, :cond_a

    .line 218
    .line 219
    :cond_9
    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 220
    .line 221
    :cond_a
    iput-wide v9, p2, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 222
    .line 223
    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 224
    .line 225
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_c

    .line 230
    .line 231
    iget-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 232
    .line 233
    if-eqz v0, :cond_c

    .line 234
    .line 235
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 236
    .line 237
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 238
    .line 239
    iget-boolean v0, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 240
    .line 241
    if-eqz v0, :cond_b

    .line 242
    .line 243
    iget-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    .line 244
    .line 245
    if-eqz v0, :cond_c

    .line 246
    .line 247
    :cond_b
    iput v7, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 248
    .line 249
    :cond_c
    iput v1, p2, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 250
    .line 251
    goto/16 :goto_3

    .line 252
    .line 253
    :sswitch_4
    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 254
    .line 255
    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 256
    .line 257
    iget-object v2, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 258
    .line 259
    iget v5, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 260
    .line 261
    invoke-virtual {v4, v5, v1, v2}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iput-boolean v1, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 265
    .line 266
    iput-wide v9, p2, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 267
    .line 268
    const/16 v1, 0x100

    .line 269
    .line 270
    iput v1, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 271
    .line 272
    invoke-static {v1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    iput-object v1, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 277
    .line 278
    iput v0, p2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 279
    .line 280
    goto/16 :goto_3

    .line 281
    .line 282
    :sswitch_5
    iput v1, p2, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 283
    .line 284
    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 285
    .line 286
    iput-boolean v1, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 287
    .line 288
    iput-wide v9, p2, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 289
    .line 290
    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 291
    .line 292
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    .line 293
    .line 294
    if-eqz v0, :cond_15

    .line 295
    .line 296
    iput-boolean v1, p2, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    .line 297
    .line 298
    iget-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 299
    .line 300
    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 301
    .line 302
    const/16 v2, 0xa

    .line 303
    .line 304
    invoke-virtual {v4, v1, v2, v0, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(IILjava/lang/String;Z)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_3

    .line 308
    .line 309
    :sswitch_6
    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 310
    .line 311
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 312
    .line 313
    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    iput-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 318
    .line 319
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 320
    .line 321
    iget-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 322
    .line 323
    if-nez v0, :cond_15

    .line 324
    .line 325
    iget-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 326
    .line 327
    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 328
    .line 329
    invoke-virtual {v4, v1, v3, v0}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 333
    .line 334
    goto/16 :goto_3

    .line 335
    .line 336
    :sswitch_7
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 337
    .line 338
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 339
    .line 340
    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 341
    .line 342
    iget-object v1, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 343
    .line 344
    iget v2, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 345
    .line 346
    invoke-virtual {v4, v2, v3, v1}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget v2, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 350
    .line 351
    if-ne v2, v0, :cond_d

    .line 352
    .line 353
    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 354
    .line 355
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    .line 356
    .line 357
    if-eqz v0, :cond_15

    .line 358
    .line 359
    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    .line 360
    .line 361
    iget v0, p2, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 362
    .line 363
    invoke-virtual {v4, v0, v5, v1, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(IILjava/lang/String;Z)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_3

    .line 367
    .line 368
    :sswitch_8
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 369
    .line 370
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 371
    .line 372
    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 373
    .line 374
    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 375
    .line 376
    goto/16 :goto_3

    .line 377
    .line 378
    :sswitch_9
    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 379
    .line 380
    iput v8, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 381
    .line 382
    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 383
    .line 384
    iget-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 385
    .line 386
    if-nez v0, :cond_15

    .line 387
    .line 388
    iget-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 389
    .line 390
    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 391
    .line 392
    invoke-virtual {v4, v1, v3, v0}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    .line 393
    .line 394
    .line 395
    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 396
    .line 397
    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 398
    .line 399
    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    iput-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 404
    .line 405
    goto :goto_3

    .line 406
    :sswitch_a
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 407
    .line 408
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 409
    .line 410
    iget-object v5, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 411
    .line 412
    const/16 v6, 0x15

    .line 413
    .line 414
    const/4 v7, 0x0

    .line 415
    invoke-virtual {v2, v6, v5, v7, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    if-eqz v2, :cond_e

    .line 420
    .line 421
    return v1

    .line 422
    :cond_e
    iget-wide v5, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 423
    .line 424
    cmp-long v2, v5, v9

    .line 425
    .line 426
    if-eqz v2, :cond_10

    .line 427
    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 429
    .line 430
    .line 431
    move-result-wide v5

    .line 432
    iget-wide v8, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 433
    .line 434
    sub-long/2addr v5, v8

    .line 435
    iget-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    .line 436
    .line 437
    if-eqz v2, :cond_f

    .line 438
    .line 439
    const-wide/16 v8, 0x2

    .line 440
    .line 441
    iget-wide v10, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    .line 442
    .line 443
    mul-long/2addr v10, v8

    .line 444
    goto :goto_2

    .line 445
    :cond_f
    const-wide/32 v10, 0x4d3f6400

    .line 446
    .line 447
    .line 448
    :goto_2
    cmp-long v2, v5, v10

    .line 449
    .line 450
    if-lez v2, :cond_11

    .line 451
    .line 452
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 453
    .line 454
    .line 455
    move-result-wide v5

    .line 456
    iput-wide v5, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 457
    .line 458
    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    .line 459
    .line 460
    const-string/jumbo v1, "deepsleep"

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4, v1, v7, v7}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 464
    .line 465
    .line 466
    :cond_11
    iput v0, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 467
    .line 468
    goto :goto_3

    .line 469
    :cond_12
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 470
    .line 471
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 472
    .line 473
    iget-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 474
    .line 475
    if-nez v0, :cond_15

    .line 476
    .line 477
    iget-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 478
    .line 479
    iget v2, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 480
    .line 481
    invoke-virtual {v4, v2, v3, v0}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    .line 482
    .line 483
    .line 484
    iget-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    .line 485
    .line 486
    if-eqz v2, :cond_13

    .line 487
    .line 488
    iget v2, p2, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 489
    .line 490
    invoke-virtual {v4, v2, v5, v0, v1}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(IILjava/lang/String;Z)V

    .line 491
    .line 492
    .line 493
    :cond_13
    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 494
    .line 495
    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 496
    .line 497
    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 498
    .line 499
    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    iput-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 504
    .line 505
    goto :goto_3

    .line 506
    :cond_14
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 507
    .line 508
    :cond_15
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 509
    .line 510
    .line 511
    move-result-wide v0

    .line 512
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->noteAppRestriction(ILcom/android/server/am/MARsPackageInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    .line 514
    .line 515
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    .line 517
    .line 518
    return v3

    .line 519
    :catchall_0
    move-exception p0

    .line 520
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 521
    .line 522
    .line 523
    throw p0

    .line 524
    nop

    .line 525
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x20 -> :sswitch_8
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_5
        0x200 -> :sswitch_4
        0x400 -> :sswitch_3
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public final noteAppRestriction(ILcom/android/server/am/MARsPackageInfo;)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/app/Flags;->appRestrictionsApi()Z

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
    iget-object v2, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 9
    .line 10
    iget v3, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eq p1, v0, :cond_7

    .line 15
    .line 16
    const/16 v0, 0x40

    .line 17
    .line 18
    if-eq p1, v0, :cond_6

    .line 19
    .line 20
    const/16 v0, 0x80

    .line 21
    .line 22
    if-eq p1, v0, :cond_5

    .line 23
    .line 24
    const/16 v1, 0x100

    .line 25
    .line 26
    if-eq p1, v1, :cond_4

    .line 27
    .line 28
    const/16 v1, 0x400

    .line 29
    .line 30
    if-eq p1, v1, :cond_1

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_1
    iget p1, p2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    if-eq p1, p2, :cond_2

    .line 40
    .line 41
    const/16 p2, 0x10

    .line 42
    .line 43
    if-eq p1, p2, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 47
    .line 48
    const/4 v6, 0x3

    .line 49
    const-string/jumbo v7, "usage"

    .line 50
    .line 51
    .line 52
    const/16 v4, 0x46

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v8, 0x1

    .line 56
    const-wide/16 v9, 0x0

    .line 57
    .line 58
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-object p1, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-ne v0, p1, :cond_8

    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 71
    .line 72
    const/4 v6, 0x4

    .line 73
    const-string/jumbo v7, "settings"

    .line 74
    .line 75
    .line 76
    const/16 v4, 0x46

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v8, 0x1

    .line 80
    const-wide/16 v9, 0x0

    .line 81
    .line 82
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 87
    .line 88
    const/4 v6, 0x4

    .line 89
    const-string/jumbo v7, "settings"

    .line 90
    .line 91
    .line 92
    const/16 v4, 0x32

    .line 93
    .line 94
    const/4 v5, 0x0

    .line 95
    const/4 v8, 0x1

    .line 96
    const-wide/16 v9, 0x0

    .line 97
    .line 98
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 103
    .line 104
    const/4 v6, 0x4

    .line 105
    const-string/jumbo v7, "settings"

    .line 106
    .line 107
    .line 108
    const/16 v4, 0x46

    .line 109
    .line 110
    const/4 v5, 0x1

    .line 111
    const/4 v8, 0x1

    .line 112
    const-wide/16 v9, 0x0

    .line 113
    .line 114
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 119
    .line 120
    const/4 v6, 0x4

    .line 121
    const-string/jumbo v7, "settings"

    .line 122
    .line 123
    .line 124
    const/16 v4, 0x32

    .line 125
    .line 126
    const/4 v5, 0x1

    .line 127
    const/4 v8, 0x1

    .line 128
    const-wide/16 v9, 0x0

    .line 129
    .line 130
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 135
    .line 136
    const/4 v6, 0x2

    .line 137
    const/4 v7, 0x0

    .line 138
    const/16 v4, 0x46

    .line 139
    .line 140
    const/4 v5, 0x1

    .line 141
    const/4 v8, 0x2

    .line 142
    const-wide/32 v9, 0x5265c000

    .line 143
    .line 144
    .line 145
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    .line 146
    .line 147
    .line 148
    :cond_8
    :goto_0
    return-void
.end method

.method public final onAppUsed(ILjava/lang/String;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v1, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 5
    iput-wide v2, v1, Lcom/android/server/am/MARsPackageInfo;->lastUsedTime:J

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7
    iput-wide v2, v1, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 8
    sget-object v2, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    .line 9
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->setLatestProtectedPkg(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, p3}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V

    .line 11
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V
    .locals 4

    const/16 v0, 0x400

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 13
    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 14
    iget-object v1, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    const/16 v2, 0x80

    if-ne v0, v2, :cond_1

    .line 15
    new-instance v0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 16
    iput-object v1, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 17
    iget v2, p1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 18
    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 19
    iget-boolean v2, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v2, :cond_0

    .line 20
    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    .line 21
    :goto_0
    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 22
    iget v2, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 23
    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v2

    .line 24
    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 25
    iget v2, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 26
    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v2

    .line 27
    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 28
    iget v2, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 29
    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 31
    iget-wide v2, p1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 33
    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 34
    iget-wide v2, p1, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 36
    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    .line 37
    iget v2, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 39
    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 40
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_1
    iget-object v2, p1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_2

    .line 42
    iget v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget v3, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {p0, v2, v3, v1, p2}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(IILjava/lang/String;Z)V

    if-eqz v0, :cond_3

    .line 43
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object p2, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {p2, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 44
    :cond_3
    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_4

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 46
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    :cond_4
    return-void
.end method

.method public final onAppUsedForTimeChanged(J)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "MARsPolicyManager"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "onAppUsedForTimeChanged -- SystemTime Changed : "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide/32 v2, 0x1b7740

    .line 30
    .line 31
    .line 32
    cmp-long v0, v0, v2

    .line 33
    .line 34
    if-gez v0, :cond_2

    .line 35
    .line 36
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    const-string p0, "MARsPolicyManager"

    .line 41
    .line 42
    const-string p1, "SystemTime Changed Less than 30 min, didn\'t care!!"

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 54
    .line 55
    monitor-enter v1

    .line 56
    const/4 v2, 0x0

    .line 57
    move v3, v2

    .line 58
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 59
    .line 60
    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-ge v3, v4, :cond_5

    .line 67
    .line 68
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 69
    .line 70
    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Landroid/util/SparseArray;

    .line 77
    .line 78
    move v5, v2

    .line 79
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-ge v5, v6, :cond_4

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 90
    .line 91
    iget-wide v7, v6, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 92
    .line 93
    const-wide/16 v9, 0x0

    .line 94
    .line 95
    cmp-long v7, v7, v9

    .line 96
    .line 97
    if-eqz v7, :cond_3

    .line 98
    .line 99
    iput-wide p1, v6, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 100
    .line 101
    iput-wide p1, v6, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 102
    .line 103
    new-instance v7, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 104
    .line 105
    invoke-direct {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object v8, v6, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v8, v7, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 111
    .line 112
    iget v8, v6, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 113
    .line 114
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    iput-object v8, v7, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 119
    .line 120
    iget v8, v6, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 121
    .line 122
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    iput-object v8, v7, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 127
    .line 128
    iget-wide v8, v6, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 129
    .line 130
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    iput-object v6, v7, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    goto :goto_3

    .line 146
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-nez p0, :cond_6

    .line 158
    .line 159
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 160
    .line 161
    .line 162
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 163
    .line 164
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 165
    .line 166
    .line 167
    :cond_6
    return-void

    .line 168
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    throw p0
.end method

.method public final onSpecialBindServiceActions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string/jumbo v0, "com.google.android.projection.gearhead"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    sget-object v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$AndroidAutoFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->userIdPackageListSelfLocked:Landroid/util/ArrayMap;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->userIdPackageListSelfLocked:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    monitor-exit v1

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->logExcludeList:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    const-string v0, "FILTER 32"

    .line 58
    .line 59
    invoke-static {v0, p2}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p0

    .line 65
    :cond_2
    :goto_1
    if-nez p3, :cond_3

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    const-string v0, "android.intent.action.TTS_SERVICE"

    .line 69
    .line 70
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    if-eqz p4, :cond_6

    .line 77
    .line 78
    sget-object v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    .line 85
    .line 86
    monitor-enter v2

    .line 87
    :try_start_2
    iget-object v3, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Ljava/util/ArrayList;

    .line 94
    .line 95
    if-nez v3, :cond_4

    .line 96
    .line 97
    new-instance v3, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    goto :goto_3

    .line 105
    :cond_4
    :goto_2
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_5

    .line 110
    .line 111
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    .line 115
    .line 116
    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :cond_5
    monitor-exit v2

    .line 120
    goto :goto_4

    .line 121
    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    throw p0

    .line 123
    :cond_6
    :goto_4
    const-string v0, "android.net.VpnService"

    .line 124
    .line 125
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_8

    .line 130
    .line 131
    sget-object v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter$VPNPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    .line 132
    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    .line 138
    .line 139
    monitor-enter v2

    .line 140
    :try_start_3
    iget-object v3, v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    .line 141
    .line 142
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Ljava/util/ArrayList;

    .line 147
    .line 148
    if-nez v3, :cond_7

    .line 149
    .line 150
    new-instance v3, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    .line 156
    .line 157
    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :catchall_2
    move-exception p0

    .line 162
    goto :goto_6

    .line 163
    :cond_7
    :goto_5
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    monitor-exit v2

    .line 167
    goto :goto_7

    .line 168
    :goto_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 169
    throw p0

    .line 170
    :cond_8
    :goto_7
    const-string v0, "android.service.notification.NotificationListenerService"

    .line 171
    .line 172
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_a

    .line 177
    .line 178
    sget-object v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    .line 179
    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNLSPkgMap:Landroid/util/ArrayMap;

    .line 185
    .line 186
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Ljava/util/ArrayList;

    .line 191
    .line 192
    if-nez v2, :cond_9

    .line 193
    .line 194
    new-instance v2, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .line 198
    .line 199
    :cond_9
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNLSPkgMap:Landroid/util/ArrayMap;

    .line 203
    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    :cond_a
    const-string v0, "android.service.wallpaper.WallpaperService"

    .line 208
    .line 209
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_b

    .line 214
    .line 215
    const-string/jumbo v0, "com.samsung.android.service.wallpaper.LiveWallpaperService"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_b

    .line 223
    .line 224
    const-string/jumbo v0, "com.samsung.android.service.wallpaper.CoverWallpaperService"

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_c

    .line 232
    .line 233
    :cond_b
    const-string v0, "android"

    .line 234
    .line 235
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result p4

    .line 239
    if-eqz p4, :cond_c

    .line 240
    .line 241
    sget-object p4, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    .line 242
    .line 243
    invoke-virtual {p4, p2}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->onWallPaperPkgBound(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :cond_c
    sget-object p4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 247
    .line 248
    monitor-enter p4

    .line 249
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 250
    .line 251
    invoke-static {v0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    if-eqz p1, :cond_e

    .line 256
    .line 257
    const-string p2, "android.view.InputMethod"

    .line 258
    .line 259
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    if-nez p2, :cond_d

    .line 264
    .line 265
    const-string/jumbo p2, "org.androidprinting.intent.ACTION_GET_PRINT_SERVICE"

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    if-eqz p2, :cond_e

    .line 273
    .line 274
    goto :goto_8

    .line 275
    :catchall_3
    move-exception p0

    .line 276
    goto :goto_9

    .line 277
    :cond_d
    :goto_8
    const/4 p2, 0x0

    .line 278
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V

    .line 279
    .line 280
    .line 281
    :cond_e
    monitor-exit p4

    .line 282
    return-void

    .line 283
    :goto_9
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 284
    throw p0
.end method

.method public final postInit()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "MARsPolicyManager"

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v2, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    .line 11
    .line 12
    iget-boolean v3, v2, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x2

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string/jumbo v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v6, v2, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v7, v2, Lcom/android/server/am/MARsTrigger;->mEmergencyStateChangedReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 29
    .line 30
    invoke-virtual {v6, v7, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    iput-boolean v4, v2, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    .line 34
    .line 35
    :goto_0
    iget-boolean v3, v2, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const-string v3, "MARS_REQUEST_PKG_INFO"

    .line 41
    .line 42
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v6, v2, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    iget-object v7, v2, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiver:Lcom/android/server/am/MARsTrigger$5;

    .line 49
    .line 50
    invoke-virtual {v6, v7, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    iput-boolean v4, v2, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z

    .line 54
    .line 55
    :goto_1
    sget-object v2, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    :try_start_0
    iget-object v2, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    sget-object v7, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 68
    .line 69
    const/4 v10, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x0

    .line 73
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 74
    .line 75
    .line 76
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    if-eqz v2, :cond_14

    .line 78
    .line 79
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 80
    .line 81
    .line 82
    sput-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 83
    .line 84
    :try_start_1
    const-string/jumbo v2, "sys.config.mars_version"

    .line 85
    .line 86
    .line 87
    const-string v6, "9.00"

    .line 88
    .line 89
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catch_0
    const-string/jumbo v2, "init(), we cannot set system property"

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :goto_2
    const-string v2, "CHINA"

    .line 100
    .line 101
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_3

    .line 110
    .line 111
    sput-boolean v4, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 112
    .line 113
    :cond_3
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    sput-boolean v2, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    .line 118
    .line 119
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    sput-boolean v2, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    .line 124
    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string/jumbo v6, "isChinaModel = "

    .line 128
    .line 129
    .line 130
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 134
    .line 135
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    sput-boolean v2, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 150
    .line 151
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    .line 152
    .line 153
    if-nez v2, :cond_4

    .line 154
    .line 155
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    .line 156
    .line 157
    if-nez v2, :cond_4

    .line 158
    .line 159
    new-instance v2, Lcom/android/server/am/mars/HistoryBuffer;

    .line 160
    .line 161
    invoke-direct {v2}, Lcom/android/server/am/mars/HistoryBuffer;-><init>()V

    .line 162
    .line 163
    .line 164
    iput-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 165
    .line 166
    :cond_4
    new-instance v2, Lcom/android/server/am/mars/HistoryBuffer;

    .line 167
    .line 168
    invoke-direct {v2}, Lcom/android/server/am/mars/HistoryBuffer;-><init>()V

    .line 169
    .line 170
    .line 171
    iput-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 172
    .line 173
    new-instance v2, Lcom/android/server/am/mars/HistoryBuffer;

    .line 174
    .line 175
    invoke-direct {v2}, Lcom/android/server/am/mars/HistoryBuffer;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mFilterHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 179
    .line 180
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 181
    .line 182
    const-string/jumbo v6, "power"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Landroid/os/PowerManager;

    .line 190
    .line 191
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    .line 196
    .line 197
    .line 198
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 199
    .line 200
    if-eqz v2, :cond_5

    .line 201
    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string/jumbo v6, "mScreenOn : "

    .line 205
    .line 206
    .line 207
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    :cond_5
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 225
    .line 226
    .line 227
    sget-object v2, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 228
    .line 229
    iget-object v6, v2, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 230
    .line 231
    if-nez v6, :cond_6

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_6
    const/4 v7, 0x5

    .line 235
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    new-instance v7, Landroid/os/Bundle;

    .line 240
    .line 241
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string/jumbo v8, "boot"

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 251
    .line 252
    .line 253
    iget-object v7, v2, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 254
    .line 255
    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    .line 257
    .line 258
    :goto_3
    sget-object v6, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 259
    .line 260
    iget-object v7, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 261
    .line 262
    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/filter/FilterManager;->init(Landroid/content/Context;)V

    .line 263
    .line 264
    .line 265
    sget-object v6, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    .line 266
    .line 267
    iget-boolean v7, v6, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    .line 268
    .line 269
    const/4 v8, 0x4

    .line 270
    if-eqz v7, :cond_7

    .line 271
    .line 272
    goto/16 :goto_4

    .line 273
    .line 274
    :cond_7
    iget-object v7, v6, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    .line 275
    .line 276
    if-nez v7, :cond_8

    .line 277
    .line 278
    iget-object v7, v6, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 279
    .line 280
    const-string v9, "alarm"

    .line 281
    .line 282
    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    check-cast v7, Landroid/app/AlarmManager;

    .line 287
    .line 288
    iput-object v7, v6, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    .line 289
    .line 290
    :cond_8
    const-string v7, "android.intent.action.SCREEN_ON"

    .line 291
    .line 292
    invoke-static {v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 297
    .line 298
    const-string v10, "MARS_REQUEST_POLICY_INFO"

    .line 299
    .line 300
    const-string v11, "MARS_REQUEST_DB_COMPLETE"

    .line 301
    .line 302
    const-string v12, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 303
    .line 304
    invoke-static {v7, v9, v10, v11, v12}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    .line 308
    .line 309
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const-string/jumbo v9, "com.samsung.android.sm.ACTION_SCPM_MARS_SETTINGS_UPDATED"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    const/16 v9, 0x3e7

    .line 319
    .line 320
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 321
    .line 322
    .line 323
    iget-object v9, v6, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 324
    .line 325
    iget-object v10, v6, Lcom/android/server/am/MARsTrigger;->mIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 326
    .line 327
    invoke-virtual {v9, v10, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 328
    .line 329
    .line 330
    new-instance v7, Landroid/content/IntentFilter;

    .line 331
    .line 332
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 333
    .line 334
    .line 335
    const-string v9, "android.intent.action.SCREEN_OFF"

    .line 336
    .line 337
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    sget-object v9, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const/16 v9, 0x3e8

    .line 346
    .line 347
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 348
    .line 349
    .line 350
    iget-object v9, v6, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 351
    .line 352
    iget-object v10, v6, Lcom/android/server/am/MARsTrigger;->mTriggerIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 353
    .line 354
    invoke-virtual {v9, v10, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 355
    .line 356
    .line 357
    new-instance v7, Landroid/content/IntentFilter;

    .line 358
    .line 359
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 360
    .line 361
    .line 362
    const-string v9, "FIRST_ALARM_TRIGGER_ACTION"

    .line 363
    .line 364
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    const-string/jumbo v9, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    .line 368
    .line 369
    .line 370
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    const-string/jumbo v9, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    .line 374
    .line 375
    .line 376
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget-object v9, v6, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 380
    .line 381
    iget-object v10, v6, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 382
    .line 383
    invoke-virtual {v9, v10, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 384
    .line 385
    .line 386
    new-instance v13, Landroid/content/IntentFilter;

    .line 387
    .line 388
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    .line 390
    .line 391
    const-string v5, "android.intent.action.USER_ADDED"

    .line 392
    .line 393
    invoke-virtual {v13, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    const-string v5, "android.intent.action.USER_STOPPED"

    .line 397
    .line 398
    invoke-virtual {v13, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const-string v5, "android.intent.action.USER_STARTED"

    .line 402
    .line 403
    invoke-virtual {v13, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    iget-object v11, v6, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 407
    .line 408
    iget-object v12, v6, Lcom/android/server/am/MARsTrigger;->mUserActionReceiver:Lcom/android/server/am/MARsTrigger$5;

    .line 409
    .line 410
    const/4 v14, 0x0

    .line 411
    const/4 v15, 0x0

    .line 412
    const/16 v16, 0x4

    .line 413
    .line 414
    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 415
    .line 416
    .line 417
    const-string/jumbo v5, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    .line 418
    .line 419
    .line 420
    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 421
    .line 422
    .line 423
    move-result-object v11

    .line 424
    iget-object v9, v6, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 425
    .line 426
    iget-object v10, v6, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 427
    .line 428
    const-string v12, "android.permission.WRITE_SECURE_SETTINGS"

    .line 429
    .line 430
    const/4 v13, 0x0

    .line 431
    const/4 v14, 0x2

    .line 432
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 433
    .line 434
    .line 435
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    .line 436
    .line 437
    const-string v7, "android.intent.action.REBOOT"

    .line 438
    .line 439
    invoke-static {v5, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    iget-object v7, v6, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 444
    .line 445
    iget-object v9, v6, Lcom/android/server/am/MARsTrigger;->mAppStartUpIntentReceiver:Lcom/android/server/am/MARsTrigger$5;

    .line 446
    .line 447
    invoke-virtual {v7, v9, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 448
    .line 449
    .line 450
    new-instance v5, Landroid/content/IntentFilter;

    .line 451
    .line 452
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 453
    .line 454
    .line 455
    const-string v7, "android.intent.action.USER_SWITCHED"

    .line 456
    .line 457
    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    iget-object v7, v6, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 461
    .line 462
    iget-object v9, v6, Lcom/android/server/am/MARsTrigger;->mUserIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 463
    .line 464
    invoke-virtual {v7, v9, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 465
    .line 466
    .line 467
    new-instance v5, Landroid/content/IntentFilter;

    .line 468
    .line 469
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 470
    .line 471
    .line 472
    const-string v7, "android.intent.action.TIME_SET"

    .line 473
    .line 474
    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    iget-object v7, v6, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 478
    .line 479
    iget-object v9, v6, Lcom/android/server/am/MARsTrigger;->mTimeIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 480
    .line 481
    invoke-virtual {v7, v9, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 482
    .line 483
    .line 484
    iput-boolean v4, v6, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    .line 485
    .line 486
    :goto_4
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v2}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendInitSettingMsgToDBHandler()V

    .line 490
    .line 491
    .line 492
    sget-object v2, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 493
    .line 494
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 495
    .line 496
    invoke-virtual {v2, v5}, Lcom/android/server/am/mars/database/MARsDBManager;->registerContentObservers(Landroid/content/Context;)V

    .line 497
    .line 498
    .line 499
    sget-boolean v2, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 500
    .line 501
    sget-object v2, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 502
    .line 503
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 504
    .line 505
    iput-object v5, v2, Lcom/android/server/am/mars/EventRecorder;->mContext:Landroid/content/Context;

    .line 506
    .line 507
    sget-object v5, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 508
    .line 509
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 510
    .line 511
    .line 512
    :try_start_2
    new-instance v6, Ljava/io/File;

    .line 513
    .line 514
    const-string v7, "/data/log/mars/stats.txt"

    .line 515
    .line 516
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    sput-object v6, Lcom/android/server/am/mars/EventRecorder;->file:Ljava/io/File;

    .line 520
    .line 521
    invoke-static {v6}, Lcom/android/server/am/mars/EventRecorder;->createNewEmptyFile(Ljava/io/File;)Z

    .line 522
    .line 523
    .line 524
    move-result v6

    .line 525
    sput-boolean v6, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    .line 527
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 528
    .line 529
    .line 530
    sget-boolean v5, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 531
    .line 532
    const-wide/32 v6, 0x2932e00

    .line 533
    .line 534
    .line 535
    if-eqz v5, :cond_b

    .line 536
    .line 537
    new-instance v5, Landroid/app/job/JobInfo$Builder;

    .line 538
    .line 539
    new-instance v9, Landroid/content/ComponentName;

    .line 540
    .line 541
    iget-object v10, v2, Lcom/android/server/am/mars/EventRecorder;->mContext:Landroid/content/Context;

    .line 542
    .line 543
    const-class v11, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;

    .line 544
    .line 545
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 546
    .line 547
    .line 548
    invoke-direct {v5, v4, v9}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v5, v6, v7}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 552
    .line 553
    .line 554
    move-result-object v9

    .line 555
    invoke-virtual {v9, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 556
    .line 557
    .line 558
    move-result-object v9

    .line 559
    invoke-virtual {v9, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 560
    .line 561
    .line 562
    iget-object v2, v2, Lcom/android/server/am/mars/EventRecorder;->mContext:Landroid/content/Context;

    .line 563
    .line 564
    const-string/jumbo v9, "jobscheduler"

    .line 565
    .line 566
    .line 567
    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    check-cast v2, Landroid/app/job/JobScheduler;

    .line 572
    .line 573
    if-eqz v2, :cond_9

    .line 574
    .line 575
    const-string v9, "MARsEventRecorderNamespace"

    .line 576
    .line 577
    invoke-virtual {v2, v9}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    invoke-virtual {v5}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 582
    .line 583
    .line 584
    move-result-object v5

    .line 585
    invoke-virtual {v2, v5}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    const-string v5, "RemoveOutdatedJobService schedule result : "

    .line 590
    .line 591
    const-string v9, "EventRecorder"

    .line 592
    .line 593
    invoke-static {v2, v5, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    goto :goto_5

    .line 597
    :cond_9
    move v2, v3

    .line 598
    :goto_5
    if-ne v2, v4, :cond_a

    .line 599
    .line 600
    move v2, v4

    .line 601
    goto :goto_6

    .line 602
    :cond_a
    move v2, v3

    .line 603
    :goto_6
    sput-boolean v2, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 604
    .line 605
    :cond_b
    sget-object v2, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 606
    .line 607
    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 608
    .line 609
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    .line 611
    .line 612
    sget-boolean v5, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 613
    .line 614
    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 615
    .line 616
    iget-object v5, v5, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 617
    .line 618
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getActiveUids()Ljava/util/Map;

    .line 619
    .line 620
    .line 621
    move-result-object v5

    .line 622
    check-cast v5, Ljava/util/HashMap;

    .line 623
    .line 624
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 625
    .line 626
    .line 627
    move-result-object v5

    .line 628
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 629
    .line 630
    .line 631
    move-result-object v5

    .line 632
    :cond_c
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 633
    .line 634
    .line 635
    move-result v10

    .line 636
    if-eqz v10, :cond_d

    .line 637
    .line 638
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v10

    .line 642
    check-cast v10, Ljava/util/Map$Entry;

    .line 643
    .line 644
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v11

    .line 648
    check-cast v11, Ljava/lang/Integer;

    .line 649
    .line 650
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 651
    .line 652
    .line 653
    move-result v12

    .line 654
    invoke-virtual {v2, v12}, Lcom/android/server/am/mars/util/UidStateMgr;->addToRunningList(I)V

    .line 655
    .line 656
    .line 657
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 658
    .line 659
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v10

    .line 663
    invoke-virtual {v12, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result v10

    .line 667
    if-eqz v10, :cond_c

    .line 668
    .line 669
    iget-object v10, v2, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 670
    .line 671
    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v12

    .line 675
    if-nez v12, :cond_c

    .line 676
    .line 677
    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    goto :goto_7

    .line 681
    :cond_d
    iget-object v10, v2, Lcom/android/server/am/mars/util/UidStateMgr;->mUidObserver:Landroid/app/IUidObserver;

    .line 682
    .line 683
    const/16 v11, 0x1f

    .line 684
    .line 685
    const/4 v14, 0x0

    .line 686
    const/4 v12, -0x1

    .line 687
    const/4 v13, 0x0

    .line 688
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/am/ActivityManagerService;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;

    .line 689
    .line 690
    .line 691
    sget v2, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->$r8$clinit:I

    .line 692
    .line 693
    sget-object v2, Lcom/android/server/am/mars/util/ForegroundServiceMgr$ForegroundServiceMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    .line 694
    .line 695
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 696
    .line 697
    .line 698
    const-class v5, Landroid/app/ActivityManagerInternal;

    .line 699
    .line 700
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v5

    .line 704
    check-cast v5, Landroid/app/ActivityManagerInternal;

    .line 705
    .line 706
    iput-object v5, v2, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 707
    .line 708
    if-eqz v5, :cond_e

    .line 709
    .line 710
    invoke-virtual {v5, v2}, Landroid/app/ActivityManagerInternal;->addForegroundServiceStateListener(Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;)V

    .line 711
    .line 712
    .line 713
    iget-object v5, v2, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 714
    .line 715
    iget-object v2, v2, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mProcessObserver:Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;

    .line 716
    .line 717
    invoke-virtual {v5, v2}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 718
    .line 719
    .line 720
    goto :goto_8

    .line 721
    :cond_e
    const-string v2, "ForegroundServiceMgr"

    .line 722
    .line 723
    const-string v5, "AMI is null"

    .line 724
    .line 725
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    .line 727
    .line 728
    :goto_8
    sget-object v2, Lcom/android/server/am/mars/MARsBigData$MARsBigDataHolder;->INSTANCE:Lcom/android/server/am/mars/MARsBigData;

    .line 729
    .line 730
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 731
    .line 732
    iput-object v5, v2, Lcom/android/server/am/mars/MARsBigData;->mContext:Landroid/content/Context;

    .line 733
    .line 734
    iget-object v9, v2, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    .line 735
    .line 736
    if-nez v9, :cond_f

    .line 737
    .line 738
    const-string v9, "HqmManagerService"

    .line 739
    .line 740
    invoke-virtual {v5, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v5

    .line 744
    check-cast v5, Landroid/os/SemHqmManager;

    .line 745
    .line 746
    iput-object v5, v2, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    .line 747
    .line 748
    :cond_f
    const-string/jumbo v5, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 749
    .line 750
    .line 751
    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 752
    .line 753
    .line 754
    move-result-object v11

    .line 755
    iget-object v9, v2, Lcom/android/server/am/mars/MARsBigData;->mContext:Landroid/content/Context;

    .line 756
    .line 757
    iget-object v10, v2, Lcom/android/server/am/mars/MARsBigData;->mIntentReceiver:Lcom/android/server/am/mars/MARsBigData$1;

    .line 758
    .line 759
    const-string/jumbo v12, "com.samsung.android.permission.HQM_NOTIFICATION_PERMISSION"

    .line 760
    .line 761
    .line 762
    const/4 v13, 0x0

    .line 763
    const/4 v14, 0x2

    .line 764
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 765
    .line 766
    .line 767
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 768
    .line 769
    .line 770
    move-result v2

    .line 771
    if-nez v2, :cond_10

    .line 772
    .line 773
    const-class v2, Lcom/android/server/usage/AppStandbyInternal;

    .line 774
    .line 775
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    check-cast v2, Lcom/android/server/usage/AppStandbyInternal;

    .line 780
    .line 781
    iput-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 782
    .line 783
    if-eqz v2, :cond_10

    .line 784
    .line 785
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;

    .line 786
    .line 787
    invoke-direct {v5, v0}, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    .line 788
    .line 789
    .line 790
    invoke-interface {v2, v5}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 791
    .line 792
    .line 793
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 794
    .line 795
    if-eqz v2, :cond_10

    .line 796
    .line 797
    const-string/jumbo v2, "registerAppIdleStateReceiver"

    .line 798
    .line 799
    .line 800
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    .line 802
    .line 803
    :cond_10
    sget-object v2, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 804
    .line 805
    invoke-virtual {v2, v4}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(Z)V

    .line 806
    .line 807
    .line 808
    iget-object v5, v2, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 809
    .line 810
    if-nez v5, :cond_11

    .line 811
    .line 812
    goto :goto_9

    .line 813
    :cond_11
    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 814
    .line 815
    .line 816
    iget-object v5, v2, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 817
    .line 818
    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 819
    .line 820
    .line 821
    move-result-object v5

    .line 822
    iget-object v8, v2, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 823
    .line 824
    const-wide/16 v9, 0x0

    .line 825
    .line 826
    invoke-virtual {v8, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 827
    .line 828
    .line 829
    :goto_9
    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 830
    .line 831
    .line 832
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 833
    .line 834
    .line 835
    sget-object v3, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 836
    .line 837
    iget-object v5, v3, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 838
    .line 839
    if-nez v5, :cond_12

    .line 840
    .line 841
    goto :goto_a

    .line 842
    :cond_12
    const/16 v8, 0xc

    .line 843
    .line 844
    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 845
    .line 846
    .line 847
    move-result-object v5

    .line 848
    iget-object v3, v3, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 849
    .line 850
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 851
    .line 852
    .line 853
    :goto_a
    const-string/jumbo v3, "sendUpdateDisableResetTimeToDBHandler enter"

    .line 854
    .line 855
    .line 856
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    .line 858
    .line 859
    :try_start_3
    const-string/jumbo v3, "sys.dualapp.profile_id"

    .line 860
    .line 861
    .line 862
    const-string v5, "-1"

    .line 863
    .line 864
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v3

    .line 868
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 869
    .line 870
    .line 871
    move-result v3

    .line 872
    iput v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    .line 873
    .line 874
    const/16 v5, 0x5f

    .line 875
    .line 876
    if-lt v3, v5, :cond_13

    .line 877
    .line 878
    const/16 v5, 0x63

    .line 879
    .line 880
    if-gt v3, v5, :cond_13

    .line 881
    .line 882
    iput-boolean v4, v0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z

    .line 883
    .line 884
    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 885
    .line 886
    .line 887
    goto :goto_b

    .line 888
    :catch_1
    const-string/jumbo v2, "init() get DualAppUserId failed!"

    .line 889
    .line 890
    .line 891
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    .line 893
    .line 894
    :cond_13
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->setSubUserIds()V

    .line 895
    .line 896
    .line 897
    return-void

    .line 898
    :catchall_0
    move-exception v0

    .line 899
    sget-object v1, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 900
    .line 901
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 902
    .line 903
    .line 904
    throw v0

    .line 905
    :catchall_1
    move-exception v0

    .line 906
    goto :goto_c

    .line 907
    :catch_2
    move-exception v0

    .line 908
    goto :goto_d

    .line 909
    :goto_c
    throw v0

    .line 910
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    const-string v2, "Exception occurred in isSMProviderExist : "

    .line 913
    .line 914
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v2

    .line 921
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v1

    .line 928
    const-string v2, "MARsDBManager"

    .line 929
    .line 930
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    .line 932
    .line 933
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 934
    .line 935
    .line 936
    :cond_14
    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 937
    .line 938
    return-void
.end method

.method public final removeRestrictedInfo(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_5

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-nez v7, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 57
    .line 58
    monitor-enter v7

    .line 59
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 60
    .line 61
    invoke-static {v8, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 68
    .line 69
    const/4 v8, 0x4

    .line 70
    if-ne v6, v8, :cond_1

    .line 71
    .line 72
    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    iput v6, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 77
    .line 78
    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    iput v6, v5, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 83
    .line 84
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_2

    .line 90
    :cond_1
    iget-boolean v6, v5, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 91
    .line 92
    if-eqz v6, :cond_2

    .line 93
    .line 94
    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 95
    .line 96
    if-nez v6, :cond_2

    .line 97
    .line 98
    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    iput v6, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 103
    .line 104
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 109
    .line 110
    if-nez v4, :cond_3

    .line 111
    .line 112
    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    iput v4, v5, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 117
    .line 118
    iput-object p1, v5, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 119
    .line 120
    :cond_3
    const/4 v4, 0x0

    .line 121
    iput v4, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 122
    .line 123
    const/4 v4, 0x1

    .line 124
    iput v4, v5, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 125
    .line 126
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 127
    .line 128
    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    iget-object v6, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 132
    .line 133
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 134
    .line 135
    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 136
    .line 137
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 142
    .line 143
    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 144
    .line 145
    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 150
    .line 151
    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 152
    .line 153
    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 158
    .line 159
    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 160
    .line 161
    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 166
    .line 167
    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 168
    .line 169
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    iget v4, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 183
    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    :cond_4
    :goto_1
    monitor-exit v7

    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    throw p0

    .line 196
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-nez p2, :cond_6

    .line 201
    .line 202
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 207
    .line 208
    .line 209
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-nez p2, :cond_7

    .line 214
    .line 215
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->awakePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 220
    .line 221
    .line 222
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    if-nez p0, :cond_8

    .line 227
    .line 228
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 229
    .line 230
    .line 231
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 232
    .line 233
    invoke-virtual {p0, v2}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 234
    .line 235
    .line 236
    :cond_8
    return-object v3
.end method

.method public final reportStatusWithMARs(ILjava/lang/String;Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 5
    .line 6
    invoke-static {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 16
    .line 17
    sget-boolean p2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->checkJobRunningCount:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final restrictBySEP(IILjava/lang/String;IZ)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    if-ne p2, v1, :cond_3

    .line 30
    .line 31
    if-eqz p5, :cond_2

    .line 32
    .line 33
    const-string p5, "added_from_user_manual"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string p5, "added_from_mars_auto"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    const/4 v1, 0x2

    .line 40
    if-ne p2, v1, :cond_5

    .line 41
    .line 42
    if-eqz p5, :cond_4

    .line 43
    .line 44
    const-string/jumbo p5, "deleted_from_user_manual"

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    const-string/jumbo p5, "deleted_from_mars_auto"

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    const-string/jumbo p5, "default"

    .line 53
    .line 54
    .line 55
    :goto_0
    new-instance v1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    .line 56
    .line 57
    invoke-direct {v1, p1, p2, p5}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 61
    .line 62
    invoke-direct {p1, p3, p4, v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;-><init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0
.end method

.method public final restrictJobsByUid(IZ)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "android.intent.ACTION_JOB_RESTRICT_UID"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "uid"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const-string/jumbo v1, "restrict"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v2, "restrictJobsByUid: u="

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, ", restrict="

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string p2, "MARsPolicyManager"

    .line 56
    .line 57
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    new-instance p2, Landroid/os/UserHandle;

    .line 63
    .line 64
    iget p0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    .line 65
    .line 66
    invoke-direct {p2, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public final declared-synchronized setIsManualMode(Z)V
    .locals 3

    .line 1
    const-string v0, "ManualMode "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    iput-wide v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 11
    .line 12
    sget-object v1, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :goto_0
    const-string v1, "DEV"

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const-string p1, "ON"

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-string p1, "OFF"

    .line 33
    .line 34
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_2
    monitor-exit p0

    .line 44
    throw p1
.end method

.method public final declared-synchronized setManagedProfileEnabled(IZ)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 3
    .line 4
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    :try_start_1
    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 8
    .line 9
    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 19
    .line 20
    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 25
    .line 26
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :catchall_1
    move-exception p1

    .line 32
    monitor-exit p0

    .line 33
    throw p1
.end method

.method public final setMaxLevel(ILjava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v1, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_8

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq p1, v2, :cond_4

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eq p1, v2, :cond_1

    .line 24
    .line 25
    const/4 p2, 0x4

    .line 26
    if-eq p1, p2, :cond_0

    .line 27
    .line 28
    move v2, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/16 v2, 0x8

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-boolean p1, v1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget v8, v1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    move-object v4, p0

    .line 43
    move-object v7, p2

    .line 44
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/MARsPolicyManager;->restrictBySEP(IILjava/lang/String;IZ)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    sget-object p1, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 48
    .line 49
    iget-object p2, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 50
    .line 51
    iget v4, v1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 52
    .line 53
    iget-boolean v5, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    .line 54
    .line 55
    if-eqz v5, :cond_3

    .line 56
    .line 57
    const/16 v5, 0x2d

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/16 v5, 0x28

    .line 61
    .line 62
    :goto_0
    invoke-virtual {p1, v4, v5, p2, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(IILjava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_5

    .line 68
    :cond_4
    const/16 v2, 0x400

    .line 69
    .line 70
    :goto_1
    if-nez v2, :cond_5

    .line 71
    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_8

    .line 79
    .line 80
    new-instance p0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object p1, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 86
    .line 87
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 88
    .line 89
    iget p1, v1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 96
    .line 97
    iget-boolean p1, v1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 98
    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    const-string p2, "1"

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    const-string p2, "0"

    .line 105
    .line 106
    :goto_2
    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 107
    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    const-string p1, "1"

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_7
    const-string p1, "0"

    .line 114
    .line 115
    :goto_3
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    .line 116
    .line 117
    iget-object p1, v1, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 118
    .line 119
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 120
    .line 121
    iget p1, v1, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 122
    .line 123
    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 128
    .line 129
    iget-wide p1, v1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 130
    .line 131
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 136
    .line 137
    iget p1, v1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 138
    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 144
    .line 145
    iget p1, v1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 146
    .line 147
    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    goto :goto_4

    .line 158
    :cond_8
    const/4 p0, 0x0

    .line 159
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    if-eqz p0, :cond_9

    .line 161
    .line 162
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 163
    .line 164
    .line 165
    sget-object p1, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 166
    .line 167
    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 168
    .line 169
    .line 170
    :cond_9
    return-void

    .line 171
    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    throw p0
.end method

.method public final setPackageDisablerEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 6
    .line 7
    if-eq v1, p1, :cond_1

    .line 8
    .line 9
    iput-boolean p1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 10
    .line 11
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v1, "setPackageDisablerEnabled "

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 24
    .line 25
    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 26
    .line 27
    const-string v2, "MARsPolicyManager"

    .line 28
    .line 29
    invoke-static {v2, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v1, "disabler_switch : "

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "DEV"

    .line 48
    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final declared-synchronized setScreenOnState(Z)V
    .locals 2

    .line 1
    const-string v0, "SCR "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 5
    .line 6
    const-string v1, "SYS"

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p1, "ON"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const-string p1, "OFF"

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit p0

    .line 27
    throw p1
.end method

.method public final setSubUserIds()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "user"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/os/UserManager;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/os/UserHandle;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 41
    .line 42
    monitor-enter v2

    .line 43
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 44
    .line 45
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 50
    .line 51
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-object v2, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p0

    .line 61
    :cond_1
    return-void
.end method

.method public final skipTriggerAction(Lcom/android/server/am/MARsPackageInfo;)Z
    .locals 8

    .line 1
    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 2
    .line 3
    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mCtsGtsList:Ljava/util/Set;

    .line 10
    .line 11
    check-cast v1, Ljava/util/HashSet;

    .line 12
    .line 13
    iget-object v3, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    return v3

    .line 23
    :cond_1
    const/4 v1, 0x2

    .line 24
    if-le v0, v1, :cond_2

    .line 25
    .line 26
    iget v4, p1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 27
    .line 28
    if-eq v0, v4, :cond_3

    .line 29
    .line 30
    :cond_2
    const/4 v4, 0x4

    .line 31
    if-le v0, v4, :cond_4

    .line 32
    .line 33
    :cond_3
    return v3

    .line 34
    :cond_4
    iget v5, p1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 35
    .line 36
    if-ne v0, v4, :cond_8

    .line 37
    .line 38
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-boolean p0, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 46
    .line 47
    if-nez p0, :cond_6

    .line 48
    .line 49
    sget-object p0, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 50
    .line 51
    invoke-virtual {p0, v5}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidActive(I)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_7

    .line 56
    .line 57
    :cond_6
    move v2, v3

    .line 58
    :cond_7
    return v2

    .line 59
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_9

    .line 64
    .line 65
    return v2

    .line 66
    :cond_9
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const/4 v7, 0x3

    .line 71
    if-eqz v6, :cond_d

    .line 72
    .line 73
    sget-object p0, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 74
    .line 75
    invoke-virtual {p0, v5}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_c

    .line 80
    .line 81
    iget p0, p1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 82
    .line 83
    if-gt p0, v1, :cond_b

    .line 84
    .line 85
    iget-boolean p0, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 86
    .line 87
    if-nez p0, :cond_a

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_a
    iput v7, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_b
    :goto_0
    return v3

    .line 94
    :cond_c
    :goto_1
    return v2

    .line 95
    :cond_d
    sget-object v1, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 96
    .line 97
    invoke-virtual {v1, v5}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-nez v6, :cond_e

    .line 102
    .line 103
    return v3

    .line 104
    :cond_e
    invoke-virtual {v1, v5}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidActive(I)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_10

    .line 109
    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    monitor-exit p0

    .line 114
    if-eqz v1, :cond_f

    .line 115
    .line 116
    if-ge v0, v7, :cond_f

    .line 117
    .line 118
    iget p0, p1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 119
    .line 120
    and-int/2addr p0, v4

    .line 121
    if-nez p0, :cond_f

    .line 122
    .line 123
    return v2

    .line 124
    :cond_f
    return v3

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    monitor-exit p0

    .line 127
    throw p1

    .line 128
    :cond_10
    return v2
.end method

.method public final switchPolicies(IZ)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 15
    .line 16
    :cond_0
    if-eqz p1, :cond_3

    .line 17
    .line 18
    iput-boolean v2, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-ne p1, v2, :cond_3

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iput-boolean v2, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 28
    .line 29
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iput-boolean v1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 34
    .line 35
    :cond_3
    :goto_0
    if-nez p2, :cond_7

    .line 36
    .line 37
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 38
    .line 39
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 40
    .line 41
    iget-boolean p2, p1, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 42
    .line 43
    if-eqz p2, :cond_4

    .line 44
    .line 45
    const-string/jumbo p2, "switchPolicy"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 52
    .line 53
    monitor-enter p1

    .line 54
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 55
    .line 56
    if-eqz p2, :cond_5

    .line 57
    .line 58
    iget-object p2, p2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    .line 61
    .line 62
    .line 63
    :cond_5
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 64
    .line 65
    if-eqz p0, :cond_6

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 70
    .line 71
    .line 72
    :cond_6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 74
    .line 75
    .line 76
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendInitSettingMsgToDBHandler()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p0

    .line 85
    :cond_7
    :goto_1
    return-void
.end method

.method public final triggerAction()V
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "MARsPolicyManager"

    .line 4
    .line 5
    const-string/jumbo v2, "triggerAction called!"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x5

    .line 17
    new-array v4, v3, [Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    aput-object v0, v4, v5

    .line 23
    .line 24
    const-string v0, "[FRZ]"

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    aput-object v0, v4, v6

    .line 28
    .line 29
    const-string v0, "[FAS]"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    aput-object v0, v4, v7

    .line 33
    .line 34
    const-string v0, "[FOS]"

    .line 35
    .line 36
    const/4 v8, 0x3

    .line 37
    aput-object v0, v4, v8

    .line 38
    .line 39
    const-string v0, "[DIS]"

    .line 40
    .line 41
    const/4 v9, 0x4

    .line 42
    aput-object v0, v4, v9

    .line 43
    .line 44
    new-array v10, v3, [Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, ""

    .line 47
    .line 48
    aput-object v0, v10, v5

    .line 49
    .line 50
    const-string v0, "[FRZ]"

    .line 51
    .line 52
    aput-object v0, v10, v6

    .line 53
    .line 54
    const-string v0, "[FAS]"

    .line 55
    .line 56
    aput-object v0, v10, v7

    .line 57
    .line 58
    const-string v0, "[FOS]"

    .line 59
    .line 60
    aput-object v0, v10, v8

    .line 61
    .line 62
    const-string v0, "[DIS]"

    .line 63
    .line 64
    aput-object v0, v10, v9

    .line 65
    .line 66
    new-array v11, v5, [I

    .line 67
    .line 68
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 69
    .line 70
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 71
    .line 72
    iget-boolean v12, v0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 73
    .line 74
    if-eqz v12, :cond_0

    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 78
    .line 79
    .line 80
    move-result-wide v12

    .line 81
    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->updateBTUsingPackages()V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 92
    .line 93
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 96
    .line 97
    monitor-exit p0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    .line 100
    sget-object v14, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter$ActiveSensorFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;

    .line 101
    .line 102
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    const-string/jumbo v0, "sdhms"

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    .line 120
    :try_start_1
    monitor-enter v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :try_start_2
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getActiveSensorList()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v14, v0}, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->parseActiveSensor(Ljava/lang/String;)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-object v0, v14, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->mSensorList:Ljava/util/List;

    .line 130
    .line 131
    monitor-exit v14

    .line 132
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string v14, "MARs:ActiveSensorFilter"

    .line 138
    .line 139
    const-string v15, "Exception at getActiveSensorList:"

    .line 140
    .line 141
    invoke-static {v0, v15, v14}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 145
    .line 146
    iget-boolean v14, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 147
    .line 148
    if-eqz v14, :cond_2

    .line 149
    .line 150
    iget-boolean v0, v0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 151
    .line 152
    if-eqz v0, :cond_2

    .line 153
    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_2

    .line 159
    .line 160
    return-void

    .line 161
    :cond_2
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 162
    .line 163
    monitor-enter v14

    .line 164
    move v15, v5

    .line 165
    move/from16 v17, v15

    .line 166
    .line 167
    const/16 v16, 0x0

    .line 168
    .line 169
    :goto_1
    :try_start_4
    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 170
    .line 171
    iget-object v5, v5, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 172
    .line 173
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-ge v15, v5, :cond_23

    .line 178
    .line 179
    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 180
    .line 181
    iget-object v5, v5, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 182
    .line 183
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    check-cast v5, Landroid/util/SparseArray;

    .line 188
    .line 189
    const/4 v3, 0x0

    .line 190
    :goto_2
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-ge v3, v0, :cond_22

    .line 195
    .line 196
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lcom/android/server/am/MARsPackageInfo;

    .line 201
    .line 202
    if-eqz v0, :cond_3

    .line 203
    .line 204
    iget v9, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 205
    .line 206
    invoke-virtual {v1, v9}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    if-eqz v9, :cond_3

    .line 211
    .line 212
    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->skipTriggerAction(Lcom/android/server/am/MARsPackageInfo;)Z

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    if-eqz v9, :cond_5

    .line 217
    .line 218
    :cond_3
    move-object/from16 v21, v4

    .line 219
    .line 220
    move-object/from16 v18, v5

    .line 221
    .line 222
    move-object/from16 v20, v11

    .line 223
    .line 224
    :cond_4
    :goto_3
    move-wide/from16 v24, v12

    .line 225
    .line 226
    move/from16 v19, v15

    .line 227
    .line 228
    goto/16 :goto_c

    .line 229
    .line 230
    :cond_5
    iget v9, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 231
    .line 232
    iget v8, v0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 233
    .line 234
    iget-object v7, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 235
    .line 236
    iget v6, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 237
    .line 238
    move-object/from16 v18, v5

    .line 239
    .line 240
    const/4 v5, 0x1

    .line 241
    if-eq v8, v5, :cond_11

    .line 242
    .line 243
    const/4 v5, 0x2

    .line 244
    if-eq v8, v5, :cond_11

    .line 245
    .line 246
    const/4 v5, 0x3

    .line 247
    if-eq v8, v5, :cond_b

    .line 248
    .line 249
    const/4 v5, 0x4

    .line 250
    if-eq v8, v5, :cond_6

    .line 251
    .line 252
    move-object/from16 v21, v4

    .line 253
    .line 254
    move-object/from16 v20, v11

    .line 255
    .line 256
    move-wide/from16 v24, v12

    .line 257
    .line 258
    move/from16 v19, v15

    .line 259
    .line 260
    const/4 v5, 0x0

    .line 261
    goto/16 :goto_b

    .line 262
    .line 263
    :cond_6
    iget-boolean v5, v0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 264
    .line 265
    if-nez v5, :cond_7

    .line 266
    .line 267
    iget-boolean v5, v0, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    .line 268
    .line 269
    if-eqz v5, :cond_7

    .line 270
    .line 271
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 272
    .line 273
    invoke-direct {v5, v9, v6, v7}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 277
    .line 278
    .line 279
    move-object/from16 v21, v4

    .line 280
    .line 281
    move-object/from16 v20, v11

    .line 282
    .line 283
    :goto_4
    move-wide/from16 v24, v12

    .line 284
    .line 285
    move/from16 v19, v15

    .line 286
    .line 287
    goto/16 :goto_b

    .line 288
    .line 289
    :catchall_1
    move-exception v0

    .line 290
    goto/16 :goto_21

    .line 291
    .line 292
    :cond_7
    sget-object v5, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 293
    .line 294
    sget-object v5, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 295
    .line 296
    move-object/from16 v20, v11

    .line 297
    .line 298
    const/16 v11, 0x15

    .line 299
    .line 300
    move-object/from16 v21, v4

    .line 301
    .line 302
    const/4 v4, 0x0

    .line 303
    invoke-virtual {v5, v11, v7, v4, v7}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-nez v5, :cond_8

    .line 308
    .line 309
    sget-object v4, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 310
    .line 311
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    const/4 v4, 0x7

    .line 315
    invoke-static {v4, v6, v9, v7}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-nez v4, :cond_9

    .line 320
    .line 321
    new-instance v4, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 322
    .line 323
    iget-object v5, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 324
    .line 325
    iget v6, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 326
    .line 327
    iget v7, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 328
    .line 329
    invoke-direct {v4, v6, v7, v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-static {v0, v4}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 333
    .line 334
    .line 335
    :goto_5
    move-object v5, v4

    .line 336
    goto :goto_4

    .line 337
    :cond_8
    const/4 v4, 0x0

    .line 338
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    aget-object v6, v10, v8

    .line 344
    .line 345
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v6, " "

    .line 349
    .line 350
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    iget v0, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 354
    .line 355
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v0, ":"

    .line 359
    .line 360
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    aput-object v0, v10, v8

    .line 371
    .line 372
    :cond_a
    :goto_6
    move-wide/from16 v24, v12

    .line 373
    .line 374
    move/from16 v19, v15

    .line 375
    .line 376
    const/4 v5, 0x0

    .line 377
    const/16 v17, 0x1

    .line 378
    .line 379
    goto/16 :goto_b

    .line 380
    .line 381
    :cond_b
    move-object/from16 v21, v4

    .line 382
    .line 383
    move-object/from16 v20, v11

    .line 384
    .line 385
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    if-eqz v4, :cond_f

    .line 390
    .line 391
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 392
    .line 393
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 394
    .line 395
    const/4 v5, 0x0

    .line 396
    const/16 v11, 0xa

    .line 397
    .line 398
    invoke-virtual {v4, v11, v7, v5, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    if-eqz v4, :cond_c

    .line 403
    .line 404
    sget-object v4, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 405
    .line 406
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    .line 408
    .line 409
    const/16 v4, 0xe

    .line 410
    .line 411
    invoke-static {v4, v6, v9, v7}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 412
    .line 413
    .line 414
    move-result v4

    .line 415
    if-nez v4, :cond_c

    .line 416
    .line 417
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 418
    .line 419
    iget-object v4, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 420
    .line 421
    iget v6, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 422
    .line 423
    iget v7, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 424
    .line 425
    invoke-direct {v5, v6, v7, v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-static {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_4

    .line 432
    .line 433
    :cond_c
    sget-object v4, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 434
    .line 435
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    const/4 v4, 0x3

    .line 439
    invoke-static {v4, v6, v9, v7}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 440
    .line 441
    .line 442
    move-result v5

    .line 443
    if-nez v5, :cond_d

    .line 444
    .line 445
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 446
    .line 447
    iget-object v4, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 448
    .line 449
    iget v6, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 450
    .line 451
    iget v7, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 452
    .line 453
    invoke-direct {v5, v6, v7, v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-static {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_4

    .line 460
    .line 461
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .line 465
    .line 466
    aget-object v6, v10, v8

    .line 467
    .line 468
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string v6, " "

    .line 472
    .line 473
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    iget v6, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 477
    .line 478
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    const-string v6, ":"

    .line 482
    .line 483
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    aput-object v4, v10, v8

    .line 494
    .line 495
    const/16 v4, 0xd

    .line 496
    .line 497
    if-eq v4, v5, :cond_e

    .line 498
    .line 499
    const/16 v4, 0xc

    .line 500
    .line 501
    if-eq v4, v5, :cond_e

    .line 502
    .line 503
    const/4 v4, 0x4

    .line 504
    if-eq v4, v5, :cond_e

    .line 505
    .line 506
    const/16 v4, 0xa

    .line 507
    .line 508
    if-ne v4, v5, :cond_a

    .line 509
    .line 510
    :cond_e
    const/4 v4, 0x2

    .line 511
    iput v4, v0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 512
    .line 513
    move-wide/from16 v24, v12

    .line 514
    .line 515
    move/from16 v19, v15

    .line 516
    .line 517
    const/4 v4, 0x1

    .line 518
    const/16 v17, 0x1

    .line 519
    .line 520
    goto/16 :goto_d

    .line 521
    .line 522
    :cond_f
    sget-object v4, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 523
    .line 524
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    const/4 v4, 0x2

    .line 528
    invoke-static {v4, v6, v9, v7}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    if-nez v5, :cond_10

    .line 533
    .line 534
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 535
    .line 536
    iget-object v4, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 537
    .line 538
    iget v6, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 539
    .line 540
    iget v7, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 541
    .line 542
    invoke-direct {v5, v6, v7, v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 543
    .line 544
    .line 545
    invoke-static {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 546
    .line 547
    .line 548
    goto/16 :goto_4

    .line 549
    .line 550
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .line 554
    .line 555
    aget-object v6, v10, v8

    .line 556
    .line 557
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    const-string v6, " "

    .line 561
    .line 562
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    iget v0, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 566
    .line 567
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    const-string v0, ":"

    .line 571
    .line 572
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    aput-object v0, v10, v8

    .line 583
    .line 584
    goto/16 :goto_6

    .line 585
    .line 586
    :cond_11
    move-object/from16 v21, v4

    .line 587
    .line 588
    move-object/from16 v20, v11

    .line 589
    .line 590
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    if-eqz v4, :cond_12

    .line 595
    .line 596
    iget-boolean v4, v0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 597
    .line 598
    if-eqz v4, :cond_12

    .line 599
    .line 600
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 601
    .line 602
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 603
    .line 604
    const/4 v5, 0x0

    .line 605
    const/16 v11, 0xa

    .line 606
    .line 607
    invoke-virtual {v4, v11, v7, v5, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 608
    .line 609
    .line 610
    move-result v4

    .line 611
    if-eqz v4, :cond_13

    .line 612
    .line 613
    sget-object v4, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 614
    .line 615
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 616
    .line 617
    .line 618
    const/16 v4, 0xe

    .line 619
    .line 620
    invoke-static {v4, v6, v9, v7}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 621
    .line 622
    .line 623
    move-result v4

    .line 624
    if-nez v4, :cond_13

    .line 625
    .line 626
    const/4 v4, 0x3

    .line 627
    iput v4, v0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 628
    .line 629
    new-instance v4, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 630
    .line 631
    iget-object v6, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 632
    .line 633
    iget v7, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 634
    .line 635
    iget v8, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 636
    .line 637
    invoke-direct {v4, v7, v8, v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 638
    .line 639
    .line 640
    invoke-static {v0, v4}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_5

    .line 644
    .line 645
    :cond_12
    const/4 v5, 0x0

    .line 646
    :cond_13
    sget-object v4, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 647
    .line 648
    invoke-virtual {v4, v0}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/MARsPackageInfo;)Z

    .line 649
    .line 650
    .line 651
    move-result v4

    .line 652
    if-eqz v4, :cond_16

    .line 653
    .line 654
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 655
    .line 656
    .line 657
    move-result v4

    .line 658
    if-nez v4, :cond_14

    .line 659
    .line 660
    goto/16 :goto_3

    .line 661
    .line 662
    :cond_14
    iget-boolean v4, v0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 663
    .line 664
    const/4 v6, 0x1

    .line 665
    xor-int/2addr v4, v6

    .line 666
    if-eqz v4, :cond_15

    .line 667
    .line 668
    if-eqz v4, :cond_4

    .line 669
    .line 670
    iget v4, v0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 671
    .line 672
    const/4 v6, 0x4

    .line 673
    if-ne v4, v6, :cond_4

    .line 674
    .line 675
    iget v4, v0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 676
    .line 677
    const/16 v6, 0x100

    .line 678
    .line 679
    if-eq v4, v6, :cond_4

    .line 680
    .line 681
    :cond_15
    const/4 v4, 0x3

    .line 682
    iput v4, v0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 683
    .line 684
    const-string v0, "MARsPolicyManager"

    .line 685
    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    .line 687
    .line 688
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .line 690
    .line 691
    const-string v6, "Level up freecess excluded app : "

    .line 692
    .line 693
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    const-string/jumbo v6, "|userId"

    .line 700
    .line 701
    .line 702
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v4

    .line 709
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .line 711
    .line 712
    goto/16 :goto_3

    .line 713
    .line 714
    :cond_16
    sget-object v4, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 715
    .line 716
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 717
    .line 718
    .line 719
    const/16 v4, 0xf

    .line 720
    .line 721
    invoke-static {v4, v6, v9, v7}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 722
    .line 723
    .line 724
    move-result v4

    .line 725
    if-nez v4, :cond_17

    .line 726
    .line 727
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 728
    .line 729
    iget-object v11, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 730
    .line 731
    iget v5, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 732
    .line 733
    move/from16 v19, v15

    .line 734
    .line 735
    iget v15, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 736
    .line 737
    invoke-direct {v8, v5, v15, v11}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 738
    .line 739
    .line 740
    invoke-static {v0, v8}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 741
    .line 742
    .line 743
    move-object v5, v8

    .line 744
    const/4 v11, 0x5

    .line 745
    goto :goto_8

    .line 746
    :cond_17
    move/from16 v19, v15

    .line 747
    .line 748
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 749
    .line 750
    if-eqz v5, :cond_19

    .line 751
    .line 752
    const/16 v5, 0x12

    .line 753
    .line 754
    if-ne v4, v5, :cond_19

    .line 755
    .line 756
    iget v5, v0, Lcom/android/server/am/MARsPackageInfo;->checkJobRunningCount:I

    .line 757
    .line 758
    const/4 v11, 0x1

    .line 759
    add-int/2addr v5, v11

    .line 760
    iput v5, v0, Lcom/android/server/am/MARsPackageInfo;->checkJobRunningCount:I

    .line 761
    .line 762
    const/4 v11, 0x5

    .line 763
    if-lt v5, v11, :cond_1a

    .line 764
    .line 765
    if-nez v16, :cond_18

    .line 766
    .line 767
    new-instance v16, Ljava/util/ArrayList;

    .line 768
    .line 769
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .line 771
    .line 772
    :cond_18
    move-object/from16 v5, v16

    .line 773
    .line 774
    iget v15, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 775
    .line 776
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 777
    .line 778
    .line 779
    move-result-object v15

    .line 780
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-object/from16 v16, v5

    .line 784
    .line 785
    goto :goto_7

    .line 786
    :cond_19
    const/4 v11, 0x5

    .line 787
    :cond_1a
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 788
    .line 789
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .line 791
    .line 792
    aget-object v15, v10, v8

    .line 793
    .line 794
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    const-string v15, " "

    .line 798
    .line 799
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    iget v15, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 803
    .line 804
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    const-string v15, ":"

    .line 808
    .line 809
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v5

    .line 819
    aput-object v5, v10, v8

    .line 820
    .line 821
    const/4 v5, 0x0

    .line 822
    const/16 v17, 0x1

    .line 823
    .line 824
    :goto_8
    sget-boolean v8, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    .line 825
    .line 826
    if-eqz v8, :cond_1f

    .line 827
    .line 828
    invoke-virtual {v1, v9}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    .line 829
    .line 830
    .line 831
    move-result-wide v22

    .line 832
    move-wide/from16 v24, v12

    .line 833
    .line 834
    const-wide/16 v11, 0x0

    .line 835
    .line 836
    cmp-long v8, v22, v11

    .line 837
    .line 838
    if-eqz v8, :cond_1b

    .line 839
    .line 840
    const/4 v8, 0x1

    .line 841
    goto :goto_9

    .line 842
    :cond_1b
    const/4 v8, 0x0

    .line 843
    :goto_9
    if-nez v4, :cond_1e

    .line 844
    .line 845
    if-eqz v8, :cond_1d

    .line 846
    .line 847
    move-object v8, v5

    .line 848
    iget-wide v4, v0, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    .line 849
    .line 850
    cmp-long v13, v4, v11

    .line 851
    .line 852
    if-nez v13, :cond_1c

    .line 853
    .line 854
    iget-wide v4, v1, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    .line 855
    .line 856
    add-long v12, v24, v4

    .line 857
    .line 858
    iput-wide v12, v0, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    .line 859
    .line 860
    goto :goto_a

    .line 861
    :cond_1c
    cmp-long v4, v24, v4

    .line 862
    .line 863
    if-ltz v4, :cond_20

    .line 864
    .line 865
    iget-wide v4, v1, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    .line 866
    .line 867
    add-long v22, v22, v4

    .line 868
    .line 869
    cmp-long v4, v24, v22

    .line 870
    .line 871
    if-ltz v4, :cond_20

    .line 872
    .line 873
    iput-wide v11, v0, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    .line 874
    .line 875
    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 876
    .line 877
    new-instance v4, Ljava/lang/StringBuilder;

    .line 878
    .line 879
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .line 881
    .line 882
    const-string v5, "KLRP uid "

    .line 883
    .line 884
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v4

    .line 894
    invoke-virtual {v0, v9, v6, v7, v4}, Lcom/android/server/am/MARsHandler;->sendKillPackageProcsMsgToMainHandler(IILjava/lang/String;Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    const-string v0, "KLRP"

    .line 898
    .line 899
    new-instance v4, Ljava/lang/StringBuilder;

    .line 900
    .line 901
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    .line 903
    .line 904
    const-string/jumbo v5, "uid "

    .line 905
    .line 906
    .line 907
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v4

    .line 917
    invoke-virtual {v1, v0, v4}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    goto :goto_a

    .line 921
    :cond_1d
    move-object v8, v5

    .line 922
    goto :goto_a

    .line 923
    :cond_1e
    move-object v8, v5

    .line 924
    const/16 v5, 0x8

    .line 925
    .line 926
    if-eq v4, v5, :cond_20

    .line 927
    .line 928
    iget-wide v4, v0, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    .line 929
    .line 930
    cmp-long v4, v4, v11

    .line 931
    .line 932
    if-eqz v4, :cond_20

    .line 933
    .line 934
    iget-wide v4, v1, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    .line 935
    .line 936
    add-long v12, v24, v4

    .line 937
    .line 938
    iput-wide v12, v0, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    .line 939
    .line 940
    goto :goto_a

    .line 941
    :cond_1f
    move-object v8, v5

    .line 942
    move-wide/from16 v24, v12

    .line 943
    .line 944
    :cond_20
    :goto_a
    move-object v5, v8

    .line 945
    :goto_b
    if-eqz v5, :cond_21

    .line 946
    .line 947
    iget v0, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    .line 948
    .line 949
    iput v0, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    .line 950
    .line 951
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    .line 953
    .line 954
    :cond_21
    :goto_c
    const/4 v4, 0x1

    .line 955
    :goto_d
    add-int/2addr v3, v4

    .line 956
    move v6, v4

    .line 957
    move-object/from16 v5, v18

    .line 958
    .line 959
    move/from16 v15, v19

    .line 960
    .line 961
    move-object/from16 v11, v20

    .line 962
    .line 963
    move-object/from16 v4, v21

    .line 964
    .line 965
    move-wide/from16 v12, v24

    .line 966
    .line 967
    const/4 v7, 0x2

    .line 968
    const/4 v8, 0x3

    .line 969
    const/4 v9, 0x4

    .line 970
    goto/16 :goto_2

    .line 971
    .line 972
    :cond_22
    move-object/from16 v21, v4

    .line 973
    .line 974
    move v4, v6

    .line 975
    move-object/from16 v20, v11

    .line 976
    .line 977
    move-wide/from16 v24, v12

    .line 978
    .line 979
    move/from16 v19, v15

    .line 980
    .line 981
    add-int/lit8 v15, v19, 0x1

    .line 982
    .line 983
    move-object/from16 v4, v21

    .line 984
    .line 985
    const/4 v3, 0x5

    .line 986
    const/4 v7, 0x2

    .line 987
    const/4 v8, 0x3

    .line 988
    const/4 v9, 0x4

    .line 989
    goto/16 :goto_1

    .line 990
    .line 991
    :cond_23
    move-object/from16 v21, v4

    .line 992
    .line 993
    move-object/from16 v20, v11

    .line 994
    .line 995
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 996
    if-eqz v16, :cond_24

    .line 997
    .line 998
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    .line 999
    .line 1000
    .line 1001
    move-result v0

    .line 1002
    if-nez v0, :cond_24

    .line 1003
    .line 1004
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1009
    .line 1010
    .line 1011
    move-result v3

    .line 1012
    if-eqz v3, :cond_24

    .line 1013
    .line 1014
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v3

    .line 1018
    check-cast v3, Ljava/lang/Integer;

    .line 1019
    .line 1020
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1021
    .line 1022
    .line 1023
    move-result v3

    .line 1024
    const/4 v4, 0x1

    .line 1025
    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->restrictJobsByUid(IZ)V

    .line 1026
    .line 1027
    .line 1028
    goto :goto_e

    .line 1029
    :cond_24
    monitor-enter p0

    .line 1030
    :try_start_5
    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1031
    .line 1032
    monitor-exit p0

    .line 1033
    if-eqz v0, :cond_25

    .line 1034
    .line 1035
    monitor-enter p0

    .line 1036
    const/4 v3, 0x0

    .line 1037
    :try_start_6
    iput-boolean v3, v1, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1038
    .line 1039
    monitor-exit p0

    .line 1040
    goto :goto_f

    .line 1041
    :catchall_2
    move-exception v0

    .line 1042
    move-object v2, v0

    .line 1043
    monitor-exit p0

    .line 1044
    throw v2

    .line 1045
    :cond_25
    const/4 v3, 0x0

    .line 1046
    :goto_f
    move v0, v3

    .line 1047
    move v4, v0

    .line 1048
    move-object/from16 v11, v20

    .line 1049
    .line 1050
    :goto_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1051
    .line 1052
    .line 1053
    move-result v5

    .line 1054
    if-ge v0, v5, :cond_35

    .line 1055
    .line 1056
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v5

    .line 1060
    check-cast v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 1061
    .line 1062
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 1063
    .line 1064
    .line 1065
    move-result v6

    .line 1066
    if-nez v6, :cond_26

    .line 1067
    .line 1068
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 1069
    .line 1070
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1071
    .line 1072
    if-eqz v6, :cond_26

    .line 1073
    .line 1074
    iget v7, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 1075
    .line 1076
    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    .line 1077
    .line 1078
    .line 1079
    move-result v6

    .line 1080
    if-eqz v6, :cond_26

    .line 1081
    .line 1082
    const-string v6, "MARsPolicyManager"

    .line 1083
    .line 1084
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1087
    .line 1088
    .line 1089
    iget-object v5, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 1090
    .line 1091
    const-string v8, " has floating or onScreen window, skip to freeze"

    .line 1092
    .line 1093
    invoke-static {v7, v5, v8, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    .line 1095
    .line 1096
    goto/16 :goto_16

    .line 1097
    .line 1098
    :cond_26
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 1099
    .line 1100
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1101
    .line 1102
    .line 1103
    monitor-enter v6

    .line 1104
    :try_start_7
    iget v7, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    .line 1105
    .line 1106
    const/4 v8, 0x1

    .line 1107
    if-eq v7, v8, :cond_31

    .line 1108
    .line 1109
    const/4 v8, 0x2

    .line 1110
    if-eq v7, v8, :cond_30

    .line 1111
    .line 1112
    const/4 v8, 0x3

    .line 1113
    if-eq v7, v8, :cond_2a

    .line 1114
    .line 1115
    const/4 v8, 0x4

    .line 1116
    if-eq v7, v8, :cond_27

    .line 1117
    .line 1118
    goto/16 :goto_17

    .line 1119
    .line 1120
    :cond_27
    sget-object v7, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1121
    .line 1122
    iget-boolean v8, v7, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 1123
    .line 1124
    if-eqz v8, :cond_28

    .line 1125
    .line 1126
    iget-object v8, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 1127
    .line 1128
    iget v9, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 1129
    .line 1130
    invoke-virtual {v7, v9, v8}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 1131
    .line 1132
    .line 1133
    move-result v8

    .line 1134
    if-eqz v8, :cond_28

    .line 1135
    .line 1136
    iget-object v8, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 1137
    .line 1138
    iget v9, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 1139
    .line 1140
    const-string/jumbo v12, "triggerAction"

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v7, v9, v8, v12}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 1144
    .line 1145
    .line 1146
    goto :goto_11

    .line 1147
    :catchall_3
    move-exception v0

    .line 1148
    goto/16 :goto_19

    .line 1149
    .line 1150
    :cond_28
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    .line 1151
    .line 1152
    .line 1153
    move-result v7

    .line 1154
    if-eqz v7, :cond_29

    .line 1155
    .line 1156
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager;->disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    .line 1157
    .line 1158
    .line 1159
    move-result v7

    .line 1160
    if-nez v7, :cond_34

    .line 1161
    .line 1162
    :cond_29
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1163
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1164
    .line 1165
    .line 1166
    goto/16 :goto_16

    .line 1167
    .line 1168
    :cond_2a
    :try_start_8
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 1169
    .line 1170
    .line 1171
    move-result v7

    .line 1172
    if-eqz v7, :cond_2e

    .line 1173
    .line 1174
    iget-boolean v7, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    .line 1175
    .line 1176
    if-eqz v7, :cond_2c

    .line 1177
    .line 1178
    iget v7, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 1179
    .line 1180
    invoke-virtual {v1, v7}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    .line 1181
    .line 1182
    .line 1183
    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 1184
    .line 1185
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    const-string v9, "MARs #"

    .line 1188
    .line 1189
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1190
    .line 1191
    .line 1192
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 1193
    .line 1194
    .line 1195
    move-result v9

    .line 1196
    if-nez v9, :cond_2b

    .line 1197
    .line 1198
    const/4 v9, 0x1

    .line 1199
    goto :goto_12

    .line 1200
    :cond_2b
    const/4 v9, 0x2

    .line 1201
    :goto_12
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v29

    .line 1208
    iget-object v8, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 1209
    .line 1210
    iget v9, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 1211
    .line 1212
    iget v12, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 1213
    .line 1214
    const/16 v23, 0x0

    .line 1215
    .line 1216
    const/16 v27, 0x1

    .line 1217
    .line 1218
    const/16 v26, 0x0

    .line 1219
    .line 1220
    move-object/from16 v22, v7

    .line 1221
    .line 1222
    move/from16 v24, v9

    .line 1223
    .line 1224
    move/from16 v25, v12

    .line 1225
    .line 1226
    move-object/from16 v28, v8

    .line 1227
    .line 1228
    invoke-virtual/range {v22 .. v29}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(IIIZZLjava/lang/String;Ljava/lang/String;)Z

    .line 1229
    .line 1230
    .line 1231
    move-result v7

    .line 1232
    goto :goto_13

    .line 1233
    :cond_2c
    move v7, v3

    .line 1234
    :goto_13
    if-nez v7, :cond_2d

    .line 1235
    .line 1236
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1237
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1238
    .line 1239
    .line 1240
    goto/16 :goto_16

    .line 1241
    .line 1242
    :cond_2d
    :try_start_9
    iget v4, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 1243
    .line 1244
    invoke-static {v11, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 1245
    .line 1246
    .line 1247
    move-result-object v11

    .line 1248
    goto/16 :goto_17

    .line 1249
    .line 1250
    :cond_2e
    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 1251
    .line 1252
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1253
    .line 1254
    iget-object v7, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 1255
    .line 1256
    iget v8, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 1257
    .line 1258
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    .line 1259
    .line 1260
    .line 1261
    move-result v24

    .line 1262
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    const-string v9, "MARs #"

    .line 1265
    .line 1266
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1267
    .line 1268
    .line 1269
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 1270
    .line 1271
    .line 1272
    move-result v9

    .line 1273
    if-nez v9, :cond_2f

    .line 1274
    .line 1275
    const/4 v9, 0x1

    .line 1276
    goto :goto_14

    .line 1277
    :cond_2f
    const/4 v9, 0x2

    .line 1278
    :goto_14
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v35

    .line 1285
    iget v8, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 1286
    .line 1287
    const/16 v33, 0xd

    .line 1288
    .line 1289
    const/16 v34, 0x3e9

    .line 1290
    .line 1291
    const/16 v26, 0x0

    .line 1292
    .line 1293
    const/16 v27, 0x0

    .line 1294
    .line 1295
    const/16 v28, 0x0

    .line 1296
    .line 1297
    const/16 v29, 0x1

    .line 1298
    .line 1299
    const/16 v30, 0x0

    .line 1300
    .line 1301
    const/16 v31, 0x1

    .line 1302
    .line 1303
    const/16 v32, 0x0

    .line 1304
    .line 1305
    move-object/from16 v22, v4

    .line 1306
    .line 1307
    move-object/from16 v23, v7

    .line 1308
    .line 1309
    move/from16 v25, v8

    .line 1310
    .line 1311
    invoke-virtual/range {v22 .. v35}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z

    .line 1312
    .line 1313
    .line 1314
    goto :goto_17

    .line 1315
    :cond_30
    iget-boolean v7, v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    .line 1316
    .line 1317
    if-eqz v7, :cond_31

    .line 1318
    .line 1319
    iget v7, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    .line 1320
    .line 1321
    const/4 v8, 0x2

    .line 1322
    if-ne v7, v8, :cond_31

    .line 1323
    .line 1324
    iget-boolean v7, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isInRestrictedBucket:Z

    .line 1325
    .line 1326
    if-nez v7, :cond_31

    .line 1327
    .line 1328
    const/4 v7, 0x1

    .line 1329
    iput-boolean v7, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isInRestrictedBucket:Z

    .line 1330
    .line 1331
    sget-object v8, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 1332
    .line 1333
    iget-object v9, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 1334
    .line 1335
    iget v12, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 1336
    .line 1337
    const/16 v13, 0x2d

    .line 1338
    .line 1339
    invoke-virtual {v8, v12, v13, v9, v7}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(IILjava/lang/String;Z)V

    .line 1340
    .line 1341
    .line 1342
    :cond_31
    sget-object v7, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1343
    .line 1344
    iget-boolean v8, v7, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 1345
    .line 1346
    if-eqz v8, :cond_33

    .line 1347
    .line 1348
    sget-boolean v8, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 1349
    .line 1350
    if-eqz v8, :cond_32

    .line 1351
    .line 1352
    iget v8, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 1353
    .line 1354
    invoke-virtual {v7, v8}, Lcom/android/server/am/FreecessController;->makePkgIdleIfNeeded(I)V

    .line 1355
    .line 1356
    .line 1357
    :cond_32
    iget v8, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 1358
    .line 1359
    iget v9, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    .line 1360
    .line 1361
    aget-object v9, v10, v9

    .line 1362
    .line 1363
    invoke-virtual {v7, v8}, Lcom/android/server/am/FreecessController;->freezePackage(I)Z

    .line 1364
    .line 1365
    .line 1366
    move-result v7

    .line 1367
    goto :goto_15

    .line 1368
    :cond_33
    move v7, v3

    .line 1369
    :goto_15
    if-nez v7, :cond_34

    .line 1370
    .line 1371
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1372
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1373
    .line 1374
    .line 1375
    :goto_16
    const/4 v5, 0x1

    .line 1376
    goto :goto_18

    .line 1377
    :cond_34
    :goto_17
    :try_start_a
    iget v4, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    .line 1378
    .line 1379
    iput v4, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    .line 1380
    .line 1381
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1382
    .line 1383
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1384
    .line 1385
    .line 1386
    iget v7, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    .line 1387
    .line 1388
    aget-object v8, v21, v7

    .line 1389
    .line 1390
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    .line 1392
    .line 1393
    const-string v8, " "

    .line 1394
    .line 1395
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    .line 1397
    .line 1398
    iget v5, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 1399
    .line 1400
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v4

    .line 1407
    aput-object v4, v21, v7

    .line 1408
    .line 1409
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1410
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1411
    .line 1412
    .line 1413
    const/4 v4, 0x1

    .line 1414
    goto :goto_16

    .line 1415
    :goto_18
    add-int/2addr v0, v5

    .line 1416
    goto/16 :goto_10

    .line 1417
    .line 1418
    :goto_19
    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1419
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1420
    .line 1421
    .line 1422
    throw v0

    .line 1423
    :cond_35
    new-instance v0, Ljava/util/ArrayList;

    .line 1424
    .line 1425
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1426
    .line 1427
    .line 1428
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 1429
    .line 1430
    monitor-enter v5

    .line 1431
    :goto_1a
    :try_start_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1432
    .line 1433
    .line 1434
    move-result v6

    .line 1435
    if-ge v3, v6, :cond_40

    .line 1436
    .line 1437
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v6

    .line 1441
    check-cast v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 1442
    .line 1443
    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1444
    .line 1445
    iget-object v8, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 1446
    .line 1447
    iget v9, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 1448
    .line 1449
    invoke-static {v7, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v7

    .line 1453
    if-eqz v7, :cond_3f

    .line 1454
    .line 1455
    invoke-static {v7, v6}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 1456
    .line 1457
    .line 1458
    iget v6, v7, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 1459
    .line 1460
    const/4 v8, 0x4

    .line 1461
    if-ne v6, v8, :cond_36

    .line 1462
    .line 1463
    new-instance v6, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 1464
    .line 1465
    invoke-direct {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 1466
    .line 1467
    .line 1468
    iget-object v8, v7, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 1469
    .line 1470
    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 1471
    .line 1472
    iget v8, v7, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 1473
    .line 1474
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v8

    .line 1478
    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 1479
    .line 1480
    iget v8, v7, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 1481
    .line 1482
    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v8

    .line 1486
    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 1487
    .line 1488
    iget-wide v8, v7, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 1489
    .line 1490
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v8

    .line 1494
    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 1495
    .line 1496
    iget v8, v7, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 1497
    .line 1498
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v8

    .line 1502
    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 1503
    .line 1504
    iget v8, v7, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 1505
    .line 1506
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v8

    .line 1510
    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    .line 1511
    .line 1512
    iget v8, v7, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 1513
    .line 1514
    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v8

    .line 1518
    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 1519
    .line 1520
    invoke-virtual {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v6

    .line 1524
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    .line 1526
    .line 1527
    goto :goto_1b

    .line 1528
    :catchall_4
    move-exception v0

    .line 1529
    goto/16 :goto_20

    .line 1530
    .line 1531
    :cond_36
    :goto_1b
    iget v6, v7, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 1532
    .line 1533
    const/4 v8, 0x2

    .line 1534
    if-le v6, v8, :cond_3e

    .line 1535
    .line 1536
    const/4 v9, 0x1

    .line 1537
    if-eq v6, v9, :cond_3b

    .line 1538
    .line 1539
    if-eq v6, v8, :cond_3a

    .line 1540
    .line 1541
    const/4 v9, 0x3

    .line 1542
    if-eq v6, v9, :cond_38

    .line 1543
    .line 1544
    const/4 v12, 0x4

    .line 1545
    if-eq v6, v12, :cond_37

    .line 1546
    .line 1547
    const/4 v6, 0x0

    .line 1548
    goto :goto_1c

    .line 1549
    :cond_37
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1550
    .line 1551
    goto :goto_1c

    .line 1552
    :cond_38
    const/4 v12, 0x4

    .line 1553
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 1554
    .line 1555
    .line 1556
    move-result v6

    .line 1557
    if-nez v6, :cond_39

    .line 1558
    .line 1559
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1560
    .line 1561
    goto :goto_1c

    .line 1562
    :cond_39
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1563
    .line 1564
    goto :goto_1c

    .line 1565
    :cond_3a
    const/4 v9, 0x3

    .line 1566
    const/4 v12, 0x4

    .line 1567
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1568
    .line 1569
    goto :goto_1c

    .line 1570
    :cond_3b
    const/4 v9, 0x3

    .line 1571
    const/4 v12, 0x4

    .line 1572
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1573
    .line 1574
    :goto_1c
    iput-object v6, v7, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1575
    .line 1576
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1577
    .line 1578
    iget-object v13, v7, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 1579
    .line 1580
    iget v14, v7, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 1581
    .line 1582
    invoke-virtual {v6, v14, v13}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v6

    .line 1586
    if-nez v6, :cond_3c

    .line 1587
    .line 1588
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1589
    .line 1590
    iget-object v13, v7, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 1591
    .line 1592
    iget v14, v7, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 1593
    .line 1594
    invoke-virtual {v6, v13, v14, v7}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    .line 1595
    .line 1596
    .line 1597
    :cond_3c
    sget-boolean v6, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 1598
    .line 1599
    if-eqz v6, :cond_3d

    .line 1600
    .line 1601
    const-string v6, "MARsPolicyManager"

    .line 1602
    .line 1603
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1604
    .line 1605
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1606
    .line 1607
    .line 1608
    const-string v14, "add mMARsRestrictedPackages "

    .line 1609
    .line 1610
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    .line 1612
    .line 1613
    iget-object v14, v7, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 1614
    .line 1615
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    .line 1617
    .line 1618
    const-string v14, " level : "

    .line 1619
    .line 1620
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    .line 1622
    .line 1623
    iget v14, v7, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 1624
    .line 1625
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1626
    .line 1627
    .line 1628
    const-string v14, " policy --"

    .line 1629
    .line 1630
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    .line 1632
    .line 1633
    iget-object v7, v7, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1634
    .line 1635
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1636
    .line 1637
    .line 1638
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v7

    .line 1642
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    .line 1644
    .line 1645
    :cond_3d
    :goto_1d
    const/4 v6, 0x1

    .line 1646
    goto :goto_1f

    .line 1647
    :cond_3e
    :goto_1e
    const/4 v9, 0x3

    .line 1648
    const/4 v12, 0x4

    .line 1649
    goto :goto_1d

    .line 1650
    :cond_3f
    const/4 v8, 0x2

    .line 1651
    goto :goto_1e

    .line 1652
    :goto_1f
    add-int/2addr v3, v6

    .line 1653
    goto/16 :goto_1a

    .line 1654
    .line 1655
    :cond_40
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1656
    array-length v2, v11

    .line 1657
    if-lez v2, :cond_41

    .line 1658
    .line 1659
    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1660
    .line 1661
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1662
    .line 1663
    .line 1664
    :cond_41
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1665
    .line 1666
    .line 1667
    move-result v2

    .line 1668
    if-nez v2, :cond_42

    .line 1669
    .line 1670
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 1671
    .line 1672
    .line 1673
    sget-object v2, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 1674
    .line 1675
    invoke-virtual {v2, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 1676
    .line 1677
    .line 1678
    :cond_42
    if-nez v4, :cond_43

    .line 1679
    .line 1680
    if-eqz v17, :cond_44

    .line 1681
    .line 1682
    :cond_43
    const-string v0, "LEV"

    .line 1683
    .line 1684
    move-object/from16 v2, v21

    .line 1685
    .line 1686
    invoke-static {v2, v10}, Lcom/android/server/am/MARsPolicyManager;->convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v2

    .line 1690
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    .line 1692
    .line 1693
    :cond_44
    return-void

    .line 1694
    :goto_20
    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1695
    throw v0

    .line 1696
    :catchall_5
    move-exception v0

    .line 1697
    move-object v2, v0

    .line 1698
    monitor-exit p0

    .line 1699
    throw v2

    .line 1700
    :goto_21
    :try_start_e
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1701
    throw v0

    .line 1702
    :catchall_6
    move-exception v0

    .line 1703
    move-object v2, v0

    .line 1704
    monitor-exit p0

    .line 1705
    throw v2
.end method

.method public final updateForegroundPackageToPkgStatus(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final updateFromMARsMainThread()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    new-array v2, v0, [Ljava/lang/String;

    .line 5
    .line 6
    const-string v3, ""

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aput-object v3, v2, v4

    .line 10
    .line 11
    const-string v3, "[FRZ]"

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    aput-object v3, v2, v5

    .line 15
    .line 16
    const-string v3, "[FAS]"

    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    aput-object v3, v2, v6

    .line 20
    .line 21
    const-string v3, "[FOS]"

    .line 22
    .line 23
    const/4 v7, 0x3

    .line 24
    aput-object v3, v2, v7

    .line 25
    .line 26
    const-string v3, "[DIS]"

    .line 27
    .line 28
    const/4 v8, 0x4

    .line 29
    aput-object v3, v2, v8

    .line 30
    .line 31
    new-array v0, v0, [Ljava/lang/String;

    .line 32
    .line 33
    const-string v3, ""

    .line 34
    .line 35
    aput-object v3, v0, v4

    .line 36
    .line 37
    const-string v3, "[FRZ]"

    .line 38
    .line 39
    aput-object v3, v0, v5

    .line 40
    .line 41
    const-string v3, "[FAS]"

    .line 42
    .line 43
    aput-object v3, v0, v6

    .line 44
    .line 45
    const-string v3, "[FOS]"

    .line 46
    .line 47
    aput-object v3, v0, v7

    .line 48
    .line 49
    const-string v3, "[DIS]"

    .line 50
    .line 51
    aput-object v3, v0, v8

    .line 52
    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-boolean v3, v1, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 55
    .line 56
    monitor-exit p0

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    const-string v0, "MARsPolicyManager"

    .line 60
    .line 61
    const-string v1, "Now manual mode is on, we will not update anything!"

    .line 62
    .line 63
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 68
    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    const-string v3, "MARsPolicyManager"

    .line 72
    .line 73
    const-string/jumbo v7, "updateFromMARsThread"

    .line 74
    .line 75
    .line 76
    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 89
    .line 90
    monitor-enter v7

    .line 91
    move v11, v4

    .line 92
    move v12, v11

    .line 93
    :goto_0
    :try_start_1
    iget-object v13, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 94
    .line 95
    iget-object v13, v13, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 96
    .line 97
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-ge v11, v13, :cond_19

    .line 102
    .line 103
    iget-object v13, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 104
    .line 105
    iget-object v13, v13, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 106
    .line 107
    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    check-cast v13, Landroid/util/SparseArray;

    .line 112
    .line 113
    move v14, v4

    .line 114
    :goto_1
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    .line 115
    .line 116
    .line 117
    move-result v15

    .line 118
    if-ge v14, v15, :cond_18

    .line 119
    .line 120
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v15

    .line 124
    check-cast v15, Lcom/android/server/am/MARsPackageInfo;

    .line 125
    .line 126
    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 127
    .line 128
    invoke-virtual {v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-nez v4, :cond_2

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_2
    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 136
    .line 137
    const/16 v6, 0x100

    .line 138
    .line 139
    if-ne v4, v6, :cond_3

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 143
    .line 144
    if-ne v4, v8, :cond_4

    .line 145
    .line 146
    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 147
    .line 148
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_4

    .line 153
    .line 154
    :goto_2
    move v5, v8

    .line 155
    move-object v8, v7

    .line 156
    goto/16 :goto_c

    .line 157
    .line 158
    :catchall_0
    move-exception v0

    .line 159
    move-object v8, v7

    .line 160
    goto/16 :goto_d

    .line 161
    .line 162
    :cond_4
    iget-boolean v4, v15, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 163
    .line 164
    const/16 v6, 0x8

    .line 165
    .line 166
    if-nez v4, :cond_9

    .line 167
    .line 168
    iget-boolean v4, v15, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    .line 169
    .line 170
    if-eqz v4, :cond_9

    .line 171
    .line 172
    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 173
    .line 174
    if-eq v4, v6, :cond_9

    .line 175
    .line 176
    const/16 v4, 0x2000

    .line 177
    .line 178
    invoke-virtual {v1, v4, v15}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-eqz v4, :cond_9

    .line 183
    .line 184
    const/16 v4, 0x10

    .line 185
    .line 186
    iput v4, v15, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 187
    .line 188
    if-nez v12, :cond_5

    .line 189
    .line 190
    const/4 v12, 0x1

    .line 191
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    aget-object v5, v2, v8

    .line 197
    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v5, " "

    .line 202
    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 207
    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    aput-object v4, v2, v8

    .line 216
    .line 217
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 218
    .line 219
    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    iget-object v5, v15, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 223
    .line 224
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 225
    .line 226
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 227
    .line 228
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 233
    .line 234
    iget-boolean v5, v15, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 235
    .line 236
    if-eqz v5, :cond_6

    .line 237
    .line 238
    const-string v16, "1"

    .line 239
    .line 240
    move-object/from16 v8, v16

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_6
    const/4 v8, 0x0

    .line 244
    :goto_3
    iput-object v8, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 245
    .line 246
    if-eqz v5, :cond_7

    .line 247
    .line 248
    const-string v5, "1"

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_7
    const/4 v5, 0x0

    .line 252
    :goto_4
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    .line 253
    .line 254
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 255
    .line 256
    const/4 v8, 0x1

    .line 257
    if-ne v5, v8, :cond_8

    .line 258
    .line 259
    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    goto :goto_5

    .line 264
    :cond_8
    const/4 v5, 0x0

    .line 265
    :goto_5
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 266
    .line 267
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 268
    .line 269
    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 274
    .line 275
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 276
    .line 277
    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 282
    .line 283
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 284
    .line 285
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    :cond_9
    iget-wide v4, v1, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 299
    .line 300
    const-wide/16 v17, 0x0

    .line 301
    .line 302
    cmp-long v8, v4, v17

    .line 303
    .line 304
    if-eqz v8, :cond_12

    .line 305
    .line 306
    iget v8, v15, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 307
    .line 308
    if-ne v8, v6, :cond_12

    .line 309
    .line 310
    sub-long v4, v9, v4

    .line 311
    .line 312
    iget-boolean v8, v1, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    .line 314
    if-eqz v8, :cond_a

    .line 315
    .line 316
    move-object v8, v7

    .line 317
    :try_start_2
    iget-wide v6, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    .line 318
    .line 319
    goto :goto_6

    .line 320
    :catchall_1
    move-exception v0

    .line 321
    goto/16 :goto_d

    .line 322
    .line 323
    :cond_a
    move-object v8, v7

    .line 324
    const-wide/32 v6, 0x5265c00

    .line 325
    .line 326
    .line 327
    :goto_6
    cmp-long v4, v4, v6

    .line 328
    .line 329
    if-lez v4, :cond_13

    .line 330
    .line 331
    sget-object v4, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 332
    .line 333
    iget-object v5, v15, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 334
    .line 335
    iget v6, v15, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 336
    .line 337
    iget v7, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 338
    .line 339
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    const/4 v4, 0x7

    .line 343
    invoke-static {v4, v6, v7, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    if-eqz v4, :cond_b

    .line 348
    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    const/4 v6, 0x4

    .line 355
    aget-object v7, v0, v6

    .line 356
    .line 357
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v6, " "

    .line 361
    .line 362
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    iget v6, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 366
    .line 367
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v6, ":"

    .line 371
    .line 372
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    const/4 v5, 0x4

    .line 383
    aput-object v4, v0, v5

    .line 384
    .line 385
    goto/16 :goto_a

    .line 386
    .line 387
    :cond_b
    const/16 v4, 0x8

    .line 388
    .line 389
    invoke-virtual {v1, v4, v15}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    if-eqz v4, :cond_11

    .line 394
    .line 395
    if-nez v12, :cond_c

    .line 396
    .line 397
    const/4 v12, 0x1

    .line 398
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    const/4 v5, 0x4

    .line 404
    aget-object v6, v2, v5

    .line 405
    .line 406
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v5, " "

    .line 410
    .line 411
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 415
    .line 416
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    const/4 v5, 0x4

    .line 424
    aput-object v4, v2, v5

    .line 425
    .line 426
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 427
    .line 428
    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    iget-object v5, v15, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 432
    .line 433
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 434
    .line 435
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 436
    .line 437
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 442
    .line 443
    iget-boolean v5, v15, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 444
    .line 445
    if-eqz v5, :cond_d

    .line 446
    .line 447
    const-string v6, "1"

    .line 448
    .line 449
    goto :goto_7

    .line 450
    :cond_d
    const/4 v6, 0x0

    .line 451
    :goto_7
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 452
    .line 453
    if-eqz v5, :cond_e

    .line 454
    .line 455
    const-string v5, "1"

    .line 456
    .line 457
    goto :goto_8

    .line 458
    :cond_e
    const/4 v5, 0x0

    .line 459
    :goto_8
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    .line 460
    .line 461
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 462
    .line 463
    const/4 v6, 0x1

    .line 464
    if-ne v5, v6, :cond_f

    .line 465
    .line 466
    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    goto :goto_9

    .line 471
    :cond_f
    const/4 v5, 0x0

    .line 472
    :goto_9
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 473
    .line 474
    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 479
    .line 480
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 481
    .line 482
    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 487
    .line 488
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 489
    .line 490
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    iget-boolean v4, v1, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    .line 504
    .line 505
    if-nez v4, :cond_10

    .line 506
    .line 507
    const/4 v4, 0x1

    .line 508
    iput-boolean v4, v1, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    .line 509
    .line 510
    sget-object v4, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 511
    .line 512
    const-string/jumbo v5, "deepsleepdismiss"

    .line 513
    .line 514
    .line 515
    const/4 v6, 0x0

    .line 516
    invoke-virtual {v4, v5, v6, v6}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 517
    .line 518
    .line 519
    :cond_10
    :goto_a
    const/4 v5, 0x4

    .line 520
    goto/16 :goto_c

    .line 521
    .line 522
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .line 526
    .line 527
    const/4 v5, 0x4

    .line 528
    aget-object v6, v0, v5

    .line 529
    .line 530
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    const-string v5, " "

    .line 534
    .line 535
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 539
    .line 540
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v4

    .line 547
    const/4 v5, 0x4

    .line 548
    aput-object v4, v0, v5

    .line 549
    .line 550
    goto :goto_a

    .line 551
    :cond_12
    move-object v8, v7

    .line 552
    :cond_13
    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 553
    .line 554
    const/4 v5, 0x2

    .line 555
    if-ne v4, v5, :cond_15

    .line 556
    .line 557
    iget-boolean v4, v15, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 558
    .line 559
    if-eqz v4, :cond_15

    .line 560
    .line 561
    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 562
    .line 563
    const/4 v6, 0x1

    .line 564
    if-ne v6, v4, :cond_15

    .line 565
    .line 566
    const/16 v4, 0x400

    .line 567
    .line 568
    invoke-virtual {v1, v4, v15}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 569
    .line 570
    .line 571
    move-result v4

    .line 572
    if-eqz v4, :cond_15

    .line 573
    .line 574
    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 575
    .line 576
    const/16 v7, 0x80

    .line 577
    .line 578
    if-ne v4, v7, :cond_15

    .line 579
    .line 580
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 581
    .line 582
    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 583
    .line 584
    .line 585
    iget-object v7, v15, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 586
    .line 587
    iput-object v7, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 588
    .line 589
    iget v7, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 590
    .line 591
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v7

    .line 595
    iput-object v7, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 596
    .line 597
    iget-boolean v7, v15, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 598
    .line 599
    if-eqz v7, :cond_14

    .line 600
    .line 601
    const-string v7, "1"

    .line 602
    .line 603
    goto :goto_b

    .line 604
    :cond_14
    const-string v7, "0"

    .line 605
    .line 606
    :goto_b
    iput-object v7, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 607
    .line 608
    iget v7, v15, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 609
    .line 610
    invoke-static {v7}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v7

    .line 614
    iput-object v7, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 615
    .line 616
    iget v7, v15, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 617
    .line 618
    invoke-static {v7}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v7

    .line 622
    iput-object v7, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 623
    .line 624
    iget v7, v15, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 625
    .line 626
    invoke-static {v7}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v7

    .line 630
    iput-object v7, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 631
    .line 632
    iget-wide v5, v15, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 633
    .line 634
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v5

    .line 638
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 639
    .line 640
    iget-wide v5, v15, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 641
    .line 642
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v5

    .line 646
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    .line 647
    .line 648
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 649
    .line 650
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v5

    .line 654
    iput-object v5, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 655
    .line 656
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    :cond_15
    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 664
    .line 665
    const/4 v5, 0x4

    .line 666
    if-lt v4, v5, :cond_16

    .line 667
    .line 668
    goto :goto_c

    .line 669
    :cond_16
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 670
    .line 671
    .line 672
    move-result v4

    .line 673
    if-nez v4, :cond_17

    .line 674
    .line 675
    sget-object v4, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 676
    .line 677
    iget v6, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 678
    .line 679
    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidActive(I)Z

    .line 680
    .line 681
    .line 682
    :cond_17
    :goto_c
    add-int/lit8 v14, v14, 0x1

    .line 683
    .line 684
    move-object v7, v8

    .line 685
    const/4 v4, 0x0

    .line 686
    const/4 v6, 0x2

    .line 687
    move v8, v5

    .line 688
    const/4 v5, 0x1

    .line 689
    goto/16 :goto_1

    .line 690
    .line 691
    :cond_18
    move v5, v8

    .line 692
    move-object v8, v7

    .line 693
    add-int/lit8 v11, v11, 0x1

    .line 694
    .line 695
    const/4 v4, 0x0

    .line 696
    const/4 v6, 0x2

    .line 697
    move v8, v5

    .line 698
    const/4 v5, 0x1

    .line 699
    goto/16 :goto_0

    .line 700
    .line 701
    :cond_19
    move-object v8, v7

    .line 702
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 703
    if-eqz v12, :cond_1a

    .line 704
    .line 705
    const-string v4, "LVU"

    .line 706
    .line 707
    invoke-static {v2, v0}, Lcom/android/server/am/MARsPolicyManager;->convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    invoke-virtual {v1, v4, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    :cond_1a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    if-nez v0, :cond_1b

    .line 719
    .line 720
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 721
    .line 722
    .line 723
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 724
    .line 725
    invoke-virtual {v0, v3}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 726
    .line 727
    .line 728
    :cond_1b
    return-void

    .line 729
    :goto_d
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 730
    throw v0

    .line 731
    :catchall_2
    move-exception v0

    .line 732
    move-object v2, v0

    .line 733
    monitor-exit p0

    .line 734
    throw v2
.end method

.method public final updateResetTime()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v2, :cond_2

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/util/SparseArray;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-ge v4, v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    .line 43
    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    new-instance v6, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 47
    .line 48
    invoke-direct {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v7, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v7, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 54
    .line 55
    iget v7, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 56
    .line 57
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    iput-object v7, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 62
    .line 63
    iget-wide v7, v5, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 64
    .line 65
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    iput-object v7, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 70
    .line 71
    iget v7, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 72
    .line 73
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iput-object v7, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 78
    .line 79
    iget-wide v7, v5, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 80
    .line 81
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iput-object v5, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_3

    .line 97
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    const-string p0, "MARsPolicyManager"

    .line 105
    .line 106
    const-string/jumbo v1, "updateResetTime"

    .line 107
    .line 108
    .line 109
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-nez p0, :cond_3

    .line 117
    .line 118
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 119
    .line 120
    .line 121
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    return-void

    .line 127
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    throw p0
.end method

.method public final updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const-string/jumbo v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    goto/16 :goto_19

    .line 20
    .line 21
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getType()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getState()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getReason()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const/4 v6, 0x3

    .line 34
    const/4 v8, 0x2

    .line 35
    const/4 v9, 0x1

    .line 36
    if-eqz v0, :cond_21

    .line 37
    .line 38
    const/4 v10, 0x4

    .line 39
    if-eq v0, v9, :cond_e

    .line 40
    .line 41
    if-eq v0, v8, :cond_5

    .line 42
    .line 43
    if-eq v0, v6, :cond_3

    .line 44
    .line 45
    :cond_2
    const/4 v6, 0x0

    .line 46
    goto/16 :goto_14

    .line 47
    .line 48
    :cond_3
    if-ne v4, v9, :cond_4

    .line 49
    .line 50
    const-string/jumbo v0, "deleted_from_user_manual"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    goto/16 :goto_15

    .line 58
    .line 59
    :cond_4
    const-string/jumbo v0, "default"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    goto/16 :goto_15

    .line 67
    .line 68
    :cond_5
    if-ne v4, v9, :cond_9

    .line 69
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v7, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    const-wide/16 v4, 0x0

    .line 81
    .line 82
    iput-wide v4, v1, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 83
    .line 84
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_8

    .line 93
    .line 94
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    invoke-virtual {v1, v5}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-nez v12, :cond_6

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    sget-object v12, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 120
    .line 121
    monitor-enter v12

    .line 122
    :try_start_0
    iget-object v13, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 123
    .line 124
    invoke-static {v13, v11, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    if-eqz v5, :cond_7

    .line 129
    .line 130
    iget v11, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 131
    .line 132
    if-ge v11, v10, :cond_7

    .line 133
    .line 134
    sget-object v11, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 135
    .line 136
    iget-object v13, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 137
    .line 138
    iget v14, v5, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 139
    .line 140
    iget v15, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 141
    .line 142
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    const/4 v11, 0x7

    .line 146
    invoke-static {v11, v14, v15, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    if-nez v11, :cond_7

    .line 151
    .line 152
    invoke-virtual {v1, v10, v5}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-eqz v11, :cond_7

    .line 157
    .line 158
    new-instance v11, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 159
    .line 160
    invoke-direct {v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-object v13, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 164
    .line 165
    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 166
    .line 167
    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 168
    .line 169
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 174
    .line 175
    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 176
    .line 177
    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 182
    .line 183
    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 184
    .line 185
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    iget v5, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 199
    .line 200
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    goto :goto_2

    .line 210
    :cond_7
    :goto_1
    monitor-exit v12

    .line 211
    goto :goto_0

    .line 212
    :goto_2
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    throw v0

    .line 214
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-nez v4, :cond_2b

    .line 219
    .line 220
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 221
    .line 222
    .line 223
    sget-object v4, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 224
    .line 225
    invoke-virtual {v4, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_15

    .line 229
    .line 230
    :cond_9
    if-ne v4, v8, :cond_2

    .line 231
    .line 232
    new-instance v0, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .line 236
    .line 237
    new-instance v7, Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    if-eqz v5, :cond_d

    .line 251
    .line 252
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    check-cast v5, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 257
    .line 258
    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v11

    .line 262
    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    invoke-virtual {v1, v5}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    .line 271
    .line 272
    .line 273
    move-result v12

    .line 274
    if-nez v12, :cond_a

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_a
    sget-object v12, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 278
    .line 279
    monitor-enter v12

    .line 280
    :try_start_1
    iget-object v13, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 281
    .line 282
    invoke-static {v13, v11, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    if-eqz v5, :cond_c

    .line 287
    .line 288
    const/16 v11, 0x8

    .line 289
    .line 290
    iput v11, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 291
    .line 292
    iget-boolean v11, v5, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 293
    .line 294
    if-eqz v11, :cond_b

    .line 295
    .line 296
    move v11, v10

    .line 297
    goto :goto_4

    .line 298
    :cond_b
    move v11, v9

    .line 299
    :goto_4
    iput v11, v5, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 300
    .line 301
    new-instance v11, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 302
    .line 303
    invoke-direct {v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    iget-object v13, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 307
    .line 308
    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 309
    .line 310
    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 311
    .line 312
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v13

    .line 316
    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 317
    .line 318
    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 319
    .line 320
    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v13

    .line 324
    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 325
    .line 326
    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 327
    .line 328
    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v13

    .line 332
    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 333
    .line 334
    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 335
    .line 336
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v13

    .line 340
    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 343
    .line 344
    .line 345
    move-result-object v11

    .line 346
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    iget v5, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 350
    .line 351
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    goto :goto_5

    .line 359
    :catchall_1
    move-exception v0

    .line 360
    goto :goto_6

    .line 361
    :cond_c
    :goto_5
    monitor-exit v12

    .line 362
    goto :goto_3

    .line 363
    :goto_6
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 364
    throw v0

    .line 365
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    if-nez v4, :cond_2b

    .line 370
    .line 371
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 372
    .line 373
    .line 374
    sget-object v4, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 375
    .line 376
    invoke-virtual {v4, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_15

    .line 380
    .line 381
    :cond_e
    if-ne v4, v9, :cond_1f

    .line 382
    .line 383
    new-instance v0, Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .line 387
    .line 388
    new-instance v4, Ljava/util/ArrayList;

    .line 389
    .line 390
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .line 392
    .line 393
    new-instance v11, Ljava/util/ArrayList;

    .line 394
    .line 395
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    .line 399
    .line 400
    .line 401
    move-result v12

    .line 402
    if-eqz v12, :cond_f

    .line 403
    .line 404
    const/16 v12, 0x40

    .line 405
    .line 406
    goto :goto_7

    .line 407
    :cond_f
    move v12, v8

    .line 408
    :goto_7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 409
    .line 410
    .line 411
    move-result-object v14

    .line 412
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v15

    .line 416
    if-eqz v15, :cond_18

    .line 417
    .line 418
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v15

    .line 422
    check-cast v15, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 423
    .line 424
    invoke-virtual {v15}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    invoke-virtual {v15}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    .line 429
    .line 430
    .line 431
    move-result v15

    .line 432
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 433
    .line 434
    .line 435
    move-result v6

    .line 436
    invoke-virtual {v1, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    .line 437
    .line 438
    .line 439
    move-result v16

    .line 440
    if-nez v16, :cond_10

    .line 441
    .line 442
    const/4 v6, 0x3

    .line 443
    goto :goto_8

    .line 444
    :cond_10
    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 445
    .line 446
    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getActiveUids()Ljava/util/Map;

    .line 447
    .line 448
    .line 449
    move-result-object v7

    .line 450
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v15

    .line 454
    check-cast v7, Ljava/util/HashMap;

    .line 455
    .line 456
    invoke-virtual {v7, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v7

    .line 460
    xor-int/2addr v7, v9

    .line 461
    sget-object v15, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 462
    .line 463
    monitor-enter v15

    .line 464
    :try_start_2
    iget-object v9, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 465
    .line 466
    invoke-static {v9, v3, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 467
    .line 468
    .line 469
    move-result-object v9

    .line 470
    if-eqz v9, :cond_11

    .line 471
    .line 472
    iget v13, v9, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 473
    .line 474
    if-ne v13, v10, :cond_13

    .line 475
    .line 476
    new-instance v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 477
    .line 478
    iget-object v6, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 479
    .line 480
    iget v7, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 481
    .line 482
    iget v13, v9, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 483
    .line 484
    invoke-direct {v3, v7, v13, v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-static {v9, v3}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    :cond_11
    move-object/from16 v17, v14

    .line 494
    .line 495
    :cond_12
    const/16 v9, 0x40

    .line 496
    .line 497
    goto/16 :goto_a

    .line 498
    .line 499
    :catchall_2
    move-exception v0

    .line 500
    goto/16 :goto_b

    .line 501
    .line 502
    :cond_13
    iget-boolean v10, v9, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 503
    .line 504
    if-eqz v10, :cond_14

    .line 505
    .line 506
    if-ge v13, v8, :cond_15

    .line 507
    .line 508
    :cond_14
    invoke-virtual {v1, v12, v9}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 509
    .line 510
    .line 511
    :cond_15
    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    move-result v10

    .line 515
    iput v10, v9, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 516
    .line 517
    iput-object v5, v9, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 518
    .line 519
    new-instance v10, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 520
    .line 521
    invoke-direct {v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 522
    .line 523
    .line 524
    iget-object v13, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 525
    .line 526
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 527
    .line 528
    iget v13, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 529
    .line 530
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v13

    .line 534
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 535
    .line 536
    iget-boolean v13, v9, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 537
    .line 538
    if-eqz v13, :cond_16

    .line 539
    .line 540
    const-string v13, "1"

    .line 541
    .line 542
    goto :goto_9

    .line 543
    :cond_16
    const-string v13, "0"

    .line 544
    .line 545
    :goto_9
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 546
    .line 547
    iget v13, v9, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 548
    .line 549
    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v13

    .line 553
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 554
    .line 555
    iget v13, v9, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 556
    .line 557
    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v13

    .line 561
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 562
    .line 563
    move-object/from16 v17, v14

    .line 564
    .line 565
    iget-wide v13, v9, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 566
    .line 567
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v13

    .line 571
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 572
    .line 573
    iget v13, v9, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 574
    .line 575
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v13

    .line 579
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 580
    .line 581
    invoke-virtual {v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 582
    .line 583
    .line 584
    move-result-object v10

    .line 585
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    iget v9, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 589
    .line 590
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 591
    .line 592
    .line 593
    move-result-object v9

    .line 594
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 598
    .line 599
    .line 600
    move-result v9

    .line 601
    if-eqz v9, :cond_12

    .line 602
    .line 603
    const/16 v9, 0x40

    .line 604
    .line 605
    if-ne v12, v9, :cond_17

    .line 606
    .line 607
    if-eqz v7, :cond_17

    .line 608
    .line 609
    const-string v7, "auto run off"

    .line 610
    .line 611
    const-string v10, "UserChangeFAS"

    .line 612
    .line 613
    invoke-virtual {v1, v6, v3, v7, v10}, Lcom/android/server/am/MARsPolicyManager;->addRestrictListAvoidAssoicationLaunch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    :cond_17
    :goto_a
    monitor-exit v15

    .line 617
    move-object/from16 v14, v17

    .line 618
    .line 619
    const/4 v6, 0x3

    .line 620
    const/4 v9, 0x1

    .line 621
    const/4 v10, 0x4

    .line 622
    goto/16 :goto_8

    .line 623
    .line 624
    :goto_b
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 625
    throw v0

    .line 626
    :cond_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 631
    .line 632
    .line 633
    move-result v3

    .line 634
    if-eqz v3, :cond_1d

    .line 635
    .line 636
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    check-cast v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 641
    .line 642
    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->enableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    .line 643
    .line 644
    .line 645
    move-result v6

    .line 646
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 647
    .line 648
    monitor-enter v7

    .line 649
    :try_start_3
    iget-object v9, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 650
    .line 651
    iget-object v10, v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 652
    .line 653
    iget v13, v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 654
    .line 655
    invoke-static {v9, v10, v13}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 656
    .line 657
    .line 658
    move-result-object v9

    .line 659
    if-eqz v9, :cond_1c

    .line 660
    .line 661
    invoke-static {v9, v3}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 662
    .line 663
    .line 664
    if-eqz v6, :cond_1c

    .line 665
    .line 666
    invoke-virtual {v1, v12, v9}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 667
    .line 668
    .line 669
    move-result v3

    .line 670
    if-eqz v3, :cond_1c

    .line 671
    .line 672
    iget v3, v9, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 673
    .line 674
    const/4 v6, 0x4

    .line 675
    if-le v3, v6, :cond_19

    .line 676
    .line 677
    iput v6, v9, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 678
    .line 679
    :cond_19
    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    .line 680
    .line 681
    .line 682
    move-result v3

    .line 683
    iput v3, v9, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 684
    .line 685
    iput-object v5, v9, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 686
    .line 687
    const/4 v3, 0x4

    .line 688
    iput v3, v9, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 689
    .line 690
    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 691
    .line 692
    if-eqz v6, :cond_1a

    .line 693
    .line 694
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 695
    .line 696
    iput-object v6, v9, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 697
    .line 698
    const/4 v6, 0x0

    .line 699
    goto :goto_d

    .line 700
    :catchall_3
    move-exception v0

    .line 701
    goto :goto_10

    .line 702
    :cond_1a
    const/4 v6, 0x0

    .line 703
    iput-object v6, v9, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 704
    .line 705
    iget-object v10, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 706
    .line 707
    iget-object v13, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 708
    .line 709
    iget v14, v9, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 710
    .line 711
    invoke-virtual {v10, v14, v13}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    .line 712
    .line 713
    .line 714
    :goto_d
    new-instance v10, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 715
    .line 716
    invoke-direct {v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 717
    .line 718
    .line 719
    iget-object v13, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 720
    .line 721
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 722
    .line 723
    iget v13, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 724
    .line 725
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v13

    .line 729
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 730
    .line 731
    iget-boolean v13, v9, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 732
    .line 733
    if-eqz v13, :cond_1b

    .line 734
    .line 735
    const-string v13, "1"

    .line 736
    .line 737
    goto :goto_e

    .line 738
    :cond_1b
    const-string v13, "0"

    .line 739
    .line 740
    :goto_e
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 741
    .line 742
    iget v13, v9, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 743
    .line 744
    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v13

    .line 748
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 749
    .line 750
    iget v13, v9, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 751
    .line 752
    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v13

    .line 756
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 757
    .line 758
    iget-wide v13, v9, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 759
    .line 760
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v13

    .line 764
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 765
    .line 766
    iget v13, v9, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 767
    .line 768
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v13

    .line 772
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 773
    .line 774
    iget v13, v9, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 775
    .line 776
    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v13

    .line 780
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 781
    .line 782
    invoke-virtual {v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 783
    .line 784
    .line 785
    move-result-object v10

    .line 786
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    iget v9, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 790
    .line 791
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 792
    .line 793
    .line 794
    move-result-object v9

    .line 795
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    goto :goto_f

    .line 799
    :cond_1c
    const/4 v3, 0x4

    .line 800
    const/4 v6, 0x0

    .line 801
    :goto_f
    monitor-exit v7

    .line 802
    goto/16 :goto_c

    .line 803
    .line 804
    :goto_10
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 805
    throw v0

    .line 806
    :cond_1d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 807
    .line 808
    .line 809
    move-result v0

    .line 810
    if-nez v0, :cond_1e

    .line 811
    .line 812
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 813
    .line 814
    .line 815
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 816
    .line 817
    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 818
    .line 819
    .line 820
    :cond_1e
    move-object v7, v11

    .line 821
    goto/16 :goto_15

    .line 822
    .line 823
    :cond_1f
    if-ne v4, v8, :cond_20

    .line 824
    .line 825
    invoke-virtual {v1, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->awakePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 826
    .line 827
    .line 828
    move-result-object v7

    .line 829
    goto/16 :goto_15

    .line 830
    .line 831
    :cond_20
    const-string/jumbo v0, "default"

    .line 832
    .line 833
    .line 834
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 835
    .line 836
    .line 837
    move-result-object v7

    .line 838
    goto/16 :goto_15

    .line 839
    .line 840
    :cond_21
    move v3, v9

    .line 841
    const/4 v6, 0x0

    .line 842
    if-ne v4, v3, :cond_29

    .line 843
    .line 844
    const-string v0, "added_from_anomaly_manual"

    .line 845
    .line 846
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 847
    .line 848
    .line 849
    move-result v0

    .line 850
    if-eqz v0, :cond_22

    .line 851
    .line 852
    invoke-virtual {v1, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->disablePackageListForSpecific(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 853
    .line 854
    .line 855
    move-result-object v7

    .line 856
    goto/16 :goto_15

    .line 857
    .line 858
    :cond_22
    const-string v0, "added_from_mars_auto_specific"

    .line 859
    .line 860
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    move-result v0

    .line 864
    if-nez v0, :cond_24

    .line 865
    .line 866
    const-string v0, "added_from_mars_manual_specific"

    .line 867
    .line 868
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    if-eqz v0, :cond_23

    .line 873
    .line 874
    goto :goto_11

    .line 875
    :cond_23
    invoke-virtual {v1, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->disablePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 876
    .line 877
    .line 878
    move-result-object v7

    .line 879
    goto/16 :goto_15

    .line 880
    .line 881
    :cond_24
    :goto_11
    const-string/jumbo v0, "deviceidle"

    .line 882
    .line 883
    .line 884
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    .line 889
    .line 890
    .line 891
    move-result-object v3

    .line 892
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 893
    .line 894
    .line 895
    move-result-object v4

    .line 896
    const/4 v7, 0x0

    .line 897
    :cond_25
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 898
    .line 899
    .line 900
    move-result v0

    .line 901
    if-eqz v0, :cond_26

    .line 902
    .line 903
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    check-cast v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 908
    .line 909
    invoke-virtual {v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    :try_start_4
    invoke-interface {v3, v0}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    .line 914
    .line 915
    .line 916
    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 917
    if-eqz v9, :cond_25

    .line 918
    .line 919
    :try_start_5
    invoke-interface {v3, v0}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 920
    .line 921
    .line 922
    const/4 v7, 0x1

    .line 923
    goto :goto_12

    .line 924
    :catch_0
    move-exception v0

    .line 925
    const/4 v7, 0x1

    .line 926
    goto :goto_13

    .line 927
    :catch_1
    move-exception v0

    .line 928
    :goto_13
    new-instance v9, Ljava/lang/StringBuilder;

    .line 929
    .line 930
    const-string v10, "Doze not available : "

    .line 931
    .line 932
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    const-string v9, "MARsPolicyManager"

    .line 947
    .line 948
    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    .line 950
    .line 951
    goto :goto_12

    .line 952
    :cond_26
    if-nez v7, :cond_27

    .line 953
    .line 954
    invoke-virtual {v1, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->disablePackageListForSpecific(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 955
    .line 956
    .line 957
    move-result-object v7

    .line 958
    goto :goto_15

    .line 959
    :cond_27
    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 960
    .line 961
    iget-object v3, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 962
    .line 963
    if-nez v3, :cond_28

    .line 964
    .line 965
    goto :goto_14

    .line 966
    :cond_28
    new-instance v3, Landroid/os/Bundle;

    .line 967
    .line 968
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 969
    .line 970
    .line 971
    const-string v4, "AppRestrictionInfo"

    .line 972
    .line 973
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 974
    .line 975
    .line 976
    iget-object v4, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 977
    .line 978
    const/16 v5, 0x12

    .line 979
    .line 980
    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 981
    .line 982
    .line 983
    move-result-object v4

    .line 984
    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 985
    .line 986
    .line 987
    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 988
    .line 989
    const-wide/16 v9, 0x1388

    .line 990
    .line 991
    invoke-virtual {v0, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 992
    .line 993
    .line 994
    :goto_14
    move-object v7, v6

    .line 995
    goto :goto_15

    .line 996
    :cond_29
    if-ne v4, v8, :cond_2a

    .line 997
    .line 998
    invoke-virtual {v1, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 999
    .line 1000
    .line 1001
    move-result-object v7

    .line 1002
    goto :goto_15

    .line 1003
    :cond_2a
    const-string/jumbo v0, "default"

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v7

    .line 1010
    :cond_2b
    :goto_15
    if-eqz v7, :cond_34

    .line 1011
    .line 1012
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 1013
    .line 1014
    .line 1015
    move-result v0

    .line 1016
    if-nez v0, :cond_34

    .line 1017
    .line 1018
    const-string v0, "SEP"

    .line 1019
    .line 1020
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1023
    .line 1024
    .line 1025
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getType()I

    .line 1031
    .line 1032
    .line 1033
    move-result v5

    .line 1034
    if-eqz v5, :cond_2f

    .line 1035
    .line 1036
    const/4 v6, 0x1

    .line 1037
    if-eq v5, v6, :cond_2e

    .line 1038
    .line 1039
    if-eq v5, v8, :cond_2d

    .line 1040
    .line 1041
    const/4 v6, 0x3

    .line 1042
    if-eq v5, v6, :cond_2c

    .line 1043
    .line 1044
    goto :goto_16

    .line 1045
    :cond_2c
    const-string v5, "NSLP"

    .line 1046
    .line 1047
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    .line 1050
    goto :goto_16

    .line 1051
    :cond_2d
    const-string v5, "DIS-C"

    .line 1052
    .line 1053
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    .line 1056
    goto :goto_16

    .line 1057
    :cond_2e
    const-string v5, "SLP"

    .line 1058
    .line 1059
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    goto :goto_16

    .line 1063
    :cond_2f
    const-string v5, "DIS"

    .line 1064
    .line 1065
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getState()I

    .line 1069
    .line 1070
    .line 1071
    move-result v5

    .line 1072
    if-eqz v5, :cond_32

    .line 1073
    .line 1074
    const/4 v6, 0x1

    .line 1075
    if-eq v5, v6, :cond_31

    .line 1076
    .line 1077
    if-eq v5, v8, :cond_30

    .line 1078
    .line 1079
    goto :goto_17

    .line 1080
    :cond_30
    const-string v5, " OFF"

    .line 1081
    .line 1082
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    goto :goto_17

    .line 1086
    :cond_31
    const-string v5, " ON"

    .line 1087
    .line 1088
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    .line 1091
    goto :goto_17

    .line 1092
    :cond_32
    const/4 v6, 0x1

    .line 1093
    const-string v5, " NONE"

    .line 1094
    .line 1095
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    .line 1098
    :goto_17
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v4

    .line 1102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    const-string v4, " "

    .line 1106
    .line 1107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-interface {v7}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v4

    .line 1114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    .line 1117
    const-string v4, " f: "

    .line 1118
    .line 1119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    .line 1122
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 1123
    .line 1124
    .line 1125
    move-result v4

    .line 1126
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 1127
    .line 1128
    .line 1129
    move-result v5

    .line 1130
    sub-int/2addr v4, v5

    .line 1131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v3

    .line 1138
    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 1142
    .line 1143
    .line 1144
    move-result v0

    .line 1145
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 1146
    .line 1147
    .line 1148
    move-result v1

    .line 1149
    if-ne v0, v1, :cond_33

    .line 1150
    .line 1151
    move v3, v6

    .line 1152
    goto :goto_18

    .line 1153
    :cond_33
    const/4 v3, 0x0

    .line 1154
    :goto_18
    return v3

    .line 1155
    :cond_34
    const/4 v1, 0x0

    .line 1156
    :goto_19
    return v1
.end method
