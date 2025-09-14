.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final NETWORK_STATE_BLOCK:I = 0x1

.field static final NETWORK_STATE_NO_CHANGE:I = 0x0

.field static final NETWORK_STATE_UNBLOCK:I = 0x2

.field public static final PAGE_SIZE:I

.field public static final sFirstAsleepPssTimes:[J

.field public static final sFirstAwakePssTimes:[J

.field public static sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field public static sKillThread:Lcom/android/server/ServiceThread;

.field public static sLmkdConnection:Lcom/android/server/am/LmkdConnection;

.field public static final sProcStateToProcMem:[I

.field public static final sSameAsleepPssTimes:[J

.field public static final sSameAwakePssTimes:[J

.field public static final sTestFirstPssTimes:[J

.field public static final sTestSamePssTimes:[J


# instance fields
.field public mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

.field public mActiveUids:Lcom/android/server/am/ActiveUids;

.field public mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

.field public mAppDataIsolationEnabled:Z

.field public final mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

.field mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

.field public final mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

.field public final mAppZygoteProcesses:Landroid/util/ArrayMap;

.field public final mAppZygotes:Lcom/android/internal/app/ProcessMap;

.field public final mAppsInBackgroundRestricted:Landroid/util/ArraySet;

.field public final mAvailProcessChanges:Ljava/util/ArrayList;

.field public mCachedRestoreLevel:J

.field public mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

.field public mDisplayHeight:I

.field public mDisplayWidth:I

.field public final mDyingProcesses:Lcom/android/internal/app/ProcessMap;

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

.field public mHaveDisplaySize:Z

.field public mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

.field public mIsDisplayChanged:Z

.field public final mIsolatedProcesses:Landroid/util/SparseArray;

.field public mLruProcessActivityStart:I

.field public mLruProcessServiceStart:I

.field public final mLruProcesses:Ljava/util/ArrayList;

.field public mLruSeq:I

.field public final mOomAdj:[I

.field public mOomLevelsSet:Z

.field public final mOomMinFree:[I

.field public final mOomMinFreeHigh:[I

.field public final mOomMinFreeLow:[I

.field public final mPendingProcessChanges:Ljava/util/ArrayList;

.field public final mPendingStarts:Landroid/util/LongSparseArray;

.field public mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mProcStartSeqCounter:J

.field volatile mProcStateSeqCounter:J

.field public final mProcessChangeLock:Ljava/lang/Object;

.field public mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

.field public final mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

.field public final mProcessObservers:Landroid/os/RemoteCallbackList;

.field public final mRemovedProcesses:Ljava/util/ArrayList;

.field public final mSdkSandboxes:Landroid/util/SparseArray;

.field public mService:Lcom/android/server/am/ActivityManagerService;

.field public final mStringBuilder:Ljava/lang/StringBuilder;

.field public mSystemServerSocketForZygote:Landroid/net/LocalSocket;

.field public mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

.field public final mTotalMemMb:J

.field public mVoldAppDataIsolationEnabled:Z

.field public final mZygoteSigChldMessage:[I

.field public final mZygoteUnsolicitedMessage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v0, v0

    .line 8
    sput v0, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 12
    .line 13
    sput-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 14
    .line 15
    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 16
    .line 17
    const/16 v0, 0x14

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 25
    .line 26
    const/4 v0, 0x5

    .line 27
    new-array v1, v0, [J

    .line 28
    .line 29
    fill-array-data v1, :array_1

    .line 30
    .line 31
    .line 32
    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 33
    .line 34
    new-array v1, v0, [J

    .line 35
    .line 36
    fill-array-data v1, :array_2

    .line 37
    .line 38
    .line 39
    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 40
    .line 41
    new-array v1, v0, [J

    .line 42
    .line 43
    fill-array-data v1, :array_3

    .line 44
    .line 45
    .line 46
    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 47
    .line 48
    new-array v1, v0, [J

    .line 49
    .line 50
    fill-array-data v1, :array_4

    .line 51
    .line 52
    .line 53
    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 54
    .line 55
    new-array v1, v0, [J

    .line 56
    .line 57
    fill-array-data v1, :array_5

    .line 58
    .line 59
    .line 60
    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 61
    .line 62
    new-array v0, v0, [J

    .line 63
    .line 64
    fill-array-data v0, :array_6

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_1
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_2
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_3
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_4
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_5
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_6
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
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
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x6

    .line 9
    new-array v3, v2, [I

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 15
    .line 16
    new-array v3, v2, [I

    .line 17
    .line 18
    fill-array-data v3, :array_1

    .line 19
    .line 20
    .line 21
    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 22
    .line 23
    new-array v3, v2, [I

    .line 24
    .line 25
    fill-array-data v3, :array_2

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 29
    .line 30
    new-array v2, v2, [I

    .line 31
    .line 32
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 33
    .line 34
    iput v1, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    .line 35
    .line 36
    iput v1, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const/16 v3, 0x100

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-wide/16 v2, 0x0

    .line 58
    .line 59
    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 60
    .line 61
    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 62
    .line 63
    new-instance v2, Landroid/util/LongSparseArray;

    .line 64
    .line 65
    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    .line 69
    .line 70
    new-instance v2, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 76
    .line 77
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 78
    .line 79
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 80
    .line 81
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 82
    .line 83
    new-instance v2, Landroid/util/SparseArray;

    .line 84
    .line 85
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 89
    .line 90
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    .line 91
    .line 92
    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 96
    .line 97
    new-instance v2, Lcom/android/server/am/AppStartInfoTracker;

    .line 98
    .line 99
    invoke-direct {v2}, Lcom/android/server/am/AppStartInfoTracker;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 103
    .line 104
    new-instance v2, Landroid/util/SparseArray;

    .line 105
    .line 106
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    .line 110
    .line 111
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker;

    .line 112
    .line 113
    invoke-direct {v2}, Lcom/android/server/am/AppExitInfoTracker;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 117
    .line 118
    new-instance v2, Landroid/util/ArrayMap;

    .line 119
    .line 120
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 124
    .line 125
    new-instance v2, Landroid/util/ArraySet;

    .line 126
    .line 127
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 133
    .line 134
    const/16 v2, 0x10

    .line 135
    .line 136
    new-array v2, v2, [B

    .line 137
    .line 138
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    .line 139
    .line 140
    const/4 v2, 0x3

    .line 141
    new-array v2, v2, [I

    .line 142
    .line 143
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    .line 144
    .line 145
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 146
    .line 147
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 148
    .line 149
    const v2, 0x182b8

    .line 150
    .line 151
    .line 152
    const v3, 0x1869f

    .line 153
    .line 154
    .line 155
    invoke-direct {v0, v2, v3}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(II)V

    .line 156
    .line 157
    .line 158
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 159
    .line 160
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 161
    .line 162
    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;-><init>(Lcom/android/server/am/ProcessList;)V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 166
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 173
    .line 174
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    .line 175
    .line 176
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 177
    .line 178
    .line 179
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    .line 180
    .line 181
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 182
    .line 183
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 184
    .line 185
    .line 186
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 187
    .line 188
    const/4 v0, 0x5

    .line 189
    new-array v0, v0, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 190
    .line 191
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 192
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 199
    .line 200
    new-instance v0, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .line 204
    .line 205
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    .line 206
    .line 207
    new-instance v0, Ljava/lang/Object;

    .line 208
    .line 209
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 210
    .line 211
    .line 212
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    .line 213
    .line 214
    new-instance v0, Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 215
    .line 216
    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$MyProcessMap;-><init>(Lcom/android/server/am/ProcessList;)V

    .line 217
    .line 218
    .line 219
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 220
    .line 221
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    .line 222
    .line 223
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    .line 230
    .line 231
    .line 232
    move-result-wide v2

    .line 233
    const-wide/32 v4, 0x100000

    .line 234
    .line 235
    .line 236
    div-long/2addr v2, v4

    .line 237
    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 238
    .line 239
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x384
        0x3b6
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_1
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

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
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_2
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xa

    .line 3
    .line 4
    :goto_0
    const/4 v2, 0x6

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    int-to-long v2, v1

    .line 8
    cmp-long v2, p1, v2

    .line 9
    .line 10
    if-gez v2, :cond_0

    .line 11
    .line 12
    const/16 v2, 0x20

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    mul-int/lit8 v1, v1, 0xa

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 0

    .line 1
    sub-int/2addr p1, p4

    .line 2
    if-nez p1, :cond_2

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    return-object p2

    .line 7
    :cond_0
    if-nez p3, :cond_1

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_1
    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_2
    const/16 p2, 0xa

    .line 16
    .line 17
    const-string p3, "+"

    .line 18
    .line 19
    if-ge p1, p2, :cond_4

    .line 20
    .line 21
    invoke-static {p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p5, :cond_3

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    const-string p3, "+ "

    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_4
    invoke-static {p0, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0, p1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public static checkFreezerExempt(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

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
    sget-object v0, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 10
    .line 11
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    .line 15
    .line 16
    iget-object v0, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_4

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 39
    .line 40
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v4, 0x1

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    return v4

    .line 50
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 51
    .line 52
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    :cond_3
    return v4

    .line 69
    :cond_4
    return v1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p0
.end method

.method public static checkSlow(JLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p0

    .line 6
    const-wide/16 p0, 0x32

    .line 7
    .line 8
    cmp-long p0, v0, p0

    .line 9
    .line 10
    if-lez p0, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p1, "Slow operation: "

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string/jumbo p1, "ms so far, now at "

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "ActivityManager"

    .line 36
    .line 37
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public static computeGidsForProcess(II[IZ)[I
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    array-length v1, p2

    .line 4
    add-int/lit8 v1, v1, 0x5

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v3}, Landroid/os/UserHandle;->getUserGid(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    array-length v4, p2

    .line 34
    const/4 v5, 0x0

    .line 35
    move v6, v5

    .line 36
    :goto_0
    if-ge v6, v4, :cond_0

    .line 37
    .line 38
    aget v7, p2, v6

    .line 39
    .line 40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v6, v6, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p2, -0x1

    .line 51
    if-eq v1, p2, :cond_1

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    if-eq v2, p2, :cond_2

    .line 61
    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_2
    if-eq v3, p2, :cond_3

    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_3
    const/4 p2, 0x4

    .line 79
    const/16 v1, 0x437

    .line 80
    .line 81
    const/4 v2, 0x3

    .line 82
    if-eq p0, p2, :cond_4

    .line 83
    .line 84
    if-ne p0, v2, :cond_5

    .line 85
    .line 86
    :cond_4
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    const/16 v3, 0x3f7

    .line 91
    .line 92
    invoke-static {p2, v3}, Landroid/os/UserHandle;->getUid(II)I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    const/16 p2, 0x436

    .line 104
    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_5
    const/4 p2, 0x2

    .line 120
    if-ne p0, p2, :cond_6

    .line 121
    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_6
    if-ne p0, v2, :cond_7

    .line 130
    .line 131
    const/16 p0, 0x3ff

    .line 132
    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_7

    .line 145
    .line 146
    const/16 p1, 0x5f

    .line 147
    .line 148
    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    invoke-static {p1}, Landroid/os/UserHandle;->getUserGid(I)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    const/16 p1, 0x60

    .line 171
    .line 172
    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    invoke-static {p1}, Landroid/os/UserHandle;->getUserGid(I)I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    const/16 p1, 0x61

    .line 195
    .line 196
    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    invoke-static {p1}, Landroid/os/UserHandle;->getUserGid(I)I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    const/16 p1, 0x62

    .line 219
    .line 220
    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    invoke-static {p1}, Landroid/os/UserHandle;->getUserGid(I)I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    const/16 p1, 0x63

    .line 243
    .line 244
    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    invoke-static {p1}, Landroid/os/UserHandle;->getUserGid(I)I

    .line 256
    .line 257
    .line 258
    move-result p0

    .line 259
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    :cond_7
    if-eqz p3, :cond_8

    .line 267
    .line 268
    const/16 p0, 0x435

    .line 269
    .line 270
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    new-array p1, p0, [I

    .line 282
    .line 283
    :goto_1
    if-ge v5, p0, :cond_9

    .line 284
    .line 285
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    check-cast p2, Ljava/lang/Integer;

    .line 290
    .line 291
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    aput p2, p1, v5

    .line 296
    .line 297
    add-int/lit8 v5, v5, 0x1

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :cond_9
    return-object p1
.end method

.method public static dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/16 p3, 0x23

    .line 5
    .line 6
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(C)V

    .line 7
    .line 8
    .line 9
    const/16 p3, 0xa

    .line 10
    .line 11
    const/16 v0, 0x20

    .line 12
    .line 13
    if-ge p1, p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 19
    .line 20
    .line 21
    const-string p1, ": "

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 27
    .line 28
    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 29
    .line 30
    const/4 p3, 0x0

    .line 31
    invoke-static {p1, p3}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 42
    .line 43
    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 44
    .line 45
    invoke-static {p1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 56
    .line 57
    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 58
    .line 59
    invoke-static {p0, p1}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    iget-boolean v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    .line 81
    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    iget-boolean v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 85
    .line 86
    if-eqz v0, :cond_8

    .line 87
    .line 88
    :cond_1
    const-string v0, " act:"

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 94
    .line 95
    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    const-string p3, "activities"

    .line 101
    .line 102
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    move p3, v1

    .line 106
    :cond_2
    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 107
    .line 108
    iget-boolean p2, p2, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    .line 109
    .line 110
    const-string/jumbo v0, "|"

    .line 111
    .line 112
    .line 113
    if-eqz p2, :cond_4

    .line 114
    .line 115
    if-eqz p3, :cond_3

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    const-string/jumbo p2, "recents"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    move p3, v1

    .line 127
    :cond_4
    iget-boolean p2, p1, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    .line 128
    .line 129
    if-eqz p2, :cond_6

    .line 130
    .line 131
    if-eqz p3, :cond_5

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_5
    const-string/jumbo p2, "client"

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_6
    move v1, p3

    .line 144
    :goto_0
    iget-boolean p1, p1, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 145
    .line 146
    if-eqz p1, :cond_8

    .line 147
    .line 148
    if-eqz v1, :cond_7

    .line 149
    .line 150
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_7
    const-string/jumbo p1, "treated"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_8
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public static dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)V
    .locals 18

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
    move-object/from16 v3, p4

    .line 8
    .line 9
    invoke-static {v3, v2}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    iget-wide v6, v1, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    .line 25
    .line 26
    sub-long/2addr v4, v6

    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    const/4 v7, 0x1

    .line 32
    sub-int/2addr v6, v7

    .line 33
    :goto_0
    if-ltz v6, :cond_14

    .line 34
    .line 35
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    check-cast v8, Landroid/util/Pair;

    .line 40
    .line 41
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 44
    .line 45
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 46
    .line 47
    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 48
    .line 49
    iget v11, v9, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 50
    .line 51
    const/4 v12, 0x0

    .line 52
    invoke-static {v11, v12}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    iget v13, v9, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 57
    .line 58
    if-eqz v13, :cond_5

    .line 59
    .line 60
    if-eq v13, v7, :cond_4

    .line 61
    .line 62
    const/4 v14, 0x2

    .line 63
    if-eq v13, v14, :cond_3

    .line 64
    .line 65
    const/4 v14, 0x3

    .line 66
    if-eq v13, v14, :cond_2

    .line 67
    .line 68
    const/4 v14, 0x4

    .line 69
    if-eq v13, v14, :cond_1

    .line 70
    .line 71
    const/4 v14, 0x6

    .line 72
    if-eq v13, v14, :cond_3

    .line 73
    .line 74
    const/16 v13, 0x3f

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const/16 v13, 0x42

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/16 v13, 0x54

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/16 v13, 0x46

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    const/16 v13, 0x52

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    const/16 v13, 0x62

    .line 90
    .line 91
    :goto_1
    iget-boolean v14, v9, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 92
    .line 93
    if-eqz v14, :cond_6

    .line 94
    .line 95
    const/16 v14, 0x41

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_6
    iget-boolean v14, v10, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 99
    .line 100
    if-eqz v14, :cond_7

    .line 101
    .line 102
    const/16 v14, 0x53

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_7
    const/16 v14, 0x20

    .line 106
    .line 107
    :goto_2
    iget v12, v9, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 108
    .line 109
    invoke-static {v12}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    const-string v15, "    "

    .line 114
    .line 115
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-boolean v7, v8, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 119
    .line 120
    if-eqz v7, :cond_8

    .line 121
    .line 122
    const-string v7, "PERS"

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_8
    const-string v7, "Proc"

    .line 126
    .line 127
    :goto_3
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v7, " #"

    .line 131
    .line 132
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    const/16 v16, 0x1

    .line 140
    .line 141
    add-int/lit8 v7, v7, -0x1

    .line 142
    .line 143
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v17

    .line 147
    move-object/from16 v2, v17

    .line 148
    .line 149
    check-cast v2, Landroid/util/Pair;

    .line 150
    .line 151
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v2, Ljava/lang/Integer;

    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    sub-int/2addr v7, v2

    .line 160
    const/16 v2, 0xa

    .line 161
    .line 162
    if-ge v7, v2, :cond_9

    .line 163
    .line 164
    const/16 v2, 0x20

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_9
    const/16 v2, 0x20

    .line 171
    .line 172
    :goto_4
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 173
    .line 174
    .line 175
    const-string v7, ": "

    .line 176
    .line 177
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 187
    .line 188
    .line 189
    const/16 v7, 0x2f

    .line 190
    .line 191
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 204
    .line 205
    .line 206
    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 207
    .line 208
    invoke-static {v0, v7}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 212
    .line 213
    .line 214
    const-string v7, " t:"

    .line 215
    .line 216
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 220
    .line 221
    iget v7, v7, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    .line 222
    .line 223
    const/16 v11, 0xa

    .line 224
    .line 225
    if-ge v7, v11, :cond_a

    .line 226
    .line 227
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 228
    .line 229
    .line 230
    :cond_a
    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 231
    .line 232
    iget v7, v7, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    .line 233
    .line 234
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const-string v2, " ("

    .line 248
    .line 249
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object v7, v9, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const/16 v7, 0x29

    .line 258
    .line 259
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 260
    .line 261
    .line 262
    iget-object v7, v9, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 263
    .line 264
    if-nez v7, :cond_b

    .line 265
    .line 266
    iget-object v7, v9, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 267
    .line 268
    if-eqz v7, :cond_10

    .line 269
    .line 270
    :cond_b
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v7, v9, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 277
    .line 278
    instance-of v11, v7, Landroid/content/ComponentName;

    .line 279
    .line 280
    const-string/jumbo v12, "{null}"

    .line 281
    .line 282
    .line 283
    if-eqz v11, :cond_c

    .line 284
    .line 285
    check-cast v7, Landroid/content/ComponentName;

    .line 286
    .line 287
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_c
    if-eqz v7, :cond_d

    .line 296
    .line 297
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_d
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :goto_5
    const-string v7, "<="

    .line 309
    .line 310
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v7, v9, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 314
    .line 315
    instance-of v11, v7, Lcom/android/server/am/ProcessRecord;

    .line 316
    .line 317
    if-eqz v11, :cond_e

    .line 318
    .line 319
    const-string v7, "Proc{"

    .line 320
    .line 321
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-object v7, v9, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 327
    .line 328
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string/jumbo v7, "}"

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_e
    if-eqz v7, :cond_f

    .line 343
    .line 344
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    goto :goto_6

    .line 352
    :cond_f
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    :cond_10
    :goto_6
    if-eqz p3, :cond_13

    .line 356
    .line 357
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    const-string/jumbo v7, "oom: max="

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 370
    .line 371
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 372
    .line 373
    .line 374
    const-string v7, " curRaw="

    .line 375
    .line 376
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 380
    .line 381
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 382
    .line 383
    .line 384
    const-string v7, " setRaw="

    .line 385
    .line 386
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 390
    .line 391
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 392
    .line 393
    .line 394
    const-string v7, " cur="

    .line 395
    .line 396
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 400
    .line 401
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 402
    .line 403
    .line 404
    const-string v7, " set="

    .line 405
    .line 406
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    iget v11, v9, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 410
    .line 411
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    const-string/jumbo v11, "state: cur="

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    iget v11, v9, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 427
    .line 428
    invoke-static {v11}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v11

    .line 432
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 439
    .line 440
    invoke-static {v7}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v7

    .line 444
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 448
    .line 449
    invoke-virtual {v7}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    .line 450
    .line 451
    .line 452
    move-result v7

    .line 453
    const-wide/16 v11, 0x400

    .line 454
    .line 455
    if-eqz v7, :cond_11

    .line 456
    .line 457
    const-string v7, " lastPss="

    .line 458
    .line 459
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 463
    .line 464
    iget-wide v13, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    .line 465
    .line 466
    mul-long/2addr v13, v11

    .line 467
    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 468
    .line 469
    .line 470
    const-string v7, " lastSwapPss="

    .line 471
    .line 472
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 476
    .line 477
    iget-wide v13, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    .line 478
    .line 479
    mul-long/2addr v13, v11

    .line 480
    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 481
    .line 482
    .line 483
    const-string v7, " lastCachedPss="

    .line 484
    .line 485
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 489
    .line 490
    iget-wide v13, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    .line 491
    .line 492
    mul-long/2addr v13, v11

    .line 493
    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 494
    .line 495
    .line 496
    goto :goto_7

    .line 497
    :cond_11
    const-string v7, " lastRss="

    .line 498
    .line 499
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 503
    .line 504
    iget-wide v13, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 505
    .line 506
    mul-long/2addr v13, v11

    .line 507
    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 508
    .line 509
    .line 510
    const-string v7, " lastCachedRss="

    .line 511
    .line 512
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 516
    .line 517
    iget-wide v13, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedRss:J

    .line 518
    .line 519
    mul-long/2addr v13, v11

    .line 520
    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 521
    .line 522
    .line 523
    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    const-string/jumbo v7, "cached="

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 539
    .line 540
    .line 541
    move-result v7

    .line 542
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 543
    .line 544
    .line 545
    const-string v7, " empty="

    .line 546
    .line 547
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 551
    .line 552
    const/16 v11, 0x13

    .line 553
    .line 554
    if-lt v7, v11, :cond_12

    .line 555
    .line 556
    move/from16 v12, v16

    .line 557
    .line 558
    goto :goto_8

    .line 559
    :cond_12
    const/4 v12, 0x0

    .line 560
    :goto_8
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Z)V

    .line 561
    .line 562
    .line 563
    const-string v7, " hasAboveClient="

    .line 564
    .line 565
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    iget-boolean v7, v10, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    .line 569
    .line 570
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 571
    .line 572
    .line 573
    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 574
    .line 575
    const/16 v9, 0xa

    .line 576
    .line 577
    if-lt v7, v9, :cond_13

    .line 578
    .line 579
    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 580
    .line 581
    iget-object v7, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 582
    .line 583
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 584
    .line 585
    .line 586
    move-result-wide v9

    .line 587
    const-wide/16 v11, 0x0

    .line 588
    .line 589
    cmp-long v7, v9, v11

    .line 590
    .line 591
    if-eqz v7, :cond_13

    .line 592
    .line 593
    cmp-long v7, v4, v11

    .line 594
    .line 595
    if-lez v7, :cond_13

    .line 596
    .line 597
    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 598
    .line 599
    iget-object v7, v7, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 600
    .line 601
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 602
    .line 603
    .line 604
    move-result-wide v7

    .line 605
    sub-long/2addr v7, v9

    .line 606
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    const-string/jumbo v9, "run cpu over "

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 619
    .line 620
    .line 621
    const-string v9, " used "

    .line 622
    .line 623
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    const-wide/16 v9, 0x64

    .line 633
    .line 634
    mul-long/2addr v7, v9

    .line 635
    div-long/2addr v7, v4

    .line 636
    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 637
    .line 638
    .line 639
    const-string v2, "%)"

    .line 640
    .line 641
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    :cond_13
    add-int/lit8 v6, v6, -0x1

    .line 645
    .line 646
    move-object/from16 v2, p2

    .line 647
    .line 648
    move/from16 v7, v16

    .line 649
    .line 650
    goto/16 :goto_0

    .line 651
    .line 652
    :cond_14
    return-void
.end method

.method public static freezePackageCgroup(IZ)Z
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/Process;->freezeCgroupUid(IZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string/jumbo p1, "freeze"

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string/jumbo p1, "unfreeze"

    .line 14
    .line 15
    .line 16
    :goto_0
    const-string v1, "Unable to "

    .line 17
    .line 18
    const-string v2, " cgroup uid: "

    .line 19
    .line 20
    const-string v3, ": "

    .line 21
    .line 22
    invoke-static {p0, v1, p1, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "ActivityManager"

    .line 34
    .line 35
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public static final getLmkdKillCount(II)Ljava/lang/Integer;
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-ne p0, v2, :cond_0

    .line 40
    .line 41
    new-instance p0, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_0
    const/4 p0, 0x0

    .line 52
    return-object p0
.end method

.method public static getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;
    .locals 11

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    array-length v1, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    .line 15
    aget-object v3, p1, v2

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "ActivityManager"

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    const-string v4, "Unknown package:"

    .line 26
    .line 27
    invoke-static {v4, v3, v5}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move-object v6, v4

    .line 32
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 33
    .line 34
    iget-object v6, v6, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v4, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    .line 41
    .line 42
    .line 43
    move-result-wide v7

    .line 44
    const-wide/16 v9, 0x0

    .line 45
    .line 46
    cmp-long v4, v7, v9

    .line 47
    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, " inode == 0 (b/152760674)"

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    return-object p0

    .line 72
    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v6, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    return-object v0
.end method

.method public static killProcessGroup(II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0xfa0

    .line 6
    .line 7
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "ActivityManager"

    .line 16
    .line 17
    const-string v1, "Asked to kill process group before system bringup!"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public static makeOomAdjString(IZ)Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0x384

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v1, "cch"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "cch"

    .line 9
    .line 10
    .line 11
    const-string v4, "   "

    .line 12
    .line 13
    const/16 v5, 0x384

    .line 14
    .line 15
    move v2, p0

    .line 16
    move v6, p1

    .line 17
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/16 v0, 0x352

    .line 23
    .line 24
    if-lt p0, v0, :cond_1

    .line 25
    .line 26
    const-string/jumbo v1, "picked "

    .line 27
    .line 28
    .line 29
    const-string/jumbo v3, "picked"

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/16 v5, 0x352

    .line 34
    .line 35
    move v2, p0

    .line 36
    move v6, p1

    .line 37
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_1
    const/16 v0, 0x320

    .line 43
    .line 44
    if-lt p0, v0, :cond_2

    .line 45
    .line 46
    const-string/jumbo v1, "svcb  "

    .line 47
    .line 48
    .line 49
    const-string/jumbo v3, "svcb"

    .line 50
    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    const/16 v5, 0x320

    .line 54
    .line 55
    move v2, p0

    .line 56
    move v6, p1

    .line 57
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_2
    const/16 v0, 0x2bc

    .line 63
    .line 64
    if-lt p0, v0, :cond_3

    .line 65
    .line 66
    const-string/jumbo v1, "prev  "

    .line 67
    .line 68
    .line 69
    const-string/jumbo v3, "prev"

    .line 70
    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    const/16 v5, 0x2bc

    .line 74
    .line 75
    move v2, p0

    .line 76
    move v6, p1

    .line 77
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_3
    const/16 v0, 0x258

    .line 83
    .line 84
    if-lt p0, v0, :cond_4

    .line 85
    .line 86
    const-string/jumbo v1, "home  "

    .line 87
    .line 88
    .line 89
    const-string/jumbo v3, "home"

    .line 90
    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    const/16 v5, 0x258

    .line 94
    .line 95
    move v2, p0

    .line 96
    move v6, p1

    .line 97
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_4
    const/16 v0, 0x1f4

    .line 103
    .line 104
    if-lt p0, v0, :cond_5

    .line 105
    .line 106
    const-string/jumbo v1, "svc   "

    .line 107
    .line 108
    .line 109
    const-string/jumbo v3, "svc"

    .line 110
    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    const/16 v5, 0x1f4

    .line 114
    .line 115
    move v2, p0

    .line 116
    move v6, p1

    .line 117
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :cond_5
    const/16 v0, 0x190

    .line 123
    .line 124
    if-lt p0, v0, :cond_6

    .line 125
    .line 126
    const-string/jumbo v1, "hvy   "

    .line 127
    .line 128
    .line 129
    const-string/jumbo v3, "hvy"

    .line 130
    .line 131
    .line 132
    const/4 v4, 0x0

    .line 133
    const/16 v5, 0x190

    .line 134
    .line 135
    move v2, p0

    .line 136
    move v6, p1

    .line 137
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    :cond_6
    const/16 v0, 0x12c

    .line 143
    .line 144
    if-lt p0, v0, :cond_7

    .line 145
    .line 146
    const-string/jumbo v1, "bkup  "

    .line 147
    .line 148
    .line 149
    const-string/jumbo v3, "bkup"

    .line 150
    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    const/16 v5, 0x12c

    .line 154
    .line 155
    move v2, p0

    .line 156
    move v6, p1

    .line 157
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    return-object p0

    .line 162
    :cond_7
    const/16 v0, 0xfa

    .line 163
    .line 164
    if-lt p0, v0, :cond_8

    .line 165
    .line 166
    const-string/jumbo v1, "prcl  "

    .line 167
    .line 168
    .line 169
    const-string/jumbo v3, "prcl"

    .line 170
    .line 171
    .line 172
    const/4 v4, 0x0

    .line 173
    const/16 v5, 0xfa

    .line 174
    .line 175
    move v2, p0

    .line 176
    move v6, p1

    .line 177
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    return-object p0

    .line 182
    :cond_8
    const/16 v0, 0xe1

    .line 183
    .line 184
    if-lt p0, v0, :cond_9

    .line 185
    .line 186
    const-string/jumbo v1, "prcm  "

    .line 187
    .line 188
    .line 189
    const-string/jumbo v3, "prcm"

    .line 190
    .line 191
    .line 192
    const/4 v4, 0x0

    .line 193
    const/16 v5, 0xe1

    .line 194
    .line 195
    move v2, p0

    .line 196
    move v6, p1

    .line 197
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    return-object p0

    .line 202
    :cond_9
    const/16 v0, 0xc8

    .line 203
    .line 204
    if-lt p0, v0, :cond_a

    .line 205
    .line 206
    const-string/jumbo v1, "prcp  "

    .line 207
    .line 208
    .line 209
    const-string/jumbo v3, "prcp"

    .line 210
    .line 211
    .line 212
    const/4 v4, 0x0

    .line 213
    const/16 v5, 0xc8

    .line 214
    .line 215
    move v2, p0

    .line 216
    move v6, p1

    .line 217
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    return-object p0

    .line 222
    :cond_a
    const/16 v0, 0x64

    .line 223
    .line 224
    if-lt p0, v0, :cond_b

    .line 225
    .line 226
    const-string/jumbo v1, "vis"

    .line 227
    .line 228
    .line 229
    const-string/jumbo v3, "vis"

    .line 230
    .line 231
    .line 232
    const-string v4, "   "

    .line 233
    .line 234
    const/16 v5, 0x64

    .line 235
    .line 236
    move v2, p0

    .line 237
    move v6, p1

    .line 238
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    return-object p0

    .line 243
    :cond_b
    if-ltz p0, :cond_c

    .line 244
    .line 245
    const-string/jumbo v0, "fg "

    .line 246
    .line 247
    .line 248
    const-string/jumbo v2, "fg "

    .line 249
    .line 250
    .line 251
    const-string v3, "   "

    .line 252
    .line 253
    const/4 v4, 0x0

    .line 254
    move v1, p0

    .line 255
    move v5, p1

    .line 256
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    return-object p0

    .line 261
    :cond_c
    const/16 v0, -0x2bc

    .line 262
    .line 263
    if-lt p0, v0, :cond_d

    .line 264
    .line 265
    const-string/jumbo v1, "psvc  "

    .line 266
    .line 267
    .line 268
    const-string/jumbo v3, "psvc"

    .line 269
    .line 270
    .line 271
    const/4 v4, 0x0

    .line 272
    const/16 v5, -0x2bc

    .line 273
    .line 274
    move v2, p0

    .line 275
    move v6, p1

    .line 276
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    return-object p0

    .line 281
    :cond_d
    const/16 v0, -0x320

    .line 282
    .line 283
    if-lt p0, v0, :cond_e

    .line 284
    .line 285
    const-string/jumbo v1, "pers  "

    .line 286
    .line 287
    .line 288
    const-string/jumbo v3, "pers"

    .line 289
    .line 290
    .line 291
    const/4 v4, 0x0

    .line 292
    const/16 v5, -0x320

    .line 293
    .line 294
    move v2, p0

    .line 295
    move v6, p1

    .line 296
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    return-object p0

    .line 301
    :cond_e
    const/16 v0, -0x384

    .line 302
    .line 303
    if-lt p0, v0, :cond_f

    .line 304
    .line 305
    const-string/jumbo v1, "sys   "

    .line 306
    .line 307
    .line 308
    const-string/jumbo v3, "sys"

    .line 309
    .line 310
    .line 311
    const/4 v4, 0x0

    .line 312
    const/16 v5, -0x384

    .line 313
    .line 314
    move v2, p0

    .line 315
    move v6, p1

    .line 316
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    return-object p0

    .line 321
    :cond_f
    const/16 v0, -0x3e8

    .line 322
    .line 323
    if-lt p0, v0, :cond_10

    .line 324
    .line 325
    const-string/jumbo v1, "ntv  "

    .line 326
    .line 327
    .line 328
    const-string/jumbo v3, "ntv"

    .line 329
    .line 330
    .line 331
    const/4 v4, 0x0

    .line 332
    const/16 v5, -0x3e8

    .line 333
    .line 334
    move v2, p0

    .line 335
    move v6, p1

    .line 336
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    return-object p0

    .line 341
    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    return-object p0
.end method

.method public static makeProcStateProtoEnum(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/16 p0, 0x3e6

    .line 5
    .line 6
    return p0

    .line 7
    :pswitch_0
    const/16 p0, 0x3fb

    .line 8
    .line 9
    return p0

    .line 10
    :pswitch_1
    const/16 p0, 0x3fa

    .line 11
    .line 12
    return p0

    .line 13
    :pswitch_2
    const/16 p0, 0x3f9

    .line 14
    .line 15
    return p0

    .line 16
    :pswitch_3
    const/16 p0, 0x3f8

    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_4
    const/16 p0, 0x3f7

    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_5
    const/16 p0, 0x3f6

    .line 23
    .line 24
    return p0

    .line 25
    :pswitch_6
    const/16 p0, 0x3f5

    .line 26
    .line 27
    return p0

    .line 28
    :pswitch_7
    const/16 p0, 0x3f4

    .line 29
    .line 30
    return p0

    .line 31
    :pswitch_8
    const/16 p0, 0x3f3

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_9
    const/16 p0, 0x3f2

    .line 35
    .line 36
    return p0

    .line 37
    :pswitch_a
    const/16 p0, 0x3f1

    .line 38
    .line 39
    return p0

    .line 40
    :pswitch_b
    const/16 p0, 0x3f0

    .line 41
    .line 42
    return p0

    .line 43
    :pswitch_c
    const/16 p0, 0x3ef

    .line 44
    .line 45
    return p0

    .line 46
    :pswitch_d
    const/16 p0, 0x3ee

    .line 47
    .line 48
    return p0

    .line 49
    :pswitch_e
    const/16 p0, 0x3ed

    .line 50
    .line 51
    return p0

    .line 52
    :pswitch_f
    const/16 p0, 0x3ec

    .line 53
    .line 54
    return p0

    .line 55
    :pswitch_10
    const/16 p0, 0x3eb

    .line 56
    .line 57
    return p0

    .line 58
    :pswitch_11
    const/16 p0, 0x3fc

    .line 59
    .line 60
    return p0

    .line 61
    :pswitch_12
    const/16 p0, 0x3ea

    .line 62
    .line 63
    return p0

    .line 64
    :pswitch_13
    const/16 p0, 0x3e9

    .line 65
    .line 66
    return p0

    .line 67
    :pswitch_14
    const/16 p0, 0x3e8

    .line 68
    .line 69
    return p0

    .line 70
    :pswitch_15
    const/16 p0, 0x3e7

    .line 71
    .line 72
    return p0

    .line 73
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static final remove(I)V
    .locals 2

    .line 1
    if-gtz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/16 v0, 0x8

    .line 5
    .line 6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-static {v0, p0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static final setLmkdParameter(II)V
    .locals 2

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x64

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    invoke-static {v0, p0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static setOomAdj(IIII)V
    .locals 5

    .line 1
    if-gtz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/16 v0, 0x3e9

    .line 5
    .line 6
    if-ne p2, v0, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    const/16 v2, 0x14

    .line 23
    .line 24
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/16 v4, 0x65

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/16 p3, 0x10

    .line 50
    .line 51
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    .line 68
    invoke-static {p3, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    sub-long/2addr v2, v0

    .line 76
    const-wide/16 v0, 0xfa

    .line 77
    .line 78
    cmp-long p1, v2, v0

    .line 79
    .line 80
    if-lez p1, :cond_3

    .line 81
    .line 82
    const-string p1, "SLOW OOM ADJ: "

    .line 83
    .line 84
    const-string/jumbo p3, "ms for pid "

    .line 85
    .line 86
    .line 87
    invoke-static {p0, p1, v2, v3, p3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string p1, " = "

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string p1, "ActivityManager"

    .line 104
    .line 105
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_3
    return-void
.end method

.method public static sortProcessOomList(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 26
    .line 27
    invoke-virtual {v3, p0}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    new-instance v3, Landroid/util/Pair;

    .line 35
    .line 36
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance p0, Lcom/android/server/am/ProcessList$3;

    .line 56
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method public static writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    move v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v3

    .line 15
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 19
    .line 20
    const/16 v1, 0xfa1

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v1

    .line 34
    :try_start_1
    iget-object v4, v0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    move v0, v2

    .line 40
    goto :goto_2

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_3

    .line 43
    :cond_1
    :try_start_2
    iget-object v4, v0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    .line 44
    .line 45
    const-wide/16 v5, 0xbb8

    .line 46
    .line 47
    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    move v0, v2

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v0, v3

    .line 57
    :goto_1
    :try_start_3
    monitor-exit v1

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    monitor-exit v1

    .line 60
    move v0, v3

    .line 61
    :goto_2
    if-nez v0, :cond_3

    .line 62
    .line 63
    return v3

    .line 64
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    throw p0

    .line 66
    :cond_3
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 67
    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Lcom/android/server/am/LmkdConnection;->write(Ljava/nio/ByteBuffer;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    goto :goto_6

    .line 75
    :cond_4
    iget-object v4, v0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    .line 76
    .line 77
    monitor-enter v4

    .line 78
    :try_start_4
    iput-object p1, v0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Lcom/android/server/am/LmkdConnection;->write(Ljava/nio/ByteBuffer;)Z

    .line 81
    .line 82
    .line 83
    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    if-eqz p0, :cond_6

    .line 85
    .line 86
    :try_start_5
    iget-object p0, v0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 89
    .line 90
    .line 91
    iget-object p0, v0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 92
    .line 93
    if-eqz p0, :cond_5

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_5
    move v2, v3

    .line 97
    :goto_4
    move v3, v2

    .line 98
    goto :goto_5

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    goto :goto_7

    .line 101
    :catch_1
    :cond_6
    :goto_5
    const/4 p0, 0x0

    .line 102
    :try_start_6
    iput-object p0, v0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    monitor-exit v4

    .line 105
    move p0, v3

    .line 106
    :goto_6
    return p0

    .line 107
    :goto_7
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 108
    throw p0

    .line 109
    :catchall_2
    move-exception p0

    .line 110
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 111
    throw p0
.end method


# virtual methods
.method public final addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 13

    .line 1
    const-string v0, "Already have existing proc "

    .line 2
    .line 3
    const-string v1, "Existing proc "

    .line 4
    .line 5
    const-string v2, "Make "

    .line 6
    .line 7
    const-string v3, "Re-adding persistent process "

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v4

    .line 15
    :try_start_0
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 16
    .line 17
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    invoke-virtual {p0, v6, v7, v5}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/16 v6, -0x320

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x1

    .line 28
    if-ne v5, p1, :cond_0

    .line 29
    .line 30
    iget-boolean v9, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 31
    .line 32
    if-eqz v9, :cond_0

    .line 33
    .line 34
    const-string v0, "ActivityManager"

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 52
    .line 53
    iput-boolean v7, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 58
    .line 59
    iput-boolean v7, v0, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_0
    if-eqz v5, :cond_3

    .line 67
    .line 68
    iget-boolean v3, v5, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 69
    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    const-string v3, "ActivityManager"

    .line 73
    .line 74
    new-instance v9, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, " persistent because it was :"

    .line 83
    .line 84
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 98
    .line 99
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 105
    .line 106
    const/4 v3, 0x2

    .line 107
    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 108
    .line 109
    .line 110
    iput v3, v2, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 111
    .line 112
    iput-boolean v8, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 113
    .line 114
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 115
    .line 116
    iput-boolean v8, v3, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    .line 117
    .line 118
    iput v6, v2, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 119
    .line 120
    :cond_1
    iget-boolean v2, v5, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 121
    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    const-string v0, "ActivityManager"

    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, " was killed "

    .line 135
    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 140
    .line 141
    .line 142
    move-result-wide v9

    .line 143
    iget-wide v11, v5, Lcom/android/server/am/ProcessRecord;->mKillTime:J

    .line 144
    .line 145
    sub-long/2addr v9, v11

    .line 146
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string/jumbo v1, "ms ago when adding "

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_2
    const-string v1, "ActivityManager"

    .line 167
    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, " when adding "

    .line 177
    .line 178
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 192
    .line 193
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-nez v0, :cond_7

    .line 200
    .line 201
    new-instance v0, Lcom/android/server/am/UidRecord;

    .line 202
    .line 203
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 204
    .line 205
    invoke-direct {v0, v1}, Lcom/android/server/am/UidRecord;-><init>(I)V

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 209
    .line 210
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    .line 211
    .line 212
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 213
    .line 214
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-gez v1, :cond_4

    .line 223
    .line 224
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 225
    .line 226
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    .line 227
    .line 228
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 229
    .line 230
    iget-object v3, v1, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    .line 231
    .line 232
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :try_start_1
    iget-object v1, v1, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    monitor-exit v3

    .line 240
    if-ltz v1, :cond_5

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :catchall_1
    move-exception p0

    .line 244
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    :try_start_2
    throw p0

    .line 246
    :cond_4
    :goto_1
    iput-boolean v8, v0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    .line 247
    .line 248
    iput-boolean v8, v0, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    .line 249
    .line 250
    :cond_5
    const-string v1, "android.permission.INTERNET"

    .line 251
    .line 252
    iget v2, v0, Lcom/android/server/am/UidRecord;->mUid:I

    .line 253
    .line 254
    invoke-static {v1, v2}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-nez v1, :cond_6

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_6
    move v8, v7

    .line 262
    :goto_2
    iput-boolean v8, v0, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    .line 263
    .line 264
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 265
    .line 266
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 267
    .line 268
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 269
    .line 270
    .line 271
    iget v1, v0, Lcom/android/server/am/UidRecord;->mUid:I

    .line 272
    .line 273
    const/16 v2, 0x7564

    .line 274
    .line 275
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 276
    .line 277
    .line 278
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 279
    .line 280
    iget v2, v0, Lcom/android/server/am/UidRecord;->mUid:I

    .line 281
    .line 282
    iget v3, v0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 283
    .line 284
    iget v5, v0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 285
    .line 286
    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 287
    .line 288
    .line 289
    :cond_7
    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 290
    .line 291
    iget-object v0, v0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 292
    .line 293
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    iput v7, p1, Lcom/android/server/am/ProcessRecord;->mRenderThreadTid:I

    .line 297
    .line 298
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 299
    .line 300
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 301
    .line 302
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 303
    .line 304
    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 305
    .line 306
    .line 307
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SUPPORT_IQI:Z

    .line 308
    .line 309
    if-eqz v0, :cond_8

    .line 310
    .line 311
    const-string/jumbo v0, "com.att.iqi"

    .line 312
    .line 313
    .line 314
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_8

    .line 321
    .line 322
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 323
    .line 324
    iput v6, v0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 325
    .line 326
    :cond_8
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 327
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 328
    .line 329
    .line 330
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 331
    .line 332
    if-eqz v0, :cond_9

    .line 333
    .line 334
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 335
    .line 336
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 337
    .line 338
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    :cond_9
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 342
    .line 343
    if-eqz v0, :cond_b

    .line 344
    .line 345
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    .line 346
    .line 347
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 348
    .line 349
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    check-cast v0, Ljava/util/ArrayList;

    .line 354
    .line 355
    if-nez v0, :cond_a

    .line 356
    .line 357
    new-instance v0, Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .line 361
    .line 362
    :cond_a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    .line 366
    .line 367
    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 368
    .line 369
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    :cond_b
    return-void

    .line 377
    :goto_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 379
    .line 380
    .line 381
    throw p0
.end method

.method public final applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    .line 8
    .line 9
    if-eqz v1, :cond_f

    .line 10
    .line 11
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    move-object/from16 v3, p1

    .line 18
    .line 19
    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 20
    .line 21
    .line 22
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 23
    .line 24
    if-eqz v3, :cond_f

    .line 25
    .line 26
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 27
    .line 28
    if-eqz v4, :cond_f

    .line 29
    .line 30
    iput v3, v0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    .line 31
    .line 32
    iput v4, v0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 36
    .line 37
    .line 38
    iput-boolean v5, v0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 39
    .line 40
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 41
    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    .line 45
    .line 46
    iput-object v3, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 47
    .line 48
    :cond_1
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 49
    .line 50
    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 51
    .line 52
    iget v6, v1, Landroid/graphics/Point;->y:I

    .line 53
    .line 54
    iget-object v3, v3, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 55
    .line 56
    const-string v8, "DynamicHiddenApp_BGSlotManager"

    .line 57
    .line 58
    if-eqz v3, :cond_c

    .line 59
    .line 60
    const-string/jumbo v10, "max_snapshot_num"

    .line 61
    .line 62
    .line 63
    const-string v11, "0"

    .line 64
    .line 65
    invoke-static {v10, v11}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    iget-object v3, v3, Lcom/android/server/bgslotmanager/BGSlotManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    .line 70
    .line 71
    iget-object v11, v3, Lcom/android/server/bgslotmanager/MemInfoGetter;->memoryMBToGBPool:[[I

    .line 72
    .line 73
    array-length v12, v11

    .line 74
    move v13, v2

    .line 75
    :goto_0
    if-ge v13, v12, :cond_3

    .line 76
    .line 77
    aget-object v14, v11, v13

    .line 78
    .line 79
    aget v15, v14, v2

    .line 80
    .line 81
    move-object/from16 v16, v8

    .line 82
    .line 83
    int-to-long v7, v15

    .line 84
    move/from16 v17, v10

    .line 85
    .line 86
    iget-wide v9, v3, Lcom/android/server/bgslotmanager/MemInfoGetter;->mTotalMemMb:J

    .line 87
    .line 88
    cmp-long v7, v9, v7

    .line 89
    .line 90
    if-lez v7, :cond_2

    .line 91
    .line 92
    aget v3, v14, v5

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 96
    .line 97
    move-object/from16 v8, v16

    .line 98
    .line 99
    move/from16 v10, v17

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    move-object/from16 v16, v8

    .line 103
    .line 104
    move/from16 v17, v10

    .line 105
    .line 106
    move v3, v2

    .line 107
    :goto_1
    mul-int/2addr v4, v6

    .line 108
    const/4 v6, 0x3

    .line 109
    const/4 v7, 0x2

    .line 110
    filled-new-array {v7, v6, v6, v6}, [I

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    const/4 v7, 0x5

    .line 115
    filled-new-array {v6, v7, v6, v6}, [I

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    const/4 v10, 0x4

    .line 120
    const/16 v11, 0x8

    .line 121
    .line 122
    filled-new-array {v10, v11, v10, v6}, [I

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    const/4 v13, 0x6

    .line 127
    const/16 v14, 0xa

    .line 128
    .line 129
    filled-new-array {v13, v14, v13, v6}, [I

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    filled-new-array {v11, v14, v11, v10}, [I

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    const/16 v10, 0xc

    .line 138
    .line 139
    const/16 v11, 0x14

    .line 140
    .line 141
    filled-new-array {v10, v11, v11, v11}, [I

    .line 142
    .line 143
    .line 144
    move-result-object v18

    .line 145
    const/16 v10, 0x10

    .line 146
    .line 147
    filled-new-array {v10, v11, v11, v11}, [I

    .line 148
    .line 149
    .line 150
    move-result-object v19

    .line 151
    move-object v10, v12

    .line 152
    move-object v11, v13

    .line 153
    move-object v12, v14

    .line 154
    move-object/from16 v13, v18

    .line 155
    .line 156
    move-object/from16 v14, v19

    .line 157
    .line 158
    filled-new-array/range {v8 .. v14}, [[I

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    const-string/jumbo v9, "physical memory: "

    .line 163
    .line 164
    .line 165
    if-eqz v4, :cond_9

    .line 166
    .line 167
    if-eqz v3, :cond_9

    .line 168
    .line 169
    const-string/jumbo v10, "start update max task snapshot number"

    .line 170
    .line 171
    .line 172
    move-object/from16 v11, v16

    .line 173
    .line 174
    invoke-static {v11, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    const v10, 0x384000

    .line 178
    .line 179
    .line 180
    if-lt v4, v10, :cond_4

    .line 181
    .line 182
    move v4, v6

    .line 183
    goto :goto_2

    .line 184
    :cond_4
    const v10, 0x1fa400

    .line 185
    .line 186
    .line 187
    if-lt v4, v10, :cond_5

    .line 188
    .line 189
    const/4 v4, 0x2

    .line 190
    goto :goto_2

    .line 191
    :cond_5
    move v4, v5

    .line 192
    :goto_2
    move v10, v2

    .line 193
    :goto_3
    const/4 v12, 0x7

    .line 194
    if-ge v10, v12, :cond_7

    .line 195
    .line 196
    aget-object v12, v8, v10

    .line 197
    .line 198
    aget v13, v12, v2

    .line 199
    .line 200
    if-ne v3, v13, :cond_6

    .line 201
    .line 202
    aget v8, v12, v4

    .line 203
    .line 204
    new-instance v10, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string/jumbo v12, "update max task snapshot number, physical memory: "

    .line 207
    .line 208
    .line 209
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v12, ", current resolution : "

    .line 216
    .line 217
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    invoke-static {v11, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_7
    move v5, v2

    .line 235
    move v8, v5

    .line 236
    :goto_4
    if-nez v5, :cond_8

    .line 237
    .line 238
    const-string/jumbo v5, "can not update max task snapshot number, due to unidentified physical memory"

    .line 239
    .line 240
    .line 241
    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v3, ", current resolution: "

    .line 253
    .line 254
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-static {v5, v4, v11}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 258
    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_8
    move v7, v8

    .line 262
    goto :goto_5

    .line 263
    :cond_9
    move-object/from16 v11, v16

    .line 264
    .line 265
    const-string/jumbo v5, "can not update max task snapshot number, due to resolution or physical memory"

    .line 266
    .line 267
    .line 268
    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v3, ", resolution: "

    .line 280
    .line 281
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-static {v5, v4, v11}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 285
    .line 286
    .line 287
    move v4, v2

    .line 288
    :goto_5
    if-lez v17, :cond_a

    .line 289
    .line 290
    move/from16 v10, v17

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_a
    move v10, v7

    .line 294
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    const-string v5, "TaskSnapShot : "

    .line 297
    .line 298
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v5, ", CurRes : "

    .line 305
    .line 306
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    sput v10, Lcom/android/server/wm/SnapshotCache;->sMaxSnapshotCache:I

    .line 320
    .line 321
    if-gt v10, v6, :cond_b

    .line 322
    .line 323
    const/4 v3, 0x2

    .line 324
    mul-int/2addr v10, v3

    .line 325
    sput v10, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_b
    sput v2, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    .line 329
    .line 330
    goto :goto_7

    .line 331
    :cond_c
    move-object v11, v8

    .line 332
    :goto_7
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 333
    .line 334
    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 335
    .line 336
    iget v5, v1, Landroid/graphics/Point;->y:I

    .line 337
    .line 338
    iget-object v3, v3, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 339
    .line 340
    if-eqz v3, :cond_e

    .line 341
    .line 342
    sget-boolean v6, Lcom/android/server/bgslotmanager/BGSlotManager;->HRT_MaxCached_Enable:Z

    .line 343
    .line 344
    if-eqz v6, :cond_d

    .line 345
    .line 346
    mul-int/2addr v4, v5

    .line 347
    const v5, 0x384000

    .line 348
    .line 349
    .line 350
    if-lt v4, v5, :cond_d

    .line 351
    .line 352
    iget v4, v3, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 353
    .line 354
    const/4 v5, 0x2

    .line 355
    or-int/2addr v4, v5

    .line 356
    iput v4, v3, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 357
    .line 358
    invoke-virtual {v3}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 359
    .line 360
    .line 361
    goto :goto_8

    .line 362
    :cond_d
    iget v4, v3, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 363
    .line 364
    and-int/lit8 v4, v4, -0x3

    .line 365
    .line 366
    iput v4, v3, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 367
    .line 368
    invoke-virtual {v3}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 369
    .line 370
    .line 371
    const-string v3, "HighResBGSlot Recovered"

    .line 372
    .line 373
    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    :cond_e
    :goto_8
    iput-boolean v2, v0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    .line 377
    .line 378
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 379
    .line 380
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    .line 381
    .line 382
    if-eqz v0, :cond_f

    .line 383
    .line 384
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 385
    .line 386
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 387
    .line 388
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 389
    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string/jumbo v2, "x"

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    .line 412
    .line 413
    :cond_f
    return-void
.end method

.method public final collectProcessesLOSP(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    if-eqz p3, :cond_4

    .line 2
    .line 3
    array-length v0, p3

    .line 4
    if-le v0, p1, :cond_4

    .line 5
    .line 6
    aget-object v0, p3, p1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x2d

    .line 14
    .line 15
    if-eq v0, v1, :cond_4

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    aget-object v1, p3, p1

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const/4 v1, -0x1

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/lit8 v2, v2, -0x1

    .line 37
    .line 38
    :goto_1
    if-ltz v2, :cond_3

    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 47
    .line 48
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 49
    .line 50
    if-lez v4, :cond_0

    .line 51
    .line 52
    if-ne v4, v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_0
    if-eqz p2, :cond_1

    .line 59
    .line 60
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 61
    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    aget-object v5, p3, p1

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 77
    .line 78
    aget-object v5, p3, p1

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-gtz p0, :cond_5

    .line 97
    .line 98
    const/4 p0, 0x0

    .line 99
    return-object p0

    .line 100
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    return-object v0
.end method

.method public final createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 8
    .line 9
    iget v1, v1, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 12
    .line 13
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/os/AppZygote;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 26
    .line 27
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 32
    .line 33
    iget v4, v4, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    .line 36
    .line 37
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 42
    .line 43
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget v4, v2, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    .line 48
    .line 49
    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    iget v2, v2, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    .line 54
    .line 55
    invoke-static {v3, v2}, Landroid/os/UserHandle;->getUid(II)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    .line 60
    .line 61
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 62
    .line 63
    invoke-direct {v3, v2}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 67
    .line 68
    iget-object v2, v2, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 71
    .line 72
    iput v1, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 73
    .line 74
    new-instance v8, Landroid/os/AppZygote;

    .line 75
    .line 76
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 77
    .line 78
    move-object v2, v8

    .line 79
    move v5, v1

    .line 80
    invoke-direct/range {v2 .. v7}, Landroid/os/AppZygote;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;III)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 84
    .line 85
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 86
    .line 87
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2, v3, v1, v8}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    new-instance v1, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 98
    .line 99
    invoke-virtual {p0, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-object v2, v8

    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto :goto_1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 109
    .line 110
    const/16 v3, 0x47

    .line 111
    .line 112
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 116
    .line 117
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    move-object v1, p0

    .line 122
    check-cast v1, Ljava/util/ArrayList;

    .line 123
    .line 124
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 129
    .line 130
    .line 131
    return-object v2

    .line 132
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 134
    .line 135
    .line 136
    throw p0
.end method

.method public final dispatchProcessesChanged()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 11
    .line 12
    array-length v2, v2

    .line 13
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    new-array v2, v1, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 16
    .line 17
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_4

    .line 22
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :catch_0
    :cond_1
    const/4 v2, 0x0

    .line 42
    if-lez v0, :cond_4

    .line 43
    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroid/app/IProcessObserver;

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    :goto_1
    if-ge v2, v1, :cond_1

    .line 57
    .line 58
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 59
    .line 60
    aget-object v4, v4, v2

    .line 61
    .line 62
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 63
    .line 64
    and-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    .line 69
    .line 70
    iget v6, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    .line 71
    .line 72
    iget-boolean v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    .line 73
    .line 74
    invoke-interface {v3, v5, v6, v7}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 78
    .line 79
    and-int/lit8 v5, v5, 0x2

    .line 80
    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    .line 84
    .line 85
    iget v6, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    .line 86
    .line 87
    iget v4, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    .line 88
    .line 89
    invoke-interface {v3, v5, v6, v4}, Landroid/app/IProcessObserver;->onForegroundServicesChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    .line 91
    .line 92
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    .line 101
    .line 102
    monitor-enter v3

    .line 103
    :goto_2
    if-ge v2, v1, :cond_5

    .line 104
    .line 105
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    .line 106
    .line 107
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 108
    .line 109
    aget-object v4, v4, v2

    .line 110
    .line 111
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catchall_1
    move-exception p0

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    monitor-exit v3

    .line 120
    return-void

    .line 121
    :goto_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    throw p0

    .line 123
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    throw p0
.end method

.method public final dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "  "

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    const-string p3, "ACTIVITY MANAGER LRU PROCESSES (dumpsys activity lru)"

    .line 12
    .line 13
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v2, :cond_a

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 32
    .line 33
    invoke-virtual {v3, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v2, "Raw LRU list (dumpsys activity lru):"

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    const/4 p3, 0x1

    .line 55
    sub-int/2addr v0, p3

    .line 56
    move v2, p3

    .line 57
    :goto_2
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    if-lt v0, v3, :cond_4

    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 69
    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 73
    .line 74
    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_2

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_2
    if-eqz v2, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v2, "Activities:"

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    move v2, v4

    .line 92
    :cond_3
    invoke-static {p1, v0, v3, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move v2, p3

    .line 99
    :goto_4
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 100
    .line 101
    if-lt v0, v3, :cond_7

    .line 102
    .line 103
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 110
    .line 111
    if-eqz p2, :cond_5

    .line 112
    .line 113
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 114
    .line 115
    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-nez v5, :cond_5

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_5
    if-eqz v2, :cond_6

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v2, "Services:"

    .line 128
    .line 129
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    move v2, v4

    .line 133
    :cond_6
    invoke-static {p1, v0, v3, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :goto_5
    add-int/lit8 v0, v0, -0x1

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_7
    :goto_6
    if-ltz v0, :cond_a

    .line 140
    .line 141
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 148
    .line 149
    if-eqz p2, :cond_8

    .line 150
    .line 151
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 152
    .line 153
    invoke-virtual {v3, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-nez v3, :cond_8

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_8
    if-eqz p3, :cond_9

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string p3, "Other:"

    .line 166
    .line 167
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    move p3, v4

    .line 171
    :cond_9
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :goto_7
    add-int/lit8 v0, v0, -0x1

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_a
    return-void
.end method

.method public final dumpOomLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const-string p3, "  OOM levels:"

    .line 15
    .line 16
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p3, "SYSTEM_ADJ"

    .line 20
    .line 21
    const/16 v0, -0x384

    .line 22
    .line 23
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const-string p3, "PERSISTENT_PROC_ADJ"

    .line 27
    .line 28
    const/16 v0, -0x320

    .line 29
    .line 30
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const-string p3, "PERSISTENT_SERVICE_ADJ"

    .line 34
    .line 35
    const/16 v0, -0x2bc

    .line 36
    .line 37
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string p3, "FOREGROUND_APP_ADJ"

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    const-string p3, "VISIBLE_APP_ADJ"

    .line 47
    .line 48
    const/16 v0, 0x64

    .line 49
    .line 50
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    const-string p3, "PERCEPTIBLE_APP_ADJ"

    .line 54
    .line 55
    const/16 v0, 0xc8

    .line 56
    .line 57
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    const-string p3, "PERCEPTIBLE_MEDIUM_APP_ADJ"

    .line 61
    .line 62
    const/16 v0, 0xe1

    .line 63
    .line 64
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    const-string p3, "PERCEPTIBLE_LOW_APP_ADJ"

    .line 68
    .line 69
    const/16 v0, 0xfa

    .line 70
    .line 71
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    const-string p3, "BACKUP_APP_ADJ"

    .line 75
    .line 76
    const/16 v0, 0x12c

    .line 77
    .line 78
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    const-string p3, "HEAVY_WEIGHT_APP_ADJ"

    .line 82
    .line 83
    const/16 v0, 0x190

    .line 84
    .line 85
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    const-string p3, "SERVICE_ADJ"

    .line 89
    .line 90
    const/16 v0, 0x1f4

    .line 91
    .line 92
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    const-string p3, "HOME_APP_ADJ"

    .line 96
    .line 97
    const/16 v0, 0x258

    .line 98
    .line 99
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    const-string p3, "PREVIOUS_APP_ADJ"

    .line 103
    .line 104
    const/16 v0, 0x2bc

    .line 105
    .line 106
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    const-string p3, "SERVICE_B_ADJ"

    .line 110
    .line 111
    const/16 v0, 0x320

    .line 112
    .line 113
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    const-string p3, "PICKED_ADJ"

    .line 117
    .line 118
    const/16 v0, 0x352

    .line 119
    .line 120
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    const-string p3, "CACHED_APP_MIN_ADJ"

    .line 124
    .line 125
    const/16 v0, 0x384

    .line 126
    .line 127
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    const-string p3, "CACHED_APP_MAX_ADJ"

    .line 131
    .line 132
    const/16 v0, 0x3e7

    .line 133
    .line 134
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 138
    .line 139
    .line 140
    const-string p3, "  Process OOM control ("

    .line 141
    .line 142
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result p3

    .line 151
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 152
    .line 153
    .line 154
    const-string p3, " total, non-act at "

    .line 155
    .line 156
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result p3

    .line 165
    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 166
    .line 167
    sub-int/2addr p3, v0

    .line 168
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 169
    .line 170
    .line 171
    const-string p3, ", non-svc at "

    .line 172
    .line 173
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 179
    .line 180
    .line 181
    move-result p3

    .line 182
    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 183
    .line 184
    sub-int/2addr p3, v0

    .line 185
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 186
    .line 187
    .line 188
    const-string p3, "):"

    .line 189
    .line 190
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 194
    .line 195
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 196
    .line 197
    const/4 v1, 0x1

    .line 198
    invoke-static {p1, p3, v0, v1, p2}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    move p3, v1

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 203
    .line 204
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 205
    .line 206
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 207
    .line 208
    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 210
    .line 211
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 212
    .line 213
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/AppProfiler;->dumpProcessesToGc(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 214
    .line 215
    .line 216
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 218
    .line 219
    .line 220
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 221
    .line 222
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 223
    .line 224
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 225
    .line 226
    const-string p2, "  mHeavyWeightProcess: "

    .line 227
    .line 228
    const-string p3, "  mPreviousProcess: "

    .line 229
    .line 230
    const-string v0, "  mHomeProcess: "

    .line 231
    .line 232
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 233
    .line 234
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 235
    .line 236
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 237
    .line 238
    .line 239
    monitor-enter v1

    .line 240
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 246
    .line 247
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 248
    .line 249
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 265
    .line 266
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 267
    .line 268
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p3

    .line 275
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 279
    .line 280
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 281
    .line 282
    if-eqz p3, :cond_2

    .line 283
    .line 284
    new-instance p3, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 290
    .line 291
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 292
    .line 293
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    goto :goto_0

    .line 304
    :catchall_0
    move-exception p0

    .line 305
    goto :goto_1

    .line 306
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 313
    .line 314
    .line 315
    throw p0

    .line 316
    :catchall_1
    move-exception p0

    .line 317
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 318
    throw p0
.end method

.method public final dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move/from16 v4, p7

    .line 1
    const-string v1, "ACTIVITY MANAGER RUNNING PROCESSES (dumpsys activity processes)"

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    if-nez p5, :cond_1

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    move v3, v11

    move v12, v3

    goto/16 :goto_5

    .line 2
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, v11

    move v3, v2

    move v5, v3

    :goto_1
    if-ge v2, v1, :cond_7

    .line 3
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v12, v11

    :goto_2
    if-ge v12, v7, :cond_6

    .line 5
    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_2

    .line 6
    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 7
    invoke-virtual {v14, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_4

    :cond_2
    if-nez v3, :cond_3

    .line 8
    const-string v3, "  All known processes:"

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 9
    :cond_3
    iget-boolean v14, v13, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v14, :cond_4

    .line 10
    const-string v14, "  *PERS*"

    goto :goto_3

    :cond_4
    const-string v14, "  *APP*"

    :goto_3
    invoke-virtual {v8, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    const-string v14, " UID "

    invoke-virtual {v8, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v8, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 12
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v13, v8}, Lcom/android/server/am/ProcessRecord;->dump(Ljava/io/PrintWriter;)V

    .line 14
    iget-boolean v13, v13, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v13, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    move v12, v5

    .line 15
    :goto_5
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 16
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v11

    move v5, v2

    :goto_6
    if-ge v2, v1, :cond_b

    .line 17
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_8

    .line 18
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 19
    invoke-virtual {v7, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_7

    :cond_8
    if-nez v5, :cond_a

    if-eqz v3, :cond_9

    .line 20
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 21
    :cond_9
    const-string v3, "  Isolated process list (sorted by uid):"

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v5, 0x1

    .line 22
    :cond_a
    const-string v7, "    Isolated #"

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 24
    :cond_b
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 25
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    move v5, v11

    move v6, v5

    :goto_8
    if-ge v5, v2, :cond_14

    .line 27
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v9, :cond_c

    .line 28
    iget-object v13, v7, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    iget-object v13, v7, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 29
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    goto/16 :goto_a

    :cond_c
    if-nez v6, :cond_e

    if-eqz v3, :cond_d

    .line 30
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 31
    :cond_d
    const-string v3, "  Active instrumentation:"

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v6, 0x1

    .line 32
    :cond_e
    const-string v13, "    Instrumentation #"

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v13, ": "

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    const-string v14, "      "

    invoke-virtual {v8, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v15, "mClass="

    invoke-virtual {v8, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v15, v7, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    invoke-virtual {v8, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 36
    const-string v15, " mFinished="

    invoke-virtual {v8, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v15, v7, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    invoke-virtual {v8, v15}, Ljava/io/PrintWriter;->println(Z)V

    .line 37
    invoke-virtual {v8, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v15, "mRunningProcesses:"

    invoke-virtual {v8, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v15, v11

    .line 38
    :goto_9
    iget-object v10, v7, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v15, v10, :cond_f

    .line 39
    invoke-virtual {v8, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "  #"

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget-object v10, v7, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 41
    :cond_f
    invoke-virtual {v8, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "mTargetProcesses="

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    iget-object v10, v7, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 43
    const-string/jumbo v13, "mTargetInfo="

    .line 44
    invoke-static {v8, v10, v14, v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v10, v7, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 46
    iget-object v10, v7, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_10

    .line 47
    new-instance v13, Landroid/util/PrintWriterPrinter;

    invoke-direct {v13, v8}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v15, "        "

    invoke-virtual {v10, v13, v15, v11}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 48
    :cond_10
    iget-object v10, v7, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    if-eqz v10, :cond_11

    .line 49
    invoke-virtual {v8, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "mProfileFile="

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v7, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    :cond_11
    iget-object v10, v7, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v10, :cond_12

    .line 51
    invoke-virtual {v8, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "mWatcher="

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v7, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 52
    :cond_12
    iget-object v10, v7, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    if-eqz v10, :cond_13

    .line 53
    invoke-virtual {v8, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "mUiAutomationConnection="

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    iget-object v10, v7, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 55
    :cond_13
    const-string/jumbo v10, "mHasBackgroundActivityStartsPermission="

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    iget-boolean v10, v7, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->println(Z)V

    .line 57
    const-string/jumbo v10, "mHasBackgroundForegroundServiceStartsPermission="

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    iget-boolean v10, v7, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundForegroundServiceStartsPermission:Z

    .line 59
    const-string/jumbo v13, "mArguments="

    .line 60
    invoke-static {v8, v14, v13, v10}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    iget-object v7, v7, Lcom/android/server/am/ActiveInstrumentation;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 62
    :cond_14
    invoke-virtual {v0, v8, v9, v3}, Lcom/android/server/am/ProcessList;->dumpOomLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 63
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 64
    iget-object v1, v1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 65
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 66
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-string v2, "UID states:"

    invoke-virtual {v1, v4, v8, v9, v2}, Lcom/android/server/am/ActiveUids;->dump(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_15
    if-eqz p5, :cond_16

    .line 67
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    const-string v2, "UID validation:"

    .line 68
    iget-object v1, v1, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    .line 69
    invoke-virtual {v1, v4, v8, v9, v2}, Lcom/android/server/am/ActiveUids;->dump(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    :cond_16
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 71
    const-string v1, "  "

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/am/ProcessList;->dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_17

    .line 73
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 74
    const-string v1, "  Process LRU list (sorted by oom_adj, "

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 75
    const-string v1, " total, non-act at "

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v1, v2

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 77
    const-string v1, ", non-svc at "

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v1, v2

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 79
    const-string v1, "):"

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-static {v8, v1, v2, v11, v9}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)V

    .line 81
    :cond_17
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p5, :cond_18

    if-eqz v9, :cond_20

    .line 82
    :cond_18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 83
    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v2, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 85
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    .line 86
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, v11

    move v5, v3

    :goto_b
    if-ge v3, v2, :cond_1b

    .line 87
    iget-object v6, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    .line 88
    iget v7, v6, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 89
    invoke-virtual {v0, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v9, :cond_19

    .line 90
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 91
    invoke-virtual {v6, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_c

    :catchall_0
    move-exception v0

    goto/16 :goto_1a

    :cond_19
    if-nez v5, :cond_1a

    .line 92
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 93
    const-string v5, "  PID mappings:"

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 94
    :cond_1a
    const-string v6, "    PID #"

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 95
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    check-cast v6, Landroid/util/SparseArray;

    .line 96
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 97
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 98
    const-string v6, ": "

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 99
    :cond_1b
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->sActiveProcessInfoSelfLocked:Landroid/util/SparseArray;

    monitor-enter v2

    .line 101
    :try_start_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v3, v11

    move v5, v3

    :goto_d
    if-ge v3, v1, :cond_1f

    .line 102
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->sActiveProcessInfoSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ProcessInfo;

    .line 103
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_1c

    if-eqz v9, :cond_1c

    .line 104
    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 105
    invoke-virtual {v13, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    goto :goto_f

    :catchall_1
    move-exception v0

    goto/16 :goto_19

    :cond_1c
    if-nez v5, :cond_1d

    .line 106
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 107
    const-string v5, "  Active process infos:"

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 108
    :cond_1d
    const-string v13, "    Pinfo PID #"

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 109
    const-string v6, ":"

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v6, "      name="

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v7, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    iget-object v6, v7, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v6, :cond_1e

    move v6, v11

    .line 112
    :goto_e
    iget-object v13, v7, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v6, v13, :cond_1e

    .line 113
    const-string v13, "      deny: "

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    iget-object v13, v7, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v13, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1e
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 115
    :cond_1f
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_20
    if-eqz p5, :cond_21

    .line 116
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    invoke-virtual {v0, v8}, Lcom/android/server/am/PhantomProcessList;->dump(Ljava/io/PrintWriter;)V

    .line 117
    :cond_21
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mImportantProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 118
    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 119
    :try_start_2
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mImportantProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v11

    move v3, v2

    :goto_10
    if-ge v2, v0, :cond_25

    .line 120
    iget-object v5, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object v6, v10, Lcom/android/server/am/ActivityManagerService;->mImportantProcesses:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityManagerService$14;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService$14;->pid:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    if-eqz v9, :cond_22

    if-eqz v5, :cond_24

    .line 121
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 122
    invoke-virtual {v5, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    goto :goto_11

    :catchall_2
    move-exception v0

    goto :goto_12

    :cond_22
    if-nez v3, :cond_23

    .line 123
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 124
    const-string v3, "  Foreground Processes:"

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 125
    :cond_23
    const-string v5, "    PID #"

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v10, Lcom/android/server/am/ActivityManagerService;->mImportantProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 126
    const-string v5, ": "

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v10, Lcom/android/server/am/ActivityManagerService;->mImportantProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_24
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 127
    :cond_25
    monitor-exit v1

    goto :goto_13

    :goto_12
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 128
    :cond_26
    :goto_13
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 129
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 130
    const-string v0, "  Persisent processes that are starting:"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    const-string v1, "Starting Norm"

    const-string v2, "Restarting PERS"

    invoke-static {v8, v0, v1, v2, v9}, Lcom/android/server/am/ActivityManagerService;->dumpProcessList(Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_27
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 133
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 134
    const-string v0, "  Processes that are being removed:"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    const-string v1, "Removed Norm"

    const-string v2, "Removed PERS"

    invoke-static {v8, v0, v1, v2, v9}, Lcom/android/server/am/ActivityManagerService;->dumpProcessList(Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_28
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 137
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 138
    const-string v0, "  Processes that are on old until the system is ready:"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    const-string v1, "OnHold Norm"

    const-string v2, "OnHold PERS"

    invoke-static {v8, v0, v1, v2, v9}, Lcom/android/server/am/ActivityManagerService;->dumpProcessList(Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_29
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    const/4 v13, 0x1

    invoke-virtual {v0, v8, v9, v13}, Lcom/android/server/am/AppErrors;->dumpLPr(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z

    move-result v5

    .line 141
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 142
    iget-boolean v6, v1, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 143
    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    move-object/from16 v1, p2

    move/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    .line 144
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dumpForProcesses(Ljava/io/PrintWriter;ZLjava/lang/String;IZZI)Z

    move-result v0

    if-eqz p5, :cond_2b

    .line 145
    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2b

    if-eqz v0, :cond_2a

    .line 146
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 147
    :cond_2a
    const-string v0, "  mPendingStarts: "

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    move v1, v11

    :goto_14
    if-ge v1, v0, :cond_2c

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    .line 150
    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2b
    move v13, v0

    .line 152
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mProcessLimit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 153
    const-string v2, "  mNumNonCachedProcs: "

    .line 154
    invoke-static {v0, v1, v8, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v1, v1, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 156
    const-string v2, "  mNumCachedHiddenProcs: "

    .line 157
    invoke-static {v0, v1, v8, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v1, v1, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 159
    const-string v2, "  mProcessLimitOverride(OverrideMaxCachedProcesses): "

    .line 160
    invoke-static {v0, v1, v8, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 162
    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 163
    invoke-static {v0, v1, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 164
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v0, :cond_31

    .line 165
    invoke-virtual {v0, v8}, Lcom/android/server/am/DynamicHiddenApp;->dumpLMKDParameter(Ljava/io/PrintWriter;)V

    .line 166
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    if-eqz v0, :cond_2d

    .line 167
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->sPmmEnabledBySpcm:Z

    if-eqz v1, :cond_2d

    const/4 v1, 0x0

    .line 168
    invoke-virtual {v0, v8, v1}, Lcom/android/server/am/KillPolicyManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 169
    :cond_2d
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->IS_HIGH_CAPACITY_RAM:Z

    if-eqz v0, :cond_2e

    .line 170
    const-string v0, "  IS_HIGH_CAPACITY_RAM: true"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    :cond_2e
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    if-eqz v0, :cond_31

    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 172
    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 173
    iget-object v1, v0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2f

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  MLList NAP Process name : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 175
    invoke-static {v1, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_15

    .line 176
    :cond_2f
    const-string v0, "  MLList NAP Process name : []"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    :goto_15
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    if-eqz v0, :cond_30

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  MLList AUF Process name : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    :cond_30
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_31
    if-eqz p5, :cond_33

    .line 180
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/UidObserverController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mDeviceIdleAllowlist="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleAllowlist:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mDeviceIdleExceptIdleAllowlist="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleExceptIdleAllowlist:[I

    .line 183
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mDeviceIdleTempAllowlist="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    invoke-virtual {v0}, Lcom/android/server/am/PendingTempAllowlists;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 187
    const-string v0, "  mPendingTempAllowlist:"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    invoke-virtual {v0}, Lcom/android/server/am/PendingTempAllowlists;->size()I

    move-result v0

    move v1, v11

    :goto_16
    if-ge v1, v0, :cond_32

    .line 189
    iget-object v2, v10, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    invoke-virtual {v2, v1}, Lcom/android/server/am/PendingTempAllowlists;->valueAt(I)Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;

    move-result-object v2

    .line 190
    const-string v3, "    "

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    iget v3, v2, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->targetUid:I

    invoke-static {v8, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 192
    const-string v3, ": "

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    iget-wide v3, v2, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->duration:J

    invoke-static {v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 194
    const-string v3, " "

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->tag:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    const-string v3, " "

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    iget v3, v2, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->type:I

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 198
    const-string v3, " "

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    iget v3, v2, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->reasonCode:I

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 200
    const-string v3, " "

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    iget v2, v2, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->callingUid:I

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 202
    :cond_32
    const-string v0, "  mFgsStartTempAllowList:"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 205
    iget-object v6, v10, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    new-instance v7, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda27;

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda27;-><init>(Ljava/io/PrintWriter;JJ)V

    invoke-virtual {v6, v7}, Lcom/android/server/am/FgsTempAllowList;->forEach(Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda27;)V

    .line 206
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 207
    const-string v0, "  Processes that are in background restricted:"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    move v1, v11

    :goto_17
    if-ge v1, v0, :cond_33

    .line 209
    const-string v2, "%s #%2d: %s"

    const-string v3, "    "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v5, v5, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 210
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 211
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 212
    :cond_33
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mDebugApp:Ljava/lang/String;

    if-nez v0, :cond_34

    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mOrigDebugApp:Ljava/lang/String;

    if-nez v1, :cond_34

    iget-boolean v1, v10, Lcom/android/server/am/ActivityManagerService;->mDebugTransient:Z

    if-nez v1, :cond_34

    iget-boolean v1, v10, Lcom/android/server/am/ActivityManagerService;->mOrigWaitForDebugger:Z

    if-eqz v1, :cond_37

    :cond_34
    if-eqz v9, :cond_35

    .line 213
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mOrigDebugApp:Ljava/lang/String;

    .line 214
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_35
    if-eqz v13, :cond_36

    .line 215
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    move v13, v11

    .line 216
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mDebugApp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/orig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mOrigDebugApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mDebugTransient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v10, Lcom/android/server/am/ActivityManagerService;->mDebugTransient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mOrigWaitForDebugger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v10, Lcom/android/server/am/ActivityManagerService;->mOrigWaitForDebugger:Z

    .line 217
    invoke-static {v0, v1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 218
    :cond_37
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_3
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0, v8, v13}, Lcom/android/server/am/AppProfiler;->dumpMemWatchProcessesLPf(Ljava/io/PrintWriter;Z)Z

    move-result v0

    .line 220
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 221
    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mTrackAllocationApp:Ljava/lang/String;

    if-eqz v1, :cond_3a

    if-eqz v9, :cond_38

    .line 222
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    :cond_38
    if-eqz v0, :cond_39

    .line 223
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    move v0, v11

    .line 224
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mTrackAllocationApp="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v10, Lcom/android/server/am/ActivityManagerService;->mTrackAllocationApp:Ljava/lang/String;

    .line 225
    invoke-static {v1, v2, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 226
    :cond_3a
    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 227
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 228
    iget-object v3, v2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    if-nez v3, :cond_3b

    .line 229
    iget-object v4, v2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_3b

    .line 230
    iget-object v4, v2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v4, :cond_3f

    .line 231
    iget-object v5, v4, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v5, :cond_3b

    .line 232
    iget-object v4, v4, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_3f

    :cond_3b
    if-eqz v9, :cond_3c

    .line 233
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_3c
    if-eqz v0, :cond_3d

    .line 234
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_18

    :cond_3d
    move v11, v0

    .line 235
    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "  mProfileApp="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    iget-object v3, v2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mProfileProc="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v3, v2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 239
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    iget-object v0, v2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v0, :cond_3e

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "  mProfileFile="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    iget-object v3, v2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 244
    iget-object v3, v3, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mProfileFd="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v3, v2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 246
    iget-object v3, v3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "  mSamplingInterval="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    iget-object v3, v2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 250
    iget v3, v3, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAutoStopProfiler="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v3, v2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 252
    iget-boolean v3, v3, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mStreamingOutput="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v3, v2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 254
    iget-boolean v3, v3, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mClockType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v3, v2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 256
    iget v3, v3, Landroid/app/ProfilerInfo;->clockType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mProfilerOutputVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v2, v2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 258
    iget v2, v2, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    .line 259
    const-string v3, "  mProfileType="

    .line 260
    invoke-static {v0, v2, v8, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 261
    iget v1, v1, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 262
    invoke-static {v0, v1, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    :cond_3e
    move v0, v11

    .line 263
    :cond_3f
    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    if-eqz v1, :cond_42

    if-eqz v9, :cond_40

    .line 264
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    :cond_40
    if-eqz v0, :cond_41

    .line 265
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 266
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mNativeDebuggingApp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    .line 267
    invoke-static {v0, v1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_42
    if-nez v9, :cond_45

    .line 268
    iget-boolean v0, v10, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v0, :cond_43

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mAlwaysFinishActivities="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v10, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    .line 270
    invoke-static {v0, v1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 271
    :cond_43
    iget-boolean v0, v10, Lcom/android/server/am/ActivityManagerService;->mAllowSpecifiedFifoScheduling:Z

    if-eqz v0, :cond_44

    .line 272
    const-string v0, "  mAllowSpecifiedFifoScheduling=true"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_44
    if-eqz p5, :cond_45

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Total persistent processes: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mProcessesReady="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v10, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSystemReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v10, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mBooted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v10, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mFactoryTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/am/ActivityManagerService;->mFactoryTest:I

    .line 275
    const-string v2, "  mBooting="

    .line 276
    invoke-static {v0, v1, v8, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    iget-boolean v1, v10, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mCallFinishBooting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v10, Lcom/android/server/am/ActivityManagerService;->mCallFinishBooting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mBootAnimationComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v10, Lcom/android/server/am/ActivityManagerService;->mBootAnimationComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    const-string v0, "  mLastPowerCheckUptime="

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget-wide v0, v10, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    invoke-static {v0, v1, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 280
    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mAdjSeq="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLruSeq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v0, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 286
    invoke-static {v1, v0, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 287
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mNumNonCachedProcs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 292
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " total) mNumCachedHiddenProcs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mNumServiceProcs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mNewNumServiceProcs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 294
    invoke-static {v1, v0, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 295
    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mAllowLowerMemLevel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mLastMemoryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLastNumProcesses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 300
    const-string v2, "  mLastIdleTime="

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    iget-wide v2, v10, Lcom/android/server/am/ActivityManagerService;->mLastIdleTime:J

    invoke-static {v0, v1, v2, v3, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 302
    const-string v2, " mLowRamSinceLastIdle="

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    iget-object v2, v10, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 304
    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/AppProfiler;->getLowRamTimeSinceIdleLPr(J)J

    move-result-wide v0

    .line 305
    invoke-static {v0, v1, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 307
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 308
    const-string v0, "  ServiceManager statistics:"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    sget-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    const-string v1, "    "

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/util/StatLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 311
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mForceBackgroundCheck="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v10, Lcom/android/server/am/ActivityManagerService;->mForceBackgroundCheck:Z

    .line 312
    const-string v2, "  CUR_TRIM_EMPTY_PROCESSES:"

    .line 313
    invoke-static {v0, v1, v8, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 314
    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  CUR_TRIM_CACHED_PROCESSES:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception v0

    .line 316
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    .line 317
    :goto_19
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 318
    :goto_1a
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public final enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    sub-int/2addr v1, v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ltz v1, :cond_1

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 22
    .line 23
    iget v4, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    .line 24
    .line 25
    if-ne v4, p1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_4

    .line 33
    :cond_1
    :goto_1
    if-gez v1, :cond_4

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lez v1, :cond_2

    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    .line 44
    .line 45
    sub-int/2addr v1, v2

    .line 46
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 51
    .line 52
    :goto_2
    move-object v3, v1

    .line 53
    goto :goto_3

    .line 54
    :cond_2
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :goto_3
    const/4 v1, 0x0

    .line 61
    iput v1, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 62
    .line 63
    iput p1, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    .line 64
    .line 65
    iput p2, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    iput-boolean v2, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->triggered:Z

    .line 76
    .line 77
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :cond_4
    monitor-exit v0

    .line 83
    return-object v3

    .line 84
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .locals 9

    .line 1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 2
    .line 3
    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8
    .line 9
    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    move v0, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 27
    .line 28
    or-int/2addr v0, v3

    .line 29
    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 30
    .line 31
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 37
    .line 38
    or-int/2addr v0, v1

    .line 39
    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 40
    .line 41
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 42
    .line 43
    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 44
    .line 45
    const/4 v4, 0x4

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 49
    .line 50
    or-int/2addr v0, v4

    .line 51
    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 52
    .line 53
    :cond_3
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 54
    .line 55
    iget v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    .line 56
    .line 57
    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 58
    .line 59
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 60
    .line 61
    iget v5, v0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 62
    .line 63
    iget v6, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 64
    .line 65
    invoke-static {v6, p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    const/16 v7, 0x190

    .line 70
    .line 71
    if-ne p3, v7, :cond_4

    .line 72
    .line 73
    iput v5, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iput v2, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 77
    .line 78
    :goto_1
    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 79
    .line 80
    iget p3, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    .line 81
    .line 82
    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 83
    .line 84
    iput v6, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 85
    .line 86
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 87
    .line 88
    invoke-virtual {p3}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    if-ne p1, p3, :cond_5

    .line 93
    .line 94
    move p3, v3

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    move p3, v2

    .line 97
    :goto_2
    iput-boolean p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 98
    .line 99
    iget-wide v5, p1, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 100
    .line 101
    iput-wide v5, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 102
    .line 103
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 104
    .line 105
    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 106
    .line 107
    invoke-virtual {p3}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-eqz p3, :cond_6

    .line 112
    .line 113
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 114
    .line 115
    iget-wide v5, p3, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    .line 116
    .line 117
    iput-wide v5, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastPss:J

    .line 118
    .line 119
    iget-wide v5, p3, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    .line 120
    .line 121
    iput-wide v5, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastSwapPss:J

    .line 122
    .line 123
    iget-object p3, p3, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 124
    .line 125
    if-eqz p3, :cond_7

    .line 126
    .line 127
    invoke-virtual {p3}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningPss()[J

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    aget-wide v5, p3, v2

    .line 132
    .line 133
    const-wide/16 v7, 0x0

    .line 134
    .line 135
    cmp-long v0, v5, v7

    .line 136
    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    aget-wide v0, p3, v1

    .line 140
    .line 141
    iput-wide v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->avgPss:J

    .line 142
    .line 143
    aget-wide v0, p3, v3

    .line 144
    .line 145
    iput-wide v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->minPss:J

    .line 146
    .line 147
    const/4 v0, 0x3

    .line 148
    aget-wide v0, p3, v0

    .line 149
    .line 150
    iput-wide v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->maxPss:J

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 154
    .line 155
    iget-wide v0, p3, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 156
    .line 157
    iput-wide v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastPss:J

    .line 158
    .line 159
    :cond_7
    :goto_3
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 160
    .line 161
    if-nez p3, :cond_8

    .line 162
    .line 163
    sget-boolean p3, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 164
    .line 165
    sget-object p3, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    .line 166
    .line 167
    iput-object p3, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 168
    .line 169
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 170
    .line 171
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    sget-boolean p0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    .line 177
    .line 178
    if-eqz p0, :cond_b

    .line 179
    .line 180
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 181
    .line 182
    if-lez p0, :cond_9

    .line 183
    .line 184
    if-lt p0, v4, :cond_a

    .line 185
    .line 186
    :cond_9
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 187
    .line 188
    if-eqz p0, :cond_d

    .line 189
    .line 190
    :cond_a
    :goto_4
    move v2, v3

    .line 191
    goto :goto_5

    .line 192
    :cond_b
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 193
    .line 194
    if-lez p0, :cond_c

    .line 195
    .line 196
    if-lt p0, v4, :cond_a

    .line 197
    .line 198
    :cond_c
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 199
    .line 200
    if-eqz p0, :cond_d

    .line 201
    .line 202
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 203
    .line 204
    sget-object p3, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 205
    .line 206
    invoke-virtual {p3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 207
    .line 208
    .line 209
    move-result p3

    .line 210
    if-eq p0, p3, :cond_d

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_d
    :goto_5
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    if-eqz p0, :cond_e

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_e
    move v3, v2

    .line 221
    :goto_6
    iput-boolean v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isProtectedInPicked:Z

    .line 222
    .line 223
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 224
    .line 225
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 226
    .line 227
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    if-lez p0, :cond_f

    .line 232
    .line 233
    iget p0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 234
    .line 235
    or-int/lit8 p0, p0, 0x8

    .line 236
    .line 237
    iput p0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 238
    .line 239
    :cond_f
    return-void
.end method

.method public final findAppProcessLOSP(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ge v2, v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    move v5, v1

    .line 30
    :goto_1
    if-ge v5, v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 37
    .line 38
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 39
    .line 40
    if-eqz v7, :cond_0

    .line 41
    .line 42
    invoke-interface {v7}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    if-ne v7, p1, :cond_0

    .line 47
    .line 48
    return-object v6

    .line 49
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-string p0, "Can\'t find mystery application for "

    .line 56
    .line 57
    const-string v0, " from pid="

    .line 58
    .line 59
    invoke-static {p0, p2, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p2, " uid="

    .line 71
    .line 72
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p2, ": "

    .line 83
    .line 84
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string p1, "ActivityManager"

    .line 95
    .line 96
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    const/4 p0, 0x0

    .line 100
    return-object p0
.end method

.method public final forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-ge v0, p2, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 19
    .line 20
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    add-int/lit8 p2, p2, -0x1

    .line 33
    .line 34
    :goto_1
    if-ltz p2, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 43
    .line 44
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 p2, p2, -0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    return-void
.end method

.method public getBlockStateForUid(Lcom/android/server/am/UidRecord;)I
    .locals 4

    .line 1
    iget p0, p1, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 2
    .line 3
    iget v0, p1, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    iget p0, p1, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 14
    .line 15
    iget v2, p1, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 16
    .line 17
    invoke-static {p0, v2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p0, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move p0, v0

    .line 27
    :goto_1
    iget v2, p1, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 28
    .line 29
    iget v3, p1, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 30
    .line 31
    invoke-static {v2, v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    iget v2, p1, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 38
    .line 39
    iget p1, p1, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 40
    .line 41
    invoke-static {v2, p1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move p1, v1

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    :goto_2
    move p1, v0

    .line 51
    :goto_3
    if-nez p1, :cond_4

    .line 52
    .line 53
    if-eqz p0, :cond_4

    .line 54
    .line 55
    return v0

    .line 56
    :cond_4
    if-eqz p1, :cond_5

    .line 57
    .line 58
    if-nez p0, :cond_5

    .line 59
    .line 60
    const/4 p0, 0x2

    .line 61
    return p0

    .line 62
    :cond_5
    return v1
.end method

.method public final getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getLRURecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getLRURecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 3
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v3}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getMemLevel(I)J
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 6
    .line 7
    if-ge v0, v2, :cond_1

    .line 8
    .line 9
    aget v1, v1, v0

    .line 10
    .line 11
    if-gt p1, v1, :cond_0

    .line 12
    .line 13
    aget p0, v3, v0

    .line 14
    .line 15
    :goto_1
    mul-int/lit16 p0, p0, 0x400

    .line 16
    .line 17
    int-to-long p0, p0

    .line 18
    return-wide p0

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    array-length p0, v1

    .line 23
    add-int/lit8 p0, p0, -0x1

    .line 24
    .line 25
    aget p0, v3, p0

    .line 26
    .line 27
    goto :goto_1
.end method

.method public getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "adservices"

    .line 29
    .line 30
    invoke-static {v3, v2, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    .line 37
    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 5

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 4
    .line 5
    if-ne p1, v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/util/SparseArray;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v1, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-static {v3, p1}, Landroid/os/UserHandle;->isSameUser(II)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 60
    .line 61
    return-object p0
.end method

.method public final getRunningAppProcessesLOSP(IIIZZ)Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_9

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 19
    .line 20
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 21
    .line 22
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 23
    .line 24
    if-nez p4, :cond_0

    .line 25
    .line 26
    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 27
    .line 28
    if-ne v5, p1, :cond_8

    .line 29
    .line 30
    :cond_0
    if-nez p5, :cond_1

    .line 31
    .line 32
    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 33
    .line 34
    if-eq v5, p2, :cond_1

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_1
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 39
    .line 40
    if-eqz v5, :cond_8

    .line 41
    .line 42
    iget-boolean v5, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 43
    .line 44
    if-nez v5, :cond_8

    .line 45
    .line 46
    iget-boolean v4, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 47
    .line 48
    if-nez v4, :cond_8

    .line 49
    .line 50
    new-instance v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 51
    .line 52
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 53
    .line 54
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 55
    .line 56
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 57
    .line 58
    invoke-virtual {v7}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-direct {v4, v5, v6, v7}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    .line 66
    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    .line 74
    .line 75
    new-array v5, v5, [Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, [Ljava/lang/String;

    .line 82
    .line 83
    iput-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    .line 84
    .line 85
    :cond_2
    invoke-virtual {p0, v2, v4, p3}, Lcom/android/server/am/ProcessList;->fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    .line 86
    .line 87
    .line 88
    iget-object v2, v3, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 89
    .line 90
    instance-of v5, v2, Lcom/android/server/am/ProcessRecord;

    .line 91
    .line 92
    if-eqz v5, :cond_3

    .line 93
    .line 94
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 95
    .line 96
    iget v2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 97
    .line 98
    iput v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 99
    .line 100
    iget v2, v3, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    .line 101
    .line 102
    invoke-static {v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iput v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    instance-of v5, v2, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 110
    .line 111
    if-eqz v5, :cond_5

    .line 112
    .line 113
    check-cast v2, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 114
    .line 115
    iget-object v2, v2, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    .line 116
    .line 117
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 118
    .line 119
    const/4 v5, -0x1

    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    iget v2, v2, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    move v2, v5

    .line 126
    :goto_1
    if-eq v2, v5, :cond_5

    .line 127
    .line 128
    iput v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 129
    .line 130
    :cond_5
    :goto_2
    iget-object v2, v3, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 131
    .line 132
    instance-of v3, v2, Landroid/content/ComponentName;

    .line 133
    .line 134
    if-eqz v3, :cond_6

    .line 135
    .line 136
    check-cast v2, Landroid/content/ComponentName;

    .line 137
    .line 138
    iput-object v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 139
    .line 140
    :cond_6
    if-nez v1, :cond_7

    .line 141
    .line 142
    new-instance v1, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    :cond_7
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_8
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_9
    return-object v1
.end method

.method public final getSharedIsolatedProcess(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 19
    .line 20
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 21
    .line 22
    if-ne v3, p1, :cond_0

    .line 23
    .line 24
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 25
    .line 26
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method public final getUidProcStateLOSP(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x14

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 13
    .line 14
    :goto_0
    return p0
.end method

.method public final getUidProcessCapabilityLOSP(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 12
    .line 13
    :goto_0
    return p0
.end method

.method public final handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-gez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 39
    .line 40
    iput-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    .line 53
    .line 54
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    return p0

    .line 63
    :cond_1
    return v1
.end method

.method public final handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v2, p1

    .line 3
    .line 4
    move/from16 v10, p2

    .line 5
    .line 6
    move/from16 v11, p3

    .line 7
    .line 8
    move-wide/from16 v3, p4

    .line 9
    .line 10
    const/4 v12, -0x1

    .line 11
    const/4 v13, 0x0

    .line 12
    const/4 v14, 0x1

    .line 13
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    .line 14
    .line 15
    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string/jumbo v0, "killedByAm=true;"

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, v5

    .line 32
    :goto_0
    iget-object v6, v1, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 33
    .line 34
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 35
    .line 36
    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 37
    .line 38
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    if-eq v6, v2, :cond_2

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    :cond_1
    const-string v6, "No entry in mProcessNames;"

    .line 52
    .line 53
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 57
    .line 58
    if-nez v6, :cond_5

    .line 59
    .line 60
    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    .line 61
    .line 62
    if-eqz v6, :cond_3

    .line 63
    .line 64
    iget-wide v6, v2, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    .line 65
    .line 66
    cmp-long v6, v6, v3

    .line 67
    .line 68
    if-nez v6, :cond_3

    .line 69
    .line 70
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 71
    .line 72
    iput-boolean v13, v2, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    .line 73
    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v7, "Don\'t abort Starting process. It\'s Target Seq. App="

    .line 77
    .line 78
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    const-string v7, "ActivityManager"

    .line 89
    .line 90
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    if-nez v0, :cond_4

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    :cond_4
    const-string/jumbo v6, "pendingStart=false;"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_1
    iget-wide v6, v2, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    .line 108
    .line 109
    cmp-long v6, v6, v3

    .line 110
    .line 111
    if-lez v6, :cond_7

    .line 112
    .line 113
    if-nez v0, :cond_6

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string/jumbo v7, "seq="

    .line 123
    .line 124
    .line 125
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-wide v7, v2, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    .line 129
    .line 130
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v7, ",expected="

    .line 134
    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v3, ";"

    .line 142
    .line 143
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    .line 154
    .line 155
    if-nez v3, :cond_7

    .line 156
    .line 157
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    .line 158
    .line 159
    :cond_7
    move-object v3, v0

    .line 160
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 165
    .line 166
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 167
    .line 168
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 169
    .line 170
    invoke-interface {v0, v4, v6}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :catch_0
    move-exception v0

    .line 175
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 176
    .line 177
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 178
    .line 179
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 180
    .line 181
    if-eqz v4, :cond_9

    .line 182
    .line 183
    if-nez v3, :cond_8

    .line 184
    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    :cond_8
    const-string v0, "Package is frozen;"

    .line 191
    .line 192
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_9
    throw v0

    .line 197
    :catch_1
    :goto_2
    if-nez v3, :cond_a

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    :goto_3
    if-eqz v5, :cond_d

    .line 205
    .line 206
    const-string v0, "ActivityManager"

    .line 207
    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v4, " start not valid, killing pid="

    .line 217
    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v4, ", "

    .line 225
    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    iput-boolean v13, v2, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 240
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v3, "B|killProcessQuiet comm="

    .line 244
    .line 245
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 249
    .line 250
    const-string v4, "("

    .line 251
    .line 252
    const-string v6, ")"

    .line 253
    .line 254
    invoke-static {v10, v3, v4, v6, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {v0, v13}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 259
    .line 260
    .line 261
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 262
    .line 263
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 264
    .line 265
    .line 266
    monitor-enter v3

    .line 267
    :try_start_1
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 268
    .line 269
    iget-wide v6, v0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    .line 270
    .line 271
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 273
    .line 274
    .line 275
    invoke-static/range {p2 .. p2}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 276
    .line 277
    .line 278
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 279
    .line 280
    if-eqz v0, :cond_b

    .line 281
    .line 282
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 283
    .line 284
    invoke-static {v3, v0}, Landroid/os/Process;->killProcessGroup(II)I

    .line 285
    .line 286
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v3, "E|killProcessQuiet pss="

    .line 290
    .line 291
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v0, v13}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 302
    .line 303
    .line 304
    :cond_b
    const/16 v0, 0xd

    .line 305
    .line 306
    invoke-virtual {p0, v2, v0, v0, v5}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 310
    .line 311
    if-nez v0, :cond_c

    .line 312
    .line 313
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 314
    .line 315
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 316
    .line 317
    invoke-virtual {v0, v2}, Lcom/android/server/am/OomAdjuster;->onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 318
    .line 319
    .line 320
    :cond_c
    return v13

    .line 321
    :catchall_0
    move-exception v0

    .line 322
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 324
    .line 325
    .line 326
    throw v0

    .line 327
    :cond_d
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 328
    .line 329
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 330
    .line 331
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 332
    .line 333
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 334
    .line 335
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 336
    .line 337
    invoke-virtual {v0, v4, v3}, Lcom/android/server/am/BatteryStatsService;->noteProcessStart(ILjava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    .line 341
    .line 342
    const-string/jumbo v0, "startProcess: done updating battery stats"

    .line 343
    .line 344
    .line 345
    invoke-static {v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    .line 349
    .line 350
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    .line 363
    .line 364
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 369
    .line 370
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 371
    .line 372
    iget-object v7, v0, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    .line 373
    .line 374
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 375
    .line 376
    iget-object v0, v0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    .line 377
    .line 378
    if-eqz v0, :cond_e

    .line 379
    .line 380
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 381
    .line 382
    iget-object v0, v0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    .line 383
    .line 384
    :goto_4
    move-object v8, v0

    .line 385
    goto :goto_5

    .line 386
    :cond_e
    const-string v0, ""

    .line 387
    .line 388
    goto :goto_4

    .line 389
    :goto_5
    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    const/16 v3, 0x753e

    .line 394
    .line 395
    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 396
    .line 397
    .line 398
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 399
    .line 400
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 401
    .line 402
    invoke-static {v14, v10, v0}, Lcom/android/server/am/Pageboost;->onProcStatusChange(IILjava/lang/String;)V

    .line 403
    .line 404
    .line 405
    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 410
    .line 411
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 412
    .line 413
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 414
    .line 415
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 416
    .line 417
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    .line 418
    .line 419
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 420
    .line 421
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 422
    .line 423
    move/from16 v9, p2

    .line 424
    .line 425
    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 426
    .line 427
    .line 428
    :catch_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    .line 429
    .line 430
    if-eqz v0, :cond_f

    .line 431
    .line 432
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-eqz v0, :cond_f

    .line 437
    .line 438
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 439
    .line 440
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 441
    .line 442
    invoke-static {v10, v0}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(ILjava/lang/String;)V

    .line 443
    .line 444
    .line 445
    :cond_f
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {v0, v10, v3}, Lcom/android/server/Watchdog;->processStarted(ILjava/lang/String;)V

    .line 452
    .line 453
    .line 454
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    .line 455
    .line 456
    const-string/jumbo v0, "startProcess: building log message"

    .line 457
    .line 458
    .line 459
    invoke-static {v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 460
    .line 461
    .line 462
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 463
    .line 464
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 465
    .line 466
    .line 467
    const-string v3, "Start proc "

    .line 468
    .line 469
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    const/16 v3, 0x3a

    .line 476
    .line 477
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 481
    .line 482
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const/16 v3, 0x2f

    .line 486
    .line 487
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    .line 491
    .line 492
    invoke-static {v0, v3}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 493
    .line 494
    .line 495
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    .line 496
    .line 497
    if-eqz v3, :cond_10

    .line 498
    .line 499
    const-string v3, " ["

    .line 500
    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    .line 505
    .line 506
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v3, "]"

    .line 510
    .line 511
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    :cond_10
    const-string v3, " for "

    .line 515
    .line 516
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 520
    .line 521
    iget-object v3, v3, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    .line 522
    .line 523
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 527
    .line 528
    iget-object v3, v3, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    .line 529
    .line 530
    if-eqz v3, :cond_11

    .line 531
    .line 532
    const-string v3, " "

    .line 533
    .line 534
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 538
    .line 539
    iget-object v3, v3, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    .line 540
    .line 541
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    :cond_11
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 545
    .line 546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    .line 551
    .line 552
    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(ILjava/lang/String;)V

    .line 553
    .line 554
    .line 555
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 556
    .line 557
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 558
    .line 559
    .line 560
    monitor-enter v3

    .line 561
    :try_start_4
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 562
    .line 563
    .line 564
    iput-boolean v11, v2, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    .line 565
    .line 566
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 567
    .line 568
    iput-boolean v11, v0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    .line 569
    .line 570
    iput-boolean v13, v2, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 571
    .line 572
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    .line 573
    .line 574
    if-eqz v0, :cond_12

    .line 575
    .line 576
    iput-boolean v13, v2, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    .line 577
    .line 578
    goto :goto_6

    .line 579
    :catchall_1
    move-exception v0

    .line 580
    goto/16 :goto_12

    .line 581
    .line 582
    :cond_12
    :goto_6
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 583
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 584
    .line 585
    .line 586
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 587
    .line 588
    if-nez v0, :cond_13

    .line 589
    .line 590
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 591
    .line 592
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    .line 593
    .line 594
    iput-object v0, v1, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 595
    .line 596
    :cond_13
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 597
    .line 598
    iget-object v3, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 599
    .line 600
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    sget-object v4, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    .line 604
    .line 605
    if-eqz v4, :cond_17

    .line 606
    .line 607
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 608
    .line 609
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v5

    .line 613
    if-eqz v5, :cond_17

    .line 614
    .line 615
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 616
    .line 617
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    check-cast v4, Landroid/util/Pair;

    .line 622
    .line 623
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 624
    .line 625
    check-cast v5, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    .line 626
    .line 627
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 631
    .line 632
    if-nez v6, :cond_14

    .line 633
    .line 634
    goto :goto_7

    .line 635
    :cond_14
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 636
    .line 637
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 638
    .line 639
    iget v7, v5, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;->privateFlagsMask:I

    .line 640
    .line 641
    and-int/2addr v6, v7

    .line 642
    if-eq v6, v7, :cond_15

    .line 643
    .line 644
    goto :goto_7

    .line 645
    :cond_15
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 646
    .line 647
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 648
    .line 649
    if-eqz v6, :cond_17

    .line 650
    .line 651
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 652
    .line 653
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 654
    .line 655
    iget-object v5, v5, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;->packageName:Ljava/lang/String;

    .line 656
    .line 657
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    move-result v5

    .line 661
    if-nez v5, :cond_16

    .line 662
    .line 663
    goto :goto_7

    .line 664
    :cond_16
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 665
    .line 666
    check-cast v4, Ljava/lang/Integer;

    .line 667
    .line 668
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 669
    .line 670
    .line 671
    move-result v4

    .line 672
    goto :goto_8

    .line 673
    :cond_17
    :goto_7
    move v4, v12

    .line 674
    :goto_8
    if-eq v4, v12, :cond_18

    .line 675
    .line 676
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    .line 677
    .line 678
    iput v4, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 679
    .line 680
    goto/16 :goto_a

    .line 681
    .line 682
    :cond_18
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 683
    .line 684
    invoke-static {v4}, Lcom/android/server/am/BGProtectManager;->isDhaKeepEmptyProcess(Ljava/lang/String;)I

    .line 685
    .line 686
    .line 687
    move-result v4

    .line 688
    const/4 v5, 0x4

    .line 689
    const/4 v6, 0x2

    .line 690
    if-eq v4, v12, :cond_1c

    .line 691
    .line 692
    iget v7, v3, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    .line 693
    .line 694
    if-ne v7, v14, :cond_19

    .line 695
    .line 696
    if-ne v4, v14, :cond_19

    .line 697
    .line 698
    iput v14, v2, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 699
    .line 700
    goto/16 :goto_a

    .line 701
    .line 702
    :cond_19
    iget v7, v3, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    .line 703
    .line 704
    if-ne v7, v14, :cond_1a

    .line 705
    .line 706
    if-ne v4, v6, :cond_1a

    .line 707
    .line 708
    iget v7, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 709
    .line 710
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 711
    .line 712
    .line 713
    move-result v7

    .line 714
    if-eqz v7, :cond_1a

    .line 715
    .line 716
    iput v6, v2, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 717
    .line 718
    goto/16 :goto_a

    .line 719
    .line 720
    :cond_1a
    iget v3, v3, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    .line 721
    .line 722
    if-ne v3, v14, :cond_1b

    .line 723
    .line 724
    const/4 v6, 0x3

    .line 725
    if-ne v4, v6, :cond_1b

    .line 726
    .line 727
    iput v6, v2, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 728
    .line 729
    goto/16 :goto_a

    .line 730
    .line 731
    :cond_1b
    if-ne v3, v14, :cond_23

    .line 732
    .line 733
    if-ne v4, v5, :cond_23

    .line 734
    .line 735
    iput v5, v2, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 736
    .line 737
    goto/16 :goto_a

    .line 738
    .line 739
    :cond_1c
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 740
    .line 741
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 742
    .line 743
    invoke-static {v4, v3}, Lcom/android/server/am/BGProtectManager;->appIsPickedProcess(ILjava/lang/String;)I

    .line 744
    .line 745
    .line 746
    move-result v3

    .line 747
    if-eq v3, v12, :cond_1d

    .line 748
    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    .line 750
    .line 751
    const-string v4, "[SecIpm] it\'s a ML_TYPE_EMPTYPROCESS protected process "

    .line 752
    .line 753
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 757
    .line 758
    const-string v5, "DynamicHiddenApp_BGProtectManager"

    .line 759
    .line 760
    invoke-static {v3, v4, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    iput v14, v2, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 764
    .line 765
    goto :goto_a

    .line 766
    :cond_1d
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 767
    .line 768
    sget-object v4, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    .line 769
    .line 770
    if-eqz v4, :cond_1e

    .line 771
    .line 772
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    move-result v7

    .line 776
    if-eqz v7, :cond_1e

    .line 777
    .line 778
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v3

    .line 782
    check-cast v3, Ljava/lang/Integer;

    .line 783
    .line 784
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 785
    .line 786
    .line 787
    move-result v3

    .line 788
    goto :goto_9

    .line 789
    :cond_1e
    move v3, v12

    .line 790
    :goto_9
    if-eq v3, v12, :cond_1f

    .line 791
    .line 792
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 793
    .line 794
    iput v3, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 795
    .line 796
    goto :goto_a

    .line 797
    :cond_1f
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/BGProtectManager;->isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I

    .line 798
    .line 799
    .line 800
    move-result v3

    .line 801
    if-eq v3, v12, :cond_22

    .line 802
    .line 803
    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 804
    .line 805
    if-ne v3, v6, :cond_20

    .line 806
    .line 807
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 808
    .line 809
    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 810
    .line 811
    .line 812
    move-result v3

    .line 813
    iput v3, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 814
    .line 815
    goto :goto_a

    .line 816
    :cond_20
    if-ne v3, v5, :cond_21

    .line 817
    .line 818
    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 819
    .line 820
    .line 821
    move-result v3

    .line 822
    iput v3, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 823
    .line 824
    goto :goto_a

    .line 825
    :cond_21
    const/4 v4, 0x6

    .line 826
    if-ne v3, v4, :cond_23

    .line 827
    .line 828
    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 829
    .line 830
    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 831
    .line 832
    .line 833
    move-result v3

    .line 834
    iput v3, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 835
    .line 836
    goto :goto_a

    .line 837
    :cond_22
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 838
    .line 839
    sget-boolean v4, Lcom/android/server/am/BGProtectManager;->mCameraGuardEnable:Z

    .line 840
    .line 841
    if-eqz v4, :cond_23

    .line 842
    .line 843
    sget-object v4, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    .line 844
    .line 845
    if-eqz v4, :cond_23

    .line 846
    .line 847
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 848
    .line 849
    .line 850
    move-result v3

    .line 851
    if-eqz v3, :cond_23

    .line 852
    .line 853
    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 854
    .line 855
    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 856
    .line 857
    .line 858
    move-result v3

    .line 859
    iput v3, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 860
    .line 861
    :cond_23
    :goto_a
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 862
    .line 863
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 864
    .line 865
    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mCameraKillModeManager:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    .line 866
    .line 867
    if-eqz v0, :cond_24

    .line 868
    .line 869
    sget v5, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    .line 870
    .line 871
    if-le v5, v14, :cond_24

    .line 872
    .line 873
    iget-object v5, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    .line 874
    .line 875
    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 876
    .line 877
    .line 878
    move-result v5

    .line 879
    if-eqz v5, :cond_24

    .line 880
    .line 881
    iget-object v0, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    .line 882
    .line 883
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 884
    .line 885
    .line 886
    move-result-object v4

    .line 887
    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    :cond_24
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    .line 891
    .line 892
    const-string/jumbo v0, "startProcess: starting to update pids map"

    .line 893
    .line 894
    .line 895
    invoke-static {v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 896
    .line 897
    .line 898
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 899
    .line 900
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 901
    .line 902
    monitor-enter v4

    .line 903
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 904
    .line 905
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 906
    .line 907
    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 912
    if-eqz v0, :cond_25

    .line 913
    .line 914
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 915
    .line 916
    if-nez v3, :cond_25

    .line 917
    .line 918
    const-string v3, "ActivityManager"

    .line 919
    .line 920
    new-instance v4, Ljava/lang/StringBuilder;

    .line 921
    .line 922
    const-string/jumbo v5, "handleProcessStartedLocked process:"

    .line 923
    .line 924
    .line 925
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 929
    .line 930
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    const-string v5, " startSeq:"

    .line 934
    .line 935
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    iget-wide v5, v2, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    .line 939
    .line 940
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    const-string v5, " pid:"

    .line 944
    .line 945
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    .line 947
    .line 948
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    const-string v5, " belongs to another existing app:"

    .line 952
    .line 953
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 957
    .line 958
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    const-string v5, " startSeq:"

    .line 962
    .line 963
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    .line 965
    .line 966
    iget-wide v5, v0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    .line 967
    .line 968
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 969
    .line 970
    .line 971
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v4

    .line 975
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    .line 977
    .line 978
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 979
    .line 980
    const/4 v6, 0x0

    .line 981
    const/4 v7, 0x0

    .line 982
    const/4 v8, 0x1

    .line 983
    const/4 v9, 0x0

    .line 984
    move-object v4, v0

    .line 985
    move/from16 v5, p2

    .line 986
    .line 987
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;IZZZZ)Z

    .line 988
    .line 989
    .line 990
    :cond_25
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 991
    .line 992
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 993
    .line 994
    .line 995
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 996
    .line 997
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 998
    .line 999
    monitor-enter v3

    .line 1000
    if-nez p6, :cond_27

    .line 1001
    .line 1002
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1003
    .line 1004
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1005
    .line 1006
    const/16 v4, 0x14

    .line 1007
    .line 1008
    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1013
    .line 1014
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1015
    .line 1016
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1017
    .line 1018
    if-eqz v11, :cond_26

    .line 1019
    .line 1020
    const-wide/32 v5, 0x124f80

    .line 1021
    .line 1022
    .line 1023
    goto :goto_b

    .line 1024
    :cond_26
    sget v5, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    .line 1025
    .line 1026
    int-to-long v5, v5

    .line 1027
    :goto_b
    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1028
    .line 1029
    .line 1030
    goto :goto_c

    .line 1031
    :catchall_2
    move-exception v0

    .line 1032
    goto :goto_11

    .line 1033
    :cond_27
    :goto_c
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1034
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    .line 1035
    .line 1036
    const-string/jumbo v0, "startProcess: done updating pids map"

    .line 1037
    .line 1038
    .line 1039
    invoke-static {v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1043
    .line 1044
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 1045
    .line 1046
    if-lez v0, :cond_2c

    .line 1047
    .line 1048
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1049
    .line 1050
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 1051
    .line 1052
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1053
    .line 1054
    .line 1055
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 1056
    .line 1057
    invoke-virtual {v1}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v1

    .line 1061
    if-eqz v1, :cond_2c

    .line 1062
    .line 1063
    array-length v3, v1

    .line 1064
    if-nez v3, :cond_28

    .line 1065
    .line 1066
    goto :goto_10

    .line 1067
    :cond_28
    array-length v3, v1

    .line 1068
    move v4, v13

    .line 1069
    :goto_d
    if-ge v4, v3, :cond_2a

    .line 1070
    .line 1071
    aget-object v5, v1, v4

    .line 1072
    .line 1073
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 1074
    .line 1075
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1076
    .line 1077
    .line 1078
    move-result v6

    .line 1079
    if-eqz v6, :cond_29

    .line 1080
    .line 1081
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 1082
    .line 1083
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 1084
    .line 1085
    new-instance v3, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    .line 1086
    .line 1087
    invoke-direct {v3, v2, v5}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    .line 1092
    .line 1093
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    .line 1094
    .line 1095
    new-instance v3, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;

    .line 1096
    .line 1097
    invoke-direct {v3, v0, v5, v2, v13}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I)V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1101
    .line 1102
    .line 1103
    goto :goto_e

    .line 1104
    :cond_29
    add-int/2addr v4, v14

    .line 1105
    goto :goto_d

    .line 1106
    :cond_2a
    :goto_e
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 1107
    .line 1108
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1109
    .line 1110
    .line 1111
    move-result v1

    .line 1112
    sub-int/2addr v1, v14

    .line 1113
    :goto_f
    if-ltz v1, :cond_2c

    .line 1114
    .line 1115
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 1116
    .line 1117
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v2

    .line 1121
    check-cast v2, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    .line 1122
    .line 1123
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    .line 1124
    .line 1125
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v2

    .line 1129
    if-nez v2, :cond_2b

    .line 1130
    .line 1131
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 1132
    .line 1133
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    :cond_2b
    add-int/2addr v1, v12

    .line 1137
    goto :goto_f

    .line 1138
    :cond_2c
    :goto_10
    return v14

    .line 1139
    :goto_11
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1140
    throw v0

    .line 1141
    :catchall_3
    move-exception v0

    .line 1142
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1143
    throw v0

    .line 1144
    :goto_12
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1145
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1146
    .line 1147
    .line 1148
    throw v0
.end method

.method public incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-wide v3, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 16
    .line 17
    const-wide/16 v5, 0x1

    .line 18
    .line 19
    add-long/2addr v3, v5

    .line 20
    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 21
    .line 22
    iput-wide v3, v2, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    .line 23
    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 30
    .line 31
    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    .line 32
    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    cmp-long v0, v2, v4

    .line 36
    .line 37
    if-gtz v0, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sub-int/2addr v0, v1

    .line 47
    const/4 v2, 0x0

    .line 48
    :goto_1
    if-ltz v0, :cond_c

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 55
    .line 56
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    .line 57
    .line 58
    iget v7, v3, Lcom/android/server/am/UidRecord;->mUid:I

    .line 59
    .line 60
    iget-object v8, v6, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/net/NetworkManagementService$LocalService;

    .line 61
    .line 62
    if-nez v8, :cond_2

    .line 63
    .line 64
    const-class v8, Lcom/android/server/net/NetworkManagementService$LocalService;

    .line 65
    .line 66
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    check-cast v8, Lcom/android/server/net/NetworkManagementService$LocalService;

    .line 71
    .line 72
    iput-object v8, v6, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/net/NetworkManagementService$LocalService;

    .line 73
    .line 74
    :cond_2
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/net/NetworkManagementService$LocalService;

    .line 75
    .line 76
    if-eqz v6, :cond_3

    .line 77
    .line 78
    iget-object v6, v6, Lcom/android/server/net/NetworkManagementService$LocalService;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 79
    .line 80
    invoke-virtual {v6, v7}, Lcom/android/server/net/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v6, 0x0

    .line 86
    :goto_2
    if-nez v6, :cond_4

    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_4
    iget v6, v3, Lcom/android/server/am/UidRecord;->mUid:I

    .line 90
    .line 91
    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_b

    .line 96
    .line 97
    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    .line 98
    .line 99
    if-nez v6, :cond_5

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_5
    iget v6, v3, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 103
    .line 104
    iget v7, v3, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 105
    .line 106
    if-ne v6, v7, :cond_6

    .line 107
    .line 108
    iget v6, v3, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 109
    .line 110
    iget v7, v3, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 111
    .line 112
    if-ne v6, v7, :cond_6

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->getBlockStateForUid(Lcom/android/server/am/UidRecord;)I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-nez v6, :cond_7

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_7
    iget-object v7, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    .line 123
    .line 124
    monitor-enter v7

    .line 125
    if-ne v6, v1, :cond_9

    .line 126
    .line 127
    if-nez v2, :cond_8

    .line 128
    .line 129
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :catchall_0
    move-exception p0

    .line 136
    goto :goto_5

    .line 137
    :cond_8
    :goto_3
    iget v3, v3, Lcom/android/server/am/UidRecord;->mUid:I

    .line 138
    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_9
    iget-wide v8, v3, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    .line 148
    .line 149
    cmp-long v6, v8, v4

    .line 150
    .line 151
    if-eqz v6, :cond_a

    .line 152
    .line 153
    iget-object v3, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 156
    .line 157
    .line 158
    :cond_a
    :goto_4
    monitor-exit v7

    .line 159
    goto :goto_6

    .line 160
    :goto_5
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    throw p0

    .line 162
    :cond_b
    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_c
    if-nez v2, :cond_d

    .line 166
    .line 167
    return-void

    .line 168
    :cond_d
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    sub-int/2addr p1, v1

    .line 175
    :goto_7
    if-ltz p1, :cond_10

    .line 176
    .line 177
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 184
    .line 185
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 186
    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-nez v1, :cond_e

    .line 196
    .line 197
    goto :goto_8

    .line 198
    :cond_e
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 199
    .line 200
    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 201
    .line 202
    if-nez v3, :cond_f

    .line 203
    .line 204
    if-eqz v1, :cond_f

    .line 205
    .line 206
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 207
    .line 208
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 209
    .line 210
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-eqz v0, :cond_f

    .line 215
    .line 216
    :try_start_1
    iget-wide v3, v0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    .line 217
    .line 218
    invoke-interface {v1, v3, v4}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    .line 220
    .line 221
    :catch_0
    :cond_f
    :goto_8
    add-int/lit8 p1, p1, -0x1

    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_10
    return-void
.end method

.method public final init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 10
    .line 11
    const-string/jumbo p1, "persist.zygote.app_data_isolation"

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput-boolean p1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 20
    .line 21
    const-string/jumbo p1, "persist.sys.vold_app_data_isolation_enabled"

    .line 22
    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    invoke-static {p1, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput-boolean p1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    iget-object p3, p3, Lcom/android/server/SystemConfig;->mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

    .line 38
    .line 39
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    .line 43
    .line 44
    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 45
    .line 46
    if-nez p1, :cond_5

    .line 47
    .line 48
    new-instance p1, Lcom/android/server/ServiceThread;

    .line 49
    .line 50
    const-string p3, "ActivityManager:kill"

    .line 51
    .line 52
    const/16 v0, 0xa

    .line 53
    .line 54
    invoke-direct {p1, v0, p3, p2}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    sput-object p1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lcom/android/server/am/ProcessList$KillHandler;

    .line 63
    .line 64
    sget-object p3, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 65
    .line 66
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-direct {p1, p3, v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 72
    .line 73
    .line 74
    sput-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 75
    .line 76
    new-instance p1, Lcom/android/server/am/OomConnection;

    .line 77
    .line 78
    new-instance p3, Lcom/android/server/am/ProcessList$1;

    .line 79
    .line 80
    invoke-direct {p3, p0}, Lcom/android/server/am/ProcessList$1;-><init>(Lcom/android/server/am/ProcessList;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, p3}, Lcom/android/server/am/OomConnection;-><init>(Lcom/android/server/am/ProcessList$1;)V

    .line 84
    .line 85
    .line 86
    new-instance p1, Lcom/android/server/am/LmkdConnection;

    .line 87
    .line 88
    sget-object p3, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 89
    .line 90
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-virtual {p3}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    new-instance v2, Lcom/android/server/am/ProcessList$1;

    .line 99
    .line 100
    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessList$1;-><init>(Lcom/android/server/am/ProcessList;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p1, p3, v2}, Lcom/android/server/am/LmkdConnection;-><init>(Landroid/os/MessageQueue;Lcom/android/server/am/ProcessList$1;)V

    .line 104
    .line 105
    .line 106
    sput-object p1, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 107
    .line 108
    new-instance p1, Ljava/io/File;

    .line 109
    .line 110
    const-string p3, "/data/system/unsolzygotesocket"

    .line 111
    .line 112
    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_0

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 122
    .line 123
    .line 124
    :cond_0
    :try_start_0
    new-instance p1, Landroid/net/LocalSocket;

    .line 125
    .line 126
    invoke-direct {p1, p2}, Landroid/net/LocalSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    :try_start_1
    new-instance v2, Landroid/net/LocalSocketAddress;

    .line 130
    .line 131
    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    .line 132
    .line 133
    invoke-direct {v2, p3, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v2}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    .line 137
    .line 138
    .line 139
    const/16 v2, 0x1b6

    .line 140
    .line 141
    invoke-static {p3, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    .line 143
    .line 144
    :cond_1
    move-object v1, p1

    .line 145
    goto :goto_0

    .line 146
    :catch_0
    move-object p1, v1

    .line 147
    :catch_1
    if-eqz p1, :cond_1

    .line 148
    .line 149
    :try_start_2
    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 150
    .line 151
    .line 152
    :catch_2
    :goto_0
    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 153
    .line 154
    if-eqz v1, :cond_2

    .line 155
    .line 156
    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 167
    .line 168
    invoke-virtual {p3}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    new-instance v1, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;

    .line 173
    .line 174
    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/ProcessList;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p3, p2, v1}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 178
    .line 179
    .line 180
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 181
    .line 182
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 183
    .line 184
    iput-object p1, p3, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 185
    .line 186
    const-string p1, "ActivityManager:handler"

    .line 187
    .line 188
    invoke-static {v0, p1, p2}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    new-instance v1, Landroid/os/Handler;

    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 199
    .line 200
    .line 201
    iput-object v1, p3, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    .line 202
    .line 203
    new-instance p1, Ljava/io/File;

    .line 204
    .line 205
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    const-string/jumbo v2, "procstartstore"

    .line 210
    .line 211
    .line 212
    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iput-object p1, p3, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    .line 216
    .line 217
    invoke-static {p1}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    const-string v1, "ActivityManager"

    .line 222
    .line 223
    const-string v2, "Unable to create "

    .line 224
    .line 225
    if-nez p1, :cond_3

    .line 226
    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object p3, p3, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    .line 233
    .line 234
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_3
    new-instance p1, Ljava/io/File;

    .line 246
    .line 247
    iget-object v3, p3, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    .line 248
    .line 249
    const-string/jumbo v4, "procstartinfo"

    .line 250
    .line 251
    .line 252
    invoke-direct {p1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iput-object p1, p3, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    .line 256
    .line 257
    const/16 p1, 0x10

    .line 258
    .line 259
    iput p1, p3, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    .line 260
    .line 261
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 262
    .line 263
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 264
    .line 265
    iput-object p1, p3, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 266
    .line 267
    const-string v3, "ActivityManager:killHandler"

    .line 268
    .line 269
    invoke-static {v0, v3, p2}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 274
    .line 275
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-direct {v0, p3, p2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;-><init>(Lcom/android/server/am/AppExitInfoTracker;Landroid/os/Looper;)V

    .line 280
    .line 281
    .line 282
    iput-object v0, p3, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 283
    .line 284
    new-instance p2, Ljava/io/File;

    .line 285
    .line 286
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    const-string/jumbo v3, "procexitstore"

    .line 291
    .line 292
    .line 293
    invoke-direct {p2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iput-object p2, p3, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    .line 297
    .line 298
    invoke-static {p2}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    .line 299
    .line 300
    .line 301
    move-result p2

    .line 302
    if-nez p2, :cond_4

    .line 303
    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object p2, p3, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    .line 310
    .line 311
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_4
    new-instance p2, Ljava/io/File;

    .line 323
    .line 324
    iget-object v0, p3, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    .line 325
    .line 326
    const-string/jumbo v1, "procexitinfo"

    .line 327
    .line 328
    .line 329
    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iput-object p2, p3, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    .line 333
    .line 334
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 335
    .line 336
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    const p2, 0x10e002d

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    iput p1, p3, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    .line 348
    .line 349
    :goto_2
    new-instance p1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 350
    .line 351
    sget-object p2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 352
    .line 353
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    .line 358
    .line 359
    .line 360
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 361
    .line 362
    :cond_5
    return-void
.end method

.method public final killAllBackgroundProcessesExceptLSP(II)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    if-ge v3, v1, :cond_4

    .line 19
    .line 20
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    move v6, v2

    .line 37
    :goto_1
    if-ge v6, v5, :cond_3

    .line 38
    .line 39
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 44
    .line 45
    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 46
    .line 47
    if-nez v8, :cond_1

    .line 48
    .line 49
    if-ltz p1, :cond_0

    .line 50
    .line 51
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 52
    .line 53
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 54
    .line 55
    if-ge v8, p1, :cond_2

    .line 56
    .line 57
    :cond_0
    if-ltz p2, :cond_1

    .line 58
    .line 59
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 60
    .line 61
    iget v8, v8, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 62
    .line 63
    if-le v8, p2, :cond_2

    .line 64
    .line 65
    :cond_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    :goto_2
    if-ge v2, p1, :cond_5

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    move-object v4, p2

    .line 85
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 86
    .line 87
    const/16 v8, 0xa

    .line 88
    .line 89
    const-string/jumbo v9, "kill all background except"

    .line 90
    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    const/4 v6, 0x1

    .line 94
    const/16 v7, 0xd

    .line 95
    .line 96
    const/4 v10, 0x1

    .line 97
    move-object v3, p0

    .line 98
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 99
    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    return-void
.end method

.method public final killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J
    .locals 9

    .line 1
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 2
    .line 3
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4
    .line 5
    iget-wide v3, v3, Lcom/android/server/am/ProcessStateRecord;->mLastCanKillOnBgRestrictedAndIdleTime:J

    .line 6
    .line 7
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 10
    .line 11
    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    .line 12
    .line 13
    const-wide/16 v7, 0x0

    .line 14
    .line 15
    if-eqz v5, :cond_2

    .line 16
    .line 17
    iget-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 18
    .line 19
    if-nez v5, :cond_2

    .line 20
    .line 21
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 22
    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    iget-boolean v2, v2, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 40
    .line 41
    iget-boolean v5, v2, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    .line 42
    .line 43
    if-nez v5, :cond_2

    .line 44
    .line 45
    iget-boolean v2, v2, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    cmp-long v2, v3, v7

    .line 50
    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 57
    .line 58
    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 59
    .line 60
    add-long/2addr v3, v5

    .line 61
    cmp-long v0, v3, p2

    .line 62
    .line 63
    if-gtz v0, :cond_1

    .line 64
    .line 65
    const/4 v6, 0x1

    .line 66
    const-string/jumbo v4, "cached idle & background restricted"

    .line 67
    .line 68
    .line 69
    const/16 v2, 0xd

    .line 70
    .line 71
    const/16 v3, 0x12

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    move-object v0, p1

    .line 75
    move v1, v2

    .line 76
    move v2, v3

    .line 77
    move-object v3, v4

    .line 78
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 79
    .line 80
    .line 81
    return-wide v7

    .line 82
    :cond_1
    return-wide v3

    .line 83
    :cond_2
    :goto_0
    return-wide v7
.end method

.method public final killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 24
    .line 25
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 26
    .line 27
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 28
    .line 29
    invoke-virtual {p2, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    .line 40
    .line 41
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 42
    .line 43
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 44
    .line 45
    invoke-virtual {p2, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 50
    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    iget p2, p2, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    .line 54
    .line 55
    iget v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mFirstUid:I

    .line 56
    .line 57
    sub-int/2addr p2, v1

    .line 58
    iget v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidsPerRange:I

    .line 59
    .line 60
    div-int/2addr p2, v1

    .line 61
    iget-object v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    .line 62
    .line 63
    invoke-virtual {v1, p2}, Ljava/util/BitSet;->set(I)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    .line 67
    .line 68
    iget-object p2, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 69
    .line 70
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 71
    .line 72
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/os/AppZygote;->stopZygote()V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method public final killAppZygotesLocked(IILjava/lang/String;Z)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/util/SparseArray;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ge v3, v4, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, -0x1

    .line 44
    if-eq p2, v5, :cond_1

    .line 45
    .line 46
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eq v5, p2, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    if-ltz p1, :cond_2

    .line 54
    .line 55
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eq v4, p1, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Landroid/os/AppZygote;

    .line 67
    .line 68
    if-eqz p3, :cond_3

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_5

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Landroid/os/AppZygote;

    .line 104
    .line 105
    invoke-virtual {p0, p2, p4}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    return-void
.end method

.method public final killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z
    .locals 19

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move/from16 v11, p2

    .line 6
    .line 7
    move/from16 v12, p3

    .line 8
    .line 9
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v14, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-ge v2, v1, :cond_f

    .line 32
    .line 33
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x0

    .line 50
    :goto_1
    if-ge v5, v4, :cond_e

    .line 51
    .line 52
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 57
    .line 58
    iget-boolean v7, v6, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 59
    .line 60
    if-eqz v7, :cond_1

    .line 61
    .line 62
    if-nez p8, :cond_1

    .line 63
    .line 64
    :cond_0
    :goto_2
    move/from16 v8, p4

    .line 65
    .line 66
    :goto_3
    const/4 v13, 0x1

    .line 67
    goto/16 :goto_9

    .line 68
    .line 69
    :cond_1
    iget-boolean v7, v6, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 70
    .line 71
    if-eqz v7, :cond_3

    .line 72
    .line 73
    if-eqz p7, :cond_0

    .line 74
    .line 75
    if-nez p10, :cond_2

    .line 76
    .line 77
    if-eqz v10, :cond_2

    .line 78
    .line 79
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 80
    .line 81
    invoke-virtual {v7, v10}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-nez v7, :cond_2

    .line 86
    .line 87
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    .line 88
    .line 89
    if-eqz v7, :cond_2

    .line 90
    .line 91
    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_2

    .line 96
    .line 97
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 98
    .line 99
    if-eqz v7, :cond_2

    .line 100
    .line 101
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 102
    .line 103
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 104
    .line 105
    iget v8, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 106
    .line 107
    iget v15, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 108
    .line 109
    invoke-virtual {v0, v8, v15, v7}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(IILjava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-nez v7, :cond_2

    .line 114
    .line 115
    const/4 v7, 0x1

    .line 116
    goto :goto_4

    .line 117
    :cond_2
    const/4 v7, 0x0

    .line 118
    :goto_4
    new-instance v8, Landroid/util/Pair;

    .line 119
    .line 120
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-direct {v8, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 132
    .line 133
    iget v7, v7, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 134
    .line 135
    move/from16 v8, p4

    .line 136
    .line 137
    if-ge v7, v8, :cond_4

    .line 138
    .line 139
    :goto_5
    goto :goto_3

    .line 140
    :cond_4
    const/4 v7, -0x1

    .line 141
    if-nez v10, :cond_6

    .line 142
    .line 143
    if-eq v12, v7, :cond_5

    .line 144
    .line 145
    iget v7, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 146
    .line 147
    if-eq v7, v12, :cond_5

    .line 148
    .line 149
    :goto_6
    goto :goto_5

    .line 150
    :cond_5
    if-ltz v11, :cond_b

    .line 151
    .line 152
    iget v7, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 153
    .line 154
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-eq v7, v11, :cond_b

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_6
    iget-object v15, v6, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    .line 162
    .line 163
    if-eqz v15, :cond_7

    .line 164
    .line 165
    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    if-eqz v15, :cond_7

    .line 170
    .line 171
    const/4 v15, 0x1

    .line 172
    goto :goto_7

    .line 173
    :cond_7
    const/4 v15, 0x0

    .line 174
    :goto_7
    if-nez v15, :cond_8

    .line 175
    .line 176
    iget v13, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 177
    .line 178
    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    if-eq v13, v11, :cond_8

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_8
    if-eq v12, v7, :cond_9

    .line 186
    .line 187
    iget v7, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 188
    .line 189
    if-eq v7, v12, :cond_9

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_9
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 193
    .line 194
    invoke-virtual {v7, v10}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-nez v7, :cond_a

    .line 199
    .line 200
    if-nez v15, :cond_a

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_a
    if-nez v7, :cond_b

    .line 204
    .line 205
    if-eqz v15, :cond_b

    .line 206
    .line 207
    if-nez p10, :cond_b

    .line 208
    .line 209
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 210
    .line 211
    if-eqz v7, :cond_b

    .line 212
    .line 213
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 214
    .line 215
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 216
    .line 217
    iget v13, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 218
    .line 219
    iget v15, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 220
    .line 221
    invoke-virtual {v0, v13, v15, v7}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(IILjava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    if-nez v7, :cond_b

    .line 226
    .line 227
    const/4 v7, 0x1

    .line 228
    goto :goto_8

    .line 229
    :cond_b
    const/4 v7, 0x0

    .line 230
    :goto_8
    if-nez p7, :cond_c

    .line 231
    .line 232
    const/4 v13, 0x1

    .line 233
    return v13

    .line 234
    :cond_c
    const/4 v13, 0x1

    .line 235
    if-eqz p9, :cond_d

    .line 236
    .line 237
    iput-boolean v13, v6, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 238
    .line 239
    :cond_d
    new-instance v15, Landroid/util/Pair;

    .line 240
    .line 241
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    invoke-direct {v15, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    :goto_9
    add-int/2addr v5, v13

    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :cond_e
    move/from16 v8, p4

    .line 255
    .line 256
    const/4 v13, 0x1

    .line 257
    add-int/2addr v2, v13

    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_f
    const/16 v0, 0x2710

    .line 261
    .line 262
    if-lt v11, v0, :cond_10

    .line 263
    .line 264
    const/16 v0, 0x4e1f

    .line 265
    .line 266
    if-gt v11, v0, :cond_10

    .line 267
    .line 268
    const/4 v13, 0x1

    .line 269
    goto :goto_a

    .line 270
    :cond_10
    const/4 v13, 0x0

    .line 271
    :goto_a
    if-eqz v13, :cond_11

    .line 272
    .line 273
    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda3;

    .line 274
    .line 275
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 279
    .line 280
    .line 281
    :cond_11
    const/4 v15, 0x0

    .line 282
    :goto_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-ge v15, v0, :cond_1e

    .line 287
    .line 288
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Landroid/util/Pair;

    .line 293
    .line 294
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 297
    .line 298
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 299
    .line 300
    const/4 v1, 0x1

    .line 301
    add-int/lit8 v2, v15, 0x1

    .line 302
    .line 303
    :goto_c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-ge v2, v3, :cond_12

    .line 308
    .line 309
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    check-cast v3, Landroid/util/Pair;

    .line 314
    .line 315
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 318
    .line 319
    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 320
    .line 321
    if-ne v3, v0, :cond_12

    .line 322
    .line 323
    add-int/2addr v2, v1

    .line 324
    goto :goto_c

    .line 325
    :cond_12
    invoke-virtual {v14, v15, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 326
    .line 327
    .line 328
    move-result-object v8

    .line 329
    const/4 v1, 0x0

    .line 330
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    check-cast v0, Landroid/util/Pair;

    .line 335
    .line 336
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 339
    .line 340
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 341
    .line 342
    if-eqz v13, :cond_13

    .line 343
    .line 344
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-ne v0, v11, :cond_13

    .line 349
    .line 350
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 351
    .line 352
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    invoke-static {v7, v10}, Lcom/android/server/am/FreecessController;->freezeTargetProcess(ILjava/lang/String;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-eqz v0, :cond_13

    .line 362
    .line 363
    const/16 v17, 0x1

    .line 364
    .line 365
    goto :goto_d

    .line 366
    :cond_13
    const/16 v17, 0x0

    .line 367
    .line 368
    :goto_d
    if-eqz v17, :cond_19

    .line 369
    .line 370
    const-string v1, ": "

    .line 371
    .line 372
    const-string v2, "Unable to freeze binder for "

    .line 373
    .line 374
    const-string v3, "ActivityManager"

    .line 375
    .line 376
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    const/4 v5, 0x0

    .line 381
    :goto_e
    if-ge v5, v4, :cond_18

    .line 382
    .line 383
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Landroid/util/Pair;

    .line 388
    .line 389
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 392
    .line 393
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 394
    .line 395
    move/from16 p4, v4

    .line 396
    .line 397
    if-lez v6, :cond_17

    .line 398
    .line 399
    const/4 v0, 0x0

    .line 400
    :goto_f
    const/16 v4, 0xa

    .line 401
    .line 402
    move/from16 p7, v13

    .line 403
    .line 404
    const/4 v13, 0x1

    .line 405
    :try_start_0
    invoke-static {v6, v13, v4}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZI)I

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    sget v13, Landroid/system/OsConstants;->EAGAIN:I

    .line 410
    .line 411
    neg-int v13, v13

    .line 412
    if-ne v4, v13, :cond_15

    .line 413
    .line 414
    const/4 v13, 0x1

    .line 415
    add-int/lit8 v18, v0, 0x1

    .line 416
    .line 417
    if-lt v0, v13, :cond_14

    .line 418
    .line 419
    goto :goto_10

    .line 420
    :cond_14
    move/from16 v13, p7

    .line 421
    .line 422
    move/from16 v0, v18

    .line 423
    .line 424
    goto :goto_f

    .line 425
    :cond_15
    :goto_10
    if-eqz v4, :cond_16

    .line 426
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .line 450
    .line 451
    goto :goto_11

    .line 452
    :catch_0
    move-exception v0

    .line 453
    goto :goto_12

    .line 454
    :cond_16
    :goto_11
    const/4 v4, 0x1

    .line 455
    goto :goto_13

    .line 456
    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    goto :goto_11

    .line 478
    :cond_17
    move/from16 p7, v13

    .line 479
    .line 480
    goto :goto_11

    .line 481
    :goto_13
    add-int/2addr v5, v4

    .line 482
    move/from16 v4, p4

    .line 483
    .line 484
    move/from16 v13, p7

    .line 485
    .line 486
    goto :goto_e

    .line 487
    :cond_18
    move/from16 p7, v13

    .line 488
    .line 489
    const/4 v4, 0x1

    .line 490
    invoke-static {v7, v4}, Lcom/android/server/am/ProcessList;->freezePackageCgroup(IZ)Z

    .line 491
    .line 492
    .line 493
    goto :goto_14

    .line 494
    :cond_19
    move/from16 p7, v13

    .line 495
    .line 496
    :goto_14
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    if-eqz v1, :cond_1c

    .line 505
    .line 506
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    check-cast v1, Landroid/util/Pair;

    .line 511
    .line 512
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 515
    .line 516
    if-nez p6, :cond_1b

    .line 517
    .line 518
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v1, Ljava/lang/Boolean;

    .line 521
    .line 522
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    if-eqz v1, :cond_1a

    .line 527
    .line 528
    goto :goto_17

    .line 529
    :cond_1a
    const/4 v4, 0x0

    .line 530
    :goto_16
    const/4 v13, 0x1

    .line 531
    goto :goto_18

    .line 532
    :cond_1b
    :goto_17
    const/4 v4, 0x1

    .line 533
    goto :goto_16

    .line 534
    :goto_18
    xor-int/lit8 v16, v17, 0x1

    .line 535
    .line 536
    move-object/from16 v1, p0

    .line 537
    .line 538
    move/from16 v3, p5

    .line 539
    .line 540
    move/from16 v5, p11

    .line 541
    .line 542
    move/from16 v6, p12

    .line 543
    .line 544
    move v13, v7

    .line 545
    move-object/from16 v7, p13

    .line 546
    .line 547
    move-object/from16 v18, v8

    .line 548
    .line 549
    move/from16 v8, v16

    .line 550
    .line 551
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 552
    .line 553
    .line 554
    move v7, v13

    .line 555
    move-object/from16 v8, v18

    .line 556
    .line 557
    goto :goto_15

    .line 558
    :cond_1c
    move v13, v7

    .line 559
    move-object/from16 v18, v8

    .line 560
    .line 561
    const/4 v1, 0x0

    .line 562
    invoke-virtual {v9, v11, v12, v10, v1}, Lcom/android/server/am/ProcessList;->killAppZygotesLocked(IILjava/lang/String;Z)V

    .line 563
    .line 564
    .line 565
    if-eqz v17, :cond_1d

    .line 566
    .line 567
    invoke-static {v13, v1}, Lcom/android/server/am/ProcessList;->freezePackageCgroup(IZ)Z

    .line 568
    .line 569
    .line 570
    :cond_1d
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    add-int/2addr v15, v0

    .line 575
    move/from16 v13, p7

    .line 576
    .line 577
    goto/16 :goto_b

    .line 578
    .line 579
    :cond_1e
    const/4 v1, 0x0

    .line 580
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 581
    .line 582
    const/16 v2, 0xc

    .line 583
    .line 584
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(I)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    if-lez v0, :cond_1f

    .line 592
    .line 593
    const/4 v13, 0x1

    .line 594
    goto :goto_19

    .line 595
    :cond_1f
    move v13, v1

    .line 596
    :goto_19
    return v13
.end method

.method public final killProcessesWhenImperceptible(ILjava/lang/String;[I)V
    .locals 5

    .line 1
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

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
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    :try_start_0
    array-length v2, p3

    .line 16
    if-ge v1, v2, :cond_2

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 21
    .line 22
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 26
    .line 27
    aget v4, p3, v1

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 37
    .line 38
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->enqueueLocked(ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    :try_start_4
    throw p0

    .line 50
    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 56
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v10, p8

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v11, 0x1

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    move-object/from16 v12, p2

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 15
    .line 16
    move-object v12, v2

    .line 17
    :goto_0
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 18
    .line 19
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result v13

    .line 23
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 24
    .line 25
    if-eqz p5, :cond_1

    .line 26
    .line 27
    move/from16 v2, p6

    .line 28
    .line 29
    :cond_1
    invoke-static {v2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    if-eqz p5, :cond_2

    .line 37
    .line 38
    if-nez p7, :cond_3

    .line 39
    .line 40
    :cond_2
    const-string v0, "ActivityManager"

    .line 41
    .line 42
    const-string v1, "Abort creating new sandbox process as required parameters are missing."

    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-object v4

    .line 48
    :cond_3
    const/4 v14, 0x2

    .line 49
    const/4 v15, 0x0

    .line 50
    if-eqz p3, :cond_10

    .line 51
    .line 52
    if-nez p4, :cond_c

    .line 53
    .line 54
    if-eqz v10, :cond_5

    .line 55
    .line 56
    iget v2, v10, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    .line 57
    .line 58
    if-ne v2, v14, :cond_5

    .line 59
    .line 60
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 61
    .line 62
    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 63
    .line 64
    iget v5, v10, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    .line 65
    .line 66
    iget-object v6, v2, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    .line 67
    .line 68
    invoke-virtual {v6, v3, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 73
    .line 74
    if-nez v6, :cond_6

    .line 75
    .line 76
    iget-object v6, v2, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    .line 77
    .line 78
    invoke-virtual {v6, v15}, Ljava/util/BitSet;->nextSetBit(I)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-gez v6, :cond_4

    .line 83
    .line 84
    move-object v6, v4

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    iget-object v7, v2, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    .line 87
    .line 88
    invoke-virtual {v7, v6}, Ljava/util/BitSet;->clear(I)V

    .line 89
    .line 90
    .line 91
    iget v7, v2, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidsPerRange:I

    .line 92
    .line 93
    mul-int/2addr v6, v7

    .line 94
    iget v8, v2, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mFirstUid:I

    .line 95
    .line 96
    add-int/2addr v6, v8

    .line 97
    new-instance v8, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 98
    .line 99
    add-int/2addr v7, v6

    .line 100
    sub-int/2addr v7, v11

    .line 101
    invoke-direct {v8, v6, v7}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(II)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v2, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    .line 105
    .line 106
    invoke-virtual {v2, v3, v5, v8}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-object v6, v8

    .line 110
    goto :goto_1

    .line 111
    :cond_5
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 112
    .line 113
    :cond_6
    :goto_1
    if-nez v6, :cond_7

    .line 114
    .line 115
    return-object v4

    .line 116
    :cond_7
    iget v2, v6, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    .line 117
    .line 118
    iget v3, v6, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    .line 119
    .line 120
    sub-int/2addr v2, v3

    .line 121
    add-int/2addr v2, v11

    .line 122
    move v3, v15

    .line 123
    :goto_2
    if-ge v3, v2, :cond_b

    .line 124
    .line 125
    iget v5, v6, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 126
    .line 127
    iget v7, v6, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    .line 128
    .line 129
    if-lt v5, v7, :cond_8

    .line 130
    .line 131
    iget v8, v6, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    .line 132
    .line 133
    if-le v5, v8, :cond_9

    .line 134
    .line 135
    :cond_8
    iput v7, v6, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 136
    .line 137
    :cond_9
    iget v5, v6, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 138
    .line 139
    invoke-static {v13, v5}, Landroid/os/UserHandle;->getUid(II)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    iget v7, v6, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 144
    .line 145
    add-int/2addr v7, v11

    .line 146
    iput v7, v6, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 147
    .line 148
    iget-object v7, v6, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    .line 149
    .line 150
    invoke-virtual {v7, v5, v15}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-nez v7, :cond_a

    .line 155
    .line 156
    iget-object v2, v6, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    .line 157
    .line 158
    invoke-virtual {v2, v5, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_a
    add-int/2addr v3, v11

    .line 163
    goto :goto_2

    .line 164
    :cond_b
    move v5, v1

    .line 165
    :goto_3
    if-ne v5, v1, :cond_d

    .line 166
    .line 167
    return-object v4

    .line 168
    :cond_c
    move/from16 v5, p4

    .line 169
    .line 170
    :cond_d
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 171
    .line 172
    iget-object v2, v2, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 173
    .line 174
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 175
    .line 176
    iget-object v4, v2, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 177
    .line 178
    iget-object v4, v4, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 179
    .line 180
    monitor-enter v4

    .line 181
    :try_start_0
    iget-object v6, v2, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    .line 182
    .line 183
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    check-cast v6, Landroid/util/ArraySet;

    .line 188
    .line 189
    if-nez v6, :cond_e

    .line 190
    .line 191
    new-instance v6, Landroid/util/ArraySet;

    .line 192
    .line 193
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v7, v2, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    .line 197
    .line 198
    invoke-virtual {v7, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :catchall_0
    move-exception v0

    .line 203
    goto/16 :goto_6

    .line 204
    .line 205
    :cond_e
    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    iget-object v2, v2, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    .line 213
    .line 214
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 223
    .line 224
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 229
    .line 230
    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 231
    .line 232
    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 233
    .line 234
    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 235
    .line 236
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 237
    .line 238
    monitor-enter v6

    .line 239
    :try_start_1
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 240
    .line 241
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 242
    .line 243
    iget-object v4, v2, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    .line 244
    .line 245
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v2}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 249
    .line 250
    .line 251
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 252
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 253
    .line 254
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 255
    .line 256
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 257
    .line 258
    iget-object v2, v2, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 259
    .line 260
    monitor-enter v2

    .line 261
    :try_start_2
    iget-object v4, v2, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    .line 262
    .line 263
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 264
    .line 265
    .line 266
    iget-object v4, v2, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    .line 267
    .line 268
    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    .line 270
    .line 271
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 272
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsUidResolver;->mListeners:Ljava/util/List;

    .line 273
    .line 274
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    sub-int/2addr v4, v11

    .line 279
    :goto_5
    if-ltz v4, :cond_f

    .line 280
    .line 281
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    check-cast v6, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;

    .line 286
    .line 287
    invoke-interface {v6, v5, v3}, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;->onIsolatedUidAdded(II)V

    .line 288
    .line 289
    .line 290
    add-int/2addr v4, v1

    .line 291
    goto :goto_5

    .line 292
    :cond_f
    const/16 v1, 0x2b

    .line 293
    .line 294
    invoke-static {v1, v3, v5, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 295
    .line 296
    .line 297
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 298
    .line 299
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    if-eqz v1, :cond_11

    .line 304
    .line 305
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 306
    .line 307
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 312
    .line 313
    invoke-virtual {v1, v5, v2}, Landroid/os/CustomFrequencyManagerInternal;->addIsolatedUid(II)V

    .line 314
    .line 315
    .line 316
    goto :goto_7

    .line 317
    :catchall_1
    move-exception v0

    .line 318
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 319
    throw v0

    .line 320
    :catchall_2
    move-exception v0

    .line 321
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 322
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 323
    .line 324
    throw v0

    .line 325
    :goto_6
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 326
    throw v0

    .line 327
    :cond_10
    move v5, v2

    .line 328
    :cond_11
    :goto_7
    new-instance v8, Lcom/android/server/am/ProcessRecord;

    .line 329
    .line 330
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 331
    .line 332
    iget v7, v10, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    .line 333
    .line 334
    iget-object v6, v10, Lcom/android/server/am/HostingRecord;->mDefiningProcessName:Ljava/lang/String;

    .line 335
    .line 336
    move-object v1, v8

    .line 337
    move-object/from16 v3, p1

    .line 338
    .line 339
    move-object v4, v12

    .line 340
    move-object/from16 v16, v6

    .line 341
    .line 342
    move-object/from16 v6, p7

    .line 343
    .line 344
    move-object v15, v8

    .line 345
    move-object/from16 v8, v16

    .line 346
    .line 347
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 348
    .line 349
    .line 350
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 351
    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-eqz v2, :cond_16

    .line 357
    .line 358
    invoke-static {}, Landroid/app/Flags;->useAppInfoNotLaunched()Z

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-eqz v2, :cond_12

    .line 363
    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    xor-int/2addr v2, v11

    .line 369
    goto :goto_8

    .line 370
    :cond_12
    :try_start_6
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 371
    .line 372
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 377
    .line 378
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 379
    .line 380
    iget v4, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 381
    .line 382
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    move-result v2
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    .line 386
    goto :goto_8

    .line 387
    :catch_0
    const/4 v2, 0x0

    .line 388
    :goto_8
    const-string v3, "activity"

    .line 389
    .line 390
    iget-object v4, v10, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    if-nez v3, :cond_14

    .line 397
    .line 398
    const-string/jumbo v3, "next-activity"

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-nez v3, :cond_14

    .line 406
    .line 407
    const-string/jumbo v3, "next-top-activity"

    .line 408
    .line 409
    .line 410
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    if-nez v3, :cond_14

    .line 415
    .line 416
    const-string/jumbo v3, "top-activity"

    .line 417
    .line 418
    .line 419
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    if-nez v3, :cond_14

    .line 424
    .line 425
    invoke-static {}, Landroid/app/Flags;->useAppInfoNotLaunched()Z

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    if-eqz v3, :cond_13

    .line 430
    .line 431
    iput-boolean v2, v15, Lcom/android/server/am/ProcessRecord;->mWasForceStopped:Z

    .line 432
    .line 433
    goto :goto_a

    .line 434
    :cond_13
    iput-boolean v11, v15, Lcom/android/server/am/ProcessRecord;->mWasForceStopped:Z

    .line 435
    .line 436
    goto :goto_a

    .line 437
    :cond_14
    if-eqz v2, :cond_15

    .line 438
    .line 439
    move v2, v14

    .line 440
    goto :goto_9

    .line 441
    :cond_15
    move v2, v11

    .line 442
    :goto_9
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 443
    .line 444
    iput v2, v3, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    .line 445
    .line 446
    :cond_16
    :goto_a
    const/16 v2, -0x320

    .line 447
    .line 448
    const/16 v3, 0x9

    .line 449
    .line 450
    if-nez p3, :cond_17

    .line 451
    .line 452
    if-nez p5, :cond_17

    .line 453
    .line 454
    if-nez v13, :cond_17

    .line 455
    .line 456
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 457
    .line 458
    and-int/2addr v4, v3

    .line 459
    if-ne v4, v3, :cond_17

    .line 460
    .line 461
    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 462
    .line 463
    invoke-static {v12, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 464
    .line 465
    .line 466
    move-result v4

    .line 467
    if-eqz v4, :cond_17

    .line 468
    .line 469
    invoke-virtual {v1, v14}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 470
    .line 471
    .line 472
    iput v14, v1, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 473
    .line 474
    iput-boolean v11, v15, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 475
    .line 476
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 477
    .line 478
    iput-boolean v11, v4, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    .line 479
    .line 480
    iput v2, v1, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 481
    .line 482
    :cond_17
    if-eqz p3, :cond_18

    .line 483
    .line 484
    if-eqz p4, :cond_18

    .line 485
    .line 486
    const/16 v4, -0x2bc

    .line 487
    .line 488
    iput v4, v1, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 489
    .line 490
    :cond_18
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 491
    .line 492
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 493
    .line 494
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    sget-boolean v4, Landroid/os/Build;->IS_USER:Z

    .line 498
    .line 499
    if-eqz v4, :cond_19

    .line 500
    .line 501
    goto :goto_b

    .line 502
    :cond_19
    const-string/jumbo v4, "com.android.systemui"

    .line 503
    .line 504
    .line 505
    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 506
    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    if-eqz v4, :cond_1a

    .line 512
    .line 513
    iget v4, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 514
    .line 515
    if-nez v4, :cond_1a

    .line 516
    .line 517
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 518
    .line 519
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 520
    .line 521
    and-int/2addr v4, v3

    .line 522
    if-ne v4, v3, :cond_1a

    .line 523
    .line 524
    iput-boolean v11, v15, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 525
    .line 526
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 527
    .line 528
    iput-boolean v11, v4, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    .line 529
    .line 530
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 531
    .line 532
    iput v2, v4, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 533
    .line 534
    :cond_1a
    :goto_b
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 535
    .line 536
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 537
    .line 538
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    iget-boolean v5, v15, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 542
    .line 543
    if-nez v5, :cond_1b

    .line 544
    .line 545
    iget v5, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 546
    .line 547
    if-nez v5, :cond_1b

    .line 548
    .line 549
    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 550
    .line 551
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 552
    .line 553
    and-int/2addr v5, v3

    .line 554
    if-ne v5, v3, :cond_1b

    .line 555
    .line 556
    iget-object v3, v4, Lcom/android/server/am/ActivityManagerServiceExt;->persistentApps:Ljava/util/ArrayList;

    .line 557
    .line 558
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    if-eqz v3, :cond_1b

    .line 565
    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    const-string v4, "Set as "

    .line 569
    .line 570
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 574
    .line 575
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    const-string v4, "ActivityManagerServiceExt"

    .line 583
    .line 584
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    .line 586
    .line 587
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 588
    .line 589
    invoke-virtual {v3, v14}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 590
    .line 591
    .line 592
    iput v14, v3, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 593
    .line 594
    iput-boolean v11, v15, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 595
    .line 596
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 597
    .line 598
    iput-boolean v11, v4, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    .line 599
    .line 600
    iput v2, v3, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 601
    .line 602
    :cond_1b
    invoke-virtual {v0, v15}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 603
    .line 604
    .line 605
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 606
    .line 607
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 608
    .line 609
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 610
    .line 611
    if-eqz v3, :cond_1c

    .line 612
    .line 613
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 614
    .line 615
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 616
    .line 617
    goto :goto_c

    .line 618
    :cond_1c
    const-string v3, ""

    .line 619
    .line 620
    :goto_c
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mCanTmoPkgAvoidForceStop:Z

    .line 621
    .line 622
    if-eqz v0, :cond_1d

    .line 623
    .line 624
    const-string/jumbo v0, "com.tmobile.echolocate"

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    if-eqz v0, :cond_1d

    .line 632
    .line 633
    iput v2, v1, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 634
    .line 635
    :cond_1d
    return-object v15
.end method

.method public final noteAppKill(IIIILjava/lang/String;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 11
    iget v0, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_0

    .line 12
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget p2, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 15
    iput p2, v1, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 17
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter p2

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 21
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 23
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 24
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-lez v0, :cond_0

    .line 2
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 6
    iput v0, p1, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    return-void
.end method

.method public final noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v3, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string/jumbo v3, "com.android.phone"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    :cond_0
    const-string v3, "Watchdog"

    .line 30
    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v5, "Interesting Java process "

    .line 34
    .line 35
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, " died. Pid "

    .line 42
    .line 43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, v0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    .line 76
    .line 77
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 78
    .line 79
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-ne v0, p1, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    .line 88
    .line 89
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 90
    .line 91
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    iput v0, p1, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    .line 98
    .line 99
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 105
    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_4

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 119
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const/16 p1, 0x1007

    .line 129
    .line 130
    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    .line 136
    .line 137
    :goto_0
    return-void

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    throw p0
.end method

.method public final onSystemReady()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/app/Flags;->appStartInfo()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput-boolean v1, v0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 11
    .line 12
    const-string/jumbo v2, "package"

    .line 13
    .line 14
    .line 15
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const-string v5, "android.intent.action.USER_REMOVED"

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v6, v0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 28
    .line 29
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    new-instance v7, Lcom/android/server/am/AppStartInfoTracker$1;

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    invoke-direct {v7, v0, v8}, Lcom/android/server/am/AppStartInfoTracker$1;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    .line 35
    .line 36
    .line 37
    iget-object v8, v0, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-virtual {v6, v7, v1, v4, v8}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    new-instance v1, Landroid/content/IntentFilter;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v6, v0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 54
    .line 55
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    new-instance v7, Lcom/android/server/am/AppStartInfoTracker$1;

    .line 58
    .line 59
    const/4 v8, 0x1

    .line 60
    invoke-direct {v7, v0, v8}, Lcom/android/server/am/AppStartInfoTracker$1;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    .line 61
    .line 62
    .line 63
    iget-object v8, v0, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    invoke-virtual {v6, v7, v1, v4, v8}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v6, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    .line 73
    .line 74
    const/4 v7, 0x1

    .line 75
    invoke-direct {v6, v0, v7}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    .line 87
    .line 88
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 95
    .line 96
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    new-instance v5, Lcom/android/server/am/AppExitInfoTracker$1;

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-direct {v5, p0, v6}, Lcom/android/server/am/AppExitInfoTracker$1;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    .line 102
    .line 103
    .line 104
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 105
    .line 106
    invoke-virtual {v1, v5, v0, v4, v6}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    .line 110
    .line 111
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 121
    .line 122
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$1;

    .line 125
    .line 126
    const/4 v3, 0x1

    .line 127
    invoke-direct {v2, p0, v3}, Lcom/android/server/am/AppExitInfoTracker$1;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    .line 128
    .line 129
    .line 130
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 131
    .line 132
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    .line 140
    .line 141
    const/4 v2, 0x1

    .line 142
    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x20

    .line 7
    .line 8
    if-ltz p3, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    if-ge p3, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v1, -0xa

    .line 22
    .line 23
    if-le p3, v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 29
    .line 30
    .line 31
    const-string v0, ": "

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p2, " ("

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p3}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    .line 45
    .line 46
    .line 47
    move-result-wide p2

    .line 48
    invoke-static {p2, p3}, Lcom/android/server/am/ActivityManagerService;->stringifySize(J)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p0, ")"

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8

    .line 1
    const-string v0, "E|killProcessQuiet pss="

    .line 2
    .line 3
    const-string v1, "B|killProcessQuiet comm="

    .line 4
    .line 5
    const-string v2, "Removing process that hasn\'t been killed: "

    .line 6
    .line 7
    const-string v3, "Removing persistent process that hasn\'t been killed: "

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ltz v4, :cond_5

    .line 16
    .line 17
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 20
    .line 21
    .line 22
    monitor-enter v5

    .line 23
    :try_start_0
    iget-boolean v6, p1, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 24
    .line 25
    if-nez v6, :cond_2

    .line 26
    .line 27
    iget-boolean v6, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    const-string v0, "ActivityManager"

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_0
    const-string v3, "ActivityManager"

    .line 53
    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v3, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    if-lez v2, :cond_1

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, "("

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ")"

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v1, v3}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 107
    .line 108
    iget-wide v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    .line 109
    .line 110
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 111
    .line 112
    invoke-static {v6}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 113
    .line 114
    .line 115
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 116
    .line 117
    iget v7, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 118
    .line 119
    invoke-static {v6, v7}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 120
    .line 121
    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0, v3}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    const-string/jumbo v0, "hasn\'t been killed"

    .line 138
    .line 139
    .line 140
    const/16 v1, 0xd

    .line 141
    .line 142
    const/16 v2, 0x10

    .line 143
    .line 144
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_1
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 149
    .line 150
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 151
    .line 152
    if-ge v4, v0, :cond_3

    .line 153
    .line 154
    add-int/lit8 v0, v0, -0x1

    .line 155
    .line 156
    iput v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 157
    .line 158
    :cond_3
    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 159
    .line 160
    if-ge v4, v0, :cond_4

    .line 161
    .line 162
    add-int/lit8 v0, v0, -0x1

    .line 163
    .line 164
    iput v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 165
    .line 166
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 182
    .line 183
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 184
    .line 185
    if-eqz p1, :cond_6

    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 188
    .line 189
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 197
    .line 198
    iget-object v0, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    add-int/lit8 v0, v0, -0x1

    .line 205
    .line 206
    :goto_3
    if-ltz v0, :cond_7

    .line 207
    .line 208
    iget-object v1, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    .line 209
    .line 210
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Lcom/android/server/am/PlatformCompatCache$CacheItem;

    .line 215
    .line 216
    iget-object v2, v1, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    .line 217
    .line 218
    monitor-enter v2

    .line 219
    :try_start_2
    iget-object v1, v1, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    .line 220
    .line 221
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    monitor-exit v2

    .line 227
    add-int/lit8 v0, v0, -0x1

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :catchall_1
    move-exception p0

    .line 231
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    throw p0

    .line 233
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    :cond_7
    return-void
.end method

.method public final removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v8, p1

    .line 3
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 6
    .line 7
    iget v3, v8, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 8
    .line 9
    invoke-static {v3}, Landroid/content/pm/ASKSManager;->removePackageWithPid(I)V

    .line 10
    .line 11
    .line 12
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 13
    .line 14
    invoke-virtual {v3, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    if-eq v3, v8, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Ignoring remove of inactive process: "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "ActivityManager"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return v9

    .line 43
    :cond_0
    const/4 v3, 0x0

    .line 44
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 50
    .line 51
    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 54
    .line 55
    .line 56
    iget v10, v8, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 57
    .line 58
    const/16 v1, 0x14

    .line 59
    .line 60
    if-lez v10, :cond_1

    .line 61
    .line 62
    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 63
    .line 64
    if-ne v10, v2, :cond_2

    .line 65
    .line 66
    :cond_1
    if-nez v10, :cond_8

    .line 67
    .line 68
    iget-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 69
    .line 70
    if-eqz v2, :cond_8

    .line 71
    .line 72
    :cond_2
    if-lez v10, :cond_4

    .line 73
    .line 74
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 75
    .line 76
    invoke-virtual {v2, v10, p1}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 77
    .line 78
    .line 79
    iput-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    .line 80
    .line 81
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 84
    .line 85
    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 91
    .line 92
    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 95
    .line 96
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 97
    .line 98
    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-boolean v1, v8, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 102
    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 108
    .line 109
    iget v2, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 110
    .line 111
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 112
    .line 113
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 114
    .line 115
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iget v2, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 133
    .line 134
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 135
    .line 136
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 137
    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/os/CustomFrequencyManagerInternal;->removeIsolatedUid(II)V

    .line 139
    .line 140
    .line 141
    :cond_3
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget v2, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->removeIsolatedUid(I)V

    .line 150
    .line 151
    .line 152
    :cond_4
    iget-boolean v1, v8, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 153
    .line 154
    if-eqz v1, :cond_6

    .line 155
    .line 156
    iget-boolean v1, v8, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 157
    .line 158
    if-nez v1, :cond_6

    .line 159
    .line 160
    const/4 v1, 0x1

    .line 161
    if-nez p2, :cond_5

    .line 162
    .line 163
    move v11, v1

    .line 164
    move v12, v9

    .line 165
    goto :goto_0

    .line 166
    :cond_5
    move v12, v1

    .line 167
    move v11, v9

    .line 168
    goto :goto_0

    .line 169
    :cond_6
    move v11, v9

    .line 170
    move v12, v11

    .line 171
    :goto_0
    const/4 v6, 0x1

    .line 172
    move-object v1, p1

    .line 173
    move/from16 v2, p4

    .line 174
    .line 175
    move/from16 v3, p5

    .line 176
    .line 177
    move-object/from16 v4, p6

    .line 178
    .line 179
    move-object/from16 v5, p6

    .line 180
    .line 181
    move/from16 v7, p7

    .line 182
    .line 183
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 184
    .line 185
    .line 186
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 187
    .line 188
    const/4 v6, 0x0

    .line 189
    move v2, v10

    .line 190
    move-object v3, p1

    .line 191
    move v4, v11

    .line 192
    move/from16 v5, p3

    .line 193
    .line 194
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(ILcom/android/server/am/ProcessRecord;ZZZ)V

    .line 195
    .line 196
    .line 197
    if-eqz v11, :cond_7

    .line 198
    .line 199
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 203
    .line 204
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 205
    .line 206
    invoke-virtual {v0, v1, v9}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 207
    .line 208
    .line 209
    :cond_7
    move v9, v12

    .line 210
    goto :goto_1

    .line 211
    :cond_8
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iput-object v1, v8, Lcom/android/server/am/ProcessRecord;->callStack:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    :goto_1
    return v9
.end method

.method public final removeProcessNameLocked(ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 6

    .line 1
    const-string/jumbo v0, "proc "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 5
    .line 6
    invoke-virtual {v1, p3, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    move-object v2, p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v2, v1

    .line 17
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 20
    .line 21
    .line 22
    monitor-enter v3

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    if-ne v1, p2, :cond_2

    .line 26
    .line 27
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 28
    .line 29
    invoke-virtual {v4, p1, p3}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 30
    .line 31
    .line 32
    :cond_2
    if-eqz p2, :cond_3

    .line 33
    .line 34
    iget-boolean p3, p2, Lcom/android/server/am/ProcessRecord;->mIsRemovedName:Z

    .line 35
    .line 36
    if-eqz p3, :cond_3

    .line 37
    .line 38
    const-string p3, "ActivityManager"

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, " already removed. so we skip next process."

    .line 49
    .line 50
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_3
    :goto_1
    const/4 p3, 0x0

    .line 65
    if-eqz v2, :cond_6

    .line 66
    .line 67
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    iget-boolean p2, p2, Lcom/android/server/am/ProcessRecord;->mIsRemovedName:Z

    .line 74
    .line 75
    if-nez p2, :cond_6

    .line 76
    .line 77
    :cond_4
    iget-object p2, v0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 78
    .line 79
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    const/4 p2, 0x1

    .line 83
    iput-boolean p2, v2, Lcom/android/server/am/ProcessRecord;->mIsRemovedName:Z

    .line 84
    .line 85
    iget-object p2, v0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-nez p2, :cond_5

    .line 92
    .line 93
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 94
    .line 95
    const/4 v4, -0x1

    .line 96
    const v5, -0x7fffffff

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v0, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 100
    .line 101
    .line 102
    const/16 p2, 0x7565

    .line 103
    .line 104
    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Lcom/android/server/am/ActiveUids;->remove(I)V

    .line 110
    .line 111
    .line 112
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 113
    .line 114
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    .line 115
    .line 116
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 117
    .line 118
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 119
    .line 120
    iget-object v4, p2, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    .line 121
    .line 122
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    iget-object p2, p2, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 124
    .line 125
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 126
    .line 127
    .line 128
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    :try_start_2
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 130
    .line 131
    const/16 v0, 0x14

    .line 132
    .line 133
    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :catchall_1
    move-exception p0

    .line 138
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    :try_start_4
    throw p0

    .line 140
    :cond_5
    :goto_2
    const/4 p2, 0x0

    .line 141
    iput-object p2, v2, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 142
    .line 143
    :cond_6
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 145
    .line 146
    .line 147
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 148
    .line 149
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 150
    .line 151
    .line 152
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 153
    .line 154
    iget-object p2, p2, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    .line 155
    .line 156
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 157
    .line 158
    .line 159
    if-eqz v2, :cond_9

    .line 160
    .line 161
    iget-boolean p2, v2, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    .line 162
    .line 163
    if-eqz p2, :cond_9

    .line 164
    .line 165
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 166
    .line 167
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 168
    .line 169
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 170
    .line 171
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 172
    .line 173
    iget v3, v3, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    .line 174
    .line 175
    iget-object p2, p2, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    .line 176
    .line 177
    invoke-virtual {p2, v0, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    check-cast p2, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 182
    .line 183
    if-eqz p2, :cond_7

    .line 184
    .line 185
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 186
    .line 187
    iget-object p2, p2, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    .line 188
    .line 189
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 190
    .line 191
    .line 192
    :cond_7
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 193
    .line 194
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 195
    .line 196
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 199
    .line 200
    iget v3, v3, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    .line 201
    .line 202
    invoke-virtual {p2, v0, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    check-cast p2, Landroid/os/AppZygote;

    .line 207
    .line 208
    if-eqz p2, :cond_9

    .line 209
    .line 210
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 211
    .line 212
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_9

    .line 226
    .line 227
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 228
    .line 229
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 230
    .line 231
    const/16 v3, 0x47

    .line 232
    .line 233
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    .line 235
    .line 236
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 237
    .line 238
    if-eqz v0, :cond_8

    .line 239
    .line 240
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_8
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 245
    .line 246
    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 247
    .line 248
    invoke-virtual {p3, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 249
    .line 250
    .line 251
    move-result-object p3

    .line 252
    iput-object p2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    .line 254
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 255
    .line 256
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 257
    .line 258
    const-wide/16 v3, 0x1388

    .line 259
    .line 260
    invoke-virtual {p2, p3, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 261
    .line 262
    .line 263
    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    .line 264
    .line 265
    iget-boolean p2, v2, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 266
    .line 267
    if-eqz p2, :cond_a

    .line 268
    .line 269
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    .line 274
    .line 275
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    check-cast p2, Ljava/util/ArrayList;

    .line 280
    .line 281
    if-eqz p2, :cond_a

    .line 282
    .line 283
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 287
    .line 288
    .line 289
    move-result p2

    .line 290
    if-nez p2, :cond_a

    .line 291
    .line 292
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    .line 293
    .line 294
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 295
    .line 296
    .line 297
    :cond_a
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 298
    .line 299
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    return-object v1

    .line 303
    :goto_4
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 304
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 305
    .line 306
    .line 307
    throw p0
.end method

.method public final scheduleDispatchProcessDiedLocked(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 21
    .line 22
    if-lez p1, :cond_0

    .line 23
    .line 24
    iget v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    .line 25
    .line 26
    if-ne v3, p1, :cond_0

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 47
    .line 48
    const/16 v1, 0x20

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final searchEachLruProcessesLOSP(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-ge v0, p2, :cond_3

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 19
    .line 20
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    add-int/lit8 p2, p2, -0x1

    .line 37
    .line 38
    :goto_1
    if-ltz p2, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 47
    .line 48
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 p0, 0x0

    .line 59
    return-object p0
.end method

.method public final setAllHttpProxy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    :goto_0
    if-ltz v1, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 24
    .line 25
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 26
    .line 27
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 28
    .line 29
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 30
    .line 31
    if-eq v4, v5, :cond_0

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    :try_start_1
    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateHttpProxy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :catch_0
    :try_start_2
    const-string v3, "ActivityManager"

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "Failed to update http proxy for: "

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 58
    .line 59
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {p0}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public setLruProcessServiceStartLSP(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2
    .line 3
    return-void
.end method

.method public final startProcess(Lcom/android/server/am/HostingRecord;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
    .locals 38

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
    move/from16 v15, p3

    .line 8
    .line 9
    move-wide/from16 v13, p12

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const-string v4, "android.app.ActivityThread"

    .line 13
    .line 14
    const-string/jumbo v5, "startProcess"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v6, "startProcess"

    .line 18
    .line 19
    .line 20
    const-string v7, "Start proc: "

    .line 21
    .line 22
    const-wide/16 v11, 0x40

    .line 23
    .line 24
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-static {v11, v12, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v7, "startProcess: asking zygote to start proc"

    .line 42
    .line 43
    .line 44
    invoke-static {v13, v14, v7}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-boolean v7, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 48
    .line 49
    sget-object v7, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 50
    .line 51
    iget-boolean v8, v7, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    const/4 v9, 0x2

    .line 54
    if-eqz v8, :cond_5

    .line 55
    .line 56
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget v10, v1, Lcom/android/server/am/HostingRecord;->mHostingZygote:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    if-ne v10, v3, :cond_0

    .line 64
    .line 65
    :try_start_2
    const-string v10, "(WebviewZygote):"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    move-wide/from16 v34, v11

    .line 70
    .line 71
    goto/16 :goto_17

    .line 72
    .line 73
    :cond_0
    if-ne v10, v9, :cond_1

    .line 74
    .line 75
    const-string v10, "(AppZygote):"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    :try_start_3
    const-string v10, ":"

    .line 79
    .line 80
    :goto_0
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v10, v1, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    sget-boolean v10, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 93
    .line 94
    sget-object v10, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 95
    .line 96
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    sget-boolean v10, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 100
    .line 101
    const-wide/16 v16, 0x5dc

    .line 102
    .line 103
    if-eqz v10, :cond_3

    .line 104
    .line 105
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 106
    .line 107
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 108
    .line 109
    iget v10, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 110
    .line 111
    new-instance v11, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v21

    .line 123
    sget-boolean v6, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    .line 124
    .line 125
    if-eqz v6, :cond_2

    .line 126
    .line 127
    move-wide/from16 v19, v16

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    const-wide/16 v11, 0x7d0

    .line 131
    .line 132
    move-wide/from16 v19, v11

    .line 133
    .line 134
    :goto_1
    move-object/from16 v16, v7

    .line 135
    .line 136
    move/from16 v17, v10

    .line 137
    .line 138
    move-object/from16 v18, v5

    .line 139
    .line 140
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :catchall_1
    move-exception v0

    .line 145
    const-wide/16 v34, 0x40

    .line 146
    .line 147
    goto/16 :goto_17

    .line 148
    .line 149
    :cond_3
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 150
    .line 151
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 152
    .line 153
    iget v10, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 154
    .line 155
    new-instance v11, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v21

    .line 167
    sget-boolean v5, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    .line 168
    .line 169
    if-eqz v5, :cond_4

    .line 170
    .line 171
    move-wide/from16 v19, v16

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_4
    const-wide/16 v11, 0x2710

    .line 175
    .line 176
    move-wide/from16 v19, v11

    .line 177
    .line 178
    :goto_2
    move-object/from16 v16, v7

    .line 179
    .line 180
    move/from16 v17, v10

    .line 181
    .line 182
    move-object/from16 v18, v6

    .line 183
    .line 184
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    :cond_5
    :goto_3
    iget-boolean v12, v1, Lcom/android/server/am/HostingRecord;->mIsTopApp:Z

    .line 188
    .line 189
    const/4 v11, 0x1

    .line 190
    if-eqz v12, :cond_6

    .line 191
    .line 192
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 193
    .line 194
    iput-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 195
    .line 196
    :cond_6
    iget-boolean v5, v0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 197
    .line 198
    if-eqz v5, :cond_8

    .line 199
    .line 200
    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 201
    .line 202
    invoke-static {v5}, Landroid/os/UserHandle;->isApp(I)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-nez v5, :cond_7

    .line 207
    .line 208
    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 209
    .line 210
    invoke-static {v5}, Landroid/os/UserHandle;->isIsolated(I)Z

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-nez v5, :cond_7

    .line 215
    .line 216
    iget-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 217
    .line 218
    if-eqz v5, :cond_8

    .line 219
    .line 220
    :cond_7
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 221
    .line 222
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 223
    .line 224
    const-wide/32 v7, 0x89450c5

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v7, v8, v6}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_8

    .line 232
    .line 233
    move v5, v11

    .line 234
    goto :goto_4

    .line 235
    :cond_8
    const/4 v5, 0x0

    .line 236
    :goto_4
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 237
    .line 238
    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    iget-boolean v7, v2, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 243
    .line 244
    if-eqz v7, :cond_9

    .line 245
    .line 246
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 247
    .line 248
    filled-new-array {v7}, [Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    goto :goto_5

    .line 253
    :cond_9
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 254
    .line 255
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 256
    .line 257
    iget v8, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 258
    .line 259
    invoke-virtual {v6, v8, v7}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    array-length v8, v7

    .line 264
    if-nez v8, :cond_a

    .line 265
    .line 266
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 267
    .line 268
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 269
    .line 270
    filled-new-array {v7}, [Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    :cond_a
    :goto_5
    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 275
    .line 276
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 279
    .line 280
    .line 281
    move-result-object v16

    .line 282
    if-nez v16, :cond_c

    .line 283
    .line 284
    new-instance v11, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v9, "Unknown package "

    .line 287
    .line 288
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    const-string v9, "ActivityManager"

    .line 299
    .line 300
    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    :cond_b
    const/4 v8, 0x0

    .line 304
    goto :goto_6

    .line 305
    :cond_c
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    const-string v9, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    .line 310
    .line 311
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    check-cast v8, Landroid/content/pm/PackageManager$Property;

    .line 316
    .line 317
    if-eqz v8, :cond_d

    .line 318
    .line 319
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    .line 320
    .line 321
    .line 322
    move-result v8

    .line 323
    if-nez v8, :cond_b

    .line 324
    .line 325
    :cond_d
    const/4 v8, 0x1

    .line 326
    :goto_6
    invoke-static {v6, v7, v15}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    if-nez v9, :cond_e

    .line 331
    .line 332
    const/4 v5, 0x0

    .line 333
    :cond_e
    new-instance v11, Landroid/util/ArraySet;

    .line 334
    .line 335
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-direct {v11, v10}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 338
    .line 339
    .line 340
    array-length v10, v7

    .line 341
    const/4 v3, 0x0

    .line 342
    :goto_7
    if-ge v3, v10, :cond_f

    .line 343
    .line 344
    move/from16 v20, v5

    .line 345
    .line 346
    aget-object v5, v7, v3

    .line 347
    .line 348
    invoke-virtual {v11, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    const/4 v5, 0x1

    .line 352
    add-int/2addr v3, v5

    .line 353
    move/from16 v5, v20

    .line 354
    .line 355
    goto :goto_7

    .line 356
    :cond_f
    move/from16 v20, v5

    .line 357
    .line 358
    const/4 v3, 0x0

    .line 359
    new-array v5, v3, [Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {v11, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    check-cast v3, [Ljava/lang/String;

    .line 366
    .line 367
    invoke-static {v6, v3, v15}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    if-nez v3, :cond_10

    .line 372
    .line 373
    const/4 v5, 0x0

    .line 374
    goto :goto_8

    .line 375
    :cond_10
    move/from16 v5, v20

    .line 376
    .line 377
    :goto_8
    const/16 v27, 0x0

    .line 378
    .line 379
    if-nez v8, :cond_11

    .line 380
    .line 381
    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 382
    .line 383
    if-nez v6, :cond_11

    .line 384
    .line 385
    move-object/from16 v3, v27

    .line 386
    .line 387
    move-object v9, v3

    .line 388
    const/16 v24, 0x0

    .line 389
    .line 390
    goto :goto_9

    .line 391
    :cond_11
    move/from16 v24, v5

    .line 392
    .line 393
    :goto_9
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 394
    .line 395
    .line 396
    move-result v11

    .line 397
    const-class v5, Landroid/os/storage/StorageManagerInternal;

    .line 398
    .line 399
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    move-object v10, v5

    .line 404
    check-cast v10, Landroid/os/storage/StorageManagerInternal;

    .line 405
    .line 406
    iget v5, v2, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    .line 407
    .line 408
    iget-boolean v6, v0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 409
    .line 410
    if-eqz v6, :cond_13

    .line 411
    .line 412
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 413
    .line 414
    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    if-eqz v6, :cond_13

    .line 419
    .line 420
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 421
    .line 422
    invoke-virtual {v10, v6}, Landroid/os/storage/StorageManagerInternal;->isExternalStorageService(I)Z

    .line 423
    .line 424
    .line 425
    move-result v6

    .line 426
    if-nez v6, :cond_13

    .line 427
    .line 428
    const/4 v6, 0x4

    .line 429
    if-eq v5, v6, :cond_13

    .line 430
    .line 431
    const/4 v6, 0x3

    .line 432
    if-eq v5, v6, :cond_13

    .line 433
    .line 434
    const/4 v6, 0x2

    .line 435
    if-eq v5, v6, :cond_13

    .line 436
    .line 437
    if-eqz v5, :cond_13

    .line 438
    .line 439
    if-eqz v9, :cond_12

    .line 440
    .line 441
    invoke-virtual {v10, v11}, Landroid/os/storage/StorageManagerInternal;->isFuseMounted(I)Z

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    if-eqz v5, :cond_12

    .line 446
    .line 447
    const/4 v8, 0x1

    .line 448
    const/16 v28, 0x1

    .line 449
    .line 450
    goto :goto_b

    .line 451
    :cond_12
    const/4 v8, 0x1

    .line 452
    iput-boolean v8, v2, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    .line 453
    .line 454
    :goto_a
    const/16 v28, 0x0

    .line 455
    .line 456
    goto :goto_b

    .line 457
    :cond_13
    const/4 v8, 0x1

    .line 458
    goto :goto_a

    .line 459
    :goto_b
    iget-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 460
    .line 461
    if-eqz v5, :cond_14

    .line 462
    .line 463
    move-object/from16 v26, v27

    .line 464
    .line 465
    move-object/from16 v29, v26

    .line 466
    .line 467
    goto :goto_c

    .line 468
    :cond_14
    move-object/from16 v26, v3

    .line 469
    .line 470
    move-object/from16 v29, v9

    .line 471
    .line 472
    :goto_c
    const-string v3, "app_compat"

    .line 473
    .line 474
    const-string v5, "appcompat_sysprop_override_pkgs"

    .line 475
    .line 476
    const-string v6, ""

    .line 477
    .line 478
    invoke-static {v3, v5, v6}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    const-string v5, ","

    .line 483
    .line 484
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 489
    .line 490
    invoke-virtual {v5}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    const/4 v6, 0x0

    .line 495
    :goto_d
    array-length v7, v5

    .line 496
    if-ge v6, v7, :cond_16

    .line 497
    .line 498
    aget-object v7, v5, v6

    .line 499
    .line 500
    invoke-static {v3, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v7

    .line 504
    if-eqz v7, :cond_15

    .line 505
    .line 506
    move/from16 v25, v8

    .line 507
    .line 508
    goto :goto_e

    .line 509
    :cond_15
    const/4 v7, 0x1

    .line 510
    add-int/2addr v6, v7

    .line 511
    goto :goto_d

    .line 512
    :cond_16
    const/16 v25, 0x0

    .line 513
    .line 514
    :goto_e
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 515
    .line 516
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 517
    .line 518
    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 519
    .line 520
    if-eqz v3, :cond_18

    .line 521
    .line 522
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 523
    .line 524
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 525
    .line 526
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 527
    .line 528
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 529
    .line 530
    invoke-interface {v3, v5, v6}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    .line 531
    .line 532
    .line 533
    move-result v3

    .line 534
    if-eqz v3, :cond_17

    .line 535
    .line 536
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 537
    .line 538
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 539
    .line 540
    .line 541
    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 542
    :try_start_4
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 543
    .line 544
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 548
    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 549
    .line 550
    .line 551
    goto :goto_f

    .line 552
    :catchall_2
    move-exception v0

    .line 553
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 554
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 555
    .line 556
    .line 557
    throw v0

    .line 558
    :cond_17
    :goto_f
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 559
    .line 560
    iput-boolean v3, v5, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 561
    .line 562
    :cond_18
    const/4 v9, 0x0

    .line 563
    iput-boolean v9, v2, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    .line 564
    .line 565
    iput-boolean v9, v2, Lcom/android/server/am/ProcessRecord;->mSkipProcessGroupCreation:Z

    .line 566
    .line 567
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    .line 568
    .line 569
    .line 570
    move-result-wide v30

    .line 571
    iget v3, v1, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    .line 572
    .line 573
    const/4 v5, 0x1

    .line 574
    if-ne v3, v5, :cond_19

    .line 575
    .line 576
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 577
    .line 578
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 579
    .line 580
    iget v12, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 581
    .line 582
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 583
    .line 584
    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 585
    .line 586
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 587
    .line 588
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 589
    .line 590
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    .line 591
    .line 592
    new-instance v8, Ljava/lang/StringBuilder;

    .line 593
    .line 594
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .line 596
    .line 597
    const-string/jumbo v9, "seq="

    .line 598
    .line 599
    .line 600
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    move-object/from16 v18, v6

    .line 604
    .line 605
    move-object v9, v7

    .line 606
    iget-wide v6, v2, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    .line 607
    .line 608
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v6

    .line 615
    filled-new-array {v6}, [Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 619
    const/16 v20, 0x0

    .line 620
    .line 621
    move-object/from16 v21, v3

    .line 622
    .line 623
    move-object v3, v4

    .line 624
    move-object v4, v5

    .line 625
    move/from16 v5, p3

    .line 626
    .line 627
    move/from16 v6, p3

    .line 628
    .line 629
    move-object/from16 v24, v9

    .line 630
    .line 631
    move-object/from16 v7, p4

    .line 632
    .line 633
    const/16 v17, 0x1

    .line 634
    .line 635
    move/from16 v8, p5

    .line 636
    .line 637
    const/16 v16, 0x0

    .line 638
    .line 639
    move/from16 v9, p7

    .line 640
    .line 641
    move-object/from16 v33, v10

    .line 642
    .line 643
    move/from16 v32, v16

    .line 644
    .line 645
    move v10, v12

    .line 646
    move/from16 v36, v11

    .line 647
    .line 648
    move/from16 v12, v17

    .line 649
    .line 650
    const-wide/16 v34, 0x40

    .line 651
    .line 652
    move-object/from16 v11, p8

    .line 653
    .line 654
    move-object/from16 v12, p9

    .line 655
    .line 656
    move-object/from16 v13, p10

    .line 657
    .line 658
    move-object/from16 v14, v24

    .line 659
    .line 660
    move v1, v15

    .line 661
    move-object/from16 v15, v20

    .line 662
    .line 663
    move-object/from16 v16, v18

    .line 664
    .line 665
    move-object/from16 v17, v21

    .line 666
    .line 667
    move-object/from16 v18, v19

    .line 668
    .line 669
    :try_start_8
    invoke-static/range {v3 .. v18}, Landroid/os/Process;->startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    :goto_10
    move/from16 v11, v32

    .line 674
    .line 675
    const/4 v4, 0x1

    .line 676
    goto/16 :goto_11

    .line 677
    .line 678
    :catchall_3
    move-exception v0

    .line 679
    goto/16 :goto_17

    .line 680
    .line 681
    :cond_19
    move/from16 v32, v9

    .line 682
    .line 683
    move-object/from16 v33, v10

    .line 684
    .line 685
    move/from16 v36, v11

    .line 686
    .line 687
    move v1, v15

    .line 688
    const/4 v5, 0x2

    .line 689
    const-wide/16 v34, 0x40

    .line 690
    .line 691
    if-ne v3, v5, :cond_1a

    .line 692
    .line 693
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessList;->createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    invoke-virtual {v3}, Landroid/os/AppZygote;->getProcess()Landroid/os/ChildZygoteProcess;

    .line 698
    .line 699
    .line 700
    move-result-object v3

    .line 701
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 702
    .line 703
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 704
    .line 705
    iget v11, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 706
    .line 707
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 708
    .line 709
    iget-object v15, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 710
    .line 711
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 712
    .line 713
    iget-object v14, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 714
    .line 715
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    .line 716
    .line 717
    new-instance v6, Ljava/lang/StringBuilder;

    .line 718
    .line 719
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    .line 721
    .line 722
    const-string/jumbo v7, "seq="

    .line 723
    .line 724
    .line 725
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    iget-wide v7, v2, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    .line 729
    .line 730
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v6

    .line 737
    filled-new-array {v6}, [Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v37

    .line 741
    const/16 v24, 0x0

    .line 742
    .line 743
    const/16 v25, 0x0

    .line 744
    .line 745
    const/16 v16, 0x0

    .line 746
    .line 747
    const/16 v18, 0x0

    .line 748
    .line 749
    const/16 v23, 0x0

    .line 750
    .line 751
    move/from16 v6, p3

    .line 752
    .line 753
    move/from16 v7, p3

    .line 754
    .line 755
    move-object/from16 v8, p4

    .line 756
    .line 757
    move/from16 v9, p5

    .line 758
    .line 759
    move/from16 v10, p7

    .line 760
    .line 761
    move/from16 v19, v12

    .line 762
    .line 763
    move-object/from16 v12, p8

    .line 764
    .line 765
    move-object/from16 v20, v13

    .line 766
    .line 767
    move-object/from16 v13, p9

    .line 768
    .line 769
    move-object/from16 v17, v14

    .line 770
    .line 771
    move-object/from16 v14, p10

    .line 772
    .line 773
    move-object/from16 v21, v29

    .line 774
    .line 775
    move-object/from16 v22, v26

    .line 776
    .line 777
    move-object/from16 v26, v37

    .line 778
    .line 779
    invoke-virtual/range {v3 .. v26}, Landroid/os/ChildZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    goto :goto_10

    .line 784
    :cond_1a
    move/from16 v19, v12

    .line 785
    .line 786
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 787
    .line 788
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 789
    .line 790
    iget v10, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 791
    .line 792
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 793
    .line 794
    iget-object v14, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 795
    .line 796
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 797
    .line 798
    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 799
    .line 800
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    .line 801
    .line 802
    new-instance v3, Ljava/lang/StringBuilder;

    .line 803
    .line 804
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 805
    .line 806
    .line 807
    const-string/jumbo v6, "seq="

    .line 808
    .line 809
    .line 810
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    iget-wide v6, v2, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    .line 814
    .line 815
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v3

    .line 822
    filled-new-array {v3}, [Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v37

    .line 826
    move-object v3, v4

    .line 827
    move-object v4, v5

    .line 828
    move/from16 v5, p3

    .line 829
    .line 830
    move/from16 v6, p3

    .line 831
    .line 832
    move-object/from16 v7, p4

    .line 833
    .line 834
    move/from16 v8, p5

    .line 835
    .line 836
    move/from16 v9, p7

    .line 837
    .line 838
    move-object/from16 v11, p8

    .line 839
    .line 840
    move-object/from16 v12, p9

    .line 841
    .line 842
    move-object/from16 v20, v13

    .line 843
    .line 844
    move-object/from16 v13, p10

    .line 845
    .line 846
    move-object/from16 v16, v15

    .line 847
    .line 848
    move-object/from16 v15, p11

    .line 849
    .line 850
    move/from16 v17, p6

    .line 851
    .line 852
    move/from16 v18, v19

    .line 853
    .line 854
    move-object/from16 v19, v20

    .line 855
    .line 856
    move-object/from16 v20, v29

    .line 857
    .line 858
    move-object/from16 v21, v26

    .line 859
    .line 860
    move/from16 v22, v24

    .line 861
    .line 862
    move/from16 v23, v28

    .line 863
    .line 864
    move/from16 v24, v25

    .line 865
    .line 866
    move-object/from16 v25, v37

    .line 867
    .line 868
    invoke-static/range {v3 .. v25}, Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    const/4 v4, 0x1

    .line 873
    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    .line 874
    .line 875
    move v11, v4

    .line 876
    :goto_11
    invoke-static {}, Landroid/app/Flags;->appStartInfoTimestamps()Z

    .line 877
    .line 878
    .line 879
    move-result v5

    .line 880
    if-eqz v5, :cond_1b

    .line 881
    .line 882
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 883
    .line 884
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 885
    .line 886
    .line 887
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 888
    .line 889
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 890
    .line 891
    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 892
    .line 893
    move-object/from16 p4, v5

    .line 894
    .line 895
    move/from16 p5, v7

    .line 896
    .line 897
    move/from16 p6, v4

    .line 898
    .line 899
    move-wide/from16 p7, v30

    .line 900
    .line 901
    move-object/from16 p9, v6

    .line 902
    .line 903
    invoke-virtual/range {p4 .. p9}, Lcom/android/server/am/AppStartInfoTracker;->addTimestampToStart(IIJLjava/lang/String;)V

    .line 904
    .line 905
    .line 906
    :cond_1b
    if-nez v11, :cond_1f

    .line 907
    .line 908
    monitor-enter p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 909
    :try_start_9
    iget-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->mSkipProcessGroupCreation:Z

    .line 910
    .line 911
    if-nez v5, :cond_1e

    .line 912
    .line 913
    iget v5, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 914
    .line 915
    invoke-static {v1, v5}, Landroid/os/Process;->createProcessGroup(II)I

    .line 916
    .line 917
    .line 918
    move-result v1

    .line 919
    if-gez v1, :cond_1d

    .line 920
    .line 921
    sget v4, Landroid/system/OsConstants;->ESRCH:I

    .line 922
    .line 923
    neg-int v4, v4

    .line 924
    if-ne v1, v4, :cond_1c

    .line 925
    .line 926
    const-string v1, "ActivityManager"

    .line 927
    .line 928
    new-instance v4, Ljava/lang/StringBuilder;

    .line 929
    .line 930
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    .line 932
    .line 933
    const-string v5, "Unable to create process group for "

    .line 934
    .line 935
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 939
    .line 940
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    const-string v5, " ("

    .line 944
    .line 945
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    .line 947
    .line 948
    iget v5, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 949
    .line 950
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 951
    .line 952
    .line 953
    const-string v5, ")"

    .line 954
    .line 955
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v4

    .line 962
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    .line 964
    .line 965
    goto :goto_12

    .line 966
    :catchall_4
    move-exception v0

    .line 967
    goto :goto_13

    .line 968
    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    .line 969
    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    .line 971
    .line 972
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 973
    .line 974
    .line 975
    const-string v4, "Unable to create process group for "

    .line 976
    .line 977
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 981
    .line 982
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    .line 984
    .line 985
    const-string v4, " ("

    .line 986
    .line 987
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    iget v3, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 991
    .line 992
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    const-string v3, ")"

    .line 996
    .line 997
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 1005
    .line 1006
    .line 1007
    throw v0

    .line 1008
    :cond_1d
    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    .line 1009
    .line 1010
    :cond_1e
    :goto_12
    monitor-exit p2

    .line 1011
    :cond_1f
    move-object/from16 v1, p1

    .line 1012
    .line 1013
    goto :goto_14

    .line 1014
    :goto_13
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1015
    :try_start_a
    throw v0

    .line 1016
    :goto_14
    iget-object v1, v1, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    .line 1017
    .line 1018
    const-string/jumbo v4, "next-top-activity"

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1022
    .line 1023
    .line 1024
    move-result v4

    .line 1025
    if-nez v4, :cond_20

    .line 1026
    .line 1027
    const-string v4, "activelaunch"

    .line 1028
    .line 1029
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1030
    .line 1031
    .line 1032
    move-result v1

    .line 1033
    if-eqz v1, :cond_25

    .line 1034
    .line 1035
    :cond_20
    if-eqz v3, :cond_25

    .line 1036
    .line 1037
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 1038
    .line 1039
    if-nez v1, :cond_22

    .line 1040
    .line 1041
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 1042
    .line 1043
    if-eqz v1, :cond_21

    .line 1044
    .line 1045
    sget-object v27, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 1046
    .line 1047
    :cond_21
    move-object/from16 v1, v27

    .line 1048
    .line 1049
    iput-object v1, v0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 1050
    .line 1051
    :cond_22
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 1052
    .line 1053
    if-eqz v1, :cond_25

    .line 1054
    .line 1055
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 1056
    .line 1057
    if-eqz v4, :cond_24

    .line 1058
    .line 1059
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1060
    .line 1061
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1062
    .line 1063
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v1

    .line 1067
    if-nez v1, :cond_23

    .line 1068
    .line 1069
    move/from16 v10, v32

    .line 1070
    .line 1071
    goto :goto_15

    .line 1072
    :cond_23
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1073
    .line 1074
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1075
    .line 1076
    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1077
    .line 1078
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;I)Z

    .line 1079
    .line 1080
    .line 1081
    move-result v10

    .line 1082
    :goto_15
    if-nez v10, :cond_25

    .line 1083
    .line 1084
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 1085
    .line 1086
    iget v1, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 1087
    .line 1088
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    .line 1089
    .line 1090
    .line 1091
    goto :goto_16

    .line 1092
    :cond_24
    iget v0, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 1093
    .line 1094
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    .line 1095
    .line 1096
    .line 1097
    :cond_25
    :goto_16
    if-eqz v28, :cond_26

    .line 1098
    .line 1099
    check-cast v29, Landroid/util/ArrayMap;

    .line 1100
    .line 1101
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v0

    .line 1105
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1106
    .line 1107
    move-object/from16 v5, v33

    .line 1108
    .line 1109
    move/from16 v2, v36

    .line 1110
    .line 1111
    invoke-virtual {v5, v2, v0, v1}, Landroid/os/storage/StorageManagerInternal;->prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z

    .line 1112
    .line 1113
    .line 1114
    :cond_26
    const-string/jumbo v0, "startProcess: returned from zygote!"

    .line 1115
    .line 1116
    .line 1117
    move-wide/from16 v1, p12

    .line 1118
    .line 1119
    invoke-static {v1, v2, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1120
    .line 1121
    .line 1122
    invoke-static/range {v34 .. v35}, Landroid/os/Trace;->traceEnd(J)V

    .line 1123
    .line 1124
    .line 1125
    return-object v3

    .line 1126
    :goto_17
    invoke-static/range {v34 .. v35}, Landroid/os/Trace;->traceEnd(J)V

    .line 1127
    .line 1128
    .line 1129
    throw v0
.end method

.method public final startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;ZI)Lcom/android/server/am/ProcessRecord;
    .locals 23

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p5

    move/from16 v13, p8

    move/from16 v14, p18

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    const/4 v5, 0x0

    if-nez v13, :cond_2

    .line 203
    iget v3, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v3, v0}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 204
    const-string/jumbo v4, "startProcess: after getProcessRecord"

    invoke-static {v6, v7, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    and-int/lit8 v4, p4, 0x4

    if-eqz v4, :cond_1

    .line 205
    iget-object v4, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v15, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 206
    iget-object v4, v4, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 207
    invoke-virtual {v4, v0, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v5

    :cond_0
    move-wide/from16 v17, v6

    goto :goto_0

    .line 208
    :cond_1
    iget-object v4, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v15, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 209
    iget-object v5, v4, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 210
    monitor-enter v5

    .line 211
    :try_start_0
    iget-object v13, v4, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v0, v15}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 212
    iget-object v4, v4, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v0, v15}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 213
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    iget-object v4, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v5, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 215
    iget-object v4, v4, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 216
    invoke-virtual {v4, v0, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 217
    iget v4, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 218
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v13, v11, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    filled-new-array {v4, v5, v13}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x7540

    .line 219
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 220
    iget-object v4, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v5, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 221
    iget-object v13, v4, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 222
    monitor-enter v13

    .line 223
    :try_start_1
    new-instance v15, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v15}, Lcom/android/internal/app/ProcessMap;-><init>()V

    move-wide/from16 v17, v6

    .line 224
    iget-object v6, v4, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v15, v6}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 225
    invoke-virtual {v15, v0, v5}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 226
    iput-object v15, v4, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 227
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 228
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v5, 0x0

    .line 229
    iput-boolean v5, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 230
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 231
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    move-wide/from16 v17, v6

    const/4 v3, 0x0

    :cond_3
    :goto_0
    const/4 v13, 0x1

    const/4 v15, -0x1

    const-wide/16 v6, -0x1

    if-eqz v3, :cond_10

    .line 232
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-lez v4, :cond_10

    if-nez p3, :cond_4

    .line 233
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-eqz v4, :cond_5

    .line 234
    :cond_4
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    if-nez v4, :cond_e

    .line 235
    :cond_5
    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v4, v11, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v10, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3, v0, v4, v5, v10}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V

    .line 236
    iget-boolean v0, v3, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v0, :cond_6

    if-eqz p17, :cond_6

    .line 237
    iput-wide v8, v3, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    .line 238
    :cond_6
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    if-nez v4, :cond_7

    if-nez v14, :cond_7

    .line 239
    iput-wide v8, v3, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    :cond_7
    if-nez v0, :cond_8

    if-nez v4, :cond_9

    :cond_8
    if-nez p17, :cond_9

    if-ne v14, v15, :cond_9

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, v3, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 241
    iput-wide v6, v3, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    .line 242
    iput v15, v3, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 243
    iput-wide v6, v3, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    :cond_9
    if-eqz p17, :cond_c

    .line 244
    const-string v0, "activelaunch"

    .line 245
    iget-object v4, v12, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    .line 246
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 247
    iget v0, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-gtz v0, :cond_a

    goto :goto_1

    .line 248
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/16 v6, 0x8

    .line 249
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/16 v7, 0x66

    .line 250
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 251
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    .line 252
    invoke-static {v6, v7}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v4, 0xfa

    cmp-long v4, v6, v4

    if-lez v4, :cond_b

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SLOW LMKD LAUNCH PID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms for pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ActivityManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_b
    :goto_1
    iput-boolean v13, v3, Lcom/android/server/am/ProcessRecord;->isForKeeping:Z

    .line 256
    iput-wide v1, v3, Lcom/android/server/am/ProcessRecord;->appKeepingTime:J

    :cond_c
    if-ne v14, v13, :cond_d

    .line 257
    const-string v0, "IpmLaunch"

    .line 258
    iget-object v1, v12, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 260
    iput v14, v3, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 261
    :cond_d
    const-string/jumbo v0, "startProcess: done, added package to proc"

    move-wide/from16 v4, v17

    invoke-static {v4, v5, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    return-object v3

    :cond_e
    move-wide/from16 v4, v17

    const/16 v16, 0x0

    .line 262
    const-string/jumbo v1, "startProcess: bad proc running, killing"

    invoke-static {v4, v5, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 263
    iget v1, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 264
    iget v2, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 265
    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 266
    const-string/jumbo v1, "startProcess: done killing old proc"

    invoke-static {v4, v5, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 267
    iget-boolean v1, v3, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v1, :cond_f

    .line 268
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is attached to a previous process"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 269
    :cond_f
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is attached to a previous process"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move/from16 v7, p8

    move-object v15, v3

    move-object/from16 v3, v16

    goto :goto_4

    :cond_10
    move-wide/from16 v4, v17

    const/16 v16, 0x0

    move/from16 v7, p8

    if-nez v7, :cond_13

    .line 270
    iget-object v1, v10, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget v2, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_12

    if-eqz v3, :cond_11

    if-eq v3, v1, :cond_11

    .line 271
    iput-object v1, v3, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 272
    iput-object v3, v1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    goto :goto_3

    :cond_11
    move-object/from16 v3, v16

    .line 273
    :goto_3
    const-string v2, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is attached to a previous process "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget v15, v1, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    .line 275
    invoke-static {v6, v15, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_12
    move-object v15, v1

    goto :goto_4

    :cond_13
    move-object/from16 v15, v16

    :goto_4
    if-nez v3, :cond_1c

    .line 276
    const-string/jumbo v1, "startProcess: creating new process record"

    invoke-static {v4, v5, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-wide/from16 v19, v4

    move/from16 v4, p8

    move/from16 v5, p9

    move-wide/from16 v21, v19

    move/from16 v6, p10

    move v13, v7

    move/from16 v7, p11

    move-object/from16 v18, v15

    move-wide v14, v8

    move-object/from16 v8, p12

    move-object/from16 v9, p5

    .line 277
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-nez v1, :cond_14

    .line 278
    const-string v1, "ActivityManager"

    const-string v2, "Failed making new process record for "

    const-string v3, "/"

    .line 279
    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    iget v2, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isolated="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_14
    if-eqz p17, :cond_16

    .line 281
    const-string v0, "activelaunch"

    .line 282
    iget-object v2, v12, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 285
    iput-wide v14, v1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    :cond_15
    const-wide/16 v2, -0x1

    goto :goto_5

    .line 286
    :cond_16
    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    const-wide/16 v2, -0x1

    .line 288
    iput-wide v2, v1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    .line 289
    :goto_5
    const-string v0, "IpmLaunch"

    .line 290
    iget-object v4, v12, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    .line 291
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move/from16 v0, p18

    move-wide v4, v14

    .line 292
    iput v0, v1, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 293
    iput-wide v4, v1, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    goto :goto_6

    :cond_17
    const/4 v0, -0x1

    .line 294
    iput v0, v1, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 295
    iput-wide v2, v1, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 296
    :goto_6
    iget-object v0, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 297
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_18
    move-object/from16 v5, v16

    :goto_7
    if-nez p3, :cond_19

    .line 298
    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 299
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 300
    :cond_19
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 301
    invoke-static {v3}, Landroid/os/UserHandle;->semGetUserId(I)I

    move-result v3

    const-wide/16 v4, 0x0

    .line 302
    invoke-interface {v0, v2, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_9

    .line 303
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 304
    :goto_9
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    move-object/from16 v5, v16

    :goto_b
    if-eqz v5, :cond_1a

    .line 305
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v0, v11, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 306
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iput-object v0, v11, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 307
    :cond_1a
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    move-object/from16 v2, p16

    .line 308
    iput-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    move-object/from16 v2, p14

    .line 309
    iput-object v2, v1, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    move-object/from16 v2, p15

    .line 310
    iput-object v2, v1, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    if-eqz v18, :cond_1b

    move-object/from16 v3, v18

    .line 311
    iput-object v3, v1, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 312
    iput-object v1, v3, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 313
    :cond_1b
    const-string/jumbo v0, "startProcess: done creating new process record"

    move-wide/from16 v8, v21

    invoke-static {v8, v9, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object v0, v1

    goto :goto_c

    :cond_1c
    move-wide v8, v4

    .line 314
    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v1, v11, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V

    .line 315
    const-string/jumbo v0, "startProcess: added package to existing proc"

    invoke-static {v8, v9, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object v0, v3

    .line 316
    :goto_c
    iget-object v1, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v1, :cond_1e

    iget-object v1, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 317
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ActivityManagerService;->isAllowedWhileBooting(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1e

    if-nez p7, :cond_1e

    .line 318
    iget-object v1, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 319
    iget-object v1, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_1d
    const-string/jumbo v1, "startProcess: returning with proc on hold"

    invoke-static {v8, v9, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    return-object v0

    .line 321
    :cond_1e
    const-string/jumbo v1, "startProcess: stepping in to startProcess"

    invoke-static {v8, v9, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v7, p13

    .line 322
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z

    move-result v1

    .line 323
    const-string/jumbo v2, "startProcess: done starting proc!"

    invoke-static {v8, v9, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    if-eqz v1, :cond_1f

    move-object v5, v0

    goto :goto_d

    :cond_1f
    move-object/from16 v5, v16

    :goto_d
    return-object v5
.end method

.method public final startProcessLocked(Lcom/android/server/am/HostingRecord;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 16

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    const/4 v14, 0x1

    .line 1
    iput-boolean v14, v3, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v3, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 3
    iget-object v4, v2, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v4

    .line 4
    :try_start_0
    iput-boolean v1, v3, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 5
    iput-boolean v1, v3, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 7
    iput-boolean v14, v3, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    .line 8
    iput-boolean v1, v3, Lcom/android/server/am/ProcessRecord;->mTGLCallbackPosted:Z

    .line 9
    iget-wide v4, v3, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 10
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startProcessLocked processName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with non-zero startSeq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-wide v5, v3, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    .line 12
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    iget v0, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eqz v0, :cond_1

    .line 15
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startProcessLocked processName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with non-zero pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v5, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 19
    iput-object v0, v3, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    .line 20
    iput-object v0, v3, Lcom/android/server/am/ProcessRecord;->mLoggableCompatChanges:[J

    .line 21
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-eqz v0, :cond_a

    .line 22
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 23
    iget-object v0, v0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance v5, Landroid/util/LongArray;

    invoke-direct {v5}, Landroid/util/LongArray;-><init>()V

    .line 26
    iget-object v6, v0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/compat/CompatChange;

    .line 27
    iget-object v8, v0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v7, v4, v8}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 28
    invoke-virtual {v7}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroid/util/LongArray;->add(J)V

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {v5}, Landroid/util/LongArray;->toArray()[J

    move-result-object v0

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 31
    iput-object v0, v3, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    .line 32
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 33
    iget-object v0, v0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    new-instance v5, Landroid/util/LongArray;

    iget-object v6, v0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/LongArray;-><init>(I)V

    .line 36
    iget-object v6, v0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/compat/CompatChange;

    .line 37
    invoke-virtual {v7}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v8

    .line 38
    iget v10, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 39
    invoke-virtual {v7}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 40
    invoke-virtual {v7}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v11

    add-int/lit8 v12, v11, -0x1

    :cond_5
    add-int/2addr v12, v14

    if-gtz v12, :cond_7

    :cond_6
    move v10, v1

    goto :goto_2

    :cond_7
    const/16 v11, 0x2710

    if-eq v12, v11, :cond_8

    if-ne v12, v10, :cond_6

    :cond_8
    move v10, v14

    .line 41
    :goto_2
    iget-object v11, v0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v7, v4, v11}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v10, :cond_4

    .line 42
    invoke-virtual {v5, v8, v9}, Landroid/util/LongArray;->add(J)V

    goto :goto_1

    .line 43
    :cond_9
    invoke-virtual {v5}, Landroid/util/LongArray;->toArray()[J

    move-result-object v0

    .line 44
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 45
    iput-object v0, v3, Lcom/android/server/am/ProcessRecord;->mLoggableCompatChanges:[J

    .line 46
    :cond_a
    iget-wide v4, v2, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    const-wide/16 v6, 0x1

    add-long v11, v4, v6

    iput-wide v11, v2, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 47
    iput-wide v11, v3, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    move/from16 v0, p3

    .line 48
    iput v0, v3, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    move-object/from16 v4, p1

    .line 49
    iput-object v4, v3, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    move-object/from16 v5, p8

    .line 50
    iput-object v5, v3, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    move-wide/from16 v6, p12

    .line 51
    iput-wide v6, v3, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    move-wide/from16 v8, p14

    .line 52
    iput-wide v8, v3, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    if-nez p11, :cond_c

    .line 53
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 54
    invoke-static {v8}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    goto :goto_3

    :cond_b
    move v8, v1

    goto :goto_4

    :cond_c
    :goto_3
    move v8, v14

    .line 55
    :goto_4
    iput-boolean v8, v3, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    .line 56
    iget-object v9, v3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 57
    iput-boolean v8, v9, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    .line 58
    iget-object v8, v2, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v11, v12, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 59
    iget-object v8, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v9, :cond_d

    .line 60
    iget-object v0, v8, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    new-instance v15, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;

    const/4 v13, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v14

    .line 61
    :cond_d
    :try_start_1
    invoke-virtual/range {p0 .. p13}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 62
    iget v4, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v0, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v5, 0x0

    move-object/from16 p3, p0

    move-object/from16 p4, p2

    move/from16 p5, v4

    move/from16 p6, v0

    move-wide/from16 p7, v11

    move/from16 p9, v5

    invoke-virtual/range {p3 .. p9}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 63
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failure starting process "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    iput-boolean v1, v3, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 65
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    iget v5, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v6, "start failure"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 p3, v0

    move-object/from16 p4, v2

    move/from16 p5, v4

    move/from16 p6, v9

    move/from16 p7, v10

    move/from16 p8, v11

    move/from16 p9, v7

    move/from16 p10, v8

    move/from16 p11, v5

    move-object/from16 p12, v6

    invoke-virtual/range {p3 .. p12}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 66
    :goto_5
    iget v0, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-lez v0, :cond_e

    goto :goto_6

    :cond_e
    move v14, v1

    :goto_6
    return v14

    :catchall_0
    move-exception v0

    .line 67
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public final startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z
    .locals 24

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 68
    const-string v14, "ActivityManager"

    const-string v3, "1"

    .line 69
    iget-boolean v4, v13, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    if-eqz v4, :cond_0

    return v2

    .line 70
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 72
    iget v4, v13, Lcom/android/server/am/ProcessRecord;->mPid:I

    const/4 v10, 0x0

    if-lez v4, :cond_1

    .line 73
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_1

    .line 74
    const-string/jumbo v4, "startProcess: removing from pids map"

    invoke-static {v11, v12, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 75
    iget-object v4, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 76
    iget v5, v13, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 77
    invoke-virtual {v4, v5, v13}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 78
    iput-boolean v10, v13, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    .line 79
    iget-object v4, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5, v13}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 80
    const-string/jumbo v4, "startProcess: done removing from pids map"

    invoke-static {v11, v12, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 81
    invoke-virtual {v13, v10}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    const-wide/16 v4, 0x0

    .line 82
    iput-wide v4, v13, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    .line 83
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 84
    iput v10, v13, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    .line 85
    iget-object v4, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    const-string/jumbo v4, "startProcess: starting to update cpu stats"

    invoke-static {v11, v12, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 87
    iget-object v4, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 88
    const-string/jumbo v4, "startProcess: done updating cpu stats"

    invoke-static {v11, v12, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 89
    :try_start_0
    iget v4, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5

    .line 90
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 91
    :try_start_2
    iget v5, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 92
    iget-boolean v6, v13, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    if-nez v6, :cond_6

    .line 93
    :try_start_3
    const-string/jumbo v6, "startProcess: getting gids from package manager"

    invoke-static {v11, v12, v6}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 94
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 95
    iget-object v8, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    move-wide/from16 v18, v11

    const-wide/32 v10, 0x10000000

    invoke-interface {v6, v8, v10, v11, v9}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;JI)[I

    move-result-object v8

    .line 96
    const-class v9, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManagerInternal;

    .line 97
    iget-object v10, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v5, v10}, Landroid/os/storage/StorageManagerInternal;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v10

    .line 98
    iget-object v11, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v5, v11}, Landroid/os/storage/StorageManagerInternal;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v9

    .line 99
    iget-object v11, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->isAppFreezerExemptInstPkg()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "android.permission.INSTALL_PACKAGES"

    iget-object v12, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 100
    invoke-interface {v6, v11, v12, v4}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is exempt from freezer"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 103
    iput-boolean v2, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    goto :goto_1

    :goto_0
    move-object/from16 v23, v14

    const/16 v20, 0x0

    goto/16 :goto_1a

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_4

    .line 104
    :cond_2
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessList;->checkFreezerExempt(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is exempt from freezer by list"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 107
    iput-boolean v2, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 108
    :cond_3
    :try_start_4
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v4, :cond_5

    iget-object v4, v4, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v4, :cond_5

    .line 109
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_2
    if-ltz v4, :cond_5

    .line 110
    iget-object v6, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v11, v13, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v11, v11, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 111
    invoke-virtual {v11, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget v12, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 112
    check-cast v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 113
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 114
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 115
    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v6, v12, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionGids(ILjava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_4

    .line 116
    array-length v11, v6

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_4

    aget v7, v6, v12

    .line 117
    invoke-static {v8, v7}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v8

    add-int/2addr v12, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 118
    :cond_5
    invoke-static {v10, v5, v8, v9}, Lcom/android/server/am/ProcessList;->computeGidsForProcess(II[IZ)[I

    move-result-object v4

    move v8, v10

    goto :goto_5

    .line 119
    :goto_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6
    move-wide/from16 v18, v11

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 120
    :goto_5
    iput v8, v13, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    .line 121
    const-string/jumbo v6, "startProcess: building args"

    move-wide/from16 v10, v18

    invoke-static {v10, v11, v6}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 122
    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 123
    iget-object v7, v6, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 124
    iget v9, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    if-nez v9, :cond_7

    goto :goto_7

    :cond_7
    if-ne v9, v2, :cond_8

    .line 125
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    if-eqz v7, :cond_8

    .line 126
    iget-object v12, v6, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_6

    :cond_8
    if-ne v9, v1, :cond_9

    .line 127
    iget-object v6, v6, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_9

    :goto_6
    const/4 v5, 0x0

    .line 128
    :cond_9
    :goto_7
    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v1

    if-eqz v6, :cond_a

    move v12, v2

    goto :goto_8

    :cond_a
    const/4 v12, 0x0

    .line 129
    :goto_8
    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v6

    .line 130
    iget-object v7, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v7

    .line 131
    iget-boolean v9, v13, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v9, :cond_c

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 133
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_9

    :cond_b
    const/4 v2, 0x0

    :goto_9
    or-int/2addr v12, v2

    .line 134
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v2

    or-int/2addr v6, v2

    .line 135
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v2

    or-int/2addr v7, v2

    :cond_c
    if-eqz v12, :cond_e

    .line 136
    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v9, "art_verifier_verify_debuggable"

    const/4 v1, 0x1

    invoke-static {v2, v9, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_d

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": ART verification disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x2000303

    goto :goto_a

    :cond_d
    const v1, 0x2000103

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    .line 138
    :goto_a
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-nez v2, :cond_f

    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z

    if-eqz v2, :cond_10

    :cond_f
    or-int/lit8 v1, v1, 0x8

    :cond_10
    if-eqz v6, :cond_11

    const v2, 0x8000

    or-int/2addr v1, v2

    :cond_11
    if-eqz v7, :cond_12

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    .line 139
    :cond_12
    const-string/jumbo v2, "debug.checkjni"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    or-int/2addr v1, v2

    .line 140
    :cond_13
    const-string/jumbo v2, "debug.generate-debug-info"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    const-string/jumbo v7, "true"

    if-nez v6, :cond_14

    :try_start_5
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    or-int/lit8 v1, v1, 0x20

    .line 142
    :cond_15
    const-string/jumbo v2, "dalvik.vm.minidebuginfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    or-int/lit16 v1, v1, 0x800

    .line 144
    :cond_17
    const-string/jumbo v2, "debug.jni.logging"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    or-int/lit8 v1, v1, 0x10

    .line 145
    :cond_18
    const-string/jumbo v2, "debug.assert"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    or-int/lit8 v1, v1, 0x4

    .line 146
    :cond_19
    const-string/jumbo v2, "debug.ignoreappsignalhandler"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    .line 147
    :cond_1a
    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    or-int/lit16 v1, v1, 0xe0

    .line 149
    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    goto :goto_b

    :cond_1b
    const/4 v3, 0x0

    .line 150
    :goto_b
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v2, :cond_1d

    iget-boolean v2, v2, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    if-eqz v2, :cond_1d

    :cond_1c
    or-int/lit16 v1, v1, 0x400

    :cond_1d
    if-nez p4, :cond_1f

    .line 151
    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    .line 152
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    if-nez v2, :cond_1f

    .line 153
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    .line 154
    iget v6, v6, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicy:I

    .line 155
    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->maybeUpdateHiddenApiEnforcementPolicy(I)V

    .line 156
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 157
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v2

    .line 158
    sget v6, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    shl-int v6, v2, v6

    and-int/lit16 v7, v6, 0x3000

    if-ne v7, v6, :cond_1e

    or-int/2addr v1, v6

    if-eqz p5, :cond_1f

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    goto :goto_c

    .line 159
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid API policy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1f
    :goto_c
    const-string/jumbo v2, "persist.device_config.runtime_native.use_app_image_startup_cache"

    const-string v6, ""

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    const-string/jumbo v6, "false"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    :cond_20
    if-eqz v12, :cond_22

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/wrap.sh"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 164
    :try_start_6
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/system/bin/logwrapper "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_e

    :cond_21
    move-object v2, v3

    .line 166
    :goto_d
    :try_start_7
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object/from16 v19, v2

    goto :goto_f

    :goto_e
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 167
    throw v0

    :cond_22
    move-object/from16 v19, v3

    :goto_f
    if-eqz p6, :cond_23

    move-object/from16 v2, p6

    goto :goto_10

    .line 168
    :cond_23
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    :goto_10
    if-nez v2, :cond_24

    .line 169
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    :cond_24
    move-object v9, v2

    .line 170
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v2, :cond_25

    .line 171
    invoke-static {v9}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_11

    :cond_25
    move-object v7, v3

    .line 172
    :goto_11
    iget v2, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    const/16 v6, 0x4d

    if-ne v2, v6, :cond_29

    :try_start_8
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 173
    sget-object v6, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->LOG_DIR:Ljava/io/File;

    if-nez v2, :cond_26

    :goto_12
    const/16 v20, 0x0

    goto :goto_13

    .line 174
    :cond_26
    const-string/jumbo v6, "com.samsung.android.app.mobiledoctor"

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_12

    .line 175
    :cond_27
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 176
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result v20

    :goto_13
    if-eqz v20, :cond_29

    if-nez v4, :cond_28

    const/4 v2, 0x0

    const/4 v12, 0x0

    goto :goto_14

    .line 177
    :cond_28
    array-length v2, v4

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 178
    array-length v3, v4
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v12, 0x0

    :try_start_9
    invoke-static {v4, v12, v2, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    array-length v3, v4

    const-string/jumbo v4, "radio"

    invoke-static {v4}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    :goto_14
    move-object v6, v2

    goto :goto_18

    :goto_15
    move/from16 v20, v12

    :goto_16
    move-object/from16 v23, v14

    goto/16 :goto_1a

    :cond_29
    const/4 v12, 0x0

    goto :goto_17

    :catch_2
    move-exception v0

    const/4 v12, 0x0

    goto :goto_15

    :goto_17
    move-object v6, v4

    .line 180
    :goto_18
    iput-object v6, v13, Lcom/android/server/am/ProcessRecord;->mGids:[I

    .line 181
    iput-object v9, v13, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    .line 182
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 183
    iput-object v9, v2, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    .line 184
    iput-object v7, v13, Lcom/android/server/am/ProcessRecord;->mInstructionSet:Ljava/lang/String;

    .line 185
    iget-object v2, v0, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2a

    .line 186
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 187
    iget-object v3, v0, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    .line 188
    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 189
    iput v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_19

    :catch_3
    move-exception v0

    goto :goto_15

    .line 190
    :cond_2a
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 191
    :goto_19
    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v4, v15, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-static {v2, v3, v7, v4}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v2

    or-int v18, v1, v2

    .line 192
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 193
    const-string v1, "SELinux tag not defined"

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELinux tag not defined for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :cond_2b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->updateSeInfo(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v20
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move v4, v5

    move-object v5, v6

    move/from16 v6, v18

    move-object v0, v7

    move/from16 v7, p3

    move-object/from16 v18, v9

    move-object/from16 v9, v20

    move/from16 v20, v12

    move-wide v11, v10

    move-object/from16 v10, v18

    move-wide/from16 v21, v11

    move-object v11, v0

    move-object/from16 v12, v19

    move-object/from16 v23, v14

    move-wide/from16 v13, v21

    move-wide/from16 v15, v16

    .line 195
    :try_start_a
    invoke-virtual/range {v1 .. v16}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/HostingRecord;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v0

    return v0

    :catch_4
    move-exception v0

    goto :goto_1a

    :catch_5
    move-exception v0

    move/from16 v20, v10

    goto/16 :goto_16

    :catch_6
    move-exception v0

    move/from16 v20, v10

    move-object/from16 v23, v14

    .line 196
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    .line 197
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failure starting process "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v23

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v1, p0

    .line 198
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    const-string/jumbo v10, "start failure"

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v9

    move-object v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    return v20
.end method

.method public final updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_13

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 10
    .line 11
    if-nez v1, :cond_13

    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_a

    .line 18
    .line 19
    :cond_0
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 22
    .line 23
    iget v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    if-lez v1, :cond_6

    .line 28
    .line 29
    iget v0, v0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    .line 30
    .line 31
    move v4, v0

    .line 32
    move v0, p4

    .line 33
    :goto_0
    if-lt p4, p3, :cond_5

    .line 34
    .line 35
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 42
    .line 43
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 44
    .line 45
    iget v7, v6, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 46
    .line 47
    iget v6, v6, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    .line 48
    .line 49
    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 50
    .line 51
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 52
    .line 53
    if-ne v8, p1, :cond_4

    .line 54
    .line 55
    if-ne v7, v1, :cond_4

    .line 56
    .line 57
    if-ne p4, v0, :cond_1

    .line 58
    .line 59
    if-lt v6, v4, :cond_1

    .line 60
    .line 61
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 62
    .line 63
    move v4, v6

    .line 64
    goto :goto_4

    .line 65
    :cond_1
    move v7, p2

    .line 66
    :goto_2
    if-le v7, v0, :cond_3

    .line 67
    .line 68
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 75
    .line 76
    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 77
    .line 78
    iget v8, v8, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    .line 79
    .line 80
    if-gt v6, v8, :cond_2

    .line 81
    .line 82
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v8, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v8, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v0, v0, -0x1

    .line 93
    .line 94
    move v7, v2

    .line 95
    goto :goto_3

    .line 96
    :cond_2
    add-int/lit8 v7, v7, -0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move v7, v3

    .line 100
    :goto_3
    if-nez v7, :cond_4

    .line 101
    .line 102
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    :goto_4
    add-int/lit8 p4, p4, -0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    move p4, v0

    .line 117
    :cond_6
    move p2, p4

    .line 118
    :goto_5
    if-lt p4, p3, :cond_13

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 127
    .line 128
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 129
    .line 130
    iget v4, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 131
    .line 132
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 133
    .line 134
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 135
    .line 136
    if-eq v5, p1, :cond_12

    .line 137
    .line 138
    if-ge p4, p2, :cond_e

    .line 139
    .line 140
    move v5, v3

    .line 141
    move v6, v5

    .line 142
    move v7, v6

    .line 143
    :goto_6
    if-lt p4, p3, :cond_e

    .line 144
    .line 145
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v8, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v8, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    add-int/lit8 p4, p4, -0x1

    .line 156
    .line 157
    if-ge p4, p3, :cond_7

    .line 158
    .line 159
    goto :goto_9

    .line 160
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-nez v8, :cond_b

    .line 173
    .line 174
    iget-boolean v8, v1, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 175
    .line 176
    if-eqz v8, :cond_8

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_8
    iget-boolean v8, v1, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    .line 180
    .line 181
    if-eqz v8, :cond_d

    .line 182
    .line 183
    if-eqz v5, :cond_a

    .line 184
    .line 185
    if-eqz v6, :cond_e

    .line 186
    .line 187
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 188
    .line 189
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 190
    .line 191
    if-eq v6, v8, :cond_9

    .line 192
    .line 193
    goto :goto_9

    .line 194
    :cond_9
    if-eqz v7, :cond_e

    .line 195
    .line 196
    if-eq v7, v4, :cond_d

    .line 197
    .line 198
    goto :goto_9

    .line 199
    :cond_a
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 200
    .line 201
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 202
    .line 203
    move v5, v2

    .line 204
    move v7, v4

    .line 205
    goto :goto_8

    .line 206
    :cond_b
    :goto_7
    if-eqz v5, :cond_c

    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_c
    move v5, v2

    .line 210
    :cond_d
    :goto_8
    add-int/lit8 p2, p2, -0x1

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_e
    :goto_9
    add-int/lit8 p2, p2, -0x1

    .line 214
    .line 215
    if-lt p2, p3, :cond_f

    .line 216
    .line 217
    iget-object p4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p4

    .line 223
    check-cast p4, Lcom/android/server/am/ProcessRecord;

    .line 224
    .line 225
    iget-object p4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 226
    .line 227
    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 228
    .line 229
    if-ne p4, p1, :cond_e

    .line 230
    .line 231
    :cond_f
    if-lt p2, p3, :cond_11

    .line 232
    .line 233
    iget-object p4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p4

    .line 239
    check-cast p4, Lcom/android/server/am/ProcessRecord;

    .line 240
    .line 241
    iget-object p4, p4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 242
    .line 243
    iget p4, p4, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 244
    .line 245
    :cond_10
    add-int/lit8 p2, p2, -0x1

    .line 246
    .line 247
    if-lt p2, p3, :cond_11

    .line 248
    .line 249
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 256
    .line 257
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 258
    .line 259
    iget v1, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 260
    .line 261
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 262
    .line 263
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 264
    .line 265
    if-ne v0, p1, :cond_11

    .line 266
    .line 267
    if-eq v1, p4, :cond_10

    .line 268
    .line 269
    :cond_11
    move p4, p2

    .line 270
    goto/16 :goto_5

    .line 271
    .line 272
    :cond_12
    add-int/lit8 p4, p4, -0x1

    .line 273
    .line 274
    goto/16 :goto_5

    .line 275
    .line 276
    :cond_13
    :goto_a
    return-void
.end method

.method public final updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 1
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    return p4

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-gez p2, :cond_1

    .line 17
    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p2, "Adding dependent process "

    .line 21
    .line 22
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " not on LRU list: "

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " "

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, " from "

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string p1, "ActivityManager"

    .line 57
    .line 58
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return p4

    .line 62
    :cond_1
    if-lt p2, p4, :cond_2

    .line 63
    .line 64
    return p4

    .line 65
    :cond_2
    iget p3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 66
    .line 67
    if-lt p2, p3, :cond_3

    .line 68
    .line 69
    if-ge p4, p3, :cond_3

    .line 70
    .line 71
    return p4

    .line 72
    :cond_3
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    if-lez p4, :cond_4

    .line 78
    .line 79
    add-int/lit8 p4, p4, -0x1

    .line 80
    .line 81
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {p0, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iput p5, p1, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    .line 87
    .line 88
    return p4
.end method

.method public final updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .locals 19

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    const/4 v11, -0x1

    .line 8
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 9
    .line 10
    const/4 v12, 0x1

    .line 11
    add-int/2addr v1, v12

    .line 12
    iput v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v13

    .line 18
    iget-object v15, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 19
    .line 20
    iput-wide v13, v10, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p3, :cond_3

    .line 24
    .line 25
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-boolean v3, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 32
    .line 33
    const-wide/16 v4, -0x1

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    iput-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 38
    .line 39
    iput-wide v4, v10, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    .line 40
    .line 41
    :cond_0
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 46
    .line 47
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    .line 48
    .line 49
    iput-object v3, v9, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 50
    .line 51
    :cond_1
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 56
    .line 57
    iget v7, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 58
    .line 59
    iget-object v3, v3, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v7, v6}, Lcom/android/server/am/BGProtectManager;->appIsPickedProcess(ILjava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-lez v3, :cond_2

    .line 69
    .line 70
    iput v12, v10, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iput v11, v10, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 74
    .line 75
    iput-wide v4, v10, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 76
    .line 77
    :goto_0
    if-lez v2, :cond_4

    .line 78
    .line 79
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 80
    .line 81
    sub-int/2addr v2, v12

    .line 82
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-ne v2, v10, :cond_4

    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 90
    .line 91
    if-lez v2, :cond_4

    .line 92
    .line 93
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 94
    .line 95
    sub-int/2addr v2, v12

    .line 96
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-ne v2, v10, :cond_4

    .line 101
    .line 102
    return-void

    .line 103
    :cond_4
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    iget-boolean v3, v10, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 110
    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    if-ltz v2, :cond_5

    .line 114
    .line 115
    return-void

    .line 116
    :cond_5
    if-ltz v2, :cond_8

    .line 117
    .line 118
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 119
    .line 120
    if-ge v2, v3, :cond_6

    .line 121
    .line 122
    sub-int/2addr v3, v12

    .line 123
    iput v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 124
    .line 125
    :cond_6
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 126
    .line 127
    if-ge v2, v3, :cond_7

    .line 128
    .line 129
    sub-int/2addr v3, v12

    .line 130
    iput v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 131
    .line 132
    :cond_7
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :cond_8
    if-eqz p3, :cond_d

    .line 138
    .line 139
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 146
    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_c

    .line 152
    .line 153
    iget-boolean v2, v15, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 154
    .line 155
    if-nez v2, :cond_c

    .line 156
    .line 157
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 158
    .line 159
    sub-int/2addr v0, v12

    .line 160
    if-ge v2, v0, :cond_c

    .line 161
    .line 162
    :goto_1
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 163
    .line 164
    if-le v0, v2, :cond_a

    .line 165
    .line 166
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 173
    .line 174
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 175
    .line 176
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 177
    .line 178
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 179
    .line 180
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 181
    .line 182
    if-ne v2, v3, :cond_9

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_9
    add-int/2addr v0, v11

    .line 186
    goto :goto_1

    .line 187
    :cond_a
    :goto_2
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v2, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    add-int/lit8 v2, v0, -0x1

    .line 193
    .line 194
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 195
    .line 196
    if-ge v2, v3, :cond_b

    .line 197
    .line 198
    move v2, v3

    .line 199
    :cond_b
    invoke-virtual {v9, v10, v0, v3, v2}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_c
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    add-int/lit8 v2, v0, -0x1

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_d
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 218
    .line 219
    if-eqz v0, :cond_f

    .line 220
    .line 221
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-gt v0, v2, :cond_e

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_e
    move v2, v0

    .line 231
    :goto_3
    if-ltz v2, :cond_f

    .line 232
    .line 233
    if-le v3, v2, :cond_f

    .line 234
    .line 235
    move v3, v2

    .line 236
    :cond_f
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {v0, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    add-int/lit8 v0, v3, -0x1

    .line 242
    .line 243
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 244
    .line 245
    add-int/2addr v2, v12

    .line 246
    iput v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 247
    .line 248
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 249
    .line 250
    add-int/lit8 v4, v2, 0x1

    .line 251
    .line 252
    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 253
    .line 254
    if-le v3, v12, :cond_10

    .line 255
    .line 256
    invoke-virtual {v9, v10, v2, v1, v0}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    .line 257
    .line 258
    .line 259
    :cond_10
    move v1, v0

    .line 260
    move v2, v11

    .line 261
    :goto_4
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 262
    .line 263
    iput v0, v10, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    .line 264
    .line 265
    iget-object v0, v15, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 266
    .line 267
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    sub-int/2addr v0, v12

    .line 272
    move v8, v0

    .line 273
    move/from16 v16, v1

    .line 274
    .line 275
    move/from16 v17, v2

    .line 276
    .line 277
    :goto_5
    if-ltz v8, :cond_13

    .line 278
    .line 279
    iget-object v0, v15, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 280
    .line 281
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    move-object v7, v0

    .line 286
    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 287
    .line 288
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 289
    .line 290
    if-eqz v0, :cond_11

    .line 291
    .line 292
    iget-boolean v1, v7, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 293
    .line 294
    if-nez v1, :cond_11

    .line 295
    .line 296
    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 297
    .line 298
    if-eqz v0, :cond_11

    .line 299
    .line 300
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 301
    .line 302
    if-eqz v0, :cond_11

    .line 303
    .line 304
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    .line 305
    .line 306
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 307
    .line 308
    if-eq v0, v1, :cond_11

    .line 309
    .line 310
    const v0, 0x40000130    # 2.0000725f

    .line 311
    .line 312
    .line 313
    invoke-virtual {v7, v0}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_11

    .line 318
    .line 319
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 320
    .line 321
    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 322
    .line 323
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 324
    .line 325
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 326
    .line 327
    if-nez v0, :cond_11

    .line 328
    .line 329
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 330
    .line 331
    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 332
    .line 333
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 334
    .line 335
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 336
    .line 337
    iget-boolean v0, v0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    .line 338
    .line 339
    if-eqz v0, :cond_12

    .line 340
    .line 341
    if-ltz v17, :cond_11

    .line 342
    .line 343
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 344
    .line 345
    const-string/jumbo v6, "service connection"

    .line 346
    .line 347
    .line 348
    move-object/from16 v0, p0

    .line 349
    .line 350
    move-wide v2, v13

    .line 351
    move/from16 v4, v17

    .line 352
    .line 353
    move/from16 v18, v8

    .line 354
    .line 355
    move-object/from16 v8, p1

    .line 356
    .line 357
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    .line 358
    .line 359
    .line 360
    move-result v17

    .line 361
    goto :goto_6

    .line 362
    :cond_11
    move/from16 v18, v8

    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_12
    move/from16 v18, v8

    .line 366
    .line 367
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 368
    .line 369
    const-string/jumbo v6, "service connection"

    .line 370
    .line 371
    .line 372
    move-object/from16 v0, p0

    .line 373
    .line 374
    move-wide v2, v13

    .line 375
    move/from16 v4, v16

    .line 376
    .line 377
    move-object/from16 v8, p1

    .line 378
    .line 379
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    .line 380
    .line 381
    .line 382
    move-result v16

    .line 383
    :goto_6
    add-int/lit8 v8, v18, -0x1

    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_13
    iget-object v15, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 387
    .line 388
    iget-object v0, v15, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    sub-int/2addr v0, v12

    .line 395
    move v12, v0

    .line 396
    move/from16 v4, v16

    .line 397
    .line 398
    :goto_7
    if-ltz v12, :cond_15

    .line 399
    .line 400
    iget-object v0, v15, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 401
    .line 402
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 407
    .line 408
    iget-object v7, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 409
    .line 410
    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 411
    .line 412
    if-eqz v0, :cond_14

    .line 413
    .line 414
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    .line 415
    .line 416
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 417
    .line 418
    if-eq v1, v2, :cond_14

    .line 419
    .line 420
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 421
    .line 422
    if-nez v0, :cond_14

    .line 423
    .line 424
    iget-object v1, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 425
    .line 426
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 427
    .line 428
    const-string/jumbo v6, "provider reference"

    .line 429
    .line 430
    .line 431
    move-object/from16 v0, p0

    .line 432
    .line 433
    move-wide v2, v13

    .line 434
    move-object/from16 v8, p1

    .line 435
    .line 436
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    :cond_14
    add-int/2addr v12, v11

    .line 441
    goto :goto_7

    .line 442
    :cond_15
    return-void
.end method

.method public final updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    if-nez p3, :cond_2

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget p3, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 27
    .line 28
    if-nez p3, :cond_3

    .line 29
    .line 30
    iget-boolean p3, p1, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 31
    .line 32
    if-nez p3, :cond_3

    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 36
    .line 37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 38
    .line 39
    .line 40
    monitor-enter p3

    .line 41
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    .line 42
    .line 43
    .line 44
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final updateOomLevels(IIZ)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-wide v2, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 5
    .line 6
    const-wide/16 v4, 0x15e

    .line 7
    .line 8
    sub-long v4, v2, v4

    .line 9
    .line 10
    long-to-float v4, v4

    .line 11
    const/high16 v5, 0x43af0000    # 350.0f

    .line 12
    .line 13
    div-float/2addr v4, v5

    .line 14
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-nez v5, :cond_1

    .line 19
    .line 20
    const-wide/16 v5, 0x600

    .line 21
    .line 22
    cmp-long v5, v2, v5

    .line 23
    .line 24
    const v6, 0xfa000

    .line 25
    .line 26
    .line 27
    if-gez v5, :cond_0

    .line 28
    .line 29
    mul-int v5, p1, p2

    .line 30
    .line 31
    if-lt v5, v6, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const v2, 0x5dc00

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const-wide/16 v4, 0x12c

    .line 39
    .line 40
    sub-long/2addr v2, v4

    .line 41
    long-to-float v2, v2

    .line 42
    const v3, 0x44b54000    # 1450.0f

    .line 43
    .line 44
    .line 45
    div-float v4, v2, v3

    .line 46
    .line 47
    const v2, 0x25800

    .line 48
    .line 49
    .line 50
    const v6, 0x1fa400

    .line 51
    .line 52
    .line 53
    :goto_1
    mul-int v3, p1, p2

    .line 54
    .line 55
    int-to-float v5, v3

    .line 56
    int-to-float v7, v2

    .line 57
    sub-float/2addr v5, v7

    .line 58
    sub-int/2addr v6, v2

    .line 59
    int-to-float v2, v6

    .line 60
    div-float/2addr v5, v2

    .line 61
    cmpl-float v2, v4, v5

    .line 62
    .line 63
    if-lez v2, :cond_2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    move v4, v5

    .line 67
    :goto_2
    const/4 v2, 0x0

    .line 68
    cmpg-float v5, v4, v2

    .line 69
    .line 70
    if-gez v5, :cond_3

    .line 71
    .line 72
    :goto_3
    move v4, v2

    .line 73
    goto :goto_4

    .line 74
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 75
    .line 76
    cmpl-float v5, v4, v2

    .line 77
    .line 78
    if-lez v5, :cond_4

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    :goto_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const v5, 0x10e00d7

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    const v6, 0x10e00d6

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    sget v6, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    .line 104
    .line 105
    const/high16 v7, -0x40800000    # -1.0f

    .line 106
    .line 107
    cmpl-float v7, v6, v7

    .line 108
    .line 109
    if-eqz v7, :cond_5

    .line 110
    .line 111
    move v4, v6

    .line 112
    :cond_5
    sget-object v6, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 113
    .line 114
    array-length v6, v6

    .line 115
    const/4 v7, 0x0

    .line 116
    if-lez v6, :cond_6

    .line 117
    .line 118
    move v6, v1

    .line 119
    goto :goto_5

    .line 120
    :cond_6
    move v6, v7

    .line 121
    :goto_5
    move v8, v7

    .line 122
    :goto_6
    iget-object v9, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 123
    .line 124
    array-length v10, v9

    .line 125
    const/4 v11, 0x2

    .line 126
    const/4 v12, 0x4

    .line 127
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 128
    .line 129
    if-ge v8, v10, :cond_9

    .line 130
    .line 131
    iget-object v9, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 132
    .line 133
    aget v9, v9, v8

    .line 134
    .line 135
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 136
    .line 137
    aget v10, v10, v8

    .line 138
    .line 139
    if-eqz v6, :cond_8

    .line 140
    .line 141
    if-ne v8, v12, :cond_7

    .line 142
    .line 143
    mul-int/lit8 v10, v10, 0x3

    .line 144
    .line 145
    div-int/2addr v10, v11

    .line 146
    goto :goto_7

    .line 147
    :cond_7
    const/4 v11, 0x5

    .line 148
    if-ne v8, v11, :cond_8

    .line 149
    .line 150
    mul-int/lit8 v10, v10, 0x7

    .line 151
    .line 152
    div-int/2addr v10, v12

    .line 153
    :cond_8
    :goto_7
    int-to-float v11, v9

    .line 154
    sub-int/2addr v10, v9

    .line 155
    int-to-float v9, v10

    .line 156
    mul-float/2addr v9, v4

    .line 157
    add-float/2addr v9, v11

    .line 158
    float-to-int v9, v9

    .line 159
    aput v9, v13, v8

    .line 160
    .line 161
    add-int/2addr v8, v1

    .line 162
    goto :goto_6

    .line 163
    :cond_9
    if-ltz v5, :cond_a

    .line 164
    .line 165
    move v4, v7

    .line 166
    :goto_8
    array-length v6, v9

    .line 167
    if-ge v4, v6, :cond_a

    .line 168
    .line 169
    int-to-float v6, v5

    .line 170
    aget v8, v13, v4

    .line 171
    .line 172
    int-to-float v8, v8

    .line 173
    mul-float/2addr v6, v8

    .line 174
    array-length v8, v9

    .line 175
    sub-int/2addr v8, v1

    .line 176
    aget v8, v13, v8

    .line 177
    .line 178
    int-to-float v8, v8

    .line 179
    div-float/2addr v6, v8

    .line 180
    float-to-int v6, v6

    .line 181
    aput v6, v13, v4

    .line 182
    .line 183
    add-int/2addr v4, v1

    .line 184
    goto :goto_8

    .line 185
    :cond_a
    if-eqz v2, :cond_c

    .line 186
    .line 187
    move v4, v7

    .line 188
    :goto_9
    array-length v5, v9

    .line 189
    if-ge v4, v5, :cond_c

    .line 190
    .line 191
    aget v5, v13, v4

    .line 192
    .line 193
    int-to-float v6, v2

    .line 194
    int-to-float v8, v5

    .line 195
    mul-float/2addr v6, v8

    .line 196
    array-length v8, v9

    .line 197
    sub-int/2addr v8, v1

    .line 198
    aget v8, v13, v8

    .line 199
    .line 200
    int-to-float v8, v8

    .line 201
    div-float/2addr v6, v8

    .line 202
    float-to-int v6, v6

    .line 203
    add-int/2addr v5, v6

    .line 204
    aput v5, v13, v4

    .line 205
    .line 206
    if-gez v5, :cond_b

    .line 207
    .line 208
    aput v7, v13, v4

    .line 209
    .line 210
    :cond_b
    add-int/2addr v4, v1

    .line 211
    goto :goto_9

    .line 212
    :cond_c
    const/16 v2, 0x3e7

    .line 213
    .line 214
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    .line 215
    .line 216
    .line 217
    move-result-wide v4

    .line 218
    const-wide/16 v14, 0x400

    .line 219
    .line 220
    div-long/2addr v4, v14

    .line 221
    const-wide/16 v16, 0x3

    .line 222
    .line 223
    div-long v4, v4, v16

    .line 224
    .line 225
    iput-wide v4, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 226
    .line 227
    mul-int/lit8 v3, v3, 0xc

    .line 228
    .line 229
    div-int/lit16 v3, v3, 0x400

    .line 230
    .line 231
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    const v4, 0x10e00b1

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    const v5, 0x10e00b0

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-ltz v4, :cond_d

    .line 254
    .line 255
    move v3, v4

    .line 256
    :cond_d
    if-eqz v2, :cond_e

    .line 257
    .line 258
    add-int/2addr v3, v2

    .line 259
    if-gez v3, :cond_e

    .line 260
    .line 261
    move v3, v7

    .line 262
    :cond_e
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 263
    .line 264
    if-nez v2, :cond_f

    .line 265
    .line 266
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    .line 267
    .line 268
    iput-object v2, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 269
    .line 270
    :cond_f
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 271
    .line 272
    if-nez v2, :cond_10

    .line 273
    .line 274
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 275
    .line 276
    iget-object v2, v2, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 277
    .line 278
    iput-object v2, v0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 279
    .line 280
    :cond_10
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 281
    .line 282
    sget-wide v4, Lcom/android/server/bgslotmanager/CustomEFKManager;->mTotalMemMb:J

    .line 283
    .line 284
    const-wide/16 v16, 0xc00

    .line 285
    .line 286
    cmp-long v6, v4, v16

    .line 287
    .line 288
    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    if-ltz v6, :cond_11

    .line 294
    .line 295
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    if-nez v6, :cond_11

    .line 303
    .line 304
    mul-long v7, v4, v14

    .line 305
    .line 306
    long-to-double v6, v7

    .line 307
    mul-double v6, v6, v16

    .line 308
    .line 309
    double-to-int v6, v6

    .line 310
    goto :goto_a

    .line 311
    :cond_11
    const/4 v6, 0x0

    .line 312
    :goto_a
    iget v7, v2, Lcom/android/server/bgslotmanager/CustomEFKManager;->addBonusEFK:I

    .line 313
    .line 314
    if-ne v7, v1, :cond_12

    .line 315
    .line 316
    mul-long/2addr v4, v14

    .line 317
    long-to-double v4, v4

    .line 318
    mul-double v4, v4, v16

    .line 319
    .line 320
    double-to-int v2, v4

    .line 321
    goto :goto_b

    .line 322
    :cond_12
    if-ne v7, v11, :cond_13

    .line 323
    .line 324
    iget v2, v2, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_BonusEFK:I

    .line 325
    .line 326
    goto :goto_b

    .line 327
    :cond_13
    if-nez v7, :cond_14

    .line 328
    .line 329
    const/4 v2, 0x0

    .line 330
    goto :goto_b

    .line 331
    :cond_14
    move v2, v6

    .line 332
    :goto_b
    add-int/2addr v3, v2

    .line 333
    const-string/jumbo v2, "none"

    .line 334
    .line 335
    .line 336
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-nez v2, :cond_15

    .line 343
    .line 344
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    .line 345
    .line 346
    const-string v4, ","

    .line 347
    .line 348
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    const-string/jumbo v5, "updateOomLevels using LMKArray "

    .line 355
    .line 356
    .line 357
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    sget-object v5, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    .line 361
    .line 362
    const-string v6, "ActivityManager"

    .line 363
    .line 364
    invoke-static {v4, v5, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    const/4 v4, 0x0

    .line 368
    :goto_c
    :try_start_0
    array-length v5, v2

    .line 369
    if-ge v4, v5, :cond_15

    .line 370
    .line 371
    aget-object v5, v2, v4

    .line 372
    .line 373
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    mul-int/2addr v5, v12

    .line 378
    aput v5, v13, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .line 380
    add-int/2addr v4, v1

    .line 381
    goto :goto_c

    .line 382
    :catch_0
    const-string/jumbo v2, "updateOomLevels, LMKArray NumberFormatException "

    .line 383
    .line 384
    .line 385
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    :cond_15
    if-eqz p3, :cond_18

    .line 389
    .line 390
    array-length v2, v9

    .line 391
    mul-int/2addr v2, v11

    .line 392
    add-int/2addr v2, v1

    .line 393
    mul-int/2addr v2, v12

    .line 394
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    const/4 v4, 0x0

    .line 399
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 400
    .line 401
    .line 402
    const/4 v4, 0x0

    .line 403
    :goto_d
    array-length v5, v9

    .line 404
    if-ge v4, v5, :cond_16

    .line 405
    .line 406
    aget v5, v13, v4

    .line 407
    .line 408
    mul-int/lit16 v5, v5, 0x400

    .line 409
    .line 410
    sget v6, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 411
    .line 412
    div-int/2addr v5, v6

    .line 413
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 414
    .line 415
    .line 416
    aget v5, v9, v4

    .line 417
    .line 418
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 419
    .line 420
    .line 421
    add-int/2addr v4, v1

    .line 422
    goto :goto_d

    .line 423
    :cond_16
    const/4 v4, 0x0

    .line 424
    invoke-static {v2, v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 425
    .line 426
    .line 427
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 428
    .line 429
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    const/4 v2, 0x0

    .line 433
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    sget v4, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 438
    .line 439
    const-string/jumbo v4, "sys.sysctl.watermark_boost_factor"

    .line 440
    .line 441
    .line 442
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 446
    .line 447
    iput v3, v2, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    .line 448
    .line 449
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    const-string/jumbo v4, "sys.sysctl.origin_extra_free_kbytes"

    .line 454
    .line 455
    .line 456
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 460
    .line 461
    sget-boolean v2, Lcom/android/server/bgslotmanager/CustomEFKManager;->APP_EFK_DECREASE_BOOST_ENABLE:Z

    .line 462
    .line 463
    if-nez v2, :cond_17

    .line 464
    .line 465
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    goto :goto_e

    .line 469
    :cond_17
    iput-boolean v1, v15, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    .line 470
    .line 471
    new-instance v2, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;

    .line 472
    .line 473
    iget v4, v15, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetTime:I

    .line 474
    .line 475
    int-to-long v4, v4

    .line 476
    iget v6, v15, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetPerTickTime:I

    .line 477
    .line 478
    int-to-long v6, v6

    .line 479
    move-object v14, v2

    .line 480
    move-wide/from16 v16, v4

    .line 481
    .line 482
    move-wide/from16 v18, v6

    .line 483
    .line 484
    move/from16 v20, v3

    .line 485
    .line 486
    invoke-direct/range {v14 .. v20}, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJI)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 490
    .line 491
    .line 492
    :goto_e
    const-string/jumbo v2, "sys.sysctl.boot_extra_free_kbytes"

    .line 493
    .line 494
    .line 495
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    iput-boolean v1, v0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 503
    .line 504
    :cond_18
    return-void
.end method

.method public updateSeInfo(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, v1, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-boolean v1, v1, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsNext:Z

    .line 15
    .line 16
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v0, ":isSdkSandboxNext"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lcom/android/sdksandbox/flags/Flags;->selinuxSdkSandboxAudit()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_1
    iget-boolean p0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsAudit:Z

    .line 36
    .line 37
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    const-string v0, ":isSdkSandboxAudit"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    throw p0

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    throw p0

    .line 49
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/sdksandbox/flags/Flags;->selinuxInputSelector()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 61
    .line 62
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 71
    .line 72
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 92
    .line 93
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 99
    .line 100
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    const-string p1, ""

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 112
    .line 113
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 114
    .line 115
    :goto_1
    invoke-static {p0, p1, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0
.end method

.method public final writeProcessesToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_3

    .line 20
    .line 21
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x0

    .line 38
    :goto_1
    if-ge v5, v4, :cond_2

    .line 39
    .line 40
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 45
    .line 46
    if-eqz v8, :cond_0

    .line 47
    .line 48
    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 49
    .line 50
    invoke-virtual {v11, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    if-nez v11, :cond_0

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_0
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    const-wide v12, 0x20b00000001L

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v7, v12, v13, v11}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 69
    .line 70
    .line 71
    iget-boolean v6, v6, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 72
    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    add-int/lit8 v10, v10, 0x1

    .line 76
    .line 77
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const/4 v2, 0x0

    .line 90
    :goto_3
    if-ge v2, v1, :cond_5

    .line 91
    .line 92
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 93
    .line 94
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 99
    .line 100
    if-eqz v8, :cond_4

    .line 101
    .line 102
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 103
    .line 104
    invoke-virtual {v4, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_4

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_4
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    const-wide v5, 0x20b00000002L

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v7, v5, v6, v4}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 123
    .line 124
    .line 125
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 129
    .line 130
    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityManagerService;->getAppId(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 135
    .line 136
    const-wide v5, 0x20b00000004L

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    move-object/from16 v2, p1

    .line 142
    .line 143
    move-object/from16 v3, p2

    .line 144
    .line 145
    move v4, v11

    .line 146
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    .line 147
    .line 148
    .line 149
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    move/from16 v16, v10

    .line 156
    .line 157
    const-wide v9, 0x10500000001L

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    if-lez v1, :cond_16

    .line 163
    .line 164
    const-wide v12, 0x10b00000006L

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 170
    .line 171
    .line 172
    move-result-wide v12

    .line 173
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-virtual {v7, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 180
    .line 181
    .line 182
    iget v14, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 183
    .line 184
    sub-int v14, v1, v14

    .line 185
    .line 186
    const-wide v4, 0x10500000002L

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, v4, v5, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 192
    .line 193
    .line 194
    iget v14, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 195
    .line 196
    sub-int/2addr v1, v14

    .line 197
    const-wide v14, 0x10500000003L

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 206
    .line 207
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-static {v8, v14}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object v15

    .line 213
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v17

    .line 217
    if-eqz v17, :cond_7

    .line 218
    .line 219
    :cond_6
    move/from16 v19, v11

    .line 220
    .line 221
    move-wide v0, v12

    .line 222
    goto/16 :goto_d

    .line 223
    .line 224
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 225
    .line 226
    .line 227
    move-result-wide v17

    .line 228
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 229
    .line 230
    .line 231
    move-result v19

    .line 232
    const/4 v9, 0x1

    .line 233
    add-int/lit8 v19, v19, -0x1

    .line 234
    .line 235
    move/from16 v10, v19

    .line 236
    .line 237
    :goto_5
    if-ltz v10, :cond_6

    .line 238
    .line 239
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v19

    .line 243
    move-object/from16 v6, v19

    .line 244
    .line 245
    check-cast v6, Landroid/util/Pair;

    .line 246
    .line 247
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 250
    .line 251
    iget-object v2, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 252
    .line 253
    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 254
    .line 255
    const-wide v4, 0x20b00000004L

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 261
    .line 262
    .line 263
    move-result-wide v4

    .line 264
    move/from16 v19, v11

    .line 265
    .line 266
    iget v11, v2, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 267
    .line 268
    invoke-static {v11, v9}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    iget-boolean v9, v6, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 273
    .line 274
    move-wide/from16 v21, v12

    .line 275
    .line 276
    const-wide v12, 0x10800000001L

    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    invoke-virtual {v7, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    const/4 v12, 0x1

    .line 289
    sub-int/2addr v9, v12

    .line 290
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    check-cast v12, Landroid/util/Pair;

    .line 295
    .line 296
    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v12, Ljava/lang/Integer;

    .line 299
    .line 300
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 301
    .line 302
    .line 303
    move-result v12

    .line 304
    sub-int/2addr v9, v12

    .line 305
    const-wide v12, 0x10500000002L

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    invoke-virtual {v7, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 311
    .line 312
    .line 313
    const-wide v12, 0x10900000003L

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    invoke-virtual {v7, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget v9, v2, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 322
    .line 323
    if-eqz v9, :cond_b

    .line 324
    .line 325
    const/4 v11, 0x2

    .line 326
    if-eq v9, v11, :cond_a

    .line 327
    .line 328
    const/4 v11, 0x3

    .line 329
    if-eq v9, v11, :cond_9

    .line 330
    .line 331
    const/4 v11, 0x4

    .line 332
    if-eq v9, v11, :cond_8

    .line 333
    .line 334
    const/4 v9, -0x1

    .line 335
    :goto_6
    const/4 v11, -0x1

    .line 336
    goto :goto_7

    .line 337
    :cond_8
    const/4 v9, 0x3

    .line 338
    goto :goto_6

    .line 339
    :cond_9
    const/4 v9, 0x2

    .line 340
    goto :goto_6

    .line 341
    :cond_a
    const/4 v9, 0x1

    .line 342
    goto :goto_6

    .line 343
    :cond_b
    const/4 v9, 0x0

    .line 344
    goto :goto_6

    .line 345
    :goto_7
    if-eq v9, v11, :cond_c

    .line 346
    .line 347
    const-wide v12, 0x10e00000004L

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    invoke-virtual {v7, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 353
    .line 354
    .line 355
    :cond_c
    iget-boolean v9, v2, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 356
    .line 357
    if-eqz v9, :cond_d

    .line 358
    .line 359
    const-wide v11, 0x10800000005L

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    const/4 v9, 0x1

    .line 365
    invoke-virtual {v7, v11, v12, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 366
    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_d
    const/4 v9, 0x1

    .line 370
    iget-boolean v11, v3, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 371
    .line 372
    if-eqz v11, :cond_e

    .line 373
    .line 374
    const-wide v11, 0x10800000006L

    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    invoke-virtual {v7, v11, v12, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 380
    .line 381
    .line 382
    :cond_e
    :goto_8
    iget v11, v2, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 383
    .line 384
    invoke-static {v11}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    .line 385
    .line 386
    .line 387
    move-result v11

    .line 388
    const-wide v12, 0x10e00000007L

    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    invoke-virtual {v7, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 394
    .line 395
    .line 396
    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 397
    .line 398
    iget v11, v11, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    .line 399
    .line 400
    move/from16 v20, v10

    .line 401
    .line 402
    const-wide v9, 0x10500000008L

    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    invoke-virtual {v7, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 408
    .line 409
    .line 410
    const-wide v9, 0x10b00000009L

    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    const/4 v11, -0x1

    .line 416
    invoke-virtual {v6, v7, v9, v10, v11}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 417
    .line 418
    .line 419
    iget-object v9, v2, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 420
    .line 421
    const-wide v10, 0x1090000000aL

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    invoke-virtual {v7, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iget-object v9, v2, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 430
    .line 431
    if-nez v9, :cond_f

    .line 432
    .line 433
    iget-object v9, v2, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 434
    .line 435
    if-eqz v9, :cond_13

    .line 436
    .line 437
    :cond_f
    iget-object v9, v2, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 438
    .line 439
    instance-of v10, v9, Landroid/content/ComponentName;

    .line 440
    .line 441
    if-eqz v10, :cond_10

    .line 442
    .line 443
    check-cast v9, Landroid/content/ComponentName;

    .line 444
    .line 445
    const-wide v10, 0x10b0000000bL

    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    invoke-virtual {v9, v7, v10, v11}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 451
    .line 452
    .line 453
    goto :goto_9

    .line 454
    :cond_10
    if-eqz v9, :cond_11

    .line 455
    .line 456
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v9

    .line 460
    const-wide v10, 0x1090000000cL

    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    invoke-virtual {v7, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 466
    .line 467
    .line 468
    :cond_11
    :goto_9
    iget-object v9, v2, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 469
    .line 470
    instance-of v10, v9, Lcom/android/server/am/ProcessRecord;

    .line 471
    .line 472
    if-eqz v10, :cond_12

    .line 473
    .line 474
    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 475
    .line 476
    const-wide v10, 0x10b0000000dL

    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    const/4 v12, -0x1

    .line 482
    invoke-virtual {v9, v7, v10, v11, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 483
    .line 484
    .line 485
    goto :goto_a

    .line 486
    :cond_12
    if-eqz v9, :cond_13

    .line 487
    .line 488
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v9

    .line 492
    const-wide v10, 0x1090000000eL

    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    invoke-virtual {v7, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 498
    .line 499
    .line 500
    :cond_13
    :goto_a
    const-wide v9, 0x10b0000000fL

    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 506
    .line 507
    .line 508
    move-result-wide v11

    .line 509
    iget v13, v2, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 510
    .line 511
    const-wide v9, 0x10500000001L

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    invoke-virtual {v7, v9, v10, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 517
    .line 518
    .line 519
    iget v9, v2, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 520
    .line 521
    move-object v10, v14

    .line 522
    const-wide v13, 0x10500000002L

    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    invoke-virtual {v7, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 528
    .line 529
    .line 530
    iget v9, v2, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 531
    .line 532
    const-wide v13, 0x10500000003L

    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    invoke-virtual {v7, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 538
    .line 539
    .line 540
    iget v9, v2, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 541
    .line 542
    const-wide v13, 0x10500000004L

    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    invoke-virtual {v7, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 548
    .line 549
    .line 550
    iget v9, v2, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 551
    .line 552
    const-wide v13, 0x10500000005L

    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    invoke-virtual {v7, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 558
    .line 559
    .line 560
    iget v9, v2, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 561
    .line 562
    invoke-static {v9}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    .line 563
    .line 564
    .line 565
    move-result v9

    .line 566
    const-wide v13, 0x10e00000007L

    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    invoke-virtual {v7, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 572
    .line 573
    .line 574
    iget v9, v2, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 575
    .line 576
    invoke-static {v9}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    .line 577
    .line 578
    .line 579
    move-result v9

    .line 580
    const-wide v13, 0x10e00000008L

    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    invoke-virtual {v7, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 586
    .line 587
    .line 588
    iget-object v9, v6, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 589
    .line 590
    iget-wide v13, v9, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    .line 591
    .line 592
    const-wide/16 v25, 0x400

    .line 593
    .line 594
    mul-long v13, v13, v25

    .line 595
    .line 596
    new-instance v9, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .line 600
    .line 601
    invoke-static {v13, v14, v9}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v9

    .line 605
    const-wide v13, 0x10900000009L

    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    invoke-virtual {v7, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 611
    .line 612
    .line 613
    iget-object v9, v6, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 614
    .line 615
    iget-wide v13, v9, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    .line 616
    .line 617
    mul-long v13, v13, v25

    .line 618
    .line 619
    new-instance v9, Ljava/lang/StringBuilder;

    .line 620
    .line 621
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .line 623
    .line 624
    invoke-static {v13, v14, v9}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v9

    .line 628
    const-wide v13, 0x1090000000aL

    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    invoke-virtual {v7, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 634
    .line 635
    .line 636
    iget-object v9, v6, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 637
    .line 638
    iget-wide v13, v9, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    .line 639
    .line 640
    mul-long v13, v13, v25

    .line 641
    .line 642
    new-instance v9, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .line 646
    .line 647
    invoke-static {v13, v14, v9}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v9

    .line 651
    const-wide v13, 0x1090000000bL

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    invoke-virtual {v7, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 657
    .line 658
    .line 659
    const-wide v13, 0x1080000000cL

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 665
    .line 666
    .line 667
    move-result v9

    .line 668
    invoke-virtual {v7, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 669
    .line 670
    .line 671
    iget v9, v2, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 672
    .line 673
    const/16 v13, 0x13

    .line 674
    .line 675
    if-lt v9, v13, :cond_14

    .line 676
    .line 677
    const/4 v9, 0x1

    .line 678
    goto :goto_b

    .line 679
    :cond_14
    const/4 v9, 0x0

    .line 680
    :goto_b
    const-wide v13, 0x1080000000dL

    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    invoke-virtual {v7, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 686
    .line 687
    .line 688
    iget-boolean v3, v3, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    .line 689
    .line 690
    const-wide v13, 0x1080000000eL

    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    invoke-virtual {v7, v13, v14, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 696
    .line 697
    .line 698
    iget v2, v2, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 699
    .line 700
    const/16 v3, 0xa

    .line 701
    .line 702
    if-lt v2, v3, :cond_15

    .line 703
    .line 704
    iget-object v2, v6, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 705
    .line 706
    iget-object v2, v2, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 707
    .line 708
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 709
    .line 710
    .line 711
    move-result-wide v2

    .line 712
    iget-wide v13, v1, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    .line 713
    .line 714
    sub-long v13, v17, v13

    .line 715
    .line 716
    const-wide/16 v23, 0x0

    .line 717
    .line 718
    cmp-long v9, v2, v23

    .line 719
    .line 720
    if-eqz v9, :cond_15

    .line 721
    .line 722
    cmp-long v9, v13, v23

    .line 723
    .line 724
    if-lez v9, :cond_15

    .line 725
    .line 726
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 727
    .line 728
    iget-object v6, v6, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 729
    .line 730
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 731
    .line 732
    .line 733
    move-result-wide v23

    .line 734
    sub-long v2, v23, v2

    .line 735
    .line 736
    move-object v6, v10

    .line 737
    const-wide v9, 0x10b0000000fL

    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 743
    .line 744
    .line 745
    move-result-wide v9

    .line 746
    move-object/from16 v23, v1

    .line 747
    .line 748
    const-wide v0, 0x10300000001L

    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    invoke-virtual {v7, v0, v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 754
    .line 755
    .line 756
    const-wide v0, 0x10300000002L

    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 762
    .line 763
    .line 764
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 765
    .line 766
    long-to-double v2, v2

    .line 767
    mul-double/2addr v2, v0

    .line 768
    long-to-double v0, v13

    .line 769
    div-double/2addr v2, v0

    .line 770
    const-wide v0, 0x10200000003L

    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 779
    .line 780
    .line 781
    goto :goto_c

    .line 782
    :cond_15
    move-object/from16 v23, v1

    .line 783
    .line 784
    move-object v6, v10

    .line 785
    :goto_c
    invoke-virtual {v7, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 789
    .line 790
    .line 791
    add-int/lit8 v10, v20, -0x1

    .line 792
    .line 793
    move-object/from16 v0, p0

    .line 794
    .line 795
    move-object v14, v6

    .line 796
    move/from16 v11, v19

    .line 797
    .line 798
    move-wide/from16 v12, v21

    .line 799
    .line 800
    move-object/from16 v1, v23

    .line 801
    .line 802
    const-wide v4, 0x10500000002L

    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    const/4 v9, 0x1

    .line 808
    goto/16 :goto_5

    .line 809
    .line 810
    :goto_d
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 811
    .line 812
    .line 813
    :goto_e
    move-object/from16 v0, p0

    .line 814
    .line 815
    goto :goto_f

    .line 816
    :cond_16
    move/from16 v19, v11

    .line 817
    .line 818
    goto :goto_e

    .line 819
    :goto_f
    iget-object v9, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 820
    .line 821
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    .line 822
    .line 823
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 824
    .line 825
    .line 826
    move-result v0

    .line 827
    const/4 v1, 0x0

    .line 828
    :goto_10
    if-ge v1, v0, :cond_1c

    .line 829
    .line 830
    iget-object v2, v9, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    .line 831
    .line 832
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    check-cast v2, Lcom/android/server/am/ActiveInstrumentation;

    .line 837
    .line 838
    if-eqz v8, :cond_17

    .line 839
    .line 840
    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    .line 841
    .line 842
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 847
    .line 848
    .line 849
    move-result v3

    .line 850
    if-nez v3, :cond_17

    .line 851
    .line 852
    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    .line 853
    .line 854
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 855
    .line 856
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    move-result v3

    .line 860
    if-nez v3, :cond_17

    .line 861
    .line 862
    const/4 v12, 0x0

    .line 863
    goto/16 :goto_14

    .line 864
    .line 865
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 866
    .line 867
    .line 868
    const-wide v3, 0x20b00000003L

    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 874
    .line 875
    .line 876
    move-result-wide v5

    .line 877
    iget-object v10, v2, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    .line 878
    .line 879
    const-wide v11, 0x10b00000001L

    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    invoke-virtual {v10, v7, v11, v12}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 885
    .line 886
    .line 887
    const-wide v10, 0x10800000002L

    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    iget-boolean v12, v2, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    .line 893
    .line 894
    invoke-virtual {v7, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 895
    .line 896
    .line 897
    const/4 v10, 0x0

    .line 898
    :goto_11
    iget-object v11, v2, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    .line 899
    .line 900
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 901
    .line 902
    .line 903
    move-result v11

    .line 904
    if-ge v10, v11, :cond_18

    .line 905
    .line 906
    iget-object v11, v2, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    .line 907
    .line 908
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v11

    .line 912
    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 913
    .line 914
    const/4 v12, -0x1

    .line 915
    invoke-virtual {v11, v7, v3, v4, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 916
    .line 917
    .line 918
    add-int/lit8 v10, v10, 0x1

    .line 919
    .line 920
    goto :goto_11

    .line 921
    :cond_18
    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    .line 922
    .line 923
    array-length v4, v3

    .line 924
    const/4 v10, 0x0

    .line 925
    :goto_12
    if-ge v10, v4, :cond_19

    .line 926
    .line 927
    aget-object v11, v3, v10

    .line 928
    .line 929
    const-wide v12, 0x20900000004L

    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    invoke-virtual {v7, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 935
    .line 936
    .line 937
    add-int/lit8 v10, v10, 0x1

    .line 938
    .line 939
    goto :goto_12

    .line 940
    :cond_19
    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    .line 941
    .line 942
    if-eqz v3, :cond_1a

    .line 943
    .line 944
    const-wide v10, 0x10b00000005L

    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    const/4 v12, 0x0

    .line 950
    invoke-virtual {v3, v7, v10, v11, v12}, Landroid/content/pm/ApplicationInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 951
    .line 952
    .line 953
    goto :goto_13

    .line 954
    :cond_1a
    const/4 v12, 0x0

    .line 955
    :goto_13
    const-wide v3, 0x10900000006L

    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    iget-object v10, v2, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    .line 961
    .line 962
    invoke-virtual {v7, v3, v4, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 963
    .line 964
    .line 965
    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 966
    .line 967
    invoke-interface {v3}, Landroid/app/IInstrumentationWatcher;->toString()Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v3

    .line 971
    const-wide v10, 0x10900000007L

    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    invoke-virtual {v7, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 977
    .line 978
    .line 979
    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 980
    .line 981
    invoke-interface {v3}, Landroid/app/IUiAutomationConnection;->toString()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v3

    .line 985
    const-wide v10, 0x10900000008L

    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    invoke-virtual {v7, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 991
    .line 992
    .line 993
    iget-object v2, v2, Lcom/android/server/am/ActiveInstrumentation;->mArguments:Landroid/os/Bundle;

    .line 994
    .line 995
    if-eqz v2, :cond_1b

    .line 996
    .line 997
    const-wide v3, 0x10b0000000aL

    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Bundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1003
    .line 1004
    .line 1005
    :cond_1b
    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1006
    .line 1007
    .line 1008
    :goto_14
    add-int/lit8 v1, v1, 0x1

    .line 1009
    .line 1010
    goto/16 :goto_10

    .line 1011
    .line 1012
    :cond_1c
    const/4 v12, 0x0

    .line 1013
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    .line 1014
    .line 1015
    iget-object v0, v0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    .line 1016
    .line 1017
    const-wide v4, 0x20b00000005L

    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    move-object/from16 v1, p1

    .line 1023
    .line 1024
    const-wide v10, 0x10900000003L

    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    move-object/from16 v2, p2

    .line 1030
    .line 1031
    move/from16 v3, v19

    .line 1032
    .line 1033
    const-wide v13, 0x10500000004L

    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    .line 1039
    .line 1040
    .line 1041
    if-eqz v8, :cond_1f

    .line 1042
    .line 1043
    iget-object v1, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 1044
    .line 1045
    monitor-enter v1

    .line 1046
    :try_start_0
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 1047
    .line 1048
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 1049
    .line 1050
    check-cast v0, Landroid/util/SparseArray;

    .line 1051
    .line 1052
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 1053
    .line 1054
    .line 1055
    move-result v0

    .line 1056
    move v2, v12

    .line 1057
    :goto_15
    if-ge v2, v0, :cond_1e

    .line 1058
    .line 1059
    iget-object v3, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 1060
    .line 1061
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v3

    .line 1065
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 1066
    .line 1067
    invoke-virtual {v4, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 1068
    .line 1069
    .line 1070
    move-result v4

    .line 1071
    if-nez v4, :cond_1d

    .line 1072
    .line 1073
    goto :goto_16

    .line 1074
    :cond_1d
    const-wide v4, 0x20b00000007L

    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    const/4 v6, -0x1

    .line 1080
    invoke-virtual {v3, v7, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1081
    .line 1082
    .line 1083
    :goto_16
    add-int/lit8 v2, v2, 0x1

    .line 1084
    .line 1085
    goto :goto_15

    .line 1086
    :catchall_0
    move-exception v0

    .line 1087
    goto :goto_17

    .line 1088
    :cond_1e
    monitor-exit v1

    .line 1089
    goto :goto_18

    .line 1090
    :goto_17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    throw v0

    .line 1092
    :cond_1f
    :goto_18
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mImportantProcesses:Landroid/util/SparseArray;

    .line 1093
    .line 1094
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 1095
    .line 1096
    .line 1097
    move-result v0

    .line 1098
    const-wide v1, 0x10900000002L

    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    if-lez v0, :cond_24

    .line 1104
    .line 1105
    iget-object v3, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 1106
    .line 1107
    monitor-enter v3

    .line 1108
    :try_start_1
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mImportantProcesses:Landroid/util/SparseArray;

    .line 1109
    .line 1110
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 1111
    .line 1112
    .line 1113
    move-result v0

    .line 1114
    move v4, v12

    .line 1115
    :goto_19
    if-ge v4, v0, :cond_23

    .line 1116
    .line 1117
    iget-object v5, v9, Lcom/android/server/am/ActivityManagerService;->mImportantProcesses:Landroid/util/SparseArray;

    .line 1118
    .line 1119
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v5

    .line 1123
    check-cast v5, Lcom/android/server/am/ActivityManagerService$14;

    .line 1124
    .line 1125
    iget-object v6, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 1126
    .line 1127
    iget v15, v5, Lcom/android/server/am/ActivityManagerService$14;->pid:I

    .line 1128
    .line 1129
    invoke-virtual {v6, v15}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v6

    .line 1133
    if-eqz v8, :cond_20

    .line 1134
    .line 1135
    if-eqz v6, :cond_22

    .line 1136
    .line 1137
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 1138
    .line 1139
    invoke-virtual {v6, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 1140
    .line 1141
    .line 1142
    move-result v6

    .line 1143
    if-nez v6, :cond_20

    .line 1144
    .line 1145
    goto :goto_1a

    .line 1146
    :catchall_1
    move-exception v0

    .line 1147
    goto :goto_1b

    .line 1148
    :cond_20
    const-wide v12, 0x20b00000008L

    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1154
    .line 1155
    .line 1156
    move-result-wide v12

    .line 1157
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$14;->pid:I

    .line 1158
    .line 1159
    const-wide v14, 0x10500000001L

    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v7, v14, v15, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1165
    .line 1166
    .line 1167
    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService$14;->token:Landroid/os/IBinder;

    .line 1168
    .line 1169
    if-eqz v6, :cond_21

    .line 1170
    .line 1171
    invoke-interface {v6}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v6

    .line 1175
    invoke-virtual {v7, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1176
    .line 1177
    .line 1178
    :cond_21
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$14;->reason:Ljava/lang/String;

    .line 1179
    .line 1180
    invoke-virtual {v7, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1184
    .line 1185
    .line 1186
    :cond_22
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    .line 1187
    .line 1188
    const/4 v12, 0x0

    .line 1189
    const-wide v13, 0x10500000004L

    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    goto :goto_19

    .line 1195
    :cond_23
    monitor-exit v3

    .line 1196
    goto :goto_1c

    .line 1197
    :goto_1b
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1198
    throw v0

    .line 1199
    :cond_24
    :goto_1c
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    .line 1200
    .line 1201
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1202
    .line 1203
    .line 1204
    move-result v0

    .line 1205
    const/4 v3, 0x0

    .line 1206
    :goto_1d
    if-ge v3, v0, :cond_26

    .line 1207
    .line 1208
    iget-object v4, v9, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    .line 1209
    .line 1210
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v4

    .line 1214
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1215
    .line 1216
    if-eqz v8, :cond_25

    .line 1217
    .line 1218
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1219
    .line 1220
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1221
    .line 1222
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v5

    .line 1226
    if-nez v5, :cond_25

    .line 1227
    .line 1228
    goto :goto_1e

    .line 1229
    :cond_25
    const-wide v5, 0x20b00000009L

    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    const/4 v12, -0x1

    .line 1235
    invoke-virtual {v4, v7, v5, v6, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1236
    .line 1237
    .line 1238
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    .line 1239
    .line 1240
    goto :goto_1d

    .line 1241
    :cond_26
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1242
    .line 1243
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 1244
    .line 1245
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1246
    .line 1247
    .line 1248
    move-result v0

    .line 1249
    const/4 v3, 0x0

    .line 1250
    :goto_1f
    if-ge v3, v0, :cond_28

    .line 1251
    .line 1252
    iget-object v4, v9, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1253
    .line 1254
    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 1255
    .line 1256
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v4

    .line 1260
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1261
    .line 1262
    if-eqz v8, :cond_27

    .line 1263
    .line 1264
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1265
    .line 1266
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1267
    .line 1268
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1269
    .line 1270
    .line 1271
    move-result v5

    .line 1272
    if-nez v5, :cond_27

    .line 1273
    .line 1274
    goto :goto_20

    .line 1275
    :cond_27
    const-wide v5, 0x20b0000000aL

    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    const/4 v12, -0x1

    .line 1281
    invoke-virtual {v4, v7, v5, v6, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1282
    .line 1283
    .line 1284
    :goto_20
    add-int/lit8 v3, v3, 0x1

    .line 1285
    .line 1286
    goto :goto_1f

    .line 1287
    :cond_28
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    .line 1288
    .line 1289
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1290
    .line 1291
    .line 1292
    move-result v0

    .line 1293
    const/4 v3, 0x0

    .line 1294
    :goto_21
    if-ge v3, v0, :cond_2a

    .line 1295
    .line 1296
    iget-object v4, v9, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    .line 1297
    .line 1298
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v4

    .line 1302
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1303
    .line 1304
    if-eqz v8, :cond_29

    .line 1305
    .line 1306
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1307
    .line 1308
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1309
    .line 1310
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v5

    .line 1314
    if-nez v5, :cond_29

    .line 1315
    .line 1316
    goto :goto_22

    .line 1317
    :cond_29
    const-wide v5, 0x20b0000000bL

    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    const/4 v12, -0x1

    .line 1323
    invoke-virtual {v4, v7, v5, v6, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1324
    .line 1325
    .line 1326
    :goto_22
    add-int/lit8 v3, v3, 0x1

    .line 1327
    .line 1328
    goto :goto_21

    .line 1329
    :cond_2a
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1330
    .line 1331
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 1332
    .line 1333
    monitor-enter v3

    .line 1334
    :try_start_2
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1335
    .line 1336
    invoke-virtual {v0, v7, v8}, Lcom/android/server/am/AppProfiler;->writeProcessesToGcToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V

    .line 1337
    .line 1338
    .line 1339
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1340
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 1341
    .line 1342
    invoke-virtual {v0, v7, v8}, Lcom/android/server/am/AppErrors;->dumpDebugLPr(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V

    .line 1343
    .line 1344
    .line 1345
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1346
    .line 1347
    iget-object v3, v9, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1348
    .line 1349
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1350
    .line 1351
    .line 1352
    move-result v3

    .line 1353
    iget-object v4, v9, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1354
    .line 1355
    iget-boolean v4, v4, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 1356
    .line 1357
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->writeProcessesToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IZ)V

    .line 1358
    .line 1359
    .line 1360
    if-nez v8, :cond_2b

    .line 1361
    .line 1362
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1363
    .line 1364
    invoke-virtual {v0, v7}, Lcom/android/server/am/UserController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 1365
    .line 1366
    .line 1367
    :cond_2b
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    .line 1368
    .line 1369
    invoke-virtual {v0, v7, v8}, Lcom/android/server/am/UidObserverController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V

    .line 1370
    .line 1371
    .line 1372
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleAllowlist:[I

    .line 1373
    .line 1374
    array-length v3, v0

    .line 1375
    const/4 v4, 0x0

    .line 1376
    :goto_23
    if-ge v4, v3, :cond_2c

    .line 1377
    .line 1378
    aget v5, v0, v4

    .line 1379
    .line 1380
    const-wide v12, 0x20500000018L

    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v7, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1386
    .line 1387
    .line 1388
    add-int/lit8 v4, v4, 0x1

    .line 1389
    .line 1390
    goto :goto_23

    .line 1391
    :cond_2c
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    .line 1392
    .line 1393
    array-length v3, v0

    .line 1394
    const/4 v4, 0x0

    .line 1395
    :goto_24
    if-ge v4, v3, :cond_2d

    .line 1396
    .line 1397
    aget v5, v0, v4

    .line 1398
    .line 1399
    const-wide v12, 0x20500000019L

    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {v7, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1405
    .line 1406
    .line 1407
    add-int/lit8 v4, v4, 0x1

    .line 1408
    .line 1409
    goto :goto_24

    .line 1410
    :cond_2d
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    .line 1411
    .line 1412
    invoke-virtual {v0}, Lcom/android/server/am/PendingTempAllowlists;->size()I

    .line 1413
    .line 1414
    .line 1415
    move-result v0

    .line 1416
    if-lez v0, :cond_2e

    .line 1417
    .line 1418
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    .line 1419
    .line 1420
    invoke-virtual {v0}, Lcom/android/server/am/PendingTempAllowlists;->size()I

    .line 1421
    .line 1422
    .line 1423
    move-result v0

    .line 1424
    const/4 v3, 0x0

    .line 1425
    :goto_25
    if-ge v3, v0, :cond_2e

    .line 1426
    .line 1427
    iget-object v4, v9, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    .line 1428
    .line 1429
    invoke-virtual {v4, v3}, Lcom/android/server/am/PendingTempAllowlists;->valueAt(I)Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v4

    .line 1433
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1434
    .line 1435
    .line 1436
    const-wide v5, 0x20b0000001aL

    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1442
    .line 1443
    .line 1444
    move-result-wide v5

    .line 1445
    iget v12, v4, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->targetUid:I

    .line 1446
    .line 1447
    const-wide v13, 0x10500000001L

    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {v7, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1453
    .line 1454
    .line 1455
    iget-wide v13, v4, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->duration:J

    .line 1456
    .line 1457
    const-wide v1, 0x10300000002L

    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v7, v1, v2, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1463
    .line 1464
    .line 1465
    iget-object v12, v4, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->tag:Ljava/lang/String;

    .line 1466
    .line 1467
    invoke-virtual {v7, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1468
    .line 1469
    .line 1470
    iget v12, v4, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->type:I

    .line 1471
    .line 1472
    const-wide v13, 0x10500000004L

    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v7, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1478
    .line 1479
    .line 1480
    iget v12, v4, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->reasonCode:I

    .line 1481
    .line 1482
    const-wide v13, 0x10500000005L

    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {v7, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1488
    .line 1489
    .line 1490
    const-wide v1, 0x10500000006L

    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    iget v4, v4, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->callingUid:I

    .line 1496
    .line 1497
    invoke-virtual {v7, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1498
    .line 1499
    .line 1500
    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1501
    .line 1502
    .line 1503
    add-int/lit8 v3, v3, 0x1

    .line 1504
    .line 1505
    const-wide v1, 0x10900000002L

    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    goto :goto_25

    .line 1511
    :cond_2e
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mDebugApp:Ljava/lang/String;

    .line 1512
    .line 1513
    const-wide v1, 0x10900000001L

    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    if-nez v0, :cond_2f

    .line 1519
    .line 1520
    iget-object v3, v9, Lcom/android/server/am/ActivityManagerService;->mOrigDebugApp:Ljava/lang/String;

    .line 1521
    .line 1522
    if-nez v3, :cond_2f

    .line 1523
    .line 1524
    iget-boolean v3, v9, Lcom/android/server/am/ActivityManagerService;->mDebugTransient:Z

    .line 1525
    .line 1526
    if-nez v3, :cond_2f

    .line 1527
    .line 1528
    iget-boolean v3, v9, Lcom/android/server/am/ActivityManagerService;->mOrigWaitForDebugger:Z

    .line 1529
    .line 1530
    if-eqz v3, :cond_31

    .line 1531
    .line 1532
    :cond_2f
    if-eqz v8, :cond_30

    .line 1533
    .line 1534
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1535
    .line 1536
    .line 1537
    move-result v0

    .line 1538
    if-nez v0, :cond_30

    .line 1539
    .line 1540
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mOrigDebugApp:Ljava/lang/String;

    .line 1541
    .line 1542
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1543
    .line 1544
    .line 1545
    move-result v0

    .line 1546
    if-eqz v0, :cond_31

    .line 1547
    .line 1548
    :cond_30
    const-wide v3, 0x10b0000001eL

    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1554
    .line 1555
    .line 1556
    move-result-wide v3

    .line 1557
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mDebugApp:Ljava/lang/String;

    .line 1558
    .line 1559
    invoke-virtual {v7, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1560
    .line 1561
    .line 1562
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mOrigDebugApp:Ljava/lang/String;

    .line 1563
    .line 1564
    const-wide v5, 0x10900000002L

    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    invoke-virtual {v7, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1570
    .line 1571
    .line 1572
    const-wide v5, 0x10800000003L

    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    iget-boolean v0, v9, Lcom/android/server/am/ActivityManagerService;->mDebugTransient:Z

    .line 1578
    .line 1579
    invoke-virtual {v7, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1580
    .line 1581
    .line 1582
    const-wide v5, 0x10800000004L

    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    iget-boolean v0, v9, Lcom/android/server/am/ActivityManagerService;->mOrigWaitForDebugger:Z

    .line 1588
    .line 1589
    invoke-virtual {v7, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1590
    .line 1591
    .line 1592
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1593
    .line 1594
    .line 1595
    :cond_31
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1596
    .line 1597
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 1598
    .line 1599
    monitor-enter v4

    .line 1600
    :try_start_3
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1601
    .line 1602
    invoke-virtual {v0, v7}, Lcom/android/server/am/AppProfiler;->writeMemWatchProcessToProtoLPf(Landroid/util/proto/ProtoOutputStream;)V

    .line 1603
    .line 1604
    .line 1605
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1606
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mTrackAllocationApp:Ljava/lang/String;

    .line 1607
    .line 1608
    if-eqz v0, :cond_33

    .line 1609
    .line 1610
    if-eqz v8, :cond_32

    .line 1611
    .line 1612
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1613
    .line 1614
    .line 1615
    move-result v0

    .line 1616
    if-eqz v0, :cond_33

    .line 1617
    .line 1618
    :cond_32
    const-wide v3, 0x10900000021L

    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mTrackAllocationApp:Ljava/lang/String;

    .line 1624
    .line 1625
    invoke-virtual {v7, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1626
    .line 1627
    .line 1628
    :cond_33
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1629
    .line 1630
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 1631
    .line 1632
    iget-object v4, v3, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 1633
    .line 1634
    if-nez v4, :cond_34

    .line 1635
    .line 1636
    iget-object v5, v3, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1637
    .line 1638
    if-nez v5, :cond_34

    .line 1639
    .line 1640
    iget-object v5, v3, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1641
    .line 1642
    if-eqz v5, :cond_37

    .line 1643
    .line 1644
    iget-object v6, v5, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 1645
    .line 1646
    if-nez v6, :cond_34

    .line 1647
    .line 1648
    iget-object v5, v5, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1649
    .line 1650
    if-eqz v5, :cond_37

    .line 1651
    .line 1652
    :cond_34
    if-eqz v8, :cond_35

    .line 1653
    .line 1654
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1655
    .line 1656
    .line 1657
    move-result v4

    .line 1658
    if-eqz v4, :cond_37

    .line 1659
    .line 1660
    :cond_35
    const-wide v4, 0x10b00000022L

    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1666
    .line 1667
    .line 1668
    move-result-wide v4

    .line 1669
    iget-object v6, v3, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 1670
    .line 1671
    invoke-virtual {v7, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1672
    .line 1673
    .line 1674
    iget-object v1, v3, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1675
    .line 1676
    const-wide v10, 0x10b00000002L

    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    const/4 v2, -0x1

    .line 1682
    invoke-virtual {v1, v7, v10, v11, v2}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1683
    .line 1684
    .line 1685
    iget-object v1, v3, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1686
    .line 1687
    if-eqz v1, :cond_36

    .line 1688
    .line 1689
    const-wide v2, 0x10b00000003L

    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    invoke-virtual {v1, v7, v2, v3}, Landroid/app/ProfilerInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1695
    .line 1696
    .line 1697
    iget v0, v0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 1698
    .line 1699
    const-wide v1, 0x10500000004L

    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    invoke-virtual {v7, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1705
    .line 1706
    .line 1707
    :cond_36
    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1708
    .line 1709
    .line 1710
    :cond_37
    if-eqz v8, :cond_38

    .line 1711
    .line 1712
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    .line 1713
    .line 1714
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1715
    .line 1716
    .line 1717
    move-result v0

    .line 1718
    if-eqz v0, :cond_39

    .line 1719
    .line 1720
    :cond_38
    const-wide v0, 0x10900000023L

    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    iget-object v2, v9, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    .line 1726
    .line 1727
    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1728
    .line 1729
    .line 1730
    :cond_39
    if-nez v8, :cond_3a

    .line 1731
    .line 1732
    const-wide v0, 0x10800000024L

    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    iget-boolean v2, v9, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    .line 1738
    .line 1739
    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1740
    .line 1741
    .line 1742
    const-wide v0, 0x10500000026L

    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    move/from16 v10, v16

    .line 1748
    .line 1749
    invoke-virtual {v7, v0, v1, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1750
    .line 1751
    .line 1752
    const-wide v0, 0x10800000027L

    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    iget-boolean v2, v9, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    .line 1758
    .line 1759
    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1760
    .line 1761
    .line 1762
    const-wide v0, 0x10800000028L

    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    iget-boolean v2, v9, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    .line 1768
    .line 1769
    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1770
    .line 1771
    .line 1772
    const-wide v0, 0x10800000029L

    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    iget-boolean v2, v9, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 1778
    .line 1779
    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1780
    .line 1781
    .line 1782
    const-wide v0, 0x1050000002aL

    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    iget v2, v9, Lcom/android/server/am/ActivityManagerService;->mFactoryTest:I

    .line 1788
    .line 1789
    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1790
    .line 1791
    .line 1792
    const-wide v0, 0x1080000002bL

    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    iget-boolean v2, v9, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 1798
    .line 1799
    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1800
    .line 1801
    .line 1802
    const-wide v0, 0x1080000002cL

    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    iget-boolean v2, v9, Lcom/android/server/am/ActivityManagerService;->mCallFinishBooting:Z

    .line 1808
    .line 1809
    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1810
    .line 1811
    .line 1812
    const-wide v0, 0x1080000002dL

    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    iget-boolean v2, v9, Lcom/android/server/am/ActivityManagerService;->mBootAnimationComplete:Z

    .line 1818
    .line 1819
    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1820
    .line 1821
    .line 1822
    const-wide v0, 0x1030000002eL

    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    iget-wide v2, v9, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    .line 1828
    .line 1829
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1830
    .line 1831
    .line 1832
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 1833
    .line 1834
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 1835
    .line 1836
    const-wide v2, 0x10500000031L

    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    invoke-virtual {v7, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1842
    .line 1843
    .line 1844
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1845
    .line 1846
    iget v1, v1, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 1847
    .line 1848
    const-wide v2, 0x10500000032L

    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    invoke-virtual {v7, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1854
    .line 1855
    .line 1856
    const-wide v1, 0x10500000033L

    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 1862
    .line 1863
    invoke-virtual {v7, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1864
    .line 1865
    .line 1866
    const-wide v1, 0x10500000035L

    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 1872
    .line 1873
    invoke-virtual {v7, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1874
    .line 1875
    .line 1876
    const-wide v1, 0x10500000036L

    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 1882
    .line 1883
    invoke-virtual {v7, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1884
    .line 1885
    .line 1886
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1887
    .line 1888
    iget-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 1889
    .line 1890
    const-wide v2, 0x10800000037L

    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    invoke-virtual {v7, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1896
    .line 1897
    .line 1898
    const-wide v1, 0x10500000038L

    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    iget v3, v0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1904
    .line 1905
    invoke-virtual {v7, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1906
    .line 1907
    .line 1908
    const-wide v1, 0x10500000039L

    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    iget v0, v0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    .line 1914
    .line 1915
    invoke-virtual {v7, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1916
    .line 1917
    .line 1918
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1919
    .line 1920
    .line 1921
    move-result-wide v10

    .line 1922
    const-wide v1, 0x10b0000003aL

    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    iget-wide v3, v9, Lcom/android/server/am/ActivityManagerService;->mLastIdleTime:J

    .line 1928
    .line 1929
    move-object/from16 v0, p1

    .line 1930
    .line 1931
    move-wide v5, v10

    .line 1932
    invoke-static/range {v0 .. v6}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 1933
    .line 1934
    .line 1935
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1936
    .line 1937
    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/AppProfiler;->getLowRamTimeSinceIdleLPr(J)J

    .line 1938
    .line 1939
    .line 1940
    move-result-wide v0

    .line 1941
    const-wide v2, 0x1030000003bL

    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    invoke-virtual {v7, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1947
    .line 1948
    .line 1949
    :cond_3a
    return-void

    .line 1950
    :catchall_2
    move-exception v0

    .line 1951
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1952
    throw v0

    .line 1953
    :catchall_3
    move-exception v0

    .line 1954
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1955
    throw v0
.end method
