.class public final Lcom/android/server/wm/ActivityManagerPerformance;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AMP_ENABLE:Z

.field public static final AMP_PERF_ENABLE:Z

.field public static final AMP_RELAUNCH_RESUME_ON:Z

.field public static final DEBUG:Z

.field public static final DEBUG_TRACE:Z

.field public static final TIMEOUT_ACT_RESUME:I

.field public static final TIMEOUT_ACT_START:I

.field public static final TIMEOUT_APP_SWITCH:I

.field public static final TIMEOUT_PREV_RESUME:I

.field public static final WALLPAPER_PROFILE:[Ljava/lang/String;

.field public static booster:Lcom/android/server/wm/ActivityManagerPerformance;

.field public static curTopAct:Lcom/android/server/wm/ActivityRecord;

.field public static curTopState:I

.field public static final gBlockedPkgs:[Ljava/lang/String;

.field public static final gSystemuiPkgs:[Ljava/lang/String;

.field public static final isChinaModel:Z

.field public static isPerfReserveSupport:Z

.field public static mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

.field public static mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

.field public static final mAppLaunchPackagesTimeOutLM:[Ljava/lang/String;

.field public static final mAppLaunchPackagesTimeOutM:[Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public static mFoldListenedTime:J

.field public static final mLockAppSwitch:Ljava/lang/Object;

.field public static final mLockinit:Ljava/lang/Object;

.field public static final pkgDecoder:Ljava/util/Base64$Decoder;

.field public static prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

.field public static rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

.field public static final sLowPerformancePkgList:[Ljava/lang/String;

.field public static sLowPerformancePkgSet:Ljava/util/HashSet;

.field public static sNextTimeToSendSlugBigdata:J


# instance fields
.field public isMultiWindowResume:Z

.field public lastHomeBoostedTime:J

.field public lastHomePressedTime:J

.field public final mAppLaunchTimeCountStats:Ljava/util/Map;

.field public final mBigdataSlugSkipPackage:Ljava/util/Set;

.field public mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

.field public final mDeviceStateCallback:Lcom/android/server/wm/ActivityManagerPerformance$1;

.field public final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public mDramSize:J

.field public final mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

.field public mHqmManager:Landroid/os/SemHqmManager;

.field public final mIntentReceiver:Lcom/android/server/wm/ActivityManagerPerformance$2;

.field public final mIsAppLaunchDBInit:Z

.field public mIsFolded:Z

.field public mIsMidGroundCpuSetEnable:Z

.field public mIsScreenOn:Z

.field public mIsSdhmsInitCompleted:Z

.field public final mIsTaskBoostExist:Z

.field public final mIsTaskBoostHintExist:Z

.field public final mLockActResume:Ljava/lang/Object;

.field public final mLockActStart:Ljava/lang/Object;

.field public final mLockAppLaunch:Ljava/lang/Object;

.field public final mLockHome:Ljava/lang/Object;

.field public final mLockRelaunchResume:Ljava/lang/Object;

.field public final mLockTail:Ljava/lang/Object;

.field public mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

.field public needSkipResume:Z

.field public rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

.field public rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

.field public rLastActHome:Lcom/android/server/wm/ActivityRecord;

.field public rLastActTail:Lcom/android/server/wm/ActivityRecord;

.field public rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public static -$$Nest$mperfReserveControl(Lcom/android/server/wm/ActivityManagerPerformance;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    .line 5
    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    const-string p0, "e = "

    .line 9
    .line 10
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    const-string v1, "/proc/perf_reserve"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "ActivityManagerPerformance"

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 37
    .line 38
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    .line 40
    .line 41
    :try_start_1
    const-string v0, "UTF-8"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :catch_0
    move-exception p1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    goto :goto_5

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    move-object v0, v2

    .line 81
    goto :goto_2

    .line 82
    :catch_1
    move-exception p1

    .line 83
    move-object v0, v2

    .line 84
    goto :goto_1

    .line 85
    :catchall_1
    move-exception p1

    .line 86
    goto :goto_2

    .line 87
    :catch_2
    move-exception p1

    .line 88
    :goto_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .line 106
    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 110
    .line 111
    .line 112
    goto :goto_5

    .line 113
    :catch_3
    move-exception p1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :goto_2
    if-eqz v0, :cond_1

    .line 121
    .line 122
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :catch_4
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_1
    :goto_3
    throw p1

    .line 147
    :cond_2
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string/jumbo p1, "writeSysfs:: path() : /proc/perf_reserve exist() : "

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string p1, " canWrite() : "

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :cond_3
    :goto_5
    return-void
.end method

.method public static -$$Nest$mwriteAppLaunchTimeCountStatsToDB(Lcom/android/server/wm/ActivityManagerPerformance;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 5
    .line 6
    const-string v0, "failed writeAppLaunchTimeCountStatsToDB, "

    .line 7
    .line 8
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sput-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    const-string v2, "ActivityManagerPerformance"

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    :try_start_0
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 21
    .line 22
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v4, "AppLaunchTimeCountStats"

    .line 26
    .line 27
    invoke-static {v3, v1, v4}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 31
    .line 32
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    .line 34
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string v4, "lastModifiedTime"

    .line 38
    .line 39
    invoke-static {v1, v3, v4}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    const-string/jumbo v1, "writeAppLaunchTimeCountStatsToDB"

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :catch_0
    move-exception v1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :goto_1
    if-eqz p0, :cond_0

    .line 62
    .line 63
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :goto_2
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_1
    const-string p0, "failed DB writable open to writeAppLaunchTimeCountStatsToDB."

    .line 90
    .line 91
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :goto_3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-string/jumbo v0, "user"

    .line 2
    .line 3
    .line 4
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    xor-int/2addr v0, v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "false"

    .line 14
    .line 15
    const-string/jumbo v4, "true"

    .line 16
    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string/jumbo v0, "sys.config.amp_debug"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v1, v2

    .line 35
    :cond_1
    :goto_0
    sput-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 36
    .line 37
    const-string/jumbo v0, "sys.config.amp_debug_trace"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 49
    .line 50
    const-string/jumbo v0, "sys.config.amp_enable"

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 62
    .line 63
    const-string/jumbo v0, "sys.config.amp_perf_enable"

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 75
    .line 76
    const-string/jumbo v0, "sys.config.amp_relaunch_resume"

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    .line 88
    .line 89
    const-string/jumbo v0, "sys.config.amp_to_act_resume"

    .line 90
    .line 91
    .line 92
    const-string v1, "1000"

    .line 93
    .line 94
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    .line 103
    .line 104
    const-string/jumbo v0, "sys.config.amp_to_act_start"

    .line 105
    .line 106
    .line 107
    const-string v1, "2000"

    .line 108
    .line 109
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    .line 118
    .line 119
    const-string/jumbo v0, "sys.config.amp_to_app_switch"

    .line 120
    .line 121
    .line 122
    const-string v1, "3000"

    .line 123
    .line 124
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    .line 133
    .line 134
    const-string/jumbo v0, "sys.config.amp_to_prev_resume"

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    .line 146
    .line 147
    const-string/jumbo v0, "ro.csc.country_code"

    .line 148
    .line 149
    .line 150
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, "China"

    .line 155
    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->isChinaModel:Z

    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 164
    .line 165
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    sput-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->pkgDecoder:Ljava/util/Base64$Decoder;

    .line 170
    .line 171
    const-string v1, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="

    .line 172
    .line 173
    invoke-static {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    const-string v4, "Y29tLmFuZHJvaWQuY2hyb21l"

    .line 178
    .line 179
    invoke-static {v4}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    sput-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgList:[Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    const-string v3, "Y29tLnNhbXN1bmcuYW5kcm9pZC5ob21laHVi"

    .line 194
    .line 195
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    const-string v3, "Y29tLm5obi5hbmRyb2lkLnNlYXJjaA=="

    .line 200
    .line 201
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    const-string v3, "Y29tLmdvb2dsZS5hbmRyb2lkLmdt"

    .line 206
    .line 207
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    const-string v3, "Y29tLnNhbXN1bmcuYW5kcm9pZC5lbWFpbC51aQ=="

    .line 212
    .line 213
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    const-string v3, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    .line 218
    .line 219
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    const-string v3, "Y29tLnNhbXN1bmcuZXZlcmdsYWRlcy52aWRlbw=="

    .line 224
    .line 225
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    const-string v3, "Y29tLnNhbXN1bmcuYW5kcm9pZC52aWRlbw=="

    .line 230
    .line 231
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    const-string v3, "Y29tLnNlYy5hbmRyb2lkLmdhbGxlcnkzZA=="

    .line 236
    .line 237
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    const-string v3, "Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWFwcw=="

    .line 242
    .line 243
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v13

    .line 247
    const-string v3, "Y29tLmJhaWR1LmFwcHNlYXJjaA=="

    .line 248
    .line 249
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v14

    .line 253
    const-string v3, "Y29tLnNpbmEud2VpYm8="

    .line 254
    .line 255
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v15

    .line 259
    const-string v3, "Y29tLmJhaWR1LkJhaWR1TWFw"

    .line 260
    .line 261
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v16

    .line 265
    const-string v3, "Y29tLnR3aXR0ZXIuYW5kcm9pZA=="

    .line 266
    .line 267
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v17

    .line 271
    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    sput-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutLM:[Ljava/lang/String;

    .line 276
    .line 277
    const-string v3, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE="

    .line 278
    .line 279
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    filled-new-array {v4}, [Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    sput-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutM:[Ljava/lang/String;

    .line 288
    .line 289
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    invoke-static {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    const-string v1, "Y29tLnNlYy5hbmRyb2lkLmFwcC50aW55bQ=="

    .line 296
    .line 297
    invoke-static {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    filled-new-array {v1}, [Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    sput-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->gBlockedPkgs:[Ljava/lang/String;

    .line 306
    .line 307
    sput-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    .line 308
    .line 309
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 310
    .line 311
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 312
    .line 313
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 314
    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 316
    .line 317
    .line 318
    move-result-wide v1

    .line 319
    const-wide/16 v3, 0x1e

    .line 320
    .line 321
    invoke-static {v3, v4}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    .line 326
    .line 327
    .line 328
    move-result-wide v3

    .line 329
    add-long/2addr v3, v1

    .line 330
    sput-wide v3, Lcom/android/server/wm/ActivityManagerPerformance;->sNextTimeToSendSlugBigdata:J

    .line 331
    .line 332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 333
    .line 334
    .line 335
    move-result-wide v1

    .line 336
    sput-wide v1, Lcom/android/server/wm/ActivityManagerPerformance;->mFoldListenedTime:J

    .line 337
    .line 338
    new-instance v1, Ljava/lang/Object;

    .line 339
    .line 340
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 341
    .line 342
    .line 343
    sput-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockinit:Ljava/lang/Object;

    .line 344
    .line 345
    new-instance v1, Ljava/lang/Object;

    .line 346
    .line 347
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 348
    .line 349
    .line 350
    sput-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    .line 351
    .line 352
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    .line 353
    .line 354
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 355
    .line 356
    const-string v0, "MidgroundProcess"

    .line 357
    .line 358
    filled-new-array {v0}, [Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->WALLPAPER_PROFILE:[Ljava/lang/String;

    .line 363
    .line 364
    const-string v0, "Y29tLmFuZHJvaWQuc3lzdGVtdWk="

    .line 365
    .line 366
    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    const-string v1, "Y29tLnNlYy5hbmRyb2lkLmRleHN5c3RlbXVp"

    .line 371
    .line 372
    invoke-static {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->gSystemuiPkgs:[Ljava/lang/String;

    .line 381
    .line 382
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashSet;

    .line 7
    .line 8
    const-string v2, "YW5kcm9pZA=="

    .line 9
    .line 10
    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v2, "Y29tLmdvb2dsZS5hbmRyb2lkLnBhY2thZ2VpbnN0YWxsZXI="

    .line 15
    .line 16
    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const-string v2, "Y29tLnRydWVjYWxsZXI="

    .line 21
    .line 22
    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const-string v2, "Y29tLmdvb2dsZS5hbmRyb2lkLnBlcm1pc3Npb25jb250cm9sbGVy"

    .line 27
    .line 28
    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const-string v2, "Y29tLnNlYy5hbmRyb2lkLmFwcC5sYXVuY2hlcg=="

    .line 33
    .line 34
    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    const-string v2, "c3lzdGVtdWk="

    .line 39
    .line 40
    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mBigdataSlugSkipPackage:Ljava/util/Set;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsSdhmsInitCompleted:Z

    .line 59
    .line 60
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsMidGroundCpuSetEnable:Z

    .line 61
    .line 62
    const-wide/16 v3, 0x0

    .line 63
    .line 64
    iput-wide v3, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDramSize:J

    .line 65
    .line 66
    new-instance v0, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    .line 72
    .line 73
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsAppLaunchDBInit:Z

    .line 74
    .line 75
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsFolded:Z

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    iput-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 79
    .line 80
    new-instance v5, Lcom/android/server/wm/ActivityManagerPerformance$1;

    .line 81
    .line 82
    invoke-direct {v5, v1}, Lcom/android/server/wm/ActivityManagerPerformance$1;-><init>(Lcom/android/server/wm/ActivityManagerPerformance;)V

    .line 83
    .line 84
    .line 85
    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateCallback:Lcom/android/server/wm/ActivityManagerPerformance$1;

    .line 86
    .line 87
    new-instance v5, Ljava/lang/Object;

    .line 88
    .line 89
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    .line 93
    .line 94
    new-instance v5, Ljava/lang/Object;

    .line 95
    .line 96
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    .line 100
    .line 101
    new-instance v5, Ljava/lang/Object;

    .line 102
    .line 103
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    .line 107
    .line 108
    new-instance v5, Ljava/lang/Object;

    .line 109
    .line 110
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    .line 114
    .line 115
    new-instance v5, Ljava/lang/Object;

    .line 116
    .line 117
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    .line 121
    .line 122
    new-instance v5, Ljava/lang/Object;

    .line 123
    .line 124
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppLaunch:Ljava/lang/Object;

    .line 128
    .line 129
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    .line 130
    .line 131
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostHintExist:Z

    .line 132
    .line 133
    iput-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 134
    .line 135
    const/4 v5, 0x1

    .line 136
    iput-boolean v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 137
    .line 138
    new-instance v6, Lcom/android/server/wm/ActivityManagerPerformance$2;

    .line 139
    .line 140
    invoke-direct {v6, v1}, Lcom/android/server/wm/ActivityManagerPerformance$2;-><init>(Lcom/android/server/wm/ActivityManagerPerformance;)V

    .line 141
    .line 142
    .line 143
    iput-object v6, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIntentReceiver:Lcom/android/server/wm/ActivityManagerPerformance$2;

    .line 144
    .line 145
    move-object/from16 v6, p2

    .line 146
    .line 147
    iput-object v6, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 148
    .line 149
    sput-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    new-instance v6, Ljava/util/HashSet;

    .line 152
    .line 153
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 154
    .line 155
    .line 156
    sput-object v6, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    .line 157
    .line 158
    move v6, v2

    .line 159
    :goto_0
    sget-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgList:[Ljava/lang/String;

    .line 160
    .line 161
    array-length v8, v7

    .line 162
    if-ge v6, v8, :cond_0

    .line 163
    .line 164
    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    .line 165
    .line 166
    aget-object v7, v7, v6

    .line 167
    .line 168
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    add-int/lit8 v6, v6, 0x1

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_0
    const-string v6, "AmpHandlerThread"

    .line 175
    .line 176
    const/4 v7, -0x2

    .line 177
    invoke-static {v7, v6, v2}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    new-instance v7, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 182
    .line 183
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-direct {v7, v1, v6}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;-><init>(Lcom/android/server/wm/ActivityManagerPerformance;Landroid/os/Looper;)V

    .line 188
    .line 189
    .line 190
    iput-object v7, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 191
    .line 192
    const-string v6, "/proc/perf_reserve"

    .line 193
    .line 194
    invoke-static {v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    sput-boolean v6, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    .line 199
    .line 200
    const-string v6, "android.intent.action.SCREEN_ON"

    .line 201
    .line 202
    const-string v7, "android.intent.action.SCREEN_OFF"

    .line 203
    .line 204
    const-string v8, "com.sec.android.sdhms.action.INIT_COMPLETED"

    .line 205
    .line 206
    const-string v9, "com.sec.android.intent.action.BIGDATA_EVERY_DAY_UPDATE"

    .line 207
    .line 208
    const-string v10, "com.sec.android.intent.action.BIGDATA_EVERY_WEEK_CLEANUP"

    .line 209
    .line 210
    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    .line 215
    .line 216
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const/16 v7, 0x3e7

    .line 220
    .line 221
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 222
    .line 223
    .line 224
    sget-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 225
    .line 226
    iget-object v8, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIntentReceiver:Lcom/android/server/wm/ActivityManagerPerformance$2;

    .line 227
    .line 228
    const/4 v11, 0x2

    .line 229
    invoke-virtual {v7, v8, v6, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 230
    .line 231
    .line 232
    sget-object v6, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 233
    .line 234
    const-string v7, "TASK_BOOST"

    .line 235
    .line 236
    invoke-static {v6, v7}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    iput-object v6, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 241
    .line 242
    if-eqz v6, :cond_1

    .line 243
    .line 244
    const v7, 0x402610

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6, v7}, Lcom/samsung/android/os/SemDvfsManager;->checkSysfsIdExist(I)Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    iput-boolean v7, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    .line 252
    .line 253
    const/16 v7, 0x24

    .line 254
    .line 255
    invoke-virtual {v6, v7}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    iput-boolean v8, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostHintExist:Z

    .line 260
    .line 261
    if-eqz v8, :cond_1

    .line 262
    .line 263
    invoke-virtual {v6, v7}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 264
    .line 265
    .line 266
    :cond_1
    const-string v6, "ActivityManagerPerformance"

    .line 267
    .line 268
    sget-boolean v7, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 269
    .line 270
    if-eqz v7, :cond_2

    .line 271
    .line 272
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    new-instance v8, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 277
    .line 278
    invoke-direct {v8, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 294
    .line 295
    .line 296
    :cond_2
    move-object v8, v0

    .line 297
    new-instance v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 298
    .line 299
    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 300
    .line 301
    invoke-direct {v0, v1, v11}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;-><init>(Lcom/android/server/wm/ActivityManagerPerformance;Landroid/content/Context;)V

    .line 302
    .line 303
    .line 304
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 305
    .line 306
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 311
    .line 312
    const-string v0, "getWritableDatabase for appDB"

    .line 313
    .line 314
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .line 316
    .line 317
    goto :goto_3

    .line 318
    :catch_0
    move-exception v0

    .line 319
    goto :goto_1

    .line 320
    :catch_1
    move-exception v0

    .line 321
    goto :goto_2

    .line 322
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v12, "Exception for appDB "

    .line 325
    .line 326
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v0, v11, v6}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_3

    .line 333
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v12, "SQLiteException for appDB "

    .line 336
    .line 337
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v12

    .line 344
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v11

    .line 351
    invoke-static {v6, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    const-string/jumbo v11, "malformed database"

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-eqz v0, :cond_4

    .line 366
    .line 367
    const-string v0, "delete app db and open"

    .line 368
    .line 369
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 373
    .line 374
    const-string v11, "/data/misc/AppLaunchTime/app_launch_time.db"

    .line 375
    .line 376
    invoke-virtual {v0, v11}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    if-eqz v0, :cond_3

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 383
    .line 384
    .line 385
    move-result v11

    .line 386
    if-eqz v11, :cond_3

    .line 387
    .line 388
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 389
    .line 390
    .line 391
    :cond_3
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 392
    .line 393
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 398
    .line 399
    goto :goto_3

    .line 400
    :catch_2
    const-string v0, "SQLiteDatabaseCorruptException for appDB"

    .line 401
    .line 402
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 406
    .line 407
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 412
    .line 413
    :cond_4
    :goto_3
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 414
    .line 415
    if-eqz v0, :cond_1c

    .line 416
    .line 417
    :try_start_1
    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 418
    .line 419
    invoke-static {v11, v0}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mfetch(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 420
    .line 421
    .line 422
    if-eqz v7, :cond_5

    .line 423
    .line 424
    const-string v0, "AppLaunchDB fetch"

    .line 425
    .line 426
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    .line 428
    .line 429
    goto :goto_4

    .line 430
    :catchall_0
    move-exception v0

    .line 431
    goto/16 :goto_1a

    .line 432
    .line 433
    :cond_5
    :goto_4
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 434
    .line 435
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 436
    .line 437
    .line 438
    goto :goto_6

    .line 439
    :catch_3
    :try_start_2
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 440
    .line 441
    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 442
    .line 443
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    .line 445
    .line 446
    :try_start_3
    const-string v0, "DROP TABLE AppLaunchTime;"

    .line 447
    .line 448
    invoke-virtual {v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 449
    .line 450
    .line 451
    goto :goto_5

    .line 452
    :catch_4
    move-exception v0

    .line 453
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    const-string v12, "Failed to drop table. "

    .line 456
    .line 457
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    const-string v11, "ActivityManagerPerformance:AppLaunchTime"

    .line 472
    .line 473
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    :goto_5
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 477
    .line 478
    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 479
    .line 480
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 481
    .line 482
    .line 483
    const-string v0, "failed fetch, drop & onCreate new"

    .line 484
    .line 485
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 486
    .line 487
    .line 488
    goto :goto_4

    .line 489
    :goto_6
    const-string v11, "failed checkStartTimeGathered, "

    .line 490
    .line 491
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 492
    .line 493
    iget-wide v12, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    .line 494
    .line 495
    cmp-long v14, v12, v3

    .line 496
    .line 497
    const-string/jumbo v15, "startTimeOfGatheredData"

    .line 498
    .line 499
    .line 500
    if-lez v14, :cond_6

    .line 501
    .line 502
    if-eqz v7, :cond_9

    .line 503
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    const-string v11, "DB mStartTimeGathered : "

    .line 507
    .line 508
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    goto :goto_a

    .line 522
    :cond_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 527
    .line 528
    if-eqz v0, :cond_8

    .line 529
    .line 530
    :try_start_5
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 531
    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 533
    .line 534
    .line 535
    move-result-wide v12

    .line 536
    iput-wide v12, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    .line 537
    .line 538
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 539
    .line 540
    sget-object v12, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 541
    .line 542
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    invoke-static {v0, v12, v15}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 546
    .line 547
    .line 548
    :cond_7
    :goto_7
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 549
    .line 550
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 551
    .line 552
    .line 553
    goto :goto_9

    .line 554
    :catchall_1
    move-exception v0

    .line 555
    goto :goto_8

    .line 556
    :catch_5
    move-exception v0

    .line 557
    if-eqz v7, :cond_7

    .line 558
    .line 559
    :try_start_6
    new-instance v12, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 576
    .line 577
    .line 578
    goto :goto_7

    .line 579
    :goto_8
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 580
    .line 581
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 582
    .line 583
    .line 584
    throw v0

    .line 585
    :cond_8
    :goto_9
    if-eqz v7, :cond_9

    .line 586
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    const-string/jumbo v11, "setStartTimeGathered : "

    .line 590
    .line 591
    .line 592
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 596
    .line 597
    iget-wide v11, v11, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    .line 598
    .line 599
    invoke-static {v0, v11, v12, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 600
    .line 601
    .line 602
    :cond_9
    :goto_a
    const-string v11, "failed checkDevicePowerOnCount, "

    .line 603
    .line 604
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 605
    .line 606
    iget-wide v12, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    .line 607
    .line 608
    cmp-long v0, v12, v3

    .line 609
    .line 610
    const-wide/16 v3, 0x1

    .line 611
    .line 612
    if-lez v0, :cond_a

    .line 613
    .line 614
    add-long/2addr v12, v3

    .line 615
    if-eqz v7, :cond_b

    .line 616
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    const-string v14, "DB mDevicePowerOnCount : "

    .line 620
    .line 621
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .line 633
    .line 634
    goto :goto_b

    .line 635
    :cond_a
    move-wide v12, v3

    .line 636
    :cond_b
    :goto_b
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 637
    .line 638
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 643
    .line 644
    const-string v14, "devicePowerOnCount"

    .line 645
    .line 646
    if-eqz v0, :cond_d

    .line 647
    .line 648
    :try_start_7
    sget-object v5, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 649
    .line 650
    iput-wide v12, v5, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    .line 651
    .line 652
    invoke-static {v5, v0, v14}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 653
    .line 654
    .line 655
    :cond_c
    :goto_c
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 656
    .line 657
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 658
    .line 659
    .line 660
    goto :goto_e

    .line 661
    :catchall_2
    move-exception v0

    .line 662
    goto :goto_d

    .line 663
    :catch_6
    move-exception v0

    .line 664
    if-eqz v7, :cond_c

    .line 665
    .line 666
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    .line 667
    .line 668
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 683
    .line 684
    .line 685
    goto :goto_c

    .line 686
    :goto_d
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 687
    .line 688
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 689
    .line 690
    .line 691
    throw v0

    .line 692
    :cond_d
    :goto_e
    if-eqz v7, :cond_e

    .line 693
    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    const-string/jumbo v5, "setDevicePowerOnCount : "

    .line 697
    .line 698
    .line 699
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    sget-object v5, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 703
    .line 704
    iget-wide v11, v5, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    .line 705
    .line 706
    invoke-static {v0, v11, v12, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 707
    .line 708
    .line 709
    :cond_e
    const-string v5, "failed checkBuildVersionChanged, "

    .line 710
    .line 711
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 712
    .line 713
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mBuildVersion:Ljava/lang/String;

    .line 714
    .line 715
    const-string/jumbo v11, "ro.build.version.incremental"

    .line 716
    .line 717
    .line 718
    const-string v12, "None"

    .line 719
    .line 720
    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v11

    .line 724
    if-eqz v0, :cond_f

    .line 725
    .line 726
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    move-result v12

    .line 730
    if-eqz v12, :cond_f

    .line 731
    .line 732
    if-eqz v7, :cond_12

    .line 733
    .line 734
    const-string v5, "build version check : "

    .line 735
    .line 736
    const-string v12, ","

    .line 737
    .line 738
    invoke-static {v5, v0, v12, v11, v6}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    goto :goto_12

    .line 742
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityManagerPerformance;->deleteDBTableAndClear()V

    .line 743
    .line 744
    .line 745
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 746
    .line 747
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 752
    .line 753
    if-eqz v0, :cond_11

    .line 754
    .line 755
    :try_start_9
    sget-object v12, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 756
    .line 757
    iput-object v11, v12, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mBuildVersion:Ljava/lang/String;

    .line 758
    .line 759
    const-string v13, "buildVersion"

    .line 760
    .line 761
    invoke-static {v12, v0, v13}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 765
    .line 766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 767
    .line 768
    .line 769
    move-result-wide v12

    .line 770
    iput-wide v12, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    .line 771
    .line 772
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 773
    .line 774
    sget-object v12, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 775
    .line 776
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    invoke-static {v0, v12, v15}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 783
    .line 784
    iput-wide v3, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    .line 785
    .line 786
    sget-object v12, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 787
    .line 788
    invoke-static {v0, v12, v14}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 789
    .line 790
    .line 791
    :cond_10
    :goto_f
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 792
    .line 793
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 794
    .line 795
    .line 796
    goto :goto_11

    .line 797
    :catchall_3
    move-exception v0

    .line 798
    goto :goto_10

    .line 799
    :catch_7
    move-exception v0

    .line 800
    if-eqz v7, :cond_10

    .line 801
    .line 802
    :try_start_a
    new-instance v12, Ljava/lang/StringBuilder;

    .line 803
    .line 804
    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 819
    .line 820
    .line 821
    goto :goto_f

    .line 822
    :goto_10
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 823
    .line 824
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 825
    .line 826
    .line 827
    throw v0

    .line 828
    :cond_11
    :goto_11
    if-eqz v7, :cond_12

    .line 829
    .line 830
    const-string v0, "detect New build version : "

    .line 831
    .line 832
    invoke-static {v0, v11, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    :cond_12
    :goto_12
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 836
    .line 837
    const-string v5, "failed registerAlarm - dayOfWeek, "

    .line 838
    .line 839
    const-string v11, "alarm"

    .line 840
    .line 841
    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    move-object v11, v0

    .line 846
    check-cast v11, Landroid/app/AlarmManager;

    .line 847
    .line 848
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 849
    .line 850
    .line 851
    move-result-object v12

    .line 852
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 853
    .line 854
    .line 855
    move-result-wide v13

    .line 856
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 857
    .line 858
    new-instance v15, Landroid/content/Intent;

    .line 859
    .line 860
    invoke-direct {v15, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    const/high16 v9, 0x4000000

    .line 864
    .line 865
    invoke-static {v0, v2, v15, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 866
    .line 867
    .line 868
    move-result-object v22

    .line 869
    const/16 v15, 0xb

    .line 870
    .line 871
    const/4 v0, 0x3

    .line 872
    invoke-virtual {v12, v15, v0}, Ljava/util/Calendar;->set(II)V

    .line 873
    .line 874
    .line 875
    const/16 v3, 0xc

    .line 876
    .line 877
    const/16 v0, 0x1e

    .line 878
    .line 879
    invoke-virtual {v12, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 880
    .line 881
    .line 882
    const/16 v0, 0xd

    .line 883
    .line 884
    invoke-virtual {v12, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 885
    .line 886
    .line 887
    const/16 v0, 0xe

    .line 888
    .line 889
    invoke-virtual {v12, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 890
    .line 891
    .line 892
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 893
    .line 894
    .line 895
    move-result-wide v16

    .line 896
    const-wide/32 v18, 0x5265c00

    .line 897
    .line 898
    .line 899
    add-long v18, v16, v18

    .line 900
    .line 901
    const-wide/32 v20, 0x5265c00

    .line 902
    .line 903
    .line 904
    const/16 v17, 0x1

    .line 905
    .line 906
    move-object/from16 v16, v11

    .line 907
    .line 908
    invoke-virtual/range {v16 .. v22}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 909
    .line 910
    .line 911
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 912
    .line 913
    iget-wide v3, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    .line 914
    .line 915
    long-to-int v0, v3

    .line 916
    const/4 v3, 0x7

    .line 917
    if-gez v0, :cond_15

    .line 918
    .line 919
    new-instance v0, Ljava/util/Random;

    .line 920
    .line 921
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 922
    .line 923
    .line 924
    move-object v4, v10

    .line 925
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 926
    .line 927
    .line 928
    move-result-wide v9

    .line 929
    invoke-virtual {v0, v9, v10}, Ljava/util/Random;->setSeed(J)V

    .line 930
    .line 931
    .line 932
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    .line 933
    .line 934
    .line 935
    move-result v0

    .line 936
    const/4 v9, 0x1

    .line 937
    add-int/lit8 v10, v0, 0x1

    .line 938
    .line 939
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 940
    .line 941
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 946
    .line 947
    if-eqz v0, :cond_14

    .line 948
    .line 949
    :try_start_b
    sget-object v9, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 950
    .line 951
    int-to-long v2, v10

    .line 952
    iput-wide v2, v9, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    .line 953
    .line 954
    const-string v2, "DayOfWeek"

    .line 955
    .line 956
    invoke-static {v9, v0, v2}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 957
    .line 958
    .line 959
    :cond_13
    :goto_13
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 960
    .line 961
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 962
    .line 963
    .line 964
    goto :goto_15

    .line 965
    :catchall_4
    move-exception v0

    .line 966
    goto :goto_14

    .line 967
    :catch_8
    move-exception v0

    .line 968
    if-eqz v7, :cond_13

    .line 969
    .line 970
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 971
    .line 972
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v0

    .line 979
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 987
    .line 988
    .line 989
    goto :goto_13

    .line 990
    :goto_14
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 991
    .line 992
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 993
    .line 994
    .line 995
    throw v0

    .line 996
    :cond_14
    :goto_15
    move v0, v10

    .line 997
    goto :goto_16

    .line 998
    :cond_15
    move-object v4, v10

    .line 999
    :goto_16
    if-eqz v7, :cond_16

    .line 1000
    .line 1001
    const-string v2, "TTLS Day of Week : "

    .line 1002
    .line 1003
    invoke-static {v0, v2, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    :cond_16
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 1007
    .line 1008
    new-instance v3, Landroid/content/Intent;

    .line 1009
    .line 1010
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    const/4 v5, 0x0

    .line 1014
    const/high16 v9, 0x4000000

    .line 1015
    .line 1016
    invoke-static {v2, v5, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v22

    .line 1020
    const/4 v2, 0x7

    .line 1021
    invoke-virtual {v12, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v12, v15, v5}, Ljava/util/Calendar;->set(II)V

    .line 1025
    .line 1026
    .line 1027
    const/16 v2, 0xc

    .line 1028
    .line 1029
    invoke-virtual {v12, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 1033
    .line 1034
    .line 1035
    move-result-wide v2

    .line 1036
    cmp-long v0, v2, v13

    .line 1037
    .line 1038
    const-wide/16 v9, 0x7

    .line 1039
    .line 1040
    if-lez v0, :cond_17

    .line 1041
    .line 1042
    invoke-static {v9, v10}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v0

    .line 1046
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 1047
    .line 1048
    .line 1049
    move-result-wide v12

    .line 1050
    sub-long v12, v2, v12

    .line 1051
    .line 1052
    goto :goto_17

    .line 1053
    :cond_17
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 1054
    .line 1055
    .line 1056
    move-result-wide v12

    .line 1057
    const-wide/32 v14, 0x240c8400

    .line 1058
    .line 1059
    .line 1060
    add-long/2addr v12, v14

    .line 1061
    move-wide/from16 v23, v2

    .line 1062
    .line 1063
    move-wide v2, v12

    .line 1064
    move-wide/from16 v12, v23

    .line 1065
    .line 1066
    :goto_17
    const/16 v17, 0x1

    .line 1067
    .line 1068
    const-wide/32 v20, 0x240c8400

    .line 1069
    .line 1070
    .line 1071
    move-object/from16 v16, v11

    .line 1072
    .line 1073
    move-wide/from16 v18, v2

    .line 1074
    .line 1075
    invoke-virtual/range {v16 .. v22}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1076
    .line 1077
    .line 1078
    if-eqz v7, :cond_18

    .line 1079
    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    const-string v5, "Bigdata will send at : "

    .line 1083
    .line 1084
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v0

    .line 1094
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .line 1096
    .line 1097
    :cond_18
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 1098
    .line 1099
    iget-wide v2, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J

    .line 1100
    .line 1101
    sub-long/2addr v12, v2

    .line 1102
    const-wide/16 v2, 0x1

    .line 1103
    .line 1104
    invoke-static {v2, v3}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 1109
    .line 1110
    .line 1111
    move-result-wide v2

    .line 1112
    div-long/2addr v12, v2

    .line 1113
    cmp-long v0, v12, v9

    .line 1114
    .line 1115
    if-lez v0, :cond_1a

    .line 1116
    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityManagerPerformance;->deleteDBTableAndClear()V

    .line 1118
    .line 1119
    .line 1120
    if-eqz v7, :cond_19

    .line 1121
    .line 1122
    const-string v0, "deleted data older than last week."

    .line 1123
    .line 1124
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    .line 1126
    .line 1127
    :cond_19
    :goto_18
    const/4 v2, 0x1

    .line 1128
    goto :goto_19

    .line 1129
    :cond_1a
    const-wide/16 v2, 0x0

    .line 1130
    .line 1131
    cmp-long v0, v12, v2

    .line 1132
    .line 1133
    if-lez v0, :cond_1b

    .line 1134
    .line 1135
    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIntentReceiver:Lcom/android/server/wm/ActivityManagerPerformance$2;

    .line 1136
    .line 1137
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 1138
    .line 1139
    new-instance v3, Landroid/content/Intent;

    .line 1140
    .line 1141
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ActivityManagerPerformance$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1145
    .line 1146
    .line 1147
    if-eqz v7, :cond_19

    .line 1148
    .line 1149
    const-string v0, "did cleanup the data old the last week."

    .line 1150
    .line 1151
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    .line 1153
    .line 1154
    goto :goto_18

    .line 1155
    :cond_1b
    if-eqz v7, :cond_19

    .line 1156
    .line 1157
    const-string v0, "all data was updated this week."

    .line 1158
    .line 1159
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    .line 1161
    .line 1162
    goto :goto_18

    .line 1163
    :goto_19
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsAppLaunchDBInit:Z

    .line 1164
    .line 1165
    goto :goto_1b

    .line 1166
    :goto_1a
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 1167
    .line 1168
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1169
    .line 1170
    .line 1171
    throw v0

    .line 1172
    :cond_1c
    :goto_1b
    if-eqz v7, :cond_1d

    .line 1173
    .line 1174
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1175
    .line 1176
    .line 1177
    :cond_1d
    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 1178
    .line 1179
    if-nez v0, :cond_1e

    .line 1180
    .line 1181
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 1182
    .line 1183
    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    .line 1184
    .line 1185
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 1190
    .line 1191
    iput-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 1192
    .line 1193
    :cond_1e
    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 1194
    .line 1195
    if-eqz v0, :cond_1f

    .line 1196
    .line 1197
    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 1198
    .line 1199
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1200
    .line 1201
    .line 1202
    iget-object v1, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateCallback:Lcom/android/server/wm/ActivityManagerPerformance$1;

    .line 1203
    .line 1204
    invoke-virtual {v0, v2, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 1205
    .line 1206
    .line 1207
    :cond_1f
    return-void
.end method

.method public static getBooster(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/ActivityManagerPerformance;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockinit:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    new-instance v2, Lcom/android/server/wm/ActivityManagerPerformance;

    .line 19
    .line 20
    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 33
    .line 34
    :cond_2
    monitor-exit v1

    .line 35
    return-object v0

    .line 36
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_3
    :goto_2
    return-object v0
.end method

.method public static final isBlockedApp(Ljava/lang/String;)Z
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
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->gBlockedPkgs:[Ljava/lang/String;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    move v3, v0

    .line 9
    :goto_0
    if-ge v3, v2, :cond_2

    .line 10
    .line 11
    aget-object v4, v1, v3

    .line 12
    .line 13
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    return v0
.end method

.method public static isSpeg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

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
    const-string v0, "com.samsung.speg"

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const-string p1, "Skipping boost of "

    .line 16
    .line 17
    const-string v0, "SPEG"

    .line 18
    .line 19
    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_1
    return v1
.end method

.method public static declared-synchronized notifyCurTopAct(Lcom/android/server/wm/ActivityRecord;)V
    .locals 11

    .line 1
    const-string/jumbo v0, "notifyCurTopAct() activity changed\n[Activity] prev: "

    .line 2
    .line 3
    .line 4
    const-class v1, Lcom/android/server/wm/ActivityManagerPerformance;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 8
    .line 9
    if-eqz v2, :cond_15

    .line 10
    .line 11
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    if-ne v2, p0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_8

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x3

    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x4

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    move v2, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    move v2, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v2, v5

    .line 37
    :goto_0
    sget-boolean v6, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    if-eqz v6, :cond_6

    .line 41
    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 48
    .line 49
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", cur: "

    .line 53
    .line 54
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-boolean v8, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 65
    .line 66
    if-eqz v8, :cond_5

    .line 67
    .line 68
    new-instance v9, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, "\n[Process] prev: "

    .line 77
    .line 78
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto/16 :goto_9

    .line 90
    .line 91
    :cond_3
    move-object v0, v7

    .line 92
    :goto_1
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, ", cur: "

    .line 96
    .line 97
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v9, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, "\n[Package] prev: "

    .line 118
    .line 119
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 123
    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    move-object v0, v7

    .line 130
    :goto_2
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v0, ", cur: "

    .line 134
    .line 135
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-instance v9, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v0, "\n[TOP_STATE] prev: "

    .line 156
    .line 157
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    sget v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    .line 161
    .line 162
    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, ", cur: "

    .line 170
    .line 171
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    :cond_5
    const-string v9, "ActivityManagerPerformance"

    .line 186
    .line 187
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    if-eqz v8, :cond_6

    .line 191
    .line 192
    new-instance v0, Ljava/lang/Exception;

    .line 193
    .line 194
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    .line 199
    .line 200
    :cond_6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->ALLIED_PROC_PROTECTION_LMKD:Z

    .line 201
    .line 202
    if-eqz v0, :cond_b

    .line 203
    .line 204
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 205
    .line 206
    if-eqz v0, :cond_b

    .line 207
    .line 208
    iget v8, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    .line 209
    .line 210
    if-ne v8, v5, :cond_a

    .line 211
    .line 212
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 213
    .line 214
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_b

    .line 221
    .line 222
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->alliedProtectedProcList:Ljava/util/ArrayList;

    .line 223
    .line 224
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :try_start_1
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 226
    .line 227
    if-eqz v8, :cond_8

    .line 228
    .line 229
    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    if-nez v8, :cond_7

    .line 236
    .line 237
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 238
    .line 239
    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :catchall_1
    move-exception p0

    .line 246
    goto :goto_4

    .line 247
    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    .line 248
    .line 249
    const-string v8, "ActivityManagerPerformance"

    .line 250
    .line 251
    new-instance v9, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 257
    .line 258
    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v10, " allied process eligble for LMKD kill protect"

    .line 264
    .line 265
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    :cond_8
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    if-eqz v8, :cond_9

    .line 282
    .line 283
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    :cond_9
    monitor-exit v0

    .line 289
    goto :goto_5

    .line 290
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 291
    :try_start_2
    throw p0

    .line 292
    :cond_a
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->alliedProtectedProcList:Ljava/util/ArrayList;

    .line 293
    .line 294
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 296
    .line 297
    .line 298
    monitor-exit v0

    .line 299
    goto :goto_5

    .line 300
    :catchall_2
    move-exception p0

    .line 301
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 302
    :try_start_4
    throw p0

    .line 303
    :cond_b
    :goto_5
    sput-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 304
    .line 305
    sput-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    .line 306
    .line 307
    sget v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    .line 308
    .line 309
    if-eq v0, v2, :cond_13

    .line 310
    .line 311
    sput v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    .line 312
    .line 313
    sget-boolean v7, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 314
    .line 315
    if-eqz v7, :cond_13

    .line 316
    .line 317
    sget-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 318
    .line 319
    if-eqz v7, :cond_13

    .line 320
    .line 321
    iget-boolean v7, v7, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 322
    .line 323
    if-eqz v7, :cond_13

    .line 324
    .line 325
    const/4 v7, 0x1

    .line 326
    const/4 v8, 0x0

    .line 327
    if-ne v2, v4, :cond_d

    .line 328
    .line 329
    if-eqz v6, :cond_c

    .line 330
    .line 331
    const-string v0, "ActivityManagerPerformance"

    .line 332
    .line 333
    const-string/jumbo v2, "notifyCurTopAct() call setBoosterHome()"

    .line 334
    .line 335
    .line 336
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    :cond_c
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 340
    .line 341
    invoke-virtual {v0, p0, v7, v8}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(Lcom/android/server/wm/ActivityRecord;ZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 342
    .line 343
    .line 344
    monitor-exit v1

    .line 345
    return-void

    .line 346
    :cond_d
    if-ne v0, v3, :cond_13

    .line 347
    .line 348
    if-eq v2, v5, :cond_e

    .line 349
    .line 350
    if-ne v2, v7, :cond_13

    .line 351
    .line 352
    :cond_e
    :try_start_5
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 353
    .line 354
    if-eqz v0, :cond_f

    .line 355
    .line 356
    if-eq v0, p0, :cond_13

    .line 357
    .line 358
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 359
    .line 360
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-nez v0, :cond_13

    .line 367
    .line 368
    goto :goto_6

    .line 369
    :catch_0
    move-exception p0

    .line 370
    goto :goto_7

    .line 371
    :cond_f
    :goto_6
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 372
    .line 373
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 374
    .line 375
    if-eqz v2, :cond_11

    .line 376
    .line 377
    sget v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    .line 378
    .line 379
    if-ne v2, v5, :cond_11

    .line 380
    .line 381
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 382
    .line 383
    if-eqz v6, :cond_10

    .line 384
    .line 385
    const-string p0, "ActivityManagerPerformance"

    .line 386
    .line 387
    const-string/jumbo v0, "notifyCurTopAct() skipped. isMultiWindowResume: true"

    .line 388
    .line 389
    .line 390
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 391
    .line 392
    .line 393
    :cond_10
    monitor-exit v1

    .line 394
    return-void

    .line 395
    :cond_11
    if-eqz v6, :cond_12

    .line 396
    .line 397
    :try_start_6
    const-string v0, "ActivityManagerPerformance"

    .line 398
    .line 399
    const-string/jumbo v2, "notifyCurTopAct() call setBoosterAppSwitch()"

    .line 400
    .line 401
    .line 402
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    :cond_12
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 406
    .line 407
    invoke-virtual {v0, v7, p0}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 408
    .line 409
    .line 410
    monitor-exit v1

    .line 411
    return-void

    .line 412
    :goto_7
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 413
    .line 414
    .line 415
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 416
    .line 417
    iput-boolean v8, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 418
    .line 419
    monitor-exit v1

    .line 420
    return-void

    .line 421
    :cond_13
    :try_start_8
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 422
    .line 423
    if-eqz p0, :cond_14

    .line 424
    .line 425
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 426
    .line 427
    if-eqz v0, :cond_14

    .line 428
    .line 429
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    .line 430
    .line 431
    if-eqz v2, :cond_14

    .line 432
    .line 433
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 434
    .line 435
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->setLowPower(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 440
    .line 441
    .line 442
    :cond_14
    monitor-exit v1

    .line 443
    return-void

    .line 444
    :cond_15
    :goto_8
    monitor-exit v1

    .line 445
    return-void

    .line 446
    :goto_9
    monitor-exit v1

    .line 447
    throw p0
.end method

.method public static topStateToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const-string v0, "NO_STATE_NUM_OF_"

    .line 16
    .line 17
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, "TOP_STATE_APP"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    const-string p0, "TOP_STATE_RECENTS_APP"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    const-string p0, "TOP_STATE_HOME"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_3
    const-string p0, "TOP_STATE_IS_CREATING"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_4
    const-string p0, "TOP_STATE_INIT"

    .line 35
    .line 36
    return-object p0
.end method

.method public static x(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->pkgDecoder:Ljava/util/Base64$Decoder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public final checkBoostDisabledByFold()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final deleteDBTableAndClear()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "failed deleteDBTableAndClear, "

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sput-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    .line 13
    const-string v3, "ActivityManagerPerformance"

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    :try_start_0
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 18
    .line 19
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-static {v4, v2}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mdeleteDBData(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 26
    .line 27
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    .line 29
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v5, "lastModifiedTime"

    .line 33
    .line 34
    invoke-static {v2, v4, v5}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    .line 38
    .line 39
    check-cast p0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 42
    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    const-string p0, "deleteDBTableAndClear"

    .line 47
    .line 48
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :goto_1
    if-eqz v0, :cond_0

    .line 63
    .line 64
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :goto_2
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_1
    const-string p0, "failed DB writable open to deleteDBTableAndClear."

    .line 91
    .line 92
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :goto_3
    return-void
.end method

.method public final gatherAppLaunchTime(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p5

    .line 6
    .line 7
    move-wide/from16 v9, p7

    .line 8
    .line 9
    move-object/from16 v11, p9

    .line 10
    .line 11
    iget-object v12, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 12
    .line 13
    const-string v13, "ActivityManagerPerformance"

    .line 14
    .line 15
    const-string v14, "entry : "

    .line 16
    .line 17
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsAppLaunchDBInit:Z

    .line 18
    .line 19
    if-eqz v1, :cond_11

    .line 20
    .line 21
    if-eqz v7, :cond_11

    .line 22
    .line 23
    const-wide/16 v1, 0x4e20

    .line 24
    .line 25
    cmp-long v1, p3, v1

    .line 26
    .line 27
    if-ltz v1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_d

    .line 30
    .line 31
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->HOT:Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->getType()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eq v8, v1, :cond_1

    .line 38
    .line 39
    const-wide/16 v1, 0xbb8

    .line 40
    .line 41
    cmp-long v1, p3, v1

    .line 42
    .line 43
    if-lez v1, :cond_1

    .line 44
    .line 45
    const-wide/16 v1, 0x4

    .line 46
    .line 47
    cmp-long v1, v9, v1

    .line 48
    .line 49
    if-ltz v1, :cond_1

    .line 50
    .line 51
    const/16 v15, 0x32

    .line 52
    .line 53
    invoke-virtual {v12, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    .line 55
    .line 56
    new-instance v6, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    move-object v1, v6

    .line 59
    move/from16 v2, p5

    .line 60
    .line 61
    move-object/from16 v3, p1

    .line 62
    .line 63
    move-wide/from16 v4, p3

    .line 64
    .line 65
    move-object/from16 v16, v14

    .line 66
    .line 67
    move-object v14, v6

    .line 68
    move-object/from16 v6, p2

    .line 69
    .line 70
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;-><init>(ILjava/lang/String;JLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v12, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v12, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-object/from16 v16, v14

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    move-object/from16 v16, v14

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_1
    :goto_0
    const-string v1, "failed to sendMessage"

    .line 88
    .line 89
    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :goto_1
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 99
    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    :try_start_2
    invoke-virtual {v1, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catch_2
    if-eqz v2, :cond_2

    .line 111
    .line 112
    const-string v1, "is not found in pm"

    .line 113
    .line 114
    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_2
    const-string v1, "None"

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    const-string v1, ""

    .line 125
    .line 126
    :goto_2
    :try_start_3
    iget-object v3, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    .line 127
    .line 128
    check-cast v3, Ljava/util/HashMap;

    .line 129
    .line 130
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    const-wide/16 v4, 0x0

    .line 135
    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    iget-object v3, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    .line 139
    .line 140
    check-cast v3, Ljava/util/HashMap;

    .line 141
    .line 142
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Ljava/util/Map;

    .line 147
    .line 148
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_5

    .line 153
    .line 154
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Ljava/util/Map;

    .line 159
    .line 160
    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_4

    .line 165
    .line 166
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, [[Ljava/lang/Long;

    .line 171
    .line 172
    goto/16 :goto_4

    .line 173
    .line 174
    :catch_3
    move-exception v0

    .line 175
    goto/16 :goto_c

    .line 176
    .line 177
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    .line 179
    .line 180
    move-result-object v17

    .line 181
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 182
    .line 183
    .line 184
    move-result-object v18

    .line 185
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object v19

    .line 189
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 190
    .line 191
    .line 192
    move-result-object v20

    .line 193
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object v21

    .line 197
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v22

    .line 201
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 202
    .line 203
    .line 204
    move-result-object v23

    .line 205
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 206
    .line 207
    .line 208
    move-result-object v24

    .line 209
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 210
    .line 211
    .line 212
    move-result-object v25

    .line 213
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 214
    .line 215
    .line 216
    move-result-object v26

    .line 217
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 218
    .line 219
    .line 220
    move-result-object v27

    .line 221
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 222
    .line 223
    .line 224
    move-result-object v28

    .line 225
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 226
    .line 227
    .line 228
    move-result-object v29

    .line 229
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 230
    .line 231
    .line 232
    move-result-object v30

    .line 233
    filled-new-array/range {v17 .. v30}, [Ljava/lang/Long;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 238
    .line 239
    .line 240
    move-result-object v17

    .line 241
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 242
    .line 243
    .line 244
    move-result-object v18

    .line 245
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 246
    .line 247
    .line 248
    move-result-object v19

    .line 249
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 250
    .line 251
    .line 252
    move-result-object v20

    .line 253
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 254
    .line 255
    .line 256
    move-result-object v21

    .line 257
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 258
    .line 259
    .line 260
    move-result-object v22

    .line 261
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 262
    .line 263
    .line 264
    move-result-object v23

    .line 265
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 266
    .line 267
    .line 268
    move-result-object v24

    .line 269
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 270
    .line 271
    .line 272
    move-result-object v25

    .line 273
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 274
    .line 275
    .line 276
    move-result-object v26

    .line 277
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 278
    .line 279
    .line 280
    move-result-object v27

    .line 281
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 282
    .line 283
    .line 284
    move-result-object v28

    .line 285
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 286
    .line 287
    .line 288
    move-result-object v29

    .line 289
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 290
    .line 291
    .line 292
    move-result-object v30

    .line 293
    filled-new-array/range {v17 .. v30}, [Ljava/lang/Long;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 298
    .line 299
    .line 300
    move-result-object v17

    .line 301
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 302
    .line 303
    .line 304
    move-result-object v18

    .line 305
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 306
    .line 307
    .line 308
    move-result-object v19

    .line 309
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 310
    .line 311
    .line 312
    move-result-object v20

    .line 313
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 314
    .line 315
    .line 316
    move-result-object v21

    .line 317
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 318
    .line 319
    .line 320
    move-result-object v22

    .line 321
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 322
    .line 323
    .line 324
    move-result-object v23

    .line 325
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 326
    .line 327
    .line 328
    move-result-object v24

    .line 329
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 330
    .line 331
    .line 332
    move-result-object v25

    .line 333
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 334
    .line 335
    .line 336
    move-result-object v26

    .line 337
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 338
    .line 339
    .line 340
    move-result-object v27

    .line 341
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 342
    .line 343
    .line 344
    move-result-object v28

    .line 345
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 346
    .line 347
    .line 348
    move-result-object v29

    .line 349
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 350
    .line 351
    .line 352
    move-result-object v30

    .line 353
    filled-new-array/range {v17 .. v30}, [Ljava/lang/Long;

    .line 354
    .line 355
    .line 356
    move-result-object v12

    .line 357
    filled-new-array {v3, v6, v12}, [[Ljava/lang/Long;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-interface {v1, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    goto/16 :goto_3

    .line 365
    .line 366
    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 367
    .line 368
    .line 369
    move-result-object v17

    .line 370
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 371
    .line 372
    .line 373
    move-result-object v18

    .line 374
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 375
    .line 376
    .line 377
    move-result-object v19

    .line 378
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 379
    .line 380
    .line 381
    move-result-object v20

    .line 382
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 383
    .line 384
    .line 385
    move-result-object v21

    .line 386
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 387
    .line 388
    .line 389
    move-result-object v22

    .line 390
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 391
    .line 392
    .line 393
    move-result-object v23

    .line 394
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 395
    .line 396
    .line 397
    move-result-object v24

    .line 398
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 399
    .line 400
    .line 401
    move-result-object v25

    .line 402
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 403
    .line 404
    .line 405
    move-result-object v26

    .line 406
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 407
    .line 408
    .line 409
    move-result-object v27

    .line 410
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 411
    .line 412
    .line 413
    move-result-object v28

    .line 414
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 415
    .line 416
    .line 417
    move-result-object v29

    .line 418
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 419
    .line 420
    .line 421
    move-result-object v30

    .line 422
    filled-new-array/range {v17 .. v30}, [Ljava/lang/Long;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 427
    .line 428
    .line 429
    move-result-object v17

    .line 430
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 431
    .line 432
    .line 433
    move-result-object v18

    .line 434
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 435
    .line 436
    .line 437
    move-result-object v19

    .line 438
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 439
    .line 440
    .line 441
    move-result-object v20

    .line 442
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 443
    .line 444
    .line 445
    move-result-object v21

    .line 446
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 447
    .line 448
    .line 449
    move-result-object v22

    .line 450
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 451
    .line 452
    .line 453
    move-result-object v23

    .line 454
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 455
    .line 456
    .line 457
    move-result-object v24

    .line 458
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 459
    .line 460
    .line 461
    move-result-object v25

    .line 462
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 463
    .line 464
    .line 465
    move-result-object v26

    .line 466
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 467
    .line 468
    .line 469
    move-result-object v27

    .line 470
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 471
    .line 472
    .line 473
    move-result-object v28

    .line 474
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 475
    .line 476
    .line 477
    move-result-object v29

    .line 478
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 479
    .line 480
    .line 481
    move-result-object v30

    .line 482
    filled-new-array/range {v17 .. v30}, [Ljava/lang/Long;

    .line 483
    .line 484
    .line 485
    move-result-object v12

    .line 486
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 487
    .line 488
    .line 489
    move-result-object v17

    .line 490
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 491
    .line 492
    .line 493
    move-result-object v18

    .line 494
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 495
    .line 496
    .line 497
    move-result-object v19

    .line 498
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 499
    .line 500
    .line 501
    move-result-object v20

    .line 502
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 503
    .line 504
    .line 505
    move-result-object v21

    .line 506
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 507
    .line 508
    .line 509
    move-result-object v22

    .line 510
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 511
    .line 512
    .line 513
    move-result-object v23

    .line 514
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 515
    .line 516
    .line 517
    move-result-object v24

    .line 518
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 519
    .line 520
    .line 521
    move-result-object v25

    .line 522
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 523
    .line 524
    .line 525
    move-result-object v26

    .line 526
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 527
    .line 528
    .line 529
    move-result-object v27

    .line 530
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 531
    .line 532
    .line 533
    move-result-object v28

    .line 534
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 535
    .line 536
    .line 537
    move-result-object v29

    .line 538
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 539
    .line 540
    .line 541
    move-result-object v30

    .line 542
    filled-new-array/range {v17 .. v30}, [Ljava/lang/Long;

    .line 543
    .line 544
    .line 545
    move-result-object v14

    .line 546
    filled-new-array {v6, v12, v14}, [[Ljava/lang/Long;

    .line 547
    .line 548
    .line 549
    move-result-object v6

    .line 550
    new-instance v12, Ljava/util/HashMap;

    .line 551
    .line 552
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v12, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    invoke-interface {v3, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-object v1, v6

    .line 562
    goto/16 :goto_4

    .line 563
    .line 564
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 565
    .line 566
    .line 567
    move-result-object v17

    .line 568
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 569
    .line 570
    .line 571
    move-result-object v18

    .line 572
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 573
    .line 574
    .line 575
    move-result-object v19

    .line 576
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 577
    .line 578
    .line 579
    move-result-object v20

    .line 580
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 581
    .line 582
    .line 583
    move-result-object v21

    .line 584
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 585
    .line 586
    .line 587
    move-result-object v22

    .line 588
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 589
    .line 590
    .line 591
    move-result-object v23

    .line 592
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 593
    .line 594
    .line 595
    move-result-object v24

    .line 596
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 597
    .line 598
    .line 599
    move-result-object v25

    .line 600
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 601
    .line 602
    .line 603
    move-result-object v26

    .line 604
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 605
    .line 606
    .line 607
    move-result-object v27

    .line 608
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 609
    .line 610
    .line 611
    move-result-object v28

    .line 612
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 613
    .line 614
    .line 615
    move-result-object v29

    .line 616
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 617
    .line 618
    .line 619
    move-result-object v30

    .line 620
    filled-new-array/range {v17 .. v30}, [Ljava/lang/Long;

    .line 621
    .line 622
    .line 623
    move-result-object v3

    .line 624
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 625
    .line 626
    .line 627
    move-result-object v17

    .line 628
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 629
    .line 630
    .line 631
    move-result-object v18

    .line 632
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 633
    .line 634
    .line 635
    move-result-object v19

    .line 636
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 637
    .line 638
    .line 639
    move-result-object v20

    .line 640
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 641
    .line 642
    .line 643
    move-result-object v21

    .line 644
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 645
    .line 646
    .line 647
    move-result-object v22

    .line 648
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 649
    .line 650
    .line 651
    move-result-object v23

    .line 652
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 653
    .line 654
    .line 655
    move-result-object v24

    .line 656
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 657
    .line 658
    .line 659
    move-result-object v25

    .line 660
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 661
    .line 662
    .line 663
    move-result-object v26

    .line 664
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 665
    .line 666
    .line 667
    move-result-object v27

    .line 668
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 669
    .line 670
    .line 671
    move-result-object v28

    .line 672
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 673
    .line 674
    .line 675
    move-result-object v29

    .line 676
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 677
    .line 678
    .line 679
    move-result-object v30

    .line 680
    filled-new-array/range {v17 .. v30}, [Ljava/lang/Long;

    .line 681
    .line 682
    .line 683
    move-result-object v6

    .line 684
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 685
    .line 686
    .line 687
    move-result-object v17

    .line 688
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 689
    .line 690
    .line 691
    move-result-object v18

    .line 692
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 693
    .line 694
    .line 695
    move-result-object v19

    .line 696
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 697
    .line 698
    .line 699
    move-result-object v20

    .line 700
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 701
    .line 702
    .line 703
    move-result-object v21

    .line 704
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 705
    .line 706
    .line 707
    move-result-object v22

    .line 708
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 709
    .line 710
    .line 711
    move-result-object v23

    .line 712
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 713
    .line 714
    .line 715
    move-result-object v24

    .line 716
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 717
    .line 718
    .line 719
    move-result-object v25

    .line 720
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 721
    .line 722
    .line 723
    move-result-object v26

    .line 724
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 725
    .line 726
    .line 727
    move-result-object v27

    .line 728
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 729
    .line 730
    .line 731
    move-result-object v28

    .line 732
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 733
    .line 734
    .line 735
    move-result-object v29

    .line 736
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 737
    .line 738
    .line 739
    move-result-object v30

    .line 740
    filled-new-array/range {v17 .. v30}, [Ljava/lang/Long;

    .line 741
    .line 742
    .line 743
    move-result-object v12

    .line 744
    filled-new-array {v3, v6, v12}, [[Ljava/lang/Long;

    .line 745
    .line 746
    .line 747
    move-result-object v3

    .line 748
    new-instance v6, Ljava/util/HashMap;

    .line 749
    .line 750
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v6, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    new-instance v12, Ljava/util/HashMap;

    .line 757
    .line 758
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v12, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    iget-object v1, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    .line 765
    .line 766
    check-cast v1, Ljava/util/HashMap;

    .line 767
    .line 768
    invoke-virtual {v1, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    :goto_3
    move-object v1, v3

    .line 772
    :goto_4
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->values()[Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    array-length v6, v3

    .line 777
    const/4 v12, 0x0

    .line 778
    :goto_5
    if-ge v12, v6, :cond_8

    .line 779
    .line 780
    aget-object v14, v3, v12

    .line 781
    .line 782
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->getType()I

    .line 783
    .line 784
    .line 785
    move-result v15

    .line 786
    if-ne v15, v8, :cond_7

    .line 787
    .line 788
    goto :goto_6

    .line 789
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 790
    .line 791
    goto :goto_5

    .line 792
    :cond_8
    sget-object v14, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->UNKNOWN:Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 793
    .line 794
    :goto_6
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->UNKNOWN:Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 795
    .line 796
    if-eq v14, v3, :cond_f

    .line 797
    .line 798
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 799
    .line 800
    .line 801
    move-result v3

    .line 802
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;->values()[Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 803
    .line 804
    .line 805
    move-result-object v6

    .line 806
    array-length v8, v6

    .line 807
    const/4 v12, 0x0

    .line 808
    :goto_7
    if-ge v12, v8, :cond_a

    .line 809
    .line 810
    aget-object v15, v6, v12

    .line 811
    .line 812
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;->getThreshold()I

    .line 813
    .line 814
    .line 815
    move-result v4

    .line 816
    int-to-long v4, v4

    .line 817
    cmp-long v4, p3, v4

    .line 818
    .line 819
    if-gez v4, :cond_9

    .line 820
    .line 821
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 822
    .line 823
    .line 824
    move-result v4

    .line 825
    goto :goto_8

    .line 826
    :cond_9
    add-int/lit8 v12, v12, 0x1

    .line 827
    .line 828
    const-wide/16 v4, 0x0

    .line 829
    .line 830
    goto :goto_7

    .line 831
    :cond_a
    const/16 v4, 0x9

    .line 832
    .line 833
    :goto_8
    aget-object v5, v1, v3

    .line 834
    .line 835
    array-length v6, v5

    .line 836
    add-int/lit8 v6, v6, -0x4

    .line 837
    .line 838
    array-length v8, v5

    .line 839
    add-int/lit8 v8, v8, -0x3

    .line 840
    .line 841
    array-length v12, v5

    .line 842
    add-int/lit8 v12, v12, -0x2

    .line 843
    .line 844
    array-length v15, v5

    .line 845
    add-int/lit8 v15, v15, -0x1

    .line 846
    .line 847
    aget-object v19, v5, v4

    .line 848
    .line 849
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    .line 850
    .line 851
    .line 852
    move-result-wide v19

    .line 853
    const-wide/16 v21, 0x1

    .line 854
    .line 855
    add-long v19, v19, v21

    .line 856
    .line 857
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 858
    .line 859
    .line 860
    move-result-object v19

    .line 861
    aput-object v19, v5, v4

    .line 862
    .line 863
    aget-object v4, v1, v3

    .line 864
    .line 865
    aget-object v5, v4, v6

    .line 866
    .line 867
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 868
    .line 869
    .line 870
    move-result-wide v19

    .line 871
    add-long v19, v19, v21

    .line 872
    .line 873
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 874
    .line 875
    .line 876
    move-result-object v5

    .line 877
    aput-object v5, v4, v6

    .line 878
    .line 879
    aget-object v4, v1, v3

    .line 880
    .line 881
    aget-object v4, v4, v8

    .line 882
    .line 883
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 884
    .line 885
    .line 886
    move-result-wide v4

    .line 887
    const-wide/16 v17, 0x0

    .line 888
    .line 889
    cmp-long v4, v4, v17

    .line 890
    .line 891
    if-nez v4, :cond_b

    .line 892
    .line 893
    aget-object v4, v1, v3

    .line 894
    .line 895
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 896
    .line 897
    .line 898
    move-result-object v5

    .line 899
    aput-object v5, v4, v8

    .line 900
    .line 901
    goto :goto_9

    .line 902
    :cond_b
    aget-object v4, v1, v3

    .line 903
    .line 904
    aget-object v4, v4, v8

    .line 905
    .line 906
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 907
    .line 908
    .line 909
    move-result-wide v4

    .line 910
    cmp-long v4, v4, p3

    .line 911
    .line 912
    if-lez v4, :cond_c

    .line 913
    .line 914
    aget-object v4, v1, v3

    .line 915
    .line 916
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 917
    .line 918
    .line 919
    move-result-object v5

    .line 920
    aput-object v5, v4, v8

    .line 921
    .line 922
    :cond_c
    :goto_9
    aget-object v4, v1, v3

    .line 923
    .line 924
    aget-object v4, v4, v12

    .line 925
    .line 926
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 927
    .line 928
    .line 929
    move-result-wide v4

    .line 930
    const-wide/16 v17, 0x0

    .line 931
    .line 932
    cmp-long v4, v4, v17

    .line 933
    .line 934
    if-nez v4, :cond_d

    .line 935
    .line 936
    aget-object v4, v1, v3

    .line 937
    .line 938
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 939
    .line 940
    .line 941
    move-result-object v5

    .line 942
    aput-object v5, v4, v12

    .line 943
    .line 944
    goto :goto_a

    .line 945
    :cond_d
    aget-object v4, v1, v3

    .line 946
    .line 947
    aget-object v4, v4, v12

    .line 948
    .line 949
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 950
    .line 951
    .line 952
    move-result-wide v4

    .line 953
    cmp-long v4, v4, p3

    .line 954
    .line 955
    if-gez v4, :cond_e

    .line 956
    .line 957
    aget-object v4, v1, v3

    .line 958
    .line 959
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 960
    .line 961
    .line 962
    move-result-object v5

    .line 963
    aput-object v5, v4, v12

    .line 964
    .line 965
    :cond_e
    :goto_a
    aget-object v1, v1, v3

    .line 966
    .line 967
    aget-object v3, v1, v15

    .line 968
    .line 969
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 970
    .line 971
    .line 972
    move-result-wide v3

    .line 973
    add-long v3, v3, p3

    .line 974
    .line 975
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 976
    .line 977
    .line 978
    move-result-object v3

    .line 979
    aput-object v3, v1, v15

    .line 980
    .line 981
    const-wide/16 v3, 0x0

    .line 982
    .line 983
    goto :goto_b

    .line 984
    :cond_f
    move-wide v3, v4

    .line 985
    :goto_b
    cmp-long v1, v9, v3

    .line 986
    .line 987
    if-lez v1, :cond_10

    .line 988
    .line 989
    iget-wide v3, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDramSize:J

    .line 990
    .line 991
    cmp-long v1, v3, v9

    .line 992
    .line 993
    if-eqz v1, :cond_10

    .line 994
    .line 995
    iput-wide v9, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDramSize:J

    .line 996
    .line 997
    :cond_10
    if-eqz v2, :cond_11

    .line 998
    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    move-object/from16 v1, v16

    .line 1002
    .line 1003
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    .line 1009
    const-string v1, ", transition type : "

    .line 1010
    .line 1011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->getName()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    const-string v1, ", reason : "

    .line 1022
    .line 1023
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    .line 1026
    move-object/from16 v1, p6

    .line 1027
    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    .line 1031
    const-string v1, ", Optimization : "

    .line 1032
    .line 1033
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1044
    .line 1045
    .line 1046
    goto :goto_d

    .line 1047
    :goto_c
    const-string v1, "failed to gatherAppLaunchTime"

    .line 1048
    .line 1049
    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1053
    .line 1054
    .line 1055
    nop

    .line 1056
    :cond_11
    :goto_d
    return-void
.end method

.method public final getCurBoostInfoStr()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "===== ActivityManagerPerformance, getCurBoostInfoStr info =====\nAMP_ENABLE: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", AMP_PERF_ENABLE: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ", mIsScreenOn: "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const-string v1, "\nTIMEOUT_ACT_RESUME: "

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", TIMEOUT_ACT_START: "

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    sget v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", TIMEOUT_APP_SWITCH: "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    sget v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const-string v1, "\nTIMEOUT_PREV_RESUME: "

    .line 76
    .line 77
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :goto_0
    const-string v1, "\n"

    .line 91
    .line 92
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v1, "\n[curTopState] "

    .line 97
    .line 98
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sget v1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    .line 103
    .line 104
    invoke-static {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v1, "\n[rCurBoostAppSwitch] procName: "

    .line 116
    .line 117
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    if-eqz v1, :cond_1

    .line 125
    .line 126
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    move-object v1, v2

    .line 130
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, " ("

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 139
    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v3, ")"

    .line 144
    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v4, "\n[rCurBoostActStart] procName: "

    .line 153
    .line 154
    invoke-static {v0, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 159
    .line 160
    if-eqz v4, :cond_2

    .line 161
    .line 162
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_2
    move-object v4, v2

    .line 166
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 173
    .line 174
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const-string v4, "\n[rCurBoostActResume] procName: "

    .line 185
    .line 186
    invoke-static {v0, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 191
    .line 192
    if-eqz v4, :cond_3

    .line 193
    .line 194
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_3
    move-object v4, v2

    .line 198
    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 205
    .line 206
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string v4, "\n[rLastActTail] procName: "

    .line 217
    .line 218
    invoke-static {v0, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/wm/ActivityRecord;

    .line 223
    .line 224
    if-eqz v4, :cond_4

    .line 225
    .line 226
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_4
    move-object v4, v2

    .line 230
    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/wm/ActivityRecord;

    .line 237
    .line 238
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const-string v4, "\n[rLastActHome] procName: "

    .line 249
    .line 250
    invoke-static {v0, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    .line 255
    .line 256
    if-eqz v4, :cond_5

    .line 257
    .line 258
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_5
    move-object v4, v2

    .line 262
    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    .line 269
    .line 270
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    const-string v4, "\n[rLastRelaunchResume] procName: "

    .line 281
    .line 282
    invoke-static {v0, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;

    .line 287
    .line 288
    if-eqz v4, :cond_6

    .line 289
    .line 290
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 291
    .line 292
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;

    .line 299
    .line 300
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    const-string v0, "\n===== ActivityManagerPerformance, getCurBoostInfoStr end  ====="

    .line 311
    .line 312
    invoke-static {p0, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    return-object p0
.end method

.method public final isJustFoldedState()Z
    .locals 4

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsFolded:Z

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-wide v2, Lcom/android/server/wm/ActivityManagerPerformance;->mFoldListenedTime:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    const-wide/16 v2, 0x1f4

    .line 13
    .line 14
    cmp-long p0, v0, v2

    .line 15
    .line 16
    if-gez p0, :cond_1

    .line 17
    .line 18
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string p0, "ActivityManagerPerformance"

    .line 23
    .line 24
    const-string v0, "mIsFolded: true && Folded just now"

    .line 25
    .line 26
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final notifyTaskBoost(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 6
    .line 7
    const/16 v0, 0xc

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, v1

    .line 12
    :goto_0
    const-string v3, "ActivityManagerPerformance"

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v5, "onActivityRelaunchLocked() r: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " ("

    .line 26
    .line 27
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, "), andResume: true"

    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    const-string v2, "ActivityManagerPerformance"

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string/jumbo v4, "onActivityRelaunchLocked() Trace\n"

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    new-instance v2, Ljava/lang/Exception;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    .line 82
    .line 83
    if-nez v2, :cond_2

    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 87
    .line 88
    if-nez v2, :cond_4

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    const-string p0, "ActivityManagerPerformance"

    .line 93
    .line 94
    const-string/jumbo p1, "onActivityRelaunchLocked() skipped. mIsScreenOn: false"

    .line 95
    .line 96
    .line 97
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_3
    return-void

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_5

    .line 106
    .line 107
    return-void

    .line 108
    :cond_5
    if-eqz v0, :cond_7

    .line 109
    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 113
    .line 114
    :cond_6
    const-string v0, "ActivityManagerPerformance"

    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string/jumbo v3, "setBoosterRelaunchResume() r: "

    .line 119
    .line 120
    .line 121
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, " ("

    .line 128
    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, ")"

    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 148
    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    const-string v0, "ActivityManagerPerformance"

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string/jumbo v2, "setBoosterRelaunchResume() Trace\n"

    .line 156
    .line 157
    .line 158
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    new-instance v0, Ljava/lang/Exception;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    .line 182
    .line 183
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 184
    .line 185
    if-nez v0, :cond_8

    .line 186
    .line 187
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 188
    .line 189
    const-string v1, "AMS_RELAUNCH_RESUME"

    .line 190
    .line 191
    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 196
    .line 197
    if-eqz v0, :cond_8

    .line 198
    .line 199
    const/4 v1, 0x2

    .line 200
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 201
    .line 202
    .line 203
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 204
    .line 205
    if-nez v0, :cond_9

    .line 206
    .line 207
    const-string p0, "ActivityManagerPerformance"

    .line 208
    .line 209
    const-string/jumbo p1, "setBoosterRelaunchResume() skipped. SemDvfsManager.createInstance() failed"

    .line 210
    .line 211
    .line 212
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    .line 217
    .line 218
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 220
    .line 221
    .line 222
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;

    .line 223
    .line 224
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :try_start_2
    const-string p1, "ActivityManagerPerformance"

    .line 226
    .line 227
    const-string v0, "AMP_acquire() RELAUNCH_RESUME"

    .line 228
    .line 229
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :catch_0
    move-exception p1

    .line 234
    goto :goto_1

    .line 235
    :catchall_0
    move-exception p1

    .line 236
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 238
    :goto_1
    const-string v0, "ActivityManagerPerformance"

    .line 239
    .line 240
    const-string v1, "AMP_acquire() RELAUNCH_RESUME failed"

    .line 241
    .line 242
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 246
    .line 247
    if-eqz v0, :cond_a

    .line 248
    .line 249
    const-string v0, "ActivityManagerPerformance"

    .line 250
    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v2, "AMP_acquire() RELAUNCH_RESUME failed. e: "

    .line 254
    .line 255
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v2, "\n"

    .line 262
    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    .line 282
    .line 283
    :goto_2
    return-void
.end method

.method public final onActivityStartLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "ActivityManagerPerformance"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "onActivityStartLocked() r: "

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, " ("

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, ")"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v3, "onActivityStartLocked() Trace\n"

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    new-instance v2, Ljava/lang/Exception;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_0
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 75
    .line 76
    if-nez v2, :cond_1

    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v2, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->isSpeg(Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->isBlockedApp(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    if-eqz v2, :cond_4

    .line 103
    .line 104
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 105
    .line 106
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 107
    .line 108
    if-nez v2, :cond_6

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    const-string/jumbo p0, "onActivityStartLocked() skipped. mIsScreenOn: false"

    .line 113
    .line 114
    .line 115
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :cond_5
    return-void

    .line 119
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_7

    .line 124
    .line 125
    return-void

    .line 126
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    .line 127
    .line 128
    if-eqz v2, :cond_8

    .line 129
    .line 130
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    .line 131
    .line 132
    :cond_8
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 133
    .line 134
    const/4 v4, 0x1

    .line 135
    if-nez v2, :cond_9

    .line 136
    .line 137
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_a

    .line 146
    .line 147
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_b

    .line 156
    .line 157
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_b
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 162
    .line 163
    const-string/jumbo v3, "onActivityStartLocked() skipped. already boosted "

    .line 164
    .line 165
    .line 166
    if-eqz v2, :cond_10

    .line 167
    .line 168
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_10

    .line 177
    .line 178
    :try_start_0
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 179
    .line 180
    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 181
    .line 182
    if-eq v2, p1, :cond_e

    .line 183
    .line 184
    if-eq v5, p1, :cond_e

    .line 185
    .line 186
    if-eqz v2, :cond_c

    .line 187
    .line 188
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 189
    .line 190
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-nez v2, :cond_e

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :catch_0
    move-exception p0

    .line 200
    goto :goto_2

    .line 201
    :cond_c
    :goto_0
    if-eqz v5, :cond_d

    .line 202
    .line 203
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 204
    .line 205
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    if-eqz v2, :cond_d

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_d
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_e
    :goto_1
    if-eqz v0, :cond_f

    .line 219
    .line 220
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 235
    .line 236
    .line 237
    :cond_f
    return-void

    .line 238
    :goto_2
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_10
    :try_start_2
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 243
    .line 244
    if-eq v2, p1, :cond_12

    .line 245
    .line 246
    if-eqz v2, :cond_11

    .line 247
    .line 248
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 249
    .line 250
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v2
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 256
    if-eqz v2, :cond_11

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :catch_1
    move-exception p0

    .line 260
    goto :goto_5

    .line 261
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 262
    .line 263
    const/16 v0, 0x8

    .line 264
    .line 265
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    .line 271
    .line 272
    :goto_3
    return-void

    .line 273
    :cond_12
    :goto_4
    if-eqz v0, :cond_13

    .line 274
    .line 275
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 290
    .line 291
    .line 292
    :cond_13
    return-void

    .line 293
    :goto_5
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 294
    .line 295
    .line 296
    return-void
.end method

.method public final onActivityVisibleLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const-string v0, "ActivityManagerPerformance"

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string/jumbo p0, "onActivityVisibleLocked() ActivityRecord is Null"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string/jumbo v1, "onActivityVisibleLocked() ActivityRecord\'s ProcessName is Null"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v2, "onActivityVisibleLocked() r: "

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, " ("

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, ")"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :goto_0
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string/jumbo v2, "onActivityVisibleLocked() Trace\n"

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    new-instance v0, Ljava/lang/Exception;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    :cond_2
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 95
    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    return-void

    .line 106
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 112
    .line 113
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 121
    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 125
    .line 126
    .line 127
    :cond_7
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 128
    .line 129
    if-eqz v0, :cond_8

    .line 130
    .line 131
    if-eqz p1, :cond_8

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_8

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_8

    .line 144
    .line 145
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V

    .line 146
    .line 147
    .line 148
    :cond_8
    return-void
.end method

.method public final onAppLaunch(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->isSpeg(Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->isBlockedApp(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppLaunch:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    .line 35
    .line 36
    if-nez v1, :cond_4

    .line 37
    .line 38
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const-string v2, "AMS_APP_LAUNCH"

    .line 41
    .line 42
    invoke-static {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_5

    .line 51
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    .line 52
    .line 53
    if-eqz v1, :cond_c

    .line 54
    .line 55
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    const/16 v1, -0x3e7

    .line 58
    .line 59
    if-nez p2, :cond_5

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_5
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutM:[Ljava/lang/String;

    .line 63
    .line 64
    array-length v3, v2

    .line 65
    const/4 v4, 0x0

    .line 66
    move v5, v4

    .line 67
    :goto_1
    if-ge v5, v3, :cond_7

    .line 68
    .line 69
    aget-object v6, v2, v5

    .line 70
    .line 71
    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_6

    .line 76
    .line 77
    const/16 v1, 0x1b

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_7
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutLM:[Ljava/lang/String;

    .line 84
    .line 85
    array-length v3, v2

    .line 86
    :goto_2
    if-ge v4, v3, :cond_a

    .line 87
    .line 88
    aget-object v5, v2, v4

    .line 89
    .line 90
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_9

    .line 95
    .line 96
    if-eqz p1, :cond_8

    .line 97
    .line 98
    const/16 p1, 0x23

    .line 99
    .line 100
    :goto_3
    move v1, p1

    .line 101
    goto :goto_4

    .line 102
    :cond_8
    const/16 p1, 0x1c

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_a
    if-eqz p1, :cond_b

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_b
    const/16 v1, 0x20

    .line 112
    .line 113
    :goto_4
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 121
    .line 122
    .line 123
    :cond_c
    monitor-exit v0

    .line 124
    return-void

    .line 125
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0
.end method

.method public final declared-synchronized sendHqmBigData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "Success to report \'"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHqmManager:Landroid/os/SemHqmManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "HqmManagerService"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/os/SemHqmManager;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHqmManager:Landroid/os/SemHqmManager;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHqmManager:Landroid/os/SemHqmManager;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string p1, "ActivityManagerPerformance"

    .line 28
    .line 29
    const-string p2, "HQM services is not working"

    .line 30
    .line 31
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :cond_1
    :try_start_1
    const-string v3, "Sluggish"

    .line 37
    .line 38
    const-string/jumbo v5, "ph"

    .line 39
    .line 40
    .line 41
    const-string/jumbo v7, "sec"

    .line 42
    .line 43
    .line 44
    const-string v8, ""

    .line 45
    .line 46
    const-string v10, ""

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    move-object v4, p1

    .line 50
    move-object v6, p2

    .line 51
    move-object v9, p3

    .line 52
    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 59
    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    const-string p2, "ActivityManagerPerformance"

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, "\' : "

    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const-string p1, "ActivityManagerPerformance"

    .line 89
    .line 90
    const-string p2, "failed to send to server"

    .line 91
    .line 92
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_1
    monitor-exit p0

    .line 96
    return-void

    .line 97
    :goto_2
    monitor-exit p0

    .line 98
    throw p1
.end method

.method public final setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v1, v0

    .line 8
    :goto_0
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 9
    .line 10
    if-eqz v2, :cond_3

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v2, v0

    .line 18
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception v3

    .line 26
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_2
    move-object v3, v0

    .line 30
    :goto_2
    const-string v4, "ActivityManagerPerformance"

    .line 31
    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v6, "setBoosterActResume() onoff: "

    .line 35
    .line 36
    .line 37
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v6, ", r: "

    .line 44
    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, " ("

    .line 52
    .line 53
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, "), curBoost: "

    .line 60
    .line 61
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " ("

    .line 68
    .line 69
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 73
    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ")"

    .line 78
    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    const-string v2, "ActivityManagerPerformance"

    .line 94
    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string/jumbo v4, "setBoosterActResume() Trace\n"

    .line 98
    .line 99
    .line 100
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    new-instance v2, Ljava/lang/Exception;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 126
    .line 127
    const/4 v3, 0x3

    .line 128
    if-nez v2, :cond_4

    .line 129
    .line 130
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    const-string v4, "AMS_ACT_RESUME"

    .line 133
    .line 134
    invoke-static {v2, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iput-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 139
    .line 140
    if-eqz v2, :cond_4

    .line 141
    .line 142
    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 143
    .line 144
    .line 145
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 146
    .line 147
    if-nez v2, :cond_5

    .line 148
    .line 149
    const-string p0, "ActivityManagerPerformance"

    .line 150
    .line 151
    const-string/jumbo p1, "setBoosterActResume() skipped. SemDvfsManager.createInstance() failed"

    .line 152
    .line 153
    .line 154
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_5
    if-eqz p1, :cond_9

    .line 159
    .line 160
    if-eqz p2, :cond_6

    .line 161
    .line 162
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_6

    .line 167
    .line 168
    const/16 p1, 0x1f4

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_6
    sget p1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    .line 172
    .line 173
    :goto_3
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 174
    .line 175
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    .line 177
    .line 178
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    .line 179
    .line 180
    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :try_start_2
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 182
    .line 183
    .line 184
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 185
    .line 186
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :try_start_3
    const-string v2, "ActivityManagerPerformance"

    .line 188
    .line 189
    const-string v4, "AMP_acquire() ACT_RESUME"

    .line 190
    .line 191
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 195
    .line 196
    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 201
    .line 202
    int-to-long v3, p1

    .line 203
    invoke-virtual {v2, p2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 207
    .line 208
    const/16 p2, 0xe

    .line 209
    .line 210
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 214
    .line 215
    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 220
    .line 221
    .line 222
    goto/16 :goto_7

    .line 223
    .line 224
    :catch_1
    move-exception p1

    .line 225
    goto :goto_4

    .line 226
    :catchall_0
    move-exception p1

    .line 227
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 229
    :goto_4
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 230
    .line 231
    if-eqz p2, :cond_7

    .line 232
    .line 233
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 234
    .line 235
    :cond_7
    const-string p2, "ActivityManagerPerformance"

    .line 236
    .line 237
    const-string v1, "AMP_acquire() ACT_RESUME failed. stop boosting"

    .line 238
    .line 239
    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 243
    .line 244
    if-eqz p2, :cond_8

    .line 245
    .line 246
    const-string p2, "ActivityManagerPerformance"

    .line 247
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string v2, "AMP_acquire() ACT_RESUME failed["

    .line 251
    .line 252
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v0, "] e: "

    .line 259
    .line 260
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v0, "\n"

    .line 267
    .line 268
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    :cond_8
    const/4 p2, 0x0

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 287
    .line 288
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_9
    :try_start_6
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    .line 296
    .line 297
    monitor-enter p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 298
    :try_start_7
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 299
    .line 300
    if-nez p2, :cond_a

    .line 301
    .line 302
    monitor-exit p1

    .line 303
    return-void

    .line 304
    :catchall_1
    move-exception p2

    .line 305
    goto :goto_5

    .line 306
    :cond_a
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 307
    .line 308
    .line 309
    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 310
    .line 311
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 312
    :try_start_8
    const-string p1, "ActivityManagerPerformance"

    .line 313
    .line 314
    const-string p2, "AMP_release() ACT_RESUME"

    .line 315
    .line 316
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 320
    .line 321
    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 322
    .line 323
    .line 324
    goto :goto_7

    .line 325
    :catch_2
    move-exception p1

    .line 326
    goto :goto_6

    .line 327
    :goto_5
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 328
    :try_start_a
    throw p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 329
    :goto_6
    const-string p2, "ActivityManagerPerformance"

    .line 330
    .line 331
    const-string v0, "AMP_release() ACT_RESUME failed"

    .line 332
    .line 333
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 337
    .line 338
    if-eqz p2, :cond_b

    .line 339
    .line 340
    const-string p2, "ActivityManagerPerformance"

    .line 341
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    const-string v1, "AMP_release() ACT_RESUME failed. e: "

    .line 345
    .line 346
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v1, "\n"

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p0

    .line 368
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    .line 373
    .line 374
    :goto_7
    return-void
.end method

.method public final setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catch_0
    move-exception v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_1
    move-object v2, v1

    .line 24
    :goto_1
    const-string v3, "ActivityManagerPerformance"

    .line 25
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v5, "setBoosterActStart() onoff: "

    .line 29
    .line 30
    .line 31
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v5, ", r: "

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " ("

    .line 46
    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, "), curBoost: "

    .line 54
    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, " ("

    .line 62
    .line 63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 67
    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, ")"

    .line 72
    .line 73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    const-string v0, "ActivityManagerPerformance"

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string/jumbo v3, "setBoosterActStart() Trace\n"

    .line 92
    .line 93
    .line 94
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    new-instance v0, Ljava/lang/Exception;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()V

    .line 120
    .line 121
    .line 122
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->isChinaModel:Z

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    if-eqz p2, :cond_7

    .line 128
    .line 129
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 130
    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v0, :cond_7

    .line 136
    .line 137
    const-string v3, "LuckyMoneyReceiveUI"

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_7

    .line 144
    .line 145
    if-eqz p1, :cond_6

    .line 146
    .line 147
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 148
    .line 149
    if-nez p1, :cond_5

    .line 150
    .line 151
    sget-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 152
    .line 153
    const-string p2, "LuckyMoneyBooster"

    .line 154
    .line 155
    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 160
    .line 161
    if-eqz p1, :cond_4

    .line 162
    .line 163
    const p2, 0x12001001

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency(I)[I

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_3

    .line 171
    .line 172
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 173
    .line 174
    aget p1, p1, v2

    .line 175
    .line 176
    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_3
    const-string p0, "ActivityManagerPerformance"

    .line 181
    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string/jumbo p2, "setBoosterActStart() skipped. getSupportedFrequency() failed. AMP_PERF_ENABLE: "

    .line 185
    .line 186
    .line 187
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 191
    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_4
    const-string p0, "ActivityManagerPerformance"

    .line 204
    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string/jumbo p2, "setBoosterActStart() skipped. SemDvfsManager.createInstance() failed. AMP_PERF_ENABLE: "

    .line 208
    .line 209
    .line 210
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 214
    .line 215
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 227
    .line 228
    const/16 p1, 0x1388

    .line 229
    .line 230
    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 231
    .line 232
    .line 233
    :cond_6
    return-void

    .line 234
    :cond_7
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 235
    .line 236
    const/4 v3, 0x4

    .line 237
    if-eqz v0, :cond_8

    .line 238
    .line 239
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    .line 240
    .line 241
    if-nez v4, :cond_8

    .line 242
    .line 243
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 244
    .line 245
    const-string v5, "AMS_ACT_START"

    .line 246
    .line 247
    invoke-static {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    iput-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    .line 252
    .line 253
    if-eqz v4, :cond_9

    .line 254
    .line 255
    invoke-virtual {v4, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_8
    if-nez v0, :cond_9

    .line 260
    .line 261
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 262
    .line 263
    if-nez v4, :cond_9

    .line 264
    .line 265
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 266
    .line 267
    const-string v5, "AMS_RESUME"

    .line 268
    .line 269
    invoke-static {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    iput-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 274
    .line 275
    if-eqz v4, :cond_9

    .line 276
    .line 277
    invoke-virtual {v4, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 278
    .line 279
    .line 280
    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    .line 281
    .line 282
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 286
    .line 287
    :goto_4
    if-nez v3, :cond_b

    .line 288
    .line 289
    const-string p0, "ActivityManagerPerformance"

    .line 290
    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string/jumbo p2, "setBoosterActStart() skipped. SemDvfsManager.createInstance() failed. AMP_PERF_ENABLE: "

    .line 294
    .line 295
    .line 296
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :cond_b
    const/4 v4, 0x2

    .line 311
    if-eqz p1, :cond_10

    .line 312
    .line 313
    if-eqz p2, :cond_c

    .line 314
    .line 315
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    if-eqz p1, :cond_c

    .line 320
    .line 321
    const/16 p1, 0x1f4

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_c
    if-eqz v0, :cond_d

    .line 325
    .line 326
    sget p1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_d
    sget p1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    .line 330
    .line 331
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 332
    .line 333
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    .line 335
    .line 336
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    .line 337
    .line 338
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    :try_start_2
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 340
    .line 341
    .line 342
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 343
    .line 344
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    :try_start_3
    const-string v0, "ActivityManagerPerformance"

    .line 346
    .line 347
    const-string v3, "AMP_acquire() ACT_START"

    .line 348
    .line 349
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 353
    .line 354
    invoke-virtual {v0, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 359
    .line 360
    int-to-long v3, p1

    .line 361
    invoke-virtual {v0, p2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 362
    .line 363
    .line 364
    goto/16 :goto_9

    .line 365
    .line 366
    :catch_1
    move-exception p1

    .line 367
    goto :goto_6

    .line 368
    :catchall_0
    move-exception p1

    .line 369
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 371
    :goto_6
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 372
    .line 373
    if-eqz p2, :cond_e

    .line 374
    .line 375
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 376
    .line 377
    :cond_e
    const-string p2, "ActivityManagerPerformance"

    .line 378
    .line 379
    const-string v0, "AMP_acquire() ACT_START failed. stop boosting"

    .line 380
    .line 381
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 385
    .line 386
    if-eqz p2, :cond_f

    .line 387
    .line 388
    const-string p2, "ActivityManagerPerformance"

    .line 389
    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    const-string v3, "AMP_acquire() ACT_START failed. ["

    .line 393
    .line 394
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v1, "] e: "

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    const-string v1, "\n"

    .line 409
    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    :cond_f
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 428
    .line 429
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 433
    .line 434
    .line 435
    goto :goto_9

    .line 436
    :cond_10
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/wm/ActivityRecord;)V

    .line 437
    .line 438
    .line 439
    :try_start_6
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    .line 440
    .line 441
    monitor-enter p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 442
    :try_start_7
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 443
    .line 444
    if-nez p2, :cond_11

    .line 445
    .line 446
    monitor-exit p1

    .line 447
    return-void

    .line 448
    :catchall_1
    move-exception p2

    .line 449
    goto :goto_7

    .line 450
    :cond_11
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 451
    .line 452
    .line 453
    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 454
    .line 455
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 456
    :try_start_8
    const-string p1, "ActivityManagerPerformance"

    .line 457
    .line 458
    const-string p2, "AMP_release() ACT_START"

    .line 459
    .line 460
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .line 462
    .line 463
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 464
    .line 465
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 466
    .line 467
    .line 468
    goto :goto_9

    .line 469
    :catch_2
    move-exception p1

    .line 470
    goto :goto_8

    .line 471
    :goto_7
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 472
    :try_start_a
    throw p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 473
    :goto_8
    const-string p2, "ActivityManagerPerformance"

    .line 474
    .line 475
    const-string v0, "AMP_release() ACT_START failed"

    .line 476
    .line 477
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .line 479
    .line 480
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 481
    .line 482
    if-eqz p2, :cond_12

    .line 483
    .line 484
    const-string p2, "ActivityManagerPerformance"

    .line 485
    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    const-string v1, "AMP_release() ACT_START failed. e: "

    .line 489
    .line 490
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    const-string v1, "\n"

    .line 497
    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object p0

    .line 505
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object p0

    .line 512
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 516
    .line 517
    .line 518
    :goto_9
    return-void
.end method

.method public final setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v1, v0

    .line 8
    :goto_0
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v2, v0

    .line 16
    :goto_1
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 17
    .line 18
    if-eqz v3, :cond_4

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-object v3, v0

    .line 26
    :goto_2
    :try_start_0
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    if-eqz v4, :cond_3

    .line 29
    .line 30
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :catch_0
    move-exception v4

    .line 34
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_3
    move-object v4, v0

    .line 38
    :goto_3
    const-string v5, "ActivityManagerPerformance"

    .line 39
    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v7, "setBoosterAppSwitch() onoff: "

    .line 43
    .line 44
    .line 45
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v7, ", r: "

    .line 52
    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, " ("

    .line 60
    .line 61
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, "), curBoost: "

    .line 68
    .line 69
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v3, " ("

    .line 76
    .line 77
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 81
    .line 82
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v3, ")"

    .line 86
    .line 87
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 98
    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    const-string v3, "ActivityManagerPerformance"

    .line 102
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string/jumbo v5, "setBoosterAppSwitch() Trace\n"

    .line 106
    .line 107
    .line 108
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    new-instance v3, Ljava/lang/Exception;

    .line 126
    .line 127
    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :cond_4
    if-eqz p1, :cond_6

    .line 134
    .line 135
    if-eqz v1, :cond_6

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_6

    .line 142
    .line 143
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 144
    .line 145
    if-eqz p0, :cond_5

    .line 146
    .line 147
    const-string p0, "ActivityManagerPerformance"

    .line 148
    .line 149
    const-string/jumbo p1, "setBoosterAppSwitch() skipped. Background activity start on abnormal app : "

    .line 150
    .line 151
    .line 152
    invoke-static {p1, v2, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    return-void

    .line 156
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()V

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    .line 160
    .line 161
    if-nez v2, :cond_7

    .line 162
    .line 163
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    const-string v3, "AMS_APP_SWITCH"

    .line 166
    .line 167
    invoke-static {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    iput-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    .line 172
    .line 173
    if-eqz v2, :cond_7

    .line 174
    .line 175
    const/4 v3, 0x7

    .line 176
    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 177
    .line 178
    .line 179
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    .line 180
    .line 181
    if-nez v2, :cond_8

    .line 182
    .line 183
    const-string p0, "ActivityManagerPerformance"

    .line 184
    .line 185
    const-string/jumbo p1, "setBoosterAppSwitch() skipped. SemDvfsManager.createInstance() failed"

    .line 186
    .line 187
    .line 188
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_8
    const/16 v3, 0x9

    .line 193
    .line 194
    const/4 v4, 0x1

    .line 195
    if-eqz p1, :cond_e

    .line 196
    .line 197
    if-eqz p2, :cond_9

    .line 198
    .line 199
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_9

    .line 204
    .line 205
    const/16 p1, 0x1f4

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_9
    sget p1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    .line 209
    .line 210
    :goto_4
    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 211
    .line 212
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    .line 214
    .line 215
    const/4 v5, 0x0

    .line 216
    :try_start_1
    sget-object v6, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    .line 217
    .line 218
    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    :try_start_2
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 220
    .line 221
    .line 222
    sput-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 223
    .line 224
    sput-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    .line 225
    .line 226
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    :try_start_3
    const-string v2, "ActivityManagerPerformance"

    .line 228
    .line 229
    const-string v6, "AMP_acquire() APP_SWITCH"

    .line 230
    .line 231
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 235
    .line 236
    invoke-virtual {v2, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 241
    .line 242
    int-to-long v6, p1

    .line 243
    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 244
    .line 245
    .line 246
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 247
    .line 248
    const/4 v2, 0x6

    .line 249
    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 257
    .line 258
    const/16 v2, 0xe

    .line 259
    .line 260
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    .line 262
    .line 263
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 264
    .line 265
    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    .line 271
    .line 272
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 273
    .line 274
    const/16 v2, 0xa

    .line 275
    .line 276
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 280
    .line 281
    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    const-wide/16 v6, 0xdac

    .line 286
    .line 287
    invoke-virtual {p1, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 288
    .line 289
    .line 290
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 291
    .line 292
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 293
    .line 294
    iget-boolean v2, p1, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 295
    .line 296
    if-eqz v2, :cond_b

    .line 297
    .line 298
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 299
    .line 300
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 301
    .line 302
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 303
    .line 304
    const-string v2, "com.sec.android.app.camera"

    .line 305
    .line 306
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_a

    .line 311
    .line 312
    const/16 v2, 0x1388

    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_a
    move v2, v5

    .line 316
    :goto_5
    invoke-virtual {p1, p2, v2, v1}, Lcom/android/server/am/FreecessController;->enterOLAF(IILjava/lang/String;)V

    .line 317
    .line 318
    .line 319
    goto :goto_6

    .line 320
    :catch_1
    move-exception p1

    .line 321
    goto :goto_7

    .line 322
    :cond_b
    :goto_6
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 323
    .line 324
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 325
    .line 326
    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    .line 332
    .line 333
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    .line 334
    .line 335
    if-eqz p1, :cond_12

    .line 336
    .line 337
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 338
    .line 339
    const/16 p2, 0x10

    .line 340
    .line 341
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    .line 343
    .line 344
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 345
    .line 346
    const-string v1, "0"

    .line 347
    .line 348
    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    const-wide/16 v1, 0xbb8

    .line 353
    .line 354
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 355
    .line 356
    .line 357
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 358
    .line 359
    const-string p2, "120"

    .line 360
    .line 361
    const/16 v1, 0xb

    .line 362
    .line 363
    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 364
    .line 365
    .line 366
    move-result-object p2

    .line 367
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 368
    .line 369
    .line 370
    goto/16 :goto_b

    .line 371
    .line 372
    :catchall_0
    move-exception p1

    .line 373
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 374
    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 375
    :goto_7
    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 376
    .line 377
    if-eqz p2, :cond_c

    .line 378
    .line 379
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 380
    .line 381
    :cond_c
    const-string p2, "ActivityManagerPerformance"

    .line 382
    .line 383
    const-string v1, "AMP_acquire() APP_SWITCH failed. stop boosting"

    .line 384
    .line 385
    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 389
    .line 390
    if-eqz p2, :cond_d

    .line 391
    .line 392
    const-string p2, "ActivityManagerPerformance"

    .line 393
    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    const-string v2, "AMP_acquire() APP_SWITCH failed. ["

    .line 397
    .line 398
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v0, "] e: "

    .line 405
    .line 406
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v0, "\n"

    .line 413
    .line 414
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    :cond_d
    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 432
    .line 433
    invoke-virtual {p0, v5, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 437
    .line 438
    .line 439
    goto/16 :goto_b

    .line 440
    .line 441
    :cond_e
    invoke-virtual {p0, v4, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/wm/ActivityRecord;)V

    .line 442
    .line 443
    .line 444
    :try_start_6
    sget-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    .line 445
    .line 446
    monitor-enter p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 447
    :try_start_7
    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 448
    .line 449
    if-nez p2, :cond_f

    .line 450
    .line 451
    monitor-exit p1

    .line 452
    return-void

    .line 453
    :catchall_1
    move-exception p2

    .line 454
    goto :goto_9

    .line 455
    :cond_f
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 456
    .line 457
    .line 458
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 459
    .line 460
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 461
    :try_start_8
    const-string p1, "ActivityManagerPerformance"

    .line 462
    .line 463
    const-string p2, "AMP_release() APP_SWITCH"

    .line 464
    .line 465
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 469
    .line 470
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    .line 472
    .line 473
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 474
    .line 475
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 476
    .line 477
    iget-boolean p2, p1, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 478
    .line 479
    if-eqz p2, :cond_10

    .line 480
    .line 481
    const-string p2, "com.sec.android.app.camera"

    .line 482
    .line 483
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result p2

    .line 487
    if-nez p2, :cond_10

    .line 488
    .line 489
    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->exitOLAF()V

    .line 490
    .line 491
    .line 492
    goto :goto_8

    .line 493
    :catch_2
    move-exception p1

    .line 494
    goto :goto_a

    .line 495
    :cond_10
    :goto_8
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 496
    .line 497
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 498
    .line 499
    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 500
    .line 501
    .line 502
    move-result-object p2

    .line 503
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 504
    .line 505
    .line 506
    goto :goto_b

    .line 507
    :goto_9
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 508
    :try_start_a
    throw p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 509
    :goto_a
    const-string p2, "ActivityManagerPerformance"

    .line 510
    .line 511
    const-string v0, "AMP_release() APP_SWITCH failed"

    .line 512
    .line 513
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .line 515
    .line 516
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 517
    .line 518
    if-eqz p2, :cond_11

    .line 519
    .line 520
    const-string p2, "ActivityManagerPerformance"

    .line 521
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string/jumbo v1, "setBoosterAppSwitch() AMP_release failed. e: "

    .line 525
    .line 526
    .line 527
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    const-string v1, "\n"

    .line 534
    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object p0

    .line 542
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object p0

    .line 549
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 553
    .line 554
    .line 555
    :cond_12
    :goto_b
    return-void
.end method

.method public final setBoosterHome(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 10

    .line 1
    const-string/jumbo v0, "setBoosterHome() skipped. already boosted "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "setBoosterHome() skipped. already boosted "

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v3, v2

    .line 14
    :goto_0
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 15
    .line 16
    if-eqz v4, :cond_2

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 21
    .line 22
    :cond_1
    const-string v5, "ActivityManagerPerformance"

    .line 23
    .line 24
    const-string/jumbo v6, "setBoosterHome() fastBoost: "

    .line 25
    .line 26
    .line 27
    const-string v7, ", startAct: "

    .line 28
    .line 29
    const-string v8, ", curTopState: "

    .line 30
    .line 31
    invoke-static {v6, p2, v7, p3, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    sget v7, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    .line 36
    .line 37
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v7, ", r: "

    .line 45
    .line 46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, " ("

    .line 53
    .line 54
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, "), pkgName : "

    .line 61
    .line 62
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    const-string v2, "ActivityManagerPerformance"

    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string/jumbo v5, "setBoosterHome() Trace\n"

    .line 84
    .line 85
    .line 86
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    new-instance v2, Ljava/lang/Exception;

    .line 104
    .line 105
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :cond_2
    sget v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    .line 112
    .line 113
    if-nez v2, :cond_3

    .line 114
    .line 115
    const-string p0, "ActivityManagerPerformance"

    .line 116
    .line 117
    const-string/jumbo p1, "setBoosterHome() skipped. Method is called by non-system_server"

    .line 118
    .line 119
    .line 120
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 125
    .line 126
    if-nez v2, :cond_5

    .line 127
    .line 128
    if-eqz v4, :cond_4

    .line 129
    .line 130
    const-string p0, "ActivityManagerPerformance"

    .line 131
    .line 132
    const-string/jumbo p1, "setBoosterHome() skipped. mIsScreenOn: false"

    .line 133
    .line 134
    .line 135
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :cond_4
    return-void

    .line 139
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_6

    .line 147
    .line 148
    return-void

    .line 149
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 150
    .line 151
    .line 152
    move-result-wide v2

    .line 153
    const/4 v5, 0x2

    .line 154
    const-wide/16 v6, 0xc8

    .line 155
    .line 156
    if-eqz p2, :cond_d

    .line 157
    .line 158
    if-nez p1, :cond_7

    .line 159
    .line 160
    iput-wide v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_7
    iget-wide p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    .line 164
    .line 165
    sub-long p2, v2, p2

    .line 166
    .line 167
    cmp-long p2, p2, v6

    .line 168
    .line 169
    if-ltz p2, :cond_a

    .line 170
    .line 171
    iget-wide p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    .line 172
    .line 173
    sub-long p2, v2, p2

    .line 174
    .line 175
    cmp-long p2, p2, v6

    .line 176
    .line 177
    if-gez p2, :cond_8

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_8
    :goto_1
    if-nez p1, :cond_19

    .line 181
    .line 182
    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    .line 183
    .line 184
    if-ne p2, v5, :cond_19

    .line 185
    .line 186
    if-eqz v4, :cond_9

    .line 187
    .line 188
    const-string p0, "ActivityManagerPerformance"

    .line 189
    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string/jumbo p2, "setBoosterHome() skipped. Home key was pressed, but curTopState is already "

    .line 193
    .line 194
    .line 195
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    .line 199
    .line 200
    invoke-static {p2}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    :cond_9
    return-void

    .line 215
    :cond_a
    :goto_2
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    .line 216
    .line 217
    if-eq p2, p1, :cond_b

    .line 218
    .line 219
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    .line 220
    .line 221
    :cond_b
    if-eqz v4, :cond_c

    .line 222
    .line 223
    const-string p0, "ActivityManagerPerformance"

    .line 224
    .line 225
    const-string/jumbo p1, "setBoosterHome() skipped. uninterrupted boosting"

    .line 226
    .line 227
    .line 228
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    :cond_c
    return-void

    .line 232
    :cond_d
    iget-wide v8, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    .line 233
    .line 234
    sub-long v8, v2, v8

    .line 235
    .line 236
    cmp-long p2, v8, v6

    .line 237
    .line 238
    if-ltz p2, :cond_1d

    .line 239
    .line 240
    iget-wide v8, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    .line 241
    .line 242
    sub-long v8, v2, v8

    .line 243
    .line 244
    cmp-long p2, v8, v6

    .line 245
    .line 246
    if-gez p2, :cond_e

    .line 247
    .line 248
    goto/16 :goto_a

    .line 249
    .line 250
    :cond_e
    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    .line 251
    .line 252
    if-ne p2, v5, :cond_19

    .line 253
    .line 254
    :try_start_0
    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 255
    .line 256
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 257
    .line 258
    if-eqz p1, :cond_12

    .line 259
    .line 260
    if-eq p2, p1, :cond_10

    .line 261
    .line 262
    if-eq v2, p1, :cond_10

    .line 263
    .line 264
    if-eqz p2, :cond_f

    .line 265
    .line 266
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 267
    .line 268
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result p2

    .line 274
    if-nez p2, :cond_10

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :catch_0
    move-exception p0

    .line 278
    goto/16 :goto_7

    .line 279
    .line 280
    :cond_f
    :goto_3
    if-eqz v2, :cond_12

    .line 281
    .line 282
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 283
    .line 284
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result p2

    .line 290
    if-eqz p2, :cond_12

    .line 291
    .line 292
    :cond_10
    if-eqz v4, :cond_11

    .line 293
    .line 294
    const-string p0, "ActivityManagerPerformance"

    .line 295
    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .line 312
    .line 313
    :cond_11
    return-void

    .line 314
    :cond_12
    const/4 p2, 0x1

    .line 315
    if-eqz p3, :cond_14

    .line 316
    .line 317
    if-eqz v4, :cond_13

    .line 318
    .line 319
    const-string p3, "ActivityManagerPerformance"

    .line 320
    .line 321
    const-string/jumbo v0, "setBoosterHome() call setBoosterActStart()"

    .line 322
    .line 323
    .line 324
    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    :cond_13
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 328
    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_14
    :try_start_1
    iget-object p3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 332
    .line 333
    if-eqz p1, :cond_17

    .line 334
    .line 335
    if-eq p3, p1, :cond_15

    .line 336
    .line 337
    if-eqz p3, :cond_17

    .line 338
    .line 339
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 340
    .line 341
    iget-object p3, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result p3

    .line 347
    if-eqz p3, :cond_17

    .line 348
    .line 349
    goto :goto_4

    .line 350
    :catch_1
    move-exception p0

    .line 351
    goto :goto_6

    .line 352
    :cond_15
    :goto_4
    if-eqz v4, :cond_16

    .line 353
    .line 354
    const-string p0, "ActivityManagerPerformance"

    .line 355
    .line 356
    new-instance p2, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    .line 372
    .line 373
    :cond_16
    return-void

    .line 374
    :cond_17
    if-eqz v4, :cond_18

    .line 375
    .line 376
    const-string p3, "ActivityManagerPerformance"

    .line 377
    .line 378
    const-string/jumbo v0, "setBoosterHome() call setBoosterActResume()"

    .line 379
    .line 380
    .line 381
    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    :cond_18
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    .line 385
    .line 386
    .line 387
    :goto_5
    return-void

    .line 388
    :goto_6
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    :goto_7
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    :cond_19
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    .line 397
    .line 398
    if-nez p2, :cond_1a

    .line 399
    .line 400
    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 401
    .line 402
    const-string p3, "AMS_APP_HOME"

    .line 403
    .line 404
    invoke-static {p2, p3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 405
    .line 406
    .line 407
    move-result-object p2

    .line 408
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    .line 409
    .line 410
    if-eqz p2, :cond_1a

    .line 411
    .line 412
    const/16 p3, 0x8

    .line 413
    .line 414
    invoke-virtual {p2, p3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 415
    .line 416
    .line 417
    :cond_1a
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    .line 418
    .line 419
    if-nez p2, :cond_1b

    .line 420
    .line 421
    const-string p0, "ActivityManagerPerformance"

    .line 422
    .line 423
    const-string/jumbo p1, "setBoosterHome() skipped. SemDvfsManager.createInstance() failed"

    .line 424
    .line 425
    .line 426
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    return-void

    .line 430
    :cond_1b
    iput-wide v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    .line 431
    .line 432
    :try_start_2
    iget-object p3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    .line 433
    .line 434
    monitor-enter p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 435
    :try_start_3
    invoke-virtual {p2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 436
    .line 437
    .line 438
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    .line 439
    .line 440
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 441
    :try_start_4
    const-string p1, "ActivityManagerPerformance"

    .line 442
    .line 443
    const-string p2, "AMP_acquire() HOME"

    .line 444
    .line 445
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 446
    .line 447
    .line 448
    goto :goto_9

    .line 449
    :catch_2
    move-exception p1

    .line 450
    goto :goto_8

    .line 451
    :catchall_0
    move-exception p1

    .line 452
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 453
    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 454
    :goto_8
    const-string p2, "ActivityManagerPerformance"

    .line 455
    .line 456
    const-string p3, "AMP_acquire() HOME failed"

    .line 457
    .line 458
    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 462
    .line 463
    if-eqz p2, :cond_1c

    .line 464
    .line 465
    const-string p2, "ActivityManagerPerformance"

    .line 466
    .line 467
    new-instance p3, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    const-string v0, "AMP_acquire() HOME failed. e: "

    .line 470
    .line 471
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v0, "\n"

    .line 478
    .line 479
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object p0

    .line 486
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object p0

    .line 493
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 497
    .line 498
    .line 499
    :goto_9
    return-void

    .line 500
    :cond_1d
    :goto_a
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    .line 501
    .line 502
    if-eq p2, p1, :cond_1e

    .line 503
    .line 504
    if-eqz p1, :cond_1e

    .line 505
    .line 506
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    .line 507
    .line 508
    :cond_1e
    if-eqz v4, :cond_1f

    .line 509
    .line 510
    const-string p0, "ActivityManagerPerformance"

    .line 511
    .line 512
    const-string/jumbo p1, "setBoosterHome() skipped. uninterrupted boosting"

    .line 513
    .line 514
    .line 515
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .line 517
    .line 518
    :cond_1f
    return-void
.end method

.method public final setBoosterTail(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    const-string v2, "ActivityManagerPerformance"

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v4, "setBoosterTail() from "

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const-string v4, "AppSwitch"

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const-string v4, "ActStart"

    .line 27
    .line 28
    :goto_1
    const-string v5, ", r: "

    .line 29
    .line 30
    const-string v6, " ("

    .line 31
    .line 32
    invoke-static {v3, v4, v5, v1, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ")"

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    const-string v1, "ActivityManagerPerformance"

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string/jumbo v3, "setBoosterTail() Trace\n"

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    new-instance v1, Ljava/lang/Exception;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()V

    .line 87
    .line 88
    .line 89
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 90
    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    const-string p0, "ActivityManagerPerformance"

    .line 96
    .line 97
    const-string/jumbo p1, "setBoosterTail() skipped. mIsScreenOn: false"

    .line 98
    .line 99
    .line 100
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void

    .line 104
    :cond_4
    if-eqz p1, :cond_5

    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 107
    .line 108
    if-nez v1, :cond_6

    .line 109
    .line 110
    :cond_5
    if-nez p1, :cond_9

    .line 111
    .line 112
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 113
    .line 114
    if-eqz v1, :cond_9

    .line 115
    .line 116
    :cond_6
    if-eqz v0, :cond_8

    .line 117
    .line 118
    const-string p0, "ActivityManagerPerformance"

    .line 119
    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string/jumbo v0, "setBoosterTail() skipped. "

    .line 123
    .line 124
    .line 125
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    if-nez p1, :cond_7

    .line 129
    .line 130
    const-string p1, "AppSwitch"

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    const-string p1, "ActStart"

    .line 134
    .line 135
    :goto_2
    const-string v0, " is not finished"

    .line 136
    .line 137
    invoke-static {p2, p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_8
    return-void

    .line 141
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    .line 142
    .line 143
    if-nez p1, :cond_a

    .line 144
    .line 145
    sget-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    const-string v0, "AMS_RESUME_TAIL"

    .line 148
    .line 149
    invoke-static {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    .line 154
    .line 155
    if-eqz p1, :cond_a

    .line 156
    .line 157
    const/4 v0, 0x5

    .line 158
    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 159
    .line 160
    .line 161
    :cond_a
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    .line 162
    .line 163
    if-nez p1, :cond_b

    .line 164
    .line 165
    sget-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 166
    .line 167
    const-string v0, "AMS_ACT_LAZY"

    .line 168
    .line 169
    invoke-static {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    .line 174
    .line 175
    if-eqz p1, :cond_b

    .line 176
    .line 177
    const/4 v0, 0x6

    .line 178
    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 179
    .line 180
    .line 181
    :cond_b
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    .line 182
    .line 183
    if-nez p1, :cond_c

    .line 184
    .line 185
    const-string p0, "ActivityManagerPerformance"

    .line 186
    .line 187
    const-string/jumbo p1, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    .line 188
    .line 189
    .line 190
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    .line 195
    .line 196
    if-nez v0, :cond_d

    .line 197
    .line 198
    const-string p0, "ActivityManagerPerformance"

    .line 199
    .line 200
    const-string/jumbo p1, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    .line 201
    .line 202
    .line 203
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_d
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    .line 208
    .line 209
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 214
    .line 215
    .line 216
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/wm/ActivityRecord;

    .line 217
    .line 218
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :try_start_2
    const-string p1, "ActivityManagerPerformance"

    .line 220
    .line 221
    const-string p2, "AMP_acquire() TAIL"

    .line 222
    .line 223
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :catch_0
    move-exception p1

    .line 228
    goto :goto_3

    .line 229
    :catchall_0
    move-exception p1

    .line 230
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 232
    :goto_3
    const-string p2, "ActivityManagerPerformance"

    .line 233
    .line 234
    const-string v0, "AMP_acquire() TAIL failed"

    .line 235
    .line 236
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 240
    .line 241
    if-eqz p2, :cond_e

    .line 242
    .line 243
    const-string p2, "ActivityManagerPerformance"

    .line 244
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v1, "AMP_acquire() TAIL failed. e: "

    .line 248
    .line 249
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v1, "\n"

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    .line 276
    .line 277
    :goto_4
    return-void
.end method

.method public final setLowPower(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/16 v2, 0x1d

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_5

    .line 18
    :cond_0
    const/4 v2, 0x4

    .line 19
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    const/16 v2, 0x1e

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception p0

    .line 39
    goto :goto_4

    .line 40
    :cond_2
    const/4 v2, 0x3

    .line 41
    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    .line 49
    .line 50
    if-eqz p0, :cond_5

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    const/16 p1, 0x1f

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :catchall_2
    move-exception p0

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    const/4 p1, 0x5

    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 64
    .line 65
    .line 66
    :cond_5
    :goto_2
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 69
    throw p0

    .line 70
    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    throw p0

    .line 72
    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    throw p0
.end method
