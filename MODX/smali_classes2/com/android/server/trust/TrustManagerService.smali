.class public final Lcom/android/server/trust/TrustManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field public final mActiveAgents:Landroid/util/ArraySet;

.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAlarmLock:Ljava/lang/Object;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mArchive:Lcom/android/server/trust/TrustArchive;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:I

.field public final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

.field public mFaceManager:Landroid/hardware/face/FaceManager;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mHandler:Lcom/android/server/trust/TrustManagerService$3;

.field public final mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

.field public volatile mIsInSignificantPlace:Z

.field public mIsUnlockedByFP:Z

.field public final mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

.field public final mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

.field public final mService:Lcom/android/server/trust/TrustManagerService$2;

.field public mSignificantPlaceServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

.field public final mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

.field public mTrustAgentsCanRun:Z

.field public final mTrustListeners:Ljava/util/ArrayList;

.field public final mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

.field public final mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

.field public final mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserTrustState:Landroid/util/SparseArray;

.field public final mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "TrustManagerService"

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    sput-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 18
    .line 19
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    const-string v1, "android.service.trust.TrustAgentService"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

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
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/trust/TrustManagerService$Receiver;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/trust/TrustArchive;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayDeque;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 45
    .line 46
    new-instance v0, Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    .line 52
    .line 53
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 59
    .line 60
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 66
    .line 67
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mIsUnlockedByFP:Z

    .line 76
    .line 77
    new-instance v1, Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 83
    .line 84
    new-instance v1, Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 90
    .line 91
    new-instance v1, Landroid/util/SparseArray;

    .line 92
    .line 93
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 97
    .line 98
    new-instance v1, Ljava/lang/Object;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmLock:Ljava/lang/Object;

    .line 104
    .line 105
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 106
    .line 107
    iput v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 108
    .line 109
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mIsInSignificantPlace:Z

    .line 110
    .line 111
    new-instance v0, Lcom/android/server/trust/TrustManagerService$2;

    .line 112
    .line 113
    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Lcom/android/server/trust/TrustManagerService$2;

    .line 117
    .line 118
    new-instance v0, Lcom/android/server/trust/TrustManagerService$4;

    .line 119
    .line 120
    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$4;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 124
    .line 125
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    new-instance v1, Lcom/android/server/trust/TrustManagerService$3;

    .line 132
    .line 133
    invoke-direct {v1, p0, v0}, Lcom/android/server/trust/TrustManagerService$3;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Looper;)V

    .line 134
    .line 135
    .line 136
    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 137
    .line 138
    const-string/jumbo v0, "user"

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/os/UserManager;

    .line 146
    .line 147
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 148
    .line 149
    const-string v0, "activity"

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroid/app/ActivityManager;

    .line 156
    .line 157
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 158
    .line 159
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 160
    .line 161
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 165
    .line 166
    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 171
    .line 172
    new-instance v0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 173
    .line 174
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;Landroid/os/Looper;)V

    .line 179
    .line 180
    .line 181
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 182
    .line 183
    const-class v0, Landroid/app/AlarmManager;

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Landroid/app/AlarmManager;

    .line 190
    .line 191
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 192
    .line 193
    return-void
.end method

.method public static getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    .line 9
    .line 10
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 11
    .line 12
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public static resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 2
    .line 3
    const v1, 0xc0080

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 34
    .line 35
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 41
    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 46
    .line 47
    const-string v3, "android.permission.PROVIDE_TRUST_AGENT"

    .line 48
    .line 49
    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "Skipping agent "

    .line 62
    .line 63
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, " because package does not have permission android.permission.PROVIDE_TRUST_AGENT."

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "TrustManagerService"

    .line 79
    .line 80
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final aggregateIsActiveUnlockRunning(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 21
    .line 22
    sget-object v3, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    sget-object v3, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 27
    .line 28
    if-eq v2, v3, :cond_1

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return v1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    move v0, v1

    .line 36
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ge v0, v2, :cond_4

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 51
    .line 52
    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 53
    .line 54
    if-ne v3, p1, :cond_3

    .line 55
    .line 56
    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 57
    .line 58
    iget-boolean v3, v2, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    .line 59
    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    iget-boolean v3, v2, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    iget-boolean v3, v2, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    .line 67
    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    iget-boolean v2, v2, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    .line 71
    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    :cond_2
    const/4 p0, 0x1

    .line 75
    return p0

    .line 76
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    return v1

    .line 80
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method

.method public final aggregateIsTrustManaged(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "TrustManagerService"

    .line 9
    .line 10
    sget-boolean v3, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string/jumbo p1, "trust not managed due to trust not being allowed for userId=%s"

    .line 25
    .line 26
    .line 27
    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return v1

    .line 31
    :cond_1
    move v0, v1

    .line 32
    :goto_0
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ge v0, v4, :cond_4

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 41
    .line 42
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 47
    .line 48
    iget v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 49
    .line 50
    if-ne v5, p1, :cond_3

    .line 51
    .line 52
    iget-object v4, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string/jumbo p1, "trust managed for userId=%s"

    .line 71
    .line 72
    .line 73
    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    const/4 p0, 0x1

    .line 77
    return p0

    .line 78
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    if-eqz v3, :cond_5

    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string/jumbo p1, "trust not managed for userId=%s"

    .line 92
    .line 93
    .line 94
    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    return v1
.end method

.method public final aggregateIsTrusted(I)Z
    .locals 6

    .line 1
    const-string v0, "TrustManagerService"

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "aggregateIsTrusted(userId=%s)"

    .line 16
    .line 17
    invoke-static {v0, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string/jumbo p1, "not trusted because trust not allowed for userId=%s"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return v3

    .line 46
    :cond_2
    move v2, v3

    .line 47
    :goto_0
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-ge v2, v4, :cond_5

    .line 54
    .line 55
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 56
    .line 57
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 62
    .line 63
    iget v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 64
    .line 65
    if-ne v5, p1, :cond_4

    .line 66
    .line 67
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_4

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    const-string/jumbo p0, "trusted by %s"

    .line 78
    .line 79
    .line 80
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v0, p0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    const/4 p0, 0x1

    .line 88
    return p0

    .line 89
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    return v3
.end method

.method public final cancelBothTrustableAlarms(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-boolean v2, v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iput-boolean v1, v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-boolean v0, p1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iput-boolean v1, p1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final checkNewAgentsForUser(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "known_trust_agents_initialized"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v3, Landroid/util/ArraySet;

    .line 28
    .line 29
    check-cast v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 53
    .line 54
    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 63
    .line 64
    invoke-virtual {v0, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setKnownTrustAgents(Ljava/util/Collection;I)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKnownTrustAgents(I)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1, p1}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v3, Landroid/util/ArraySet;

    .line 94
    .line 95
    check-cast v1, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 102
    .line 103
    .line 104
    new-instance v4, Landroid/util/ArraySet;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_4

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 128
    .line 129
    invoke-static {v5}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_3

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 144
    .line 145
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 146
    .line 147
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 148
    .line 149
    and-int/2addr v5, v2

    .line 150
    if-eqz v5, :cond_2

    .line 151
    .line 152
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_4
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_5

    .line 161
    .line 162
    return-void

    .line 163
    :cond_5
    new-instance v1, Landroid/util/ArraySet;

    .line 164
    .line 165
    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 172
    .line 173
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setKnownTrustAgents(Ljava/util/Collection;I)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const v1, 0x1040337

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_6

    .line 194
    .line 195
    const/4 v0, 0x0

    .line 196
    goto :goto_2

    .line 197
    :cond_6
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    :goto_2
    if-eqz v0, :cond_7

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_7
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_8

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_8
    new-instance v0, Landroid/util/ArraySet;

    .line 212
    .line 213
    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 214
    .line 215
    .line 216
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 217
    .line 218
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 223
    .line 224
    .line 225
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 226
    .line 227
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 228
    .line 229
    .line 230
    :goto_3
    return-void
.end method

.method public final getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 16
    .line 17
    return-object p0
.end method

.method public final getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    .line 5
    .line 6
    sget-object v1, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final handleScheduleTrustableTimeouts(IZZ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "TrustManagerService"

    .line 6
    .line 7
    sget-boolean v3, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string/jumbo v5, "setUpIdleTimeout(userId=%s, overrideIdleTimeout=%s)"

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v5, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    const-wide/32 v6, 0x1b77400

    .line 34
    .line 35
    .line 36
    add-long v10, v4, v6

    .line 37
    .line 38
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 45
    .line 46
    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-string v6, "android.permission.SCHEDULE_EXACT_ALARM"

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 55
    .line 56
    const/4 v15, 0x1

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    if-nez p2, :cond_1

    .line 60
    .line 61
    iget-boolean v8, v4, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 62
    .line 63
    if-eqz v8, :cond_1

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    const-string v4, "Found existing trustable timeout alarm. Skipping."

    .line 68
    .line 69
    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    iget-object v8, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 74
    .line 75
    invoke-virtual {v8, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    move-object v13, v4

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    new-instance v4, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 81
    .line 82
    invoke-direct {v4, v0, v1}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    .line 83
    .line 84
    .line 85
    iget-object v8, v0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v8, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :goto_1
    if-eqz v3, :cond_3

    .line 92
    .line 93
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const-string v8, "\tSetting up trustable idle timeout alarm triggering at elapsedRealTime=%s"

    .line 102
    .line 103
    invoke-static {v2, v8, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    iput-boolean v15, v13, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 107
    .line 108
    iget-object v8, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 109
    .line 110
    const/4 v9, 0x2

    .line 111
    const-string v12, "TrustManagerService.trustTimeoutForUser"

    .line 112
    .line 113
    move-object v14, v5

    .line 114
    invoke-virtual/range {v8 .. v14}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 118
    .line 119
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    filled-new-array {v4, v8}, [Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    const-string/jumbo v8, "setUpHardTimeout(userId=%s, overrideHardTimeout=%s)"

    .line 132
    .line 133
    .line 134
    invoke-static {v2, v8, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_5
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 143
    .line 144
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 149
    .line 150
    if-eqz v4, :cond_6

    .line 151
    .line 152
    iget-boolean v6, v4, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 153
    .line 154
    if-eqz v6, :cond_6

    .line 155
    .line 156
    if-eqz p3, :cond_a

    .line 157
    .line 158
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 159
    .line 160
    .line 161
    move-result-wide v6

    .line 162
    const-wide/32 v8, 0x5265c00

    .line 163
    .line 164
    .line 165
    add-long/2addr v6, v8

    .line 166
    if-nez v4, :cond_7

    .line 167
    .line 168
    new-instance v4, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 169
    .line 170
    invoke-direct {v4, v0, v1}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    .line 171
    .line 172
    .line 173
    iget-object v8, v0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 174
    .line 175
    invoke-virtual {v8, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    if-eqz p3, :cond_8

    .line 180
    .line 181
    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 182
    .line 183
    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 184
    .line 185
    .line 186
    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    .line 187
    .line 188
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const-string v3, "\tSetting up trustable hard timeout alarm triggering at elapsedRealTime=%s"

    .line 197
    .line 198
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_9
    iput-boolean v15, v4, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 202
    .line 203
    iget-object v12, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 204
    .line 205
    const/4 v13, 0x2

    .line 206
    const-string v16, "TrustManagerService.trustTimeoutForUser"

    .line 207
    .line 208
    move-wide v14, v6

    .line 209
    move-object/from16 v17, v4

    .line 210
    .line 211
    move-object/from16 v18, v5

    .line 212
    .line 213
    invoke-virtual/range {v12 .. v18}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 214
    .line 215
    .line 216
    :cond_a
    return-void
.end method

.method public final isDeviceLockedInner(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final isTrustUsuallyManagedInternal(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ltz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    monitor-exit v0

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    :try_start_1
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ltz v2, :cond_1

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    monitor-exit v1

    .line 47
    return p0

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 51
    .line 52
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 53
    .line 54
    .line 55
    monitor-exit v1

    .line 56
    return v0

    .line 57
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    throw p0

    .line 59
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    throw p0
.end method

.method public final maybeEnableFactoryTrustAgents(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "trust_agents_initialized"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const v4, 0x1040337

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :goto_0
    const/4 v4, 0x1

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    move v2, v4

    .line 57
    :cond_2
    new-instance v5, Landroid/util/ArraySet;

    .line 58
    .line 59
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v6, "TrustManagerService"

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "Enabling "

    .line 72
    .line 73
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, " because it is a default agent."

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    check-cast v0, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_5

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 109
    .line 110
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 115
    .line 116
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 117
    .line 118
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 119
    .line 120
    and-int/2addr v2, v4

    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v7, "Leaving agent "

    .line 130
    .line 131
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v3, " disabled because package is not a system package."

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    :goto_2
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_6
    new-instance v0, Landroid/util/ArraySet;

    .line 158
    .line 159
    invoke-direct {v0, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 160
    .line 161
    .line 162
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 163
    .line 164
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 169
    .line 170
    .line 171
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 172
    .line 173
    invoke-virtual {v2, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 174
    .line 175
    .line 176
    :goto_3
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-static {p0, v1, v4, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public final notifyKeystoreOfDeviceLockState(IZ)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_a

    .line 3
    .line 4
    invoke-static {}, Landroid/security/Flags;->fixUnlockedDeviceRequiredKeysV2()Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p2, :cond_8

    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isProfileWithUnifiedChallenge(I)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p2, p1

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    const-class v4, Landroid/hardware/biometrics/BiometricManager;

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/hardware/biometrics/BiometricManager;

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    new-array v3, v1, [J

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v3, p2}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds(I)[J

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :goto_1
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 47
    .line 48
    invoke-virtual {v4, v1, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isBiometricAllowedForUser(ZI)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/4 v5, 0x1

    .line 53
    const-string v6, "TrustManagerService"

    .line 54
    .line 55
    if-eqz v4, :cond_5

    .line 56
    .line 57
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4, v0, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 68
    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    and-int/lit8 v7, v0, 0x20

    .line 72
    .line 73
    if-nez v7, :cond_3

    .line 74
    .line 75
    invoke-virtual {v4, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 82
    .line 83
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorProperties()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Landroid/hardware/biometrics/SensorProperties;

    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eq v7, v5, :cond_2

    .line 98
    .line 99
    invoke-virtual {v4}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_3

    .line 104
    .line 105
    :cond_2
    const-string p0, "User is unlockable by non-strong fingerprint auth"

    .line 106
    .line 107
    invoke-static {v6, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :goto_2
    move v1, v5

    .line 111
    goto :goto_3

    .line 112
    :cond_3
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 113
    .line 114
    if-eqz v4, :cond_5

    .line 115
    .line 116
    and-int/lit16 v0, v0, 0x80

    .line 117
    .line 118
    if-nez v0, :cond_5

    .line 119
    .line 120
    invoke-virtual {v4, p2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorProperties()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/hardware/biometrics/SensorProperties;

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eq v4, v5, :cond_4

    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_5

    .line 149
    .line 150
    :cond_4
    const-string p0, "User is unlockable by non-strong face auth"

    .line 151
    .line 152
    invoke-static {v6, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sget-object v4, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 161
    .line 162
    if-eq v0, v4, :cond_6

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-string v4, "android.hardware.type.automotive"

    .line 173
    .line 174
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_7

    .line 179
    .line 180
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    if-eqz p0, :cond_7

    .line 185
    .line 186
    :cond_6
    const-string p0, "User is unlockable by trust agent"

    .line 187
    .line 188
    invoke-static {v6, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_7
    :goto_3
    invoke-virtual {v2, p1, v3, v1}, Landroid/security/KeyStoreAuthorization;->onDeviceLocked(I[JZ)I

    .line 193
    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_8
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 197
    .line 198
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    .line 201
    .line 202
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    check-cast p0, Landroid/hardware/biometrics/BiometricManager;

    .line 207
    .line 208
    if-nez p0, :cond_9

    .line 209
    .line 210
    new-array p0, v1, [J

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_9
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds(I)[J

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    :goto_4
    invoke-virtual {p2, p1, p0, v1}, Landroid/security/KeyStoreAuthorization;->onDeviceLocked(I[JZ)I

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_a
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 222
    .line 223
    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStoreAuthorization;->onDeviceUnlocked(I[B)I

    .line 224
    .line 225
    .line 226
    :goto_5
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->isSafeMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v0, 0x1f4

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p1, v0, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 34
    .line 35
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->checkNewAgentsForUser(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 52
    .line 53
    invoke-virtual {p1, v0, v2, v5, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v6, Landroid/content/IntentFilter;

    .line 64
    .line 65
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string p1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 69
    .line 70
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p1, "android.intent.action.USER_ADDED"

    .line 74
    .line 75
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string p1, "android.intent.action.USER_REMOVED"

    .line 79
    .line 80
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string p1, "android.intent.action.USER_STARTED"

    .line 84
    .line 85
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v8, 0x0

    .line 90
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 109
    .line 110
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    const-class v0, Landroid/hardware/face/FaceManager;

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Landroid/hardware/face/FaceManager;

    .line 121
    .line 122
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    const/16 v0, 0x258

    .line 126
    .line 127
    if-ne p1, v0, :cond_3

    .line 128
    .line 129
    iput-boolean v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 130
    .line 131
    const/4 p1, -0x1

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Landroid/security/Flags;->significantPlaces()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_4

    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    new-instance v7, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    .line 147
    .line 148
    const/4 v6, 0x1

    .line 149
    const-string v2, "com.android.trust.provider.SignificantPlaceProvider.BIND"

    .line 150
    .line 151
    const/4 v5, 0x0

    .line 152
    move-object v0, v7

    .line 153
    move-object v1, p1

    .line 154
    move-object v3, v5

    .line 155
    move-object v4, v5

    .line 156
    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 157
    .line 158
    .line 159
    new-instance v5, Lcom/android/server/trust/TrustManagerService$1;

    .line 160
    .line 161
    invoke-direct {v5, p0}, Lcom/android/server/trust/TrustManagerService$1;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    new-instance v8, Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 169
    .line 170
    const/4 v6, 0x0

    .line 171
    const-string v3, "TrustManagerService"

    .line 172
    .line 173
    move-object v0, v8

    .line 174
    move-object v1, p1

    .line 175
    move-object v4, v7

    .line 176
    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;Lcom/android/server/location/injector/Injector;)V

    .line 177
    .line 178
    .line 179
    iput-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mSignificantPlaceServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 180
    .line 181
    invoke-virtual {v8}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->register()V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_3
    const/16 v0, 0x3e8

    .line 186
    .line 187
    if-ne p1, v0, :cond_4

    .line 188
    .line 189
    const/4 p1, 0x0

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(I)V

    .line 191
    .line 192
    .line 193
    :cond_4
    :goto_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Lcom/android/server/trust/TrustManagerService$2;

    .line 2
    .line 3
    const-string/jumbo v1, "trust"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x7

    .line 7
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    const/16 v0, 0x9

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final refreshAgentList(I)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "TrustManagerService"

    .line 6
    .line 7
    sget-boolean v3, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const-string/jumbo v5, "refreshAgentList(userIdOrAll=%s)"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v5, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-boolean v4, v1, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 26
    .line 27
    if-nez v4, :cond_2

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    const-string v0, "Did not refresh agent list because agents cannot run."

    .line 32
    .line 33
    invoke-static {v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void

    .line 37
    :cond_2
    const/4 v4, -0x1

    .line 38
    if-eq v0, v4, :cond_3

    .line 39
    .line 40
    if-gez v0, :cond_3

    .line 41
    .line 42
    const-string/jumbo v5, "refreshAgentList(userId="

    .line 43
    .line 44
    .line 45
    const-string v6, "): Invalid user handle, must be USER_ALL or a specific user."

    .line 46
    .line 47
    invoke-static {v0, v5, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v5, Ljava/lang/Throwable;

    .line 52
    .line 53
    const-string v6, "here"

    .line 54
    .line 55
    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    move v5, v4

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    move v5, v0

    .line 64
    :goto_0
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    if-ne v5, v4, :cond_4

    .line 71
    .line 72
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :goto_1
    move-object v7, v0

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v7, v1, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 86
    .line 87
    invoke-virtual {v7, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :goto_2
    iget-object v8, v1, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 96
    .line 97
    new-instance v9, Landroid/util/ArraySet;

    .line 98
    .line 99
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 100
    .line 101
    .line 102
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 103
    .line 104
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_26

    .line 116
    .line 117
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    move-object v13, v0

    .line 122
    check-cast v13, Landroid/content/pm/UserInfo;

    .line 123
    .line 124
    if-eqz v13, :cond_5

    .line 125
    .line 126
    iget-boolean v0, v13, Landroid/content/pm/UserInfo;->partial:Z

    .line 127
    .line 128
    if-nez v0, :cond_5

    .line 129
    .line 130
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    iget-boolean v0, v13, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 137
    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_7

    .line 146
    .line 147
    if-eqz v3, :cond_5

    .line 148
    .line 149
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 150
    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const-string/jumbo v11, "refreshAgentList: skipping user %s: switchToByUser=false"

    .line 160
    .line 161
    .line 162
    invoke-static {v2, v11, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_7
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 167
    .line 168
    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    .line 169
    .line 170
    invoke-virtual {v0, v14}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-nez v0, :cond_8

    .line 175
    .line 176
    if-eqz v3, :cond_5

    .line 177
    .line 178
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 179
    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const-string/jumbo v11, "refreshAgentList: skipping user %s: user not started"

    .line 189
    .line 190
    .line 191
    invoke-static {v2, v11, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_8
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 196
    .line 197
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_9

    .line 202
    .line 203
    if-eqz v3, :cond_5

    .line 204
    .line 205
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 206
    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const-string/jumbo v11, "refreshAgentList: skipping user %s: no secure credential"

    .line 216
    .line 217
    .line 218
    invoke-static {v2, v11, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_9
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 223
    .line 224
    .line 225
    move-result-object v14

    .line 226
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 227
    .line 228
    const/4 v15, 0x0

    .line 229
    invoke-virtual {v14, v15, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    and-int/lit8 v0, v0, 0x10

    .line 234
    .line 235
    if-eqz v0, :cond_a

    .line 236
    .line 237
    const/16 v16, 0x1

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_a
    const/16 v16, 0x0

    .line 241
    .line 242
    :goto_4
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 243
    .line 244
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_c

    .line 253
    .line 254
    if-eqz v3, :cond_b

    .line 255
    .line 256
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 257
    .line 258
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    const-string/jumbo v4, "refreshAgentList: skipping user %s: no agents enabled by user"

    .line 267
    .line 268
    .line 269
    invoke-static {v2, v4, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_b
    const/4 v4, -0x1

    .line 273
    goto/16 :goto_3

    .line 274
    .line 275
    :cond_c
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 276
    .line 277
    invoke-static {v6, v0}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v17

    .line 287
    :cond_d
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_b

    .line 292
    .line 293
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    move-object v12, v0

    .line 298
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 299
    .line 300
    invoke-static {v12}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    .line 301
    .line 302
    .line 303
    move-result-object v11

    .line 304
    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-nez v0, :cond_e

    .line 309
    .line 310
    if-eqz v3, :cond_d

    .line 311
    .line 312
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iget v11, v13, Landroid/content/pm/UserInfo;->id:I

    .line 317
    .line 318
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v11

    .line 322
    filled-new-array {v0, v11}, [Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    const-string/jumbo v11, "refreshAgentList: skipping %s u%s: not enabled by user"

    .line 327
    .line 328
    .line 329
    invoke-static {v2, v11, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_e
    if-eqz v16, :cond_10

    .line 334
    .line 335
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 336
    .line 337
    invoke-virtual {v14, v15, v11, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-eqz v0, :cond_f

    .line 342
    .line 343
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_10

    .line 348
    .line 349
    :cond_f
    if-eqz v3, :cond_d

    .line 350
    .line 351
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iget v11, v13, Landroid/content/pm/UserInfo;->id:I

    .line 356
    .line 357
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v11

    .line 361
    filled-new-array {v0, v11}, [Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    const-string/jumbo v11, "refreshAgentList: skipping %s u%s: not allowed by DPM"

    .line 366
    .line 367
    .line 368
    invoke-static {v2, v11, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    goto :goto_5

    .line 372
    :cond_10
    new-instance v15, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 373
    .line 374
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 375
    .line 376
    .line 377
    iput-object v11, v15, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    .line 378
    .line 379
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 380
    .line 381
    iput v0, v15, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 382
    .line 383
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 384
    .line 385
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-nez v0, :cond_1c

    .line 390
    .line 391
    invoke-virtual {v12, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    iput-object v0, v15, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    .line 396
    .line 397
    invoke-virtual {v12, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 398
    .line 399
    .line 400
    const-string v0, "android.service.trust.trustagent"

    .line 401
    .line 402
    move-object/from16 v18, v4

    .line 403
    .line 404
    iget-object v4, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 405
    .line 406
    if-eqz v4, :cond_1b

    .line 407
    .line 408
    move-object/from16 v19, v8

    .line 409
    .line 410
    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 411
    .line 412
    if-nez v8, :cond_11

    .line 413
    .line 414
    move-object/from16 v20, v6

    .line 415
    .line 416
    :goto_6
    move-object/from16 v21, v10

    .line 417
    .line 418
    move-object/from16 v22, v14

    .line 419
    .line 420
    const/4 v6, 0x0

    .line 421
    goto/16 :goto_1e

    .line 422
    .line 423
    :cond_11
    :try_start_0
    invoke-virtual {v4, v6, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 424
    .line 425
    .line 426
    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_18
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 427
    if-nez v4, :cond_13

    .line 428
    .line 429
    :try_start_1
    const-string v8, "Can\'t find %s meta-data"

    .line 430
    .line 431
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-static {v2, v8, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    .line 437
    .line 438
    if-eqz v4, :cond_12

    .line 439
    .line 440
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 441
    .line 442
    .line 443
    :cond_12
    move-object/from16 v20, v6

    .line 444
    .line 445
    move-object/from16 v21, v10

    .line 446
    .line 447
    move-object/from16 v22, v14

    .line 448
    .line 449
    :goto_7
    const/4 v0, 0x0

    .line 450
    const/4 v6, 0x0

    .line 451
    goto/16 :goto_1f

    .line 452
    .line 453
    :catchall_0
    move-exception v0

    .line 454
    move-object v15, v4

    .line 455
    goto/16 :goto_18

    .line 456
    .line 457
    :catch_0
    move-exception v0

    .line 458
    move-object/from16 v20, v6

    .line 459
    .line 460
    move-object/from16 v21, v10

    .line 461
    .line 462
    move-object/from16 v22, v14

    .line 463
    .line 464
    :goto_8
    const/4 v6, 0x0

    .line 465
    const/4 v8, 0x0

    .line 466
    :goto_9
    const/16 v23, 0x0

    .line 467
    .line 468
    goto/16 :goto_19

    .line 469
    .line 470
    :catch_1
    move-exception v0

    .line 471
    move-object/from16 v20, v6

    .line 472
    .line 473
    move-object/from16 v21, v10

    .line 474
    .line 475
    move-object/from16 v22, v14

    .line 476
    .line 477
    :goto_a
    const/4 v6, 0x0

    .line 478
    const/4 v8, 0x0

    .line 479
    :goto_b
    const/16 v23, 0x0

    .line 480
    .line 481
    goto/16 :goto_1b

    .line 482
    .line 483
    :catch_2
    move-exception v0

    .line 484
    move-object/from16 v20, v6

    .line 485
    .line 486
    move-object/from16 v21, v10

    .line 487
    .line 488
    move-object/from16 v22, v14

    .line 489
    .line 490
    :goto_c
    const/4 v6, 0x0

    .line 491
    const/4 v8, 0x0

    .line 492
    :goto_d
    const/16 v23, 0x0

    .line 493
    .line 494
    goto/16 :goto_1c

    .line 495
    .line 496
    :cond_13
    :try_start_2
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 497
    .line 498
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 499
    .line 500
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 505
    .line 506
    .line 507
    move-result-object v8
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_15
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    move-object/from16 v20, v6

    .line 509
    .line 510
    :goto_e
    :try_start_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    .line 511
    .line 512
    .line 513
    move-result v6
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 514
    move-object/from16 v21, v10

    .line 515
    .line 516
    const/4 v10, 0x2

    .line 517
    move-object/from16 v22, v14

    .line 518
    .line 519
    const/4 v14, 0x1

    .line 520
    if-eq v6, v14, :cond_14

    .line 521
    .line 522
    if-eq v6, v10, :cond_14

    .line 523
    .line 524
    move-object/from16 v10, v21

    .line 525
    .line 526
    move-object/from16 v14, v22

    .line 527
    .line 528
    goto :goto_e

    .line 529
    :cond_14
    :try_start_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v6

    .line 533
    const-string/jumbo v14, "trust-agent"

    .line 534
    .line 535
    .line 536
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v6
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 540
    if-nez v6, :cond_15

    .line 541
    .line 542
    :try_start_5
    const-string v0, "Meta-data does not start with trust-agent tag"

    .line 543
    .line 544
    invoke-static {v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 545
    .line 546
    .line 547
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 548
    .line 549
    .line 550
    goto :goto_7

    .line 551
    :catch_3
    move-exception v0

    .line 552
    goto :goto_8

    .line 553
    :catch_4
    move-exception v0

    .line 554
    goto :goto_a

    .line 555
    :catch_5
    move-exception v0

    .line 556
    goto :goto_c

    .line 557
    :cond_15
    :try_start_6
    sget-object v6, Lcom/android/internal/R$styleable;->TrustAgent:[I

    .line 558
    .line 559
    invoke-virtual {v0, v8, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v6
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 567
    :try_start_7
    const-string v10, "http://schemas.android.com/apk/prv/res/android"

    .line 568
    .line 569
    const-string/jumbo v14, "unlockProfile"
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 570
    .line 571
    .line 572
    move-object/from16 v23, v6

    .line 573
    .line 574
    const/4 v6, 0x0

    .line 575
    :try_start_8
    invoke-interface {v8, v10, v14, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 576
    .line 577
    .line 578
    move-result v8
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 579
    :try_start_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 580
    .line 581
    .line 582
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 583
    .line 584
    .line 585
    move-object/from16 v4, v23

    .line 586
    .line 587
    const/4 v0, 0x0

    .line 588
    goto/16 :goto_1d

    .line 589
    .line 590
    :catch_6
    move-exception v0

    .line 591
    goto/16 :goto_19

    .line 592
    .line 593
    :catch_7
    move-exception v0

    .line 594
    goto/16 :goto_1b

    .line 595
    .line 596
    :catch_8
    move-exception v0

    .line 597
    goto/16 :goto_1c

    .line 598
    .line 599
    :catch_9
    move-exception v0

    .line 600
    :goto_f
    move v8, v6

    .line 601
    goto/16 :goto_19

    .line 602
    .line 603
    :catch_a
    move-exception v0

    .line 604
    :goto_10
    move v8, v6

    .line 605
    goto/16 :goto_1b

    .line 606
    .line 607
    :catch_b
    move-exception v0

    .line 608
    :goto_11
    move v8, v6

    .line 609
    goto/16 :goto_1c

    .line 610
    .line 611
    :catch_c
    move-exception v0

    .line 612
    move-object/from16 v23, v6

    .line 613
    .line 614
    const/4 v6, 0x0

    .line 615
    goto :goto_f

    .line 616
    :catch_d
    move-exception v0

    .line 617
    move-object/from16 v23, v6

    .line 618
    .line 619
    const/4 v6, 0x0

    .line 620
    goto :goto_10

    .line 621
    :catch_e
    move-exception v0

    .line 622
    move-object/from16 v23, v6

    .line 623
    .line 624
    const/4 v6, 0x0

    .line 625
    goto :goto_11

    .line 626
    :catch_f
    move-exception v0

    .line 627
    :goto_12
    const/4 v6, 0x0

    .line 628
    move v8, v6

    .line 629
    goto/16 :goto_9

    .line 630
    .line 631
    :catch_10
    move-exception v0

    .line 632
    :goto_13
    const/4 v6, 0x0

    .line 633
    move v8, v6

    .line 634
    goto/16 :goto_b

    .line 635
    .line 636
    :catch_11
    move-exception v0

    .line 637
    :goto_14
    const/4 v6, 0x0

    .line 638
    move v8, v6

    .line 639
    goto/16 :goto_d

    .line 640
    .line 641
    :catch_12
    move-exception v0

    .line 642
    :goto_15
    move-object/from16 v21, v10

    .line 643
    .line 644
    move-object/from16 v22, v14

    .line 645
    .line 646
    goto :goto_12

    .line 647
    :catch_13
    move-exception v0

    .line 648
    :goto_16
    move-object/from16 v21, v10

    .line 649
    .line 650
    move-object/from16 v22, v14

    .line 651
    .line 652
    goto :goto_13

    .line 653
    :catch_14
    move-exception v0

    .line 654
    :goto_17
    move-object/from16 v21, v10

    .line 655
    .line 656
    move-object/from16 v22, v14

    .line 657
    .line 658
    goto :goto_14

    .line 659
    :catch_15
    move-exception v0

    .line 660
    move-object/from16 v20, v6

    .line 661
    .line 662
    goto :goto_15

    .line 663
    :catch_16
    move-exception v0

    .line 664
    move-object/from16 v20, v6

    .line 665
    .line 666
    goto :goto_16

    .line 667
    :catch_17
    move-exception v0

    .line 668
    move-object/from16 v20, v6

    .line 669
    .line 670
    goto :goto_17

    .line 671
    :catchall_1
    move-exception v0

    .line 672
    const/4 v15, 0x0

    .line 673
    :goto_18
    if-eqz v15, :cond_16

    .line 674
    .line 675
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 676
    .line 677
    .line 678
    :cond_16
    throw v0

    .line 679
    :catch_18
    move-exception v0

    .line 680
    move-object/from16 v20, v6

    .line 681
    .line 682
    move-object/from16 v21, v10

    .line 683
    .line 684
    move-object/from16 v22, v14

    .line 685
    .line 686
    const/4 v6, 0x0

    .line 687
    move v8, v6

    .line 688
    const/4 v4, 0x0

    .line 689
    goto/16 :goto_9

    .line 690
    .line 691
    :goto_19
    if-eqz v4, :cond_17

    .line 692
    .line 693
    :goto_1a
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 694
    .line 695
    .line 696
    :cond_17
    move-object/from16 v4, v23

    .line 697
    .line 698
    goto :goto_1d

    .line 699
    :catch_19
    move-exception v0

    .line 700
    move-object/from16 v20, v6

    .line 701
    .line 702
    move-object/from16 v21, v10

    .line 703
    .line 704
    move-object/from16 v22, v14

    .line 705
    .line 706
    const/4 v6, 0x0

    .line 707
    move v8, v6

    .line 708
    const/4 v4, 0x0

    .line 709
    goto/16 :goto_b

    .line 710
    .line 711
    :goto_1b
    if-eqz v4, :cond_17

    .line 712
    .line 713
    goto :goto_1a

    .line 714
    :catch_1a
    move-exception v0

    .line 715
    move-object/from16 v20, v6

    .line 716
    .line 717
    move-object/from16 v21, v10

    .line 718
    .line 719
    move-object/from16 v22, v14

    .line 720
    .line 721
    const/4 v6, 0x0

    .line 722
    move v8, v6

    .line 723
    const/4 v4, 0x0

    .line 724
    goto/16 :goto_d

    .line 725
    .line 726
    :goto_1c
    if-eqz v4, :cond_17

    .line 727
    .line 728
    goto :goto_1a

    .line 729
    :goto_1d
    if-eqz v0, :cond_18

    .line 730
    .line 731
    iget-object v4, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 732
    .line 733
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 734
    .line 735
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v4

    .line 739
    const-string v8, "Error parsing : %s"

    .line 740
    .line 741
    invoke-static {v2, v0, v8, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    .line 743
    .line 744
    :goto_1e
    const/4 v0, 0x0

    .line 745
    goto :goto_1f

    .line 746
    :cond_18
    if-nez v4, :cond_19

    .line 747
    .line 748
    goto :goto_1e

    .line 749
    :cond_19
    const/16 v0, 0x2f

    .line 750
    .line 751
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    .line 752
    .line 753
    .line 754
    move-result v0

    .line 755
    if-gez v0, :cond_1a

    .line 756
    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    .line 758
    .line 759
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    .line 761
    .line 762
    iget-object v10, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 763
    .line 764
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 765
    .line 766
    const-string v14, "/"

    .line 767
    .line 768
    invoke-static {v0, v10, v14, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v4

    .line 772
    :cond_1a
    new-instance v0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    .line 773
    .line 774
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 775
    .line 776
    .line 777
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 778
    .line 779
    .line 780
    iput-boolean v8, v0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    .line 781
    .line 782
    goto :goto_1f

    .line 783
    :cond_1b
    move-object/from16 v20, v6

    .line 784
    .line 785
    move-object/from16 v19, v8

    .line 786
    .line 787
    goto/16 :goto_6

    .line 788
    .line 789
    :goto_1f
    iput-object v0, v15, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    .line 790
    .line 791
    goto :goto_20

    .line 792
    :cond_1c
    move-object/from16 v18, v4

    .line 793
    .line 794
    move-object/from16 v20, v6

    .line 795
    .line 796
    move-object/from16 v19, v8

    .line 797
    .line 798
    move-object/from16 v21, v10

    .line 799
    .line 800
    move-object/from16 v22, v14

    .line 801
    .line 802
    const/4 v6, 0x0

    .line 803
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 804
    .line 805
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 806
    .line 807
    .line 808
    move-result v0

    .line 809
    iget-object v4, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 810
    .line 811
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    move-object v15, v0

    .line 816
    check-cast v15, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 817
    .line 818
    :goto_20
    iget-object v0, v15, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    .line 819
    .line 820
    if-eqz v0, :cond_1d

    .line 821
    .line 822
    iget-object v4, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 823
    .line 824
    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    .line 825
    .line 826
    if-eqz v4, :cond_1d

    .line 827
    .line 828
    iget-boolean v0, v0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    .line 829
    .line 830
    if-eqz v0, :cond_1d

    .line 831
    .line 832
    const/4 v14, 0x1

    .line 833
    goto :goto_21

    .line 834
    :cond_1d
    move v14, v6

    .line 835
    :goto_21
    if-eqz v14, :cond_1e

    .line 836
    .line 837
    if-eqz v3, :cond_1e

    .line 838
    .line 839
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 840
    .line 841
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    filled-new-array {v11, v0}, [Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    const-string/jumbo v4, "refreshAgentList: trustagent %s of user %s can unlock user profile."

    .line 850
    .line 851
    .line 852
    invoke-static {v2, v4, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    :cond_1e
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 856
    .line 857
    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    .line 858
    .line 859
    invoke-virtual {v0, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 860
    .line 861
    .line 862
    move-result v0

    .line 863
    if-nez v0, :cond_20

    .line 864
    .line 865
    if-nez v14, :cond_20

    .line 866
    .line 867
    if-eqz v3, :cond_1f

    .line 868
    .line 869
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 870
    .line 871
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    filled-new-array {v0, v11}, [Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    const-string/jumbo v4, "refreshAgentList: skipping user %s\'s trust agent %s: FBE still locked and the agent cannot unlock user profile."

    .line 880
    .line 881
    .line 882
    invoke-static {v2, v4, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    .line 884
    .line 885
    :cond_1f
    :goto_22
    move-object/from16 v4, v18

    .line 886
    .line 887
    move-object/from16 v8, v19

    .line 888
    .line 889
    move-object/from16 v6, v20

    .line 890
    .line 891
    move-object/from16 v10, v21

    .line 892
    .line 893
    move-object/from16 v14, v22

    .line 894
    .line 895
    const/4 v15, 0x0

    .line 896
    goto/16 :goto_5

    .line 897
    .line 898
    :cond_20
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 899
    .line 900
    iget-object v4, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 901
    .line 902
    invoke-virtual {v4, v0}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    .line 903
    .line 904
    .line 905
    move-result v0

    .line 906
    if-nez v0, :cond_22

    .line 907
    .line 908
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 909
    .line 910
    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 911
    .line 912
    .line 913
    move-result v0

    .line 914
    const/16 v8, 0x8

    .line 915
    .line 916
    if-eq v0, v8, :cond_22

    .line 917
    .line 918
    const/4 v8, 0x1

    .line 919
    if-ne v0, v8, :cond_21

    .line 920
    .line 921
    if-nez v14, :cond_23

    .line 922
    .line 923
    :cond_21
    if-eqz v3, :cond_1f

    .line 924
    .line 925
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    .line 926
    .line 927
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    iget v10, v13, Landroid/content/pm/UserInfo;->id:I

    .line 932
    .line 933
    invoke-virtual {v4, v10}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 934
    .line 935
    .line 936
    move-result v4

    .line 937
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v4

    .line 941
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    const-string/jumbo v4, "refreshAgentList: skipping user %s: prevented by StrongAuthTracker = 0x%s"

    .line 946
    .line 947
    .line 948
    invoke-static {v2, v4, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 949
    .line 950
    .line 951
    goto :goto_22

    .line 952
    :cond_22
    const/4 v8, 0x1

    .line 953
    :cond_23
    iget-object v0, v15, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 954
    .line 955
    if-nez v0, :cond_24

    .line 956
    .line 957
    new-instance v0, Lcom/android/server/trust/TrustAgentWrapper;

    .line 958
    .line 959
    iget-object v4, v1, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 960
    .line 961
    new-instance v10, Landroid/content/Intent;

    .line 962
    .line 963
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 964
    .line 965
    .line 966
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 967
    .line 968
    .line 969
    move-result-object v10

    .line 970
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 971
    .line 972
    .line 973
    move-result-object v11

    .line 974
    invoke-direct {v0, v4, v1, v10, v11}, Lcom/android/server/trust/TrustAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 975
    .line 976
    .line 977
    iput-object v0, v15, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 978
    .line 979
    :cond_24
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 980
    .line 981
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 982
    .line 983
    .line 984
    move-result v0

    .line 985
    if-nez v0, :cond_25

    .line 986
    .line 987
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 988
    .line 989
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    goto :goto_22

    .line 993
    :cond_25
    invoke-virtual {v9, v15}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 994
    .line 995
    .line 996
    goto :goto_22

    .line 997
    :cond_26
    const/4 v6, 0x0

    .line 998
    const/4 v8, 0x1

    .line 999
    move v12, v6

    .line 1000
    :goto_23
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 1001
    .line 1002
    .line 1003
    move-result v0

    .line 1004
    if-ge v12, v0, :cond_2a

    .line 1005
    .line 1006
    invoke-virtual {v9, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1011
    .line 1012
    const/4 v4, -0x1

    .line 1013
    if-eq v5, v4, :cond_27

    .line 1014
    .line 1015
    iget v4, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 1016
    .line 1017
    if-ne v5, v4, :cond_29

    .line 1018
    .line 1019
    :cond_27
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 1020
    .line 1021
    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    .line 1022
    .line 1023
    .line 1024
    move-result v4

    .line 1025
    if-eqz v4, :cond_28

    .line 1026
    .line 1027
    move v14, v8

    .line 1028
    goto :goto_24

    .line 1029
    :cond_28
    move v14, v6

    .line 1030
    :goto_24
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 1031
    .line 1032
    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 1033
    .line 1034
    .line 1035
    iget-object v4, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 1036
    .line 1037
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1038
    .line 1039
    .line 1040
    move v6, v14

    .line 1041
    :cond_29
    add-int/lit8 v12, v12, 0x1

    .line 1042
    .line 1043
    goto :goto_23

    .line 1044
    :cond_2a
    if-eqz v3, :cond_2b

    .line 1045
    .line 1046
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v0

    .line 1050
    filled-new-array {v7, v9, v0}, [Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    const-string/jumbo v3, "refreshAgentList: userInfos=%s, obsoleteAgents=%s, trustMayHaveChanged=%s"

    .line 1055
    .line 1056
    .line 1057
    invoke-static {v2, v3, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1058
    .line 1059
    .line 1060
    :cond_2b
    if-eqz v6, :cond_2d

    .line 1061
    .line 1062
    const/4 v2, -0x1

    .line 1063
    if-ne v5, v2, :cond_2c

    .line 1064
    .line 1065
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    .line 1066
    .line 1067
    .line 1068
    goto :goto_25

    .line 1069
    :cond_2c
    invoke-virtual {v1, v5}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    .line 1070
    .line 1071
    .line 1072
    :cond_2d
    :goto_25
    return-void
.end method

.method public final refreshDeviceLockedForUser(I)V
    .locals 1

    const/16 v0, -0x2710

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(II)V

    return-void
.end method

.method public final refreshDeviceLockedForUser(II)V
    .locals 11

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-gez p1, :cond_0

    .line 2
    const-string v1, "TrustManagerService"

    const-string/jumbo v2, "refreshDeviceLockedForUser(userId="

    const-string v3, "): Invalid user handle, must be USER_ALL or a specific user."

    .line 3
    invoke-static {p1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    .line 8
    :goto_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 9
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    if-eqz v3, :cond_b

    .line 11
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_b

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v4, :cond_2

    goto/16 :goto_6

    .line 12
    :cond_2
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 13
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    .line 14
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v6

    if-nez v6, :cond_3

    .line 15
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez v5, :cond_b

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 16
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isProfileWithUnifiedChallenge(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 17
    invoke-virtual {p0, v4, v1}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    goto/16 :goto_6

    .line 18
    :cond_3
    invoke-static {}, Landroid/security/Flags;->fixUnlockedDeviceRequiredKeysV2()Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    .line 19
    invoke-virtual {p0, v4}, Lcom/android/server/trust/TrustManagerService;->getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;

    move-result-object v3

    sget-object v7, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v3, v7, :cond_4

    move v3, v6

    goto :goto_2

    :cond_4
    move v3, v1

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v3

    .line 21
    :goto_2
    iget v7, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v7, v4, :cond_7

    .line 22
    iget-object v7, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    monitor-enter v7

    .line 23
    :try_start_0
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v4, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    .line 24
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    invoke-interface {v0}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v7

    .line 26
    const-string v9, "TrustManagerService"

    const-string v10, "Unable to check keyguard lock state"

    invoke-static {v9, v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v6

    :goto_3
    if-ne p2, v4, :cond_6

    move v9, v6

    goto :goto_4

    :cond_6
    move v9, v1

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 27
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_7
    move v8, v1

    move v9, v8

    move v7, v6

    :goto_4
    if-eqz v5, :cond_8

    if-eqz v7, :cond_8

    if-nez v3, :cond_8

    if-nez v8, :cond_8

    goto :goto_5

    :cond_8
    move v6, v1

    :goto_5
    if-eqz v6, :cond_9

    if-eqz v9, :cond_9

    goto :goto_6

    .line 28
    :cond_9
    invoke-virtual {p0, v4, v6}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    if-eqz v6, :cond_b

    .line 29
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 30
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/PersonaManagerInternal;->onDeviceLockedChanged(I)V

    goto :goto_6

    .line 31
    :cond_a
    const-string v3, "TrustManagerService"

    const-string/jumbo v4, "onDeviceLockedChanged() - Service is not yet ready..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_c
    return-void
.end method

.method public final resolveProfileParent(I)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return p1

    .line 31
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final setDeviceLockedForUser(IZ)V
    .locals 6

    .line 1
    const-string v0, "User "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eq v2, p2, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v3

    .line 16
    :goto_0
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 17
    .line 18
    invoke-virtual {v4, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 19
    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    const-string v4, "TrustManagerService"

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ", setDeviceLockedForUser "

    .line 34
    .line 35
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_5

    .line 51
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mIsUnlockedByFP:Z

    .line 55
    .line 56
    if-eqz v0, :cond_7

    .line 57
    .line 58
    :cond_2
    move v0, v3

    .line 59
    :goto_2
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-ge v0, v1, :cond_5

    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 74
    .line 75
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 76
    .line 77
    if-ne v2, p1, :cond_4

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 82
    .line 83
    iput-boolean v3, v1, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    .line 84
    .line 85
    :try_start_1
    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onDeviceLocked()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :catch_0
    move-exception v1

    .line 94
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_3
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    :try_start_2
    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 104
    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onDeviceUnlocked()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :catch_1
    move-exception v1

    .line 112
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyKeystoreOfDeviceLockState(IZ)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    array-length v0, p1

    .line 128
    :goto_4
    if-ge v3, v0, :cond_7

    .line 129
    .line 130
    aget v1, p1, v3

    .line 131
    .line 132
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 133
    .line 134
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    invoke-virtual {p0, v1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyKeystoreOfDeviceLockState(IZ)V

    .line 141
    .line 142
    .line 143
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_7
    return-void

    .line 147
    :goto_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    throw p0
.end method

.method public final updateTrust(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public final updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V
    .locals 23

    move-object/from16 v1, p0

    move/from16 v8, p1

    move-object/from16 v9, p4

    .line 2
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3
    const-string v2, "TrustManagerService"

    const-string/jumbo v3, "updateTrust(userId=%s, flags=%s, isFromUnlock=%s, resultCallbackPresent=%s)"

    .line 4
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 6
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 7
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v2

    .line 10
    const-string v3, "TrustManagerService"

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onTrustManagedChanged("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v4, 0x0

    .line 12
    :goto_0
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x1

    if-ge v4, v0, :cond_2

    .line 13
    :try_start_0
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/ITrustListener;

    invoke-interface {v0, v2, v8}, Landroid/app/trust/ITrustListener;->onTrustManagedChanged(ZI)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    const-string v5, "Exception while notifying TrustListener."

    invoke-static {v3, v5, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 15
    :catch_1
    const-string v0, "Removing dead TrustListener."

    invoke-static {v3, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :goto_1
    add-int/2addr v4, v11

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v0

    if-eq v0, v2, :cond_3

    .line 19
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v3

    .line 20
    :try_start_1
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 21
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 24
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x1d4c0

    .line 25
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 26
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 27
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v0

    .line 28
    const-string v2, "TrustManagerService"

    sget-boolean v3, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v3, :cond_4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "aggregateIsTrustable(userId=%s)"

    invoke-static {v2, v5, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_4
    iget-object v4, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v3, :cond_5

    .line 30
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "not trustable because trust not allowed for userId=%s"

    invoke-static {v2, v4, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    .line 31
    :goto_3
    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 32
    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 33
    iget v6, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v6, v8, :cond_8

    .line 34
    iget-object v6, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 35
    iget-boolean v7, v6, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    if-eqz v7, :cond_8

    .line 36
    iget-boolean v7, v6, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v7, :cond_8

    iget-boolean v6, v6, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez v6, :cond_8

    if-eqz v3, :cond_7

    .line 37
    const-string/jumbo v3, "trustable by %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move v2, v11

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 38
    :goto_4
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 39
    :try_start_3
    invoke-interface {v3}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    xor-int/2addr v3, v11

    goto :goto_5

    :catch_2
    const/4 v3, 0x0

    .line 40
    :goto_5
    iget-object v4, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    monitor-enter v4

    .line 41
    :try_start_4
    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v5, v6, :cond_9

    move v12, v11

    goto :goto_6

    :cond_9
    const/4 v12, 0x0

    .line 42
    :goto_6
    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v5, v7, :cond_a

    move v13, v11

    goto :goto_7

    :cond_a
    const/4 v13, 0x0

    :goto_7
    if-eqz v13, :cond_b

    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_b

    move v5, v11

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    if-nez v3, :cond_d

    if-nez p3, :cond_d

    if-nez v5, :cond_d

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.type.automotive"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    goto :goto_9

    :cond_c
    const/4 v14, 0x0

    goto :goto_a

    :cond_d
    :goto_9
    move v14, v11

    .line 44
    :goto_a
    iget v15, v1, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v8, v15, :cond_e

    move v15, v11

    goto :goto_b

    :cond_e
    const/4 v15, 0x0

    .line 45
    :goto_b
    sget-boolean v16, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v16, :cond_f

    .line 46
    const-string v10, "TrustManagerService"

    const-string/jumbo v11, "updateTrust: alreadyUnlocked=%s, wasTrusted=%s, wasTrustable=%s, renewingTrust=%s, canMoveToTrusted=%s, updatingTrustForCurrentUser=%s"

    .line 47
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 48
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 49
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 50
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 51
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 52
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    filled-new-array/range {v17 .. v22}, [Ljava/lang/Object;

    move-result-object v5

    .line 53
    invoke-static {v10, v11, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :catchall_1
    move-exception v0

    goto/16 :goto_1e

    :cond_f
    :goto_c
    if-eqz v0, :cond_10

    if-eqz v12, :cond_10

    .line 54
    monitor-exit v4

    return-void

    :cond_10
    if-eqz v0, :cond_11

    if-eqz v14, :cond_11

    if-eqz v15, :cond_11

    move-object v10, v6

    goto :goto_e

    :cond_11
    if-eqz v2, :cond_13

    if-nez v12, :cond_12

    if-eqz v13, :cond_13

    :cond_12
    if-eqz v15, :cond_13

    :goto_d
    move-object v10, v7

    goto :goto_e

    .line 55
    :cond_13
    sget-object v7, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    goto :goto_d

    :goto_e
    if-eqz v16, :cond_14

    .line 56
    const-string v0, "TrustManagerService"

    const-string/jumbo v2, "updateTrust: pendingTrustState=%s"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v2, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_14
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v10, v6, :cond_15

    const/4 v11, 0x1

    goto :goto_f

    :cond_15
    const/4 v11, 0x0

    :goto_f
    if-nez v3, :cond_16

    if-eqz v11, :cond_16

    const/4 v14, 0x1

    goto :goto_10

    :cond_16
    const/4 v14, 0x0

    :goto_10
    if-eqz v16, :cond_17

    .line 59
    const-string v0, "TrustManagerService"

    const-string/jumbo v2, "updateTrust: isNowTrusted=%s, newlyUnlocked=%s"

    .line 60
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 61
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 62
    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_17
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 64
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsActiveUnlockRunning(I)Z

    move-result v2

    if-ne v0, v2, :cond_18

    goto :goto_13

    .line 65
    :cond_18
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v3, 0x0

    .line 66
    :goto_11
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_19

    .line 67
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/ITrustListener;

    .line 68
    const-string v4, "TrustManagerService"

    :try_start_5
    invoke-interface {v0, v2, v8}, Landroid/app/trust/ITrustListener;->onIsActiveUnlockRunningChanged(ZI)V
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_12

    :catch_3
    move-exception v0

    move-object v5, v0

    .line 69
    const-string v0, "Exception while notifying TrustListener."

    invoke-static {v4, v0, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 70
    :catch_4
    const-string v0, "TrustListener dead while trying to notify Active Unlock running state"

    invoke-static {v4, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 71
    :cond_19
    :goto_13
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1a
    move-object v15, v0

    goto :goto_15

    .line 73
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 74
    :goto_14
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 75
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 76
    iget v4, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v4, v8, :cond_1c

    iget-object v4, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 77
    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v3, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 78
    iget-boolean v4, v3, Lcom/android/server/trust/TrustAgentWrapper;->mDisplayTrustGrantedMessage:Z

    if-eqz v4, :cond_1c

    .line 79
    iget-object v3, v3, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1c

    .line 80
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 81
    :goto_15
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v7, "TrustManagerService"

    if-eqz v0, :cond_1d

    .line 82
    const-string/jumbo v0, "onTrustChanged("

    const-string v2, ", "

    .line 83
    invoke-static {v0, v11, v2, v14, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-nez v11, :cond_1e

    const/16 v16, 0x0

    goto :goto_16

    :cond_1e
    move/from16 v16, p2

    :goto_16
    const/4 v6, 0x0

    .line 87
    :goto_17
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1f

    .line 88
    :try_start_6
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/trust/ITrustListener;
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    move v3, v11

    move v4, v14

    move/from16 v5, p1

    move v8, v6

    move/from16 v6, v16

    move-object/from16 p3, v10

    move-object v10, v7

    move-object v7, v15

    :try_start_7
    invoke-interface/range {v2 .. v7}, Landroid/app/trust/ITrustListener;->onTrustChanged(ZZIILjava/util/List;)V
    :try_end_7
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_19

    :catch_5
    move-exception v0

    goto :goto_18

    :catch_6
    move-exception v0

    move v8, v6

    move-object/from16 p3, v10

    move-object v10, v7

    goto :goto_18

    :catch_7
    move v8, v6

    move-object/from16 p3, v10

    move-object v10, v7

    goto :goto_1b

    .line 89
    :goto_18
    const-string v2, "Exception while notifying TrustListener."

    invoke-static {v10, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    move v6, v8

    :goto_1a
    const/4 v2, 0x1

    goto :goto_1c

    .line 90
    :catch_8
    :goto_1b
    const-string v0, "Removing dead TrustListener."

    invoke-static {v10, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v8, -0x1

    goto :goto_1a

    :goto_1c
    add-int/2addr v6, v2

    move/from16 v8, p1

    move-object v7, v10

    move-object/from16 v10, p3

    goto :goto_17

    :cond_1f
    move-object/from16 p3, v10

    if-eq v11, v12, :cond_22

    .line 92
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    if-eqz v11, :cond_22

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_20

    const/4 v10, 0x1

    goto :goto_1d

    :cond_20
    const/4 v10, 0x0

    .line 93
    :goto_1d
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 94
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 95
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 96
    const-string v2, "TrustManagerService"

    const-string/jumbo v3, "scheduleTrustTimeout(override=%s, isTrustable=%s)"

    invoke-static {v2, v3, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_21
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v10, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_22
    if-eqz v14, :cond_24

    if-eqz v9, :cond_24

    .line 99
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "TrustManagerService"

    const-string v2, "calling back with UNLOCKED_BY_GRANT"

    invoke-static {v0, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_23
    new-instance v0, Landroid/service/trust/GrantTrustResult;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/service/trust/GrantTrustResult;-><init>(I)V

    invoke-virtual {v9, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :cond_24
    if-nez v12, :cond_25

    if-eqz v13, :cond_27

    .line 101
    :cond_25
    sget-object v0, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    move-object/from16 v7, p3

    if-ne v7, v0, :cond_27

    .line 102
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string v0, "TrustManagerService"

    const-string v2, "Trust was revoked, destroy trustable alarms"

    invoke-static {v0, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_26
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->cancelBothTrustableAlarms(I)V

    :cond_27
    return-void

    .line 104
    :goto_1e
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

.method public final updateTrustAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 22
    .line 23
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public waitForIdle()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
