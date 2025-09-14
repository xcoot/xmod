.class public final Lcom/android/server/wm/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;


# instance fields
.field public mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationService$LocalService;

.field public mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

.field public final mConvertInt2Str:Ljava/util/HashMap;

.field public final mInTransitionInfoList:Ljava/util/ArrayList;

.field public final mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

.field public final mLastHibernationStates:Landroid/util/ArrayMap;

.field public mLastLogTimeSecs:J

.field public final mLastTransitionInfo:Landroid/util/ArrayMap;

.field public final mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

.field public final mLoggerHandler:Landroid/os/Handler;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

.field public mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

.field public final mStringBuilder:Ljava/lang/StringBuilder;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTransitionInfoList:Ljava/util/ArrayList;

.field public mWindowState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string/jumbo v0, "window_time_3"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "window_time_4"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "window_time_0"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "window_time_1"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v4, "window_time_2"

    .line 14
    .line 15
    .line 16
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Looper;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 6
    .line 7
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mInTransitionInfoList:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance v1, Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    .line 40
    .line 41
    new-instance v1, Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    .line 57
    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastHibernationStates:Landroid/util/ArrayMap;

    .line 64
    .line 65
    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger$1;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityMetricsLogger$1;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mConvertInt2Str:Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    const-wide/16 v2, 0x3e8

    .line 77
    .line 78
    div-long/2addr v0, v2

    .line 79
    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 80
    .line 81
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 82
    .line 83
    new-instance p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 84
    .line 85
    invoke-direct {p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;-><init>(Landroid/os/Looper;)V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 89
    .line 90
    sget-object p1, Lcom/android/server/am/KillPolicyManager;->SWAPPINESS:[I

    .line 91
    .line 92
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->INSTANCE:Lcom/android/server/am/KillPolicyManager;

    .line 93
    .line 94
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    .line 95
    .line 96
    return-void
.end method

.method public static getAppStartTransitionType(IZ)I
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x3

    .line 5
    return p0

    .line 6
    :cond_0
    const/16 v0, 0x8

    .line 7
    .line 8
    if-ne p0, v0, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_1
    const/16 v0, 0x9

    .line 13
    .line 14
    if-ne p0, v0, :cond_3

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    const/4 p0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 p0, 0x2

    .line 21
    :goto_0
    return p0

    .line 22
    :cond_3
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static logAppCompatStateInternal(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;)V
    .locals 9

    .line 1
    iput p1, p2, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedState:I

    .line 2
    .line 3
    iput-object p0, p2, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 6
    .line 7
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    const/4 v1, 0x4

    .line 13
    const/4 v2, 0x5

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq p1, v2, :cond_0

    .line 16
    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    if-ne p1, v0, :cond_9

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {p0, v4}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v5, 0x2

    .line 42
    iget-object v6, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 43
    .line 44
    iget-object v7, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    invoke-virtual {v6, v8}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    iget-object v2, v7, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 54
    .line 55
    invoke-virtual {v2, p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    if-eq p0, v3, :cond_2

    .line 62
    .line 63
    if-ne p0, v5, :cond_1

    .line 64
    .line 65
    move v0, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 68
    .line 69
    const-string p2, "Unexpected letterbox horizontal reachability position type: "

    .line 70
    .line 71
    invoke-static {p0, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_2
    move v0, v5

    .line 80
    :cond_3
    :goto_0
    move v3, v0

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_8

    .line 97
    .line 98
    invoke-virtual {v6, v3}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    iget-object v0, v7, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 103
    .line 104
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-eqz p0, :cond_7

    .line 109
    .line 110
    if-eq p0, v3, :cond_6

    .line 111
    .line 112
    if-ne p0, v5, :cond_5

    .line 113
    .line 114
    const/4 v2, 0x6

    .line 115
    goto :goto_1

    .line 116
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    .line 117
    .line 118
    const-string p2, "Unexpected letterbox vertical reachability position type: "

    .line 119
    .line 120
    invoke-static {p0, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_6
    move v2, v5

    .line 129
    :cond_7
    :goto_1
    move v3, v2

    .line 130
    goto :goto_2

    .line 131
    :cond_8
    move v3, v8

    .line 132
    :cond_9
    :goto_2
    const/16 p0, 0x182

    .line 133
    .line 134
    invoke-static {p0, p2, p1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public static startLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v1, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v3, v1, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSessionStatus:I

    .line 11
    .line 12
    if-ne v3, v2, :cond_0

    .line 13
    .line 14
    iget-object v3, v1, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const-string v3, "Session stopping due to App Launch "

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "GenieMemoryManager"

    .line 29
    .line 30
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/server/chimera/genie/GenieMemoryManager;->setGenieSessionEnd()V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-boolean v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    .line 37
    .line 38
    sget-object v1, Lcom/android/server/chimera/umr/ForegroundAppTracker;->mForegroundMonitor:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;

    .line 39
    .line 40
    const-string v1, "com.sec.android.app.launcher"

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-boolean v1, Lcom/android/server/chimera/umr/ForegroundAppTracker;->IS_DEBUG_ENABLED:Z

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const-string v1, "B|app_launch "

    .line 54
    .line 55
    const-string v3, "ForegroundAppTracker"

    .line 56
    .line 57
    invoke-static {v1, v0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {}, Lcom/android/server/chimera/umr/ForegroundAppTracker;->getForegroundMonitor()Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-string v3, "com.sec.android.app.camera"

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-static {v2}, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->setCameraLaunch(Z)V

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->setAppLaunch(Z)V

    .line 79
    .line 80
    .line 81
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 82
    .line 83
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    .line 84
    .line 85
    if-nez v1, :cond_5

    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v2, "launching: "

    .line 91
    .line 92
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 96
    .line 97
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    .line 107
    .line 108
    iget-wide v2, v0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartRealtimeNs:J

    .line 109
    .line 110
    long-to-int p0, v2

    .line 111
    const-wide/16 v2, 0x40

    .line 112
    .line 113
    invoke-static {v2, v3, v1, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public static stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v1, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 6
    .line 7
    sget-boolean v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    .line 8
    .line 9
    sget-boolean v1, Lcom/android/server/chimera/umr/ForegroundAppTracker;->IS_DEBUG_ENABLED:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v1, "E|app_launch "

    .line 14
    .line 15
    const-string v2, "ForegroundAppTracker"

    .line 16
    .line 17
    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 26
    .line 27
    iget-wide v1, v1, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartRealtimeNs:J

    .line 28
    .line 29
    long-to-int v1, v1

    .line 30
    const-wide/16 v2, 0x40

    .line 31
    .line 32
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final abort(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 2
    .line 3
    if-eqz v2, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v3, p2

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 p2, 0x1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->stopTrace(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v0, 0x40

    .line 20
    .line 21
    const-string p2, "MetricsLogger:launchObserverNotifyIntentFailed"

    .line 22
    .line 23
    invoke-static {v0, v1, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 27
    .line 28
    iget-wide p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentFailed(J)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final convertFilter(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mConvertInt2Str:Ljava/util/HashMap;

    .line 2
    .line 3
    add-int/lit16 v0, p1, 0xc8

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string/jumbo p0, "unknown"

    .line 18
    .line 19
    .line 20
    :cond_0
    const-string v0, "("

    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ")"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public final convertReason(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mConvertInt2Str:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    const-string v0, "("

    .line 20
    .line 21
    invoke-static {p0, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ")"

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public final convertTRtype(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mConvertInt2Str:Ljava/util/HashMap;

    .line 2
    .line 3
    add-int/lit8 v0, p1, 0x64

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string p0, "UNKNOWN"

    .line 18
    .line 19
    :cond_0
    const-string v0, "("

    .line 20
    .line 21
    invoke-static {p0, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ")"

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public final done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V
    .locals 22

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    iget-object v0, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 8
    .line 9
    invoke-virtual {v0, v12, v13}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->stopTrace(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v11, Lcom/android/server/wm/ActivityMetricsLogger;->mLastHibernationStates:Landroid/util/ArrayMap;

    .line 16
    .line 17
    iget-object v1, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    const-wide/16 v1, 0x40

    .line 28
    .line 29
    iget-object v14, v11, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 30
    .line 31
    iget-object v9, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 32
    .line 33
    if-eqz v12, :cond_0

    .line 34
    .line 35
    iget-object v0, v11, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    .line 36
    .line 37
    iget-object v3, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v5, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const-wide/16 v6, -0x1

    .line 47
    .line 48
    move-object v3, v14

    .line 49
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 50
    .line 51
    .line 52
    const-string v0, "MetricsLogger:launchObserverNotifyActivityLaunchCancelled"

    .line 53
    .line 54
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-wide v3, v9, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 58
    .line 59
    iget-object v0, v11, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 60
    .line 61
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchCancelled(J)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_0
    iget-boolean v3, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    .line 70
    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    const-string v3, "MetricsLogger:launchObserverNotifyActivityLaunchFinished"

    .line 74
    .line 75
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-wide v3, v9, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 79
    .line 80
    iget-object v5, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 81
    .line 82
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 83
    .line 84
    iget v5, v5, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    .line 85
    .line 86
    iget-object v15, v11, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 87
    .line 88
    move-wide/from16 v16, v3

    .line 89
    .line 90
    move-object/from16 v18, v6

    .line 91
    .line 92
    move-wide/from16 v19, p4

    .line 93
    .line 94
    move/from16 v21, v5

    .line 95
    .line 96
    invoke-virtual/range {v15 .. v21}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchFinished(JLandroid/content/ComponentName;JI)V

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 100
    .line 101
    .line 102
    :cond_1
    if-eqz v0, :cond_2

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    :goto_0
    move v7, v0

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    const/4 v0, 0x0

    .line 111
    goto :goto_0

    .line 112
    :goto_1
    new-instance v6, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 113
    .line 114
    iget-object v0, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 115
    .line 116
    const/4 v1, -0x1

    .line 117
    invoke-direct {v6, v13, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 121
    .line 122
    iget-boolean v10, v0, Lcom/android/server/wm/ActivityRecord;->mStyleFillsParent:Z

    .line 123
    .line 124
    iget-wide v3, v9, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 125
    .line 126
    iget v5, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mCurrentTransitionDelayMs:I

    .line 127
    .line 128
    iget-object v15, v11, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    .line 129
    .line 130
    new-instance v9, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;

    .line 131
    .line 132
    iget v8, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessState:I

    .line 133
    .line 134
    iget v2, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessOomAdj:I

    .line 135
    .line 136
    move-object v0, v9

    .line 137
    move-object/from16 v1, p0

    .line 138
    .line 139
    move/from16 v16, v2

    .line 140
    .line 141
    move-object/from16 v2, p2

    .line 142
    .line 143
    move-object v11, v9

    .line 144
    move/from16 v9, v16

    .line 145
    .line 146
    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;JILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZIIZ)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v15, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    .line 151
    .line 152
    iget-object v0, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;

    .line 153
    .line 154
    if-eqz v0, :cond_3

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->run()V

    .line 157
    .line 158
    .line 159
    :cond_3
    iget-object v4, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 160
    .line 161
    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 162
    .line 163
    const/4 v1, 0x0

    .line 164
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 165
    .line 166
    iget v0, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    .line 167
    .line 168
    const/4 v1, 0x5

    .line 169
    if-ne v0, v1, :cond_4

    .line 170
    .line 171
    iget v0, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    .line 172
    .line 173
    iget v1, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    .line 174
    .line 175
    add-int v7, v0, v1

    .line 176
    .line 177
    iget-wide v2, v4, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    .line 178
    .line 179
    iget-object v0, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 180
    .line 181
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 182
    .line 183
    iget-object v5, v6, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 184
    .line 185
    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;

    .line 186
    .line 187
    move-object v1, v0

    .line 188
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;-><init>(JLcom/android/server/wm/ActivityRecord;Ljava/lang/Object;Lcom/android/server/wm/WindowManagerService;I)V

    .line 189
    .line 190
    .line 191
    const-wide/16 v1, 0x12c

    .line 192
    .line 193
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    .line 195
    .line 196
    :cond_4
    :goto_2
    if-nez v12, :cond_5

    .line 197
    .line 198
    iget-object v0, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_5

    .line 205
    .line 206
    move-object/from16 v0, p0

    .line 207
    .line 208
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mInTransitionInfoList:Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v2, "done cause="

    .line 216
    .line 217
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    move-object/from16 v2, p3

    .line 221
    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v2, " timestamp="

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    move-wide/from16 v2, p4

    .line 231
    .line 232
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v2, " info="

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const-string v2, "ActivityTaskManager"

    .line 248
    .line 249
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_5
    move-object/from16 v0, p0

    .line 254
    .line 255
    :goto_3
    iget-object v0, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    return-void
.end method

.method public final getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

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
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    if-ne p1, v2, :cond_0

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public final logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 5

    .line 1
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    new-instance v2, Landroid/metrics/LogMaker;

    .line 6
    .line 7
    const/16 v3, 0x478

    .line 8
    .line 9
    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 18
    .line 19
    .line 20
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 21
    .line 22
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 23
    .line 24
    const/16 v4, 0x367

    .line 25
    .line 26
    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 35
    .line 36
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 37
    .line 38
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 39
    .line 40
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 41
    .line 42
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mRelaunched:Z

    .line 43
    .line 44
    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 49
    .line 50
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 51
    .line 52
    const/16 v1, 0x31

    .line 53
    .line 54
    invoke-static {v1, p0, v2, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public logInTaskActivityStart(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZI)V
    .locals 8

    .line 1
    iget-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4
    .line 5
    iget p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 6
    .line 7
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->relaunched:Z

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    iget-wide v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->timestampNs:J

    .line 16
    .line 17
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    const/16 v0, 0x2ad

    .line 22
    .line 23
    iget v5, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 24
    .line 25
    move v3, p2

    .line 26
    move v4, p3

    .line 27
    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIJ)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v12, p4

    .line 8
    .line 9
    if-eqz v12, :cond_24

    .line 10
    .line 11
    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_13

    .line 16
    .line 17
    :cond_0
    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    .line 26
    iget-object v3, v12, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v4, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 29
    .line 30
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 31
    .line 32
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 33
    .line 34
    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(ILjava/lang/String;)Lcom/android/server/wm/WindowProcessController;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_0
    const/4 v14, 0x1

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    move v6, v14

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 v6, 0x0

    .line 44
    :goto_1
    if-eqz v6, :cond_4

    .line 45
    .line 46
    invoke-virtual {v2, v12}, Lcom/android/server/wm/WindowProcessController;->hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    const/4 v7, 0x0

    .line 54
    goto :goto_3

    .line 55
    :cond_4
    :goto_2
    move v7, v14

    .line 56
    :goto_3
    if-eqz v6, :cond_5

    .line 57
    .line 58
    iget v3, v2, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 59
    .line 60
    iget v2, v2, Lcom/android/server/wm/WindowProcessController;->mCurAdj:I

    .line 61
    .line 62
    move v9, v2

    .line 63
    move v8, v3

    .line 64
    goto :goto_4

    .line 65
    :cond_5
    const/16 v2, 0x14

    .line 66
    .line 67
    const/16 v3, -0x2710

    .line 68
    .line 69
    move v8, v2

    .line 70
    move v9, v3

    .line 71
    :goto_4
    iget-object v2, v11, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 72
    .line 73
    iget-boolean v3, v12, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    .line 74
    .line 75
    if-eqz v3, :cond_6

    .line 76
    .line 77
    iget-boolean v3, v12, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 78
    .line 79
    if-eqz v3, :cond_6

    .line 80
    .line 81
    const-string v1, "launched activity already visible"

    .line 82
    .line 83
    invoke-virtual {v0, v11, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_6
    const-wide/16 v4, 0xbb8

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    if-eqz v2, :cond_10

    .line 91
    .line 92
    iget-object v10, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 93
    .line 94
    iget-object v15, v10, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 95
    .line 96
    iget-object v13, v12, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 97
    .line 98
    if-ne v15, v13, :cond_a

    .line 99
    .line 100
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    if-eq v10, v13, :cond_7

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_7
    iget-object v10, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 112
    .line 113
    iget-object v13, v10, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 114
    .line 115
    iget-object v15, v12, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 116
    .line 117
    if-eqz v13, :cond_9

    .line 118
    .line 119
    if-eqz v15, :cond_9

    .line 120
    .line 121
    if-ne v13, v15, :cond_8

    .line 122
    .line 123
    move v10, v14

    .line 124
    goto :goto_6

    .line 125
    :cond_8
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    invoke-virtual {v10, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    goto :goto_6

    .line 138
    :cond_9
    iget v13, v12, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 139
    .line 140
    invoke-virtual {v10, v13}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    goto :goto_6

    .line 145
    :cond_a
    :goto_5
    const/4 v10, 0x0

    .line 146
    :goto_6
    if-eqz v10, :cond_10

    .line 147
    .line 148
    iget-object v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 149
    .line 150
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 151
    .line 152
    iget-object v6, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    xor-int/2addr v1, v14

    .line 159
    if-eqz v1, :cond_b

    .line 160
    .line 161
    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 162
    .line 163
    .line 164
    :cond_b
    iget-object v6, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    .line 165
    .line 166
    iget-object v7, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 167
    .line 168
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    iget-object v6, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 172
    .line 173
    if-ne v6, v12, :cond_c

    .line 174
    .line 175
    goto :goto_7

    .line 176
    :cond_c
    if-eqz v6, :cond_d

    .line 177
    .line 178
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 179
    .line 180
    iput-object v7, v12, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 181
    .line 182
    iput-object v3, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 183
    .line 184
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 185
    .line 186
    iput-object v7, v12, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 187
    .line 188
    iput-object v3, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 189
    .line 190
    :cond_d
    iput-object v12, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 191
    .line 192
    iget-boolean v3, v12, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    .line 193
    .line 194
    iput-boolean v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    .line 195
    .line 196
    :goto_7
    iget-object v3, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    .line 197
    .line 198
    invoke-virtual {v3, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    if-eqz v1, :cond_e

    .line 202
    .line 203
    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger;->startLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 204
    .line 205
    .line 206
    :cond_e
    iget-object v1, v12, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 207
    .line 208
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 209
    .line 210
    if-eqz v1, :cond_f

    .line 211
    .line 212
    invoke-virtual {v0, v12, v4, v5}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V

    .line 213
    .line 214
    .line 215
    :cond_f
    return-void

    .line 216
    :cond_10
    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    const/4 v13, 0x7

    .line 223
    const/16 v2, 0x9

    .line 224
    .line 225
    const/4 v15, 0x2

    .line 226
    if-eqz v1, :cond_11

    .line 227
    .line 228
    if-eq v1, v15, :cond_11

    .line 229
    .line 230
    move v15, v2

    .line 231
    goto :goto_a

    .line 232
    :cond_11
    if-eqz v6, :cond_13

    .line 233
    .line 234
    if-nez p3, :cond_12

    .line 235
    .line 236
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_12

    .line 241
    .line 242
    move v1, v2

    .line 243
    goto :goto_8

    .line 244
    :cond_12
    const/16 v1, 0x8

    .line 245
    .line 246
    :goto_8
    move/from16 v16, v1

    .line 247
    .line 248
    goto :goto_9

    .line 249
    :cond_13
    move/from16 v16, v13

    .line 250
    .line 251
    :goto_9
    new-instance v17, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 252
    .line 253
    move-object/from16 v1, v17

    .line 254
    .line 255
    move v3, v2

    .line 256
    move-object/from16 v2, p4

    .line 257
    .line 258
    move v15, v3

    .line 259
    move-object/from16 v3, p1

    .line 260
    .line 261
    move-object/from16 v4, p5

    .line 262
    .line 263
    move/from16 v5, v16

    .line 264
    .line 265
    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Landroid/app/ActivityOptions;IZZIIZ)V

    .line 266
    .line 267
    .line 268
    move-object/from16 v3, v17

    .line 269
    .line 270
    :goto_a
    if-nez v3, :cond_14

    .line 271
    .line 272
    const-string/jumbo v1, "unrecognized launch"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v11, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_14
    iget-object v1, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 280
    .line 281
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 282
    .line 283
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getAdjacentTask()Lcom/android/server/wm/Task;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    if-nez v1, :cond_15

    .line 288
    .line 289
    goto :goto_d

    .line 290
    :cond_15
    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    sub-int/2addr v2, v14

    .line 297
    :goto_b
    if-ltz v2, :cond_18

    .line 298
    .line 299
    iget-object v4, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    check-cast v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 306
    .line 307
    if-ne v4, v3, :cond_16

    .line 308
    .line 309
    goto :goto_c

    .line 310
    :cond_16
    iget-object v5, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 311
    .line 312
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 313
    .line 314
    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-eqz v5, :cond_17

    .line 319
    .line 320
    iput v14, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mMultiWindowLaunchType:I

    .line 321
    .line 322
    iput v14, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mMultiWindowLaunchType:I

    .line 323
    .line 324
    :cond_17
    :goto_c
    add-int/lit8 v2, v2, -0x1

    .line 325
    .line 326
    goto :goto_b

    .line 327
    :cond_18
    :goto_d
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    .line 333
    .line 334
    invoke-virtual {v1, v12, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    invoke-static {v3}, Lcom/android/server/wm/ActivityMetricsLogger;->startLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 338
    .line 339
    .line 340
    iget-boolean v1, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    .line 341
    .line 342
    const-wide/16 v4, 0x40

    .line 343
    .line 344
    if-eqz v1, :cond_1f

    .line 345
    .line 346
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 347
    .line 348
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 349
    .line 350
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 351
    .line 352
    if-eqz v1, :cond_1b

    .line 353
    .line 354
    iget v2, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 355
    .line 356
    if-eq v2, v13, :cond_1a

    .line 357
    .line 358
    const/16 v6, 0x8

    .line 359
    .line 360
    if-eq v2, v6, :cond_1a

    .line 361
    .line 362
    if-eq v2, v15, :cond_19

    .line 363
    .line 364
    goto :goto_e

    .line 365
    :cond_19
    invoke-virtual {v1, v14, v12}, Lcom/android/server/wm/ActivityManagerPerformance;->onAppLaunch(ZLcom/android/server/wm/ActivityRecord;)V

    .line 366
    .line 367
    .line 368
    goto :goto_e

    .line 369
    :cond_1a
    const/4 v2, 0x0

    .line 370
    invoke-virtual {v1, v2, v12}, Lcom/android/server/wm/ActivityManagerPerformance;->onAppLaunch(ZLcom/android/server/wm/ActivityRecord;)V

    .line 371
    .line 372
    .line 373
    :cond_1b
    :goto_e
    const-string v1, "MetricsLogger:launchObserverNotifyActivityLaunched"

    .line 374
    .line 375
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iget v1, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 379
    .line 380
    if-eq v1, v13, :cond_1c

    .line 381
    .line 382
    const/16 v2, 0x8

    .line 383
    .line 384
    if-eq v1, v2, :cond_1e

    .line 385
    .line 386
    if-eq v1, v15, :cond_1d

    .line 387
    .line 388
    const/4 v14, -0x1

    .line 389
    :cond_1c
    :goto_f
    move v7, v14

    .line 390
    goto :goto_10

    .line 391
    :cond_1d
    const/4 v14, 0x3

    .line 392
    goto :goto_f

    .line 393
    :cond_1e
    const/4 v7, 0x2

    .line 394
    :goto_10
    iget-object v1, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 395
    .line 396
    iget-wide v9, v1, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 397
    .line 398
    iget-object v1, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 399
    .line 400
    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 401
    .line 402
    iget v8, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 403
    .line 404
    iget-object v6, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 405
    .line 406
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunched(IIJLandroid/content/ComponentName;)V

    .line 407
    .line 408
    .line 409
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 410
    .line 411
    .line 412
    goto :goto_11

    .line 413
    :cond_1f
    iget-object v1, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 414
    .line 415
    iget-wide v1, v1, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 416
    .line 417
    const-string v3, "MetricsLogger:launchObserverNotifyIntentFailed"

    .line 418
    .line 419
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 420
    .line 421
    .line 422
    iget-object v3, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 423
    .line 424
    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentFailed(J)V

    .line 425
    .line 426
    .line 427
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 428
    .line 429
    .line 430
    :goto_11
    iget-object v1, v12, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 431
    .line 432
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 433
    .line 434
    if-eqz v1, :cond_20

    .line 435
    .line 436
    const-wide/16 v1, 0xbb8

    .line 437
    .line 438
    invoke-virtual {v0, v12, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V

    .line 439
    .line 440
    .line 441
    :cond_20
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    .line 442
    .line 443
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    const/4 v2, 0x2

    .line 448
    sub-int/2addr v1, v2

    .line 449
    :goto_12
    if-ltz v1, :cond_23

    .line 450
    .line 451
    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 458
    .line 459
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    .line 460
    .line 461
    if-nez v3, :cond_21

    .line 462
    .line 463
    iget-object v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 464
    .line 465
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    if-nez v3, :cond_22

    .line 470
    .line 471
    :cond_21
    iget-object v2, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 472
    .line 473
    const-wide/16 v3, 0x0

    .line 474
    .line 475
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V

    .line 476
    .line 477
    .line 478
    :cond_22
    add-int/lit8 v1, v1, -0x1

    .line 479
    .line 480
    goto :goto_12

    .line 481
    :cond_23
    return-void

    .line 482
    :cond_24
    :goto_13
    const-string/jumbo v1, "nothing launched"

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v11, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    return-void
.end method

.method public final notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p3, v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    move-object v2, v1

    .line 14
    :goto_0
    if-ltz v0, :cond_2

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    iget-object v4, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    if-ne p2, v4, :cond_0

    .line 29
    .line 30
    move-object v2, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    if-nez v2, :cond_1

    .line 33
    .line 34
    iget-object v4, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-ne p3, v4, :cond_1

    .line 41
    .line 42
    move-object v2, v3

    .line 43
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    :goto_1
    if-nez v2, :cond_5

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mInTransitionInfoList:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    :goto_2
    if-ltz v0, :cond_5

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mInTransitionInfoList:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 65
    .line 66
    if-eqz p2, :cond_3

    .line 67
    .line 68
    iget-object v4, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 69
    .line 70
    if-ne p2, v4, :cond_3

    .line 71
    .line 72
    :goto_3
    move-object v1, v2

    .line 73
    goto :goto_4

    .line 74
    :cond_3
    if-nez v1, :cond_4

    .line 75
    .line 76
    iget-object v4, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-ne p3, v4, :cond_4

    .line 83
    .line 84
    move-object v1, v3

    .line 85
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    move-object v3, v1

    .line 89
    goto :goto_3

    .line 90
    :cond_6
    move-object v3, v1

    .line 91
    :goto_4
    if-nez v1, :cond_8

    .line 92
    .line 93
    new-instance p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 94
    .line 95
    invoke-direct {p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string p3, "MetricsLogger:launchObserverNotifyIntentStarted"

    .line 99
    .line 100
    const-wide/16 v0, 0x40

    .line 101
    .line 102
    invoke-static {v0, v1, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 106
    .line 107
    iget-wide v4, p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 108
    .line 109
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentStarted(Landroid/content/Intent;J)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 113
    .line 114
    .line 115
    if-eqz v3, :cond_7

    .line 116
    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string/jumbo p1, "notifyActivityLaunching: update associated activity from transitioning="

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    const-string p1, "ActivityTaskManager"

    .line 135
    .line 136
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    iget-object p0, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 140
    .line 141
    iput-object p0, p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 142
    .line 143
    :cond_7
    return-object p2

    .line 144
    :cond_8
    iget-object p0, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 145
    .line 146
    return-object p0
.end method

.method public final notifyBindApplication(Landroid/content/pm/ApplicationInfo;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

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
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 22
    .line 23
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 24
    .line 25
    if-ne v2, p1, :cond_0

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    .line 33
    iget-object v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 34
    .line 35
    iget-wide v6, v5, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 36
    .line 37
    sub-long/2addr v2, v6

    .line 38
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    long-to-int v2, v2

    .line 43
    iput v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    .line 44
    .line 45
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    .line 51
    .line 52
    const/4 v2, 0x7

    .line 53
    iput v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v3, "Process "

    .line 58
    .line 59
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 65
    .line 66
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, " restarted"

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "ActivityTaskManager"

    .line 81
    .line 82
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    iget-object v2, v5, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v2, :cond_0

    .line 88
    .line 89
    const-string v2, "#"

    .line 90
    .line 91
    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget v2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->sTraceSeqId:I

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-wide/16 v2, 0x40

    .line 105
    .line 106
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    return-void
.end method

.method public final notifyFullyDrawn(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    new-instance v7, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    move-object v1, v7

    .line 24
    move-object v2, p0

    .line 25
    move-object v3, p2

    .line 26
    move v4, p1

    .line 27
    move-object v5, v0

    .line 28
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Ljava/lang/Object;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;I)V

    .line 29
    .line 30
    .line 31
    iput-object v7, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;

    .line 39
    .line 40
    iget-object v9, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    .line 45
    .line 46
    int-to-long v1, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 49
    .line 50
    iget-wide v2, v9, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 51
    .line 52
    sub-long v2, v7, v2

    .line 53
    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    :goto_0
    new-instance v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 59
    .line 60
    long-to-int v1, v1

    .line 61
    invoke-direct {v3, v0, p2, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V

    .line 62
    .line 63
    .line 64
    const/16 v1, 0x8

    .line 65
    .line 66
    iget v2, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 67
    .line 68
    if-eq v2, v1, :cond_4

    .line 69
    .line 70
    const/4 v1, 0x7

    .line 71
    if-ne v2, v1, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const/4 v1, 0x0

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 77
    :goto_2
    iget-object v10, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    new-instance v1, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda2;

    .line 82
    .line 83
    invoke-direct {v1, p0, v3}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    iget-boolean p2, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    .line 95
    .line 96
    if-nez p2, :cond_6

    .line 97
    .line 98
    return-void

    .line 99
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v1, "ActivityManager:ReportingFullyDrawn "

    .line 102
    .line 103
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    const-wide/16 v11, 0x40

    .line 118
    .line 119
    invoke-static {v11, v12, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance p2, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;

    .line 123
    .line 124
    const/4 v6, 0x0

    .line 125
    move-object v1, p2

    .line 126
    move-object v2, p0

    .line 127
    move v4, p1

    .line 128
    move-object v5, v0

    .line 129
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Ljava/lang/Object;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v10, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    .line 134
    .line 135
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 136
    .line 137
    .line 138
    const-string p1, "MetricsLogger:launchObserverNotifyReportFullyDrawn"

    .line 139
    .line 140
    invoke-static {v11, v12, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-wide p1, v9, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 146
    .line 147
    invoke-virtual {p0, p1, p2, v7, v8}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onReportFullyDrawn(JJ)V

    .line 148
    .line 149
    .line 150
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final notifyTransitionStarting(Landroid/util/ArrayMap;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    .line 2
    .line 3
    .line 4
    move-result-wide v6

    .line 5
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v8, 0x1

    .line 10
    sub-int/2addr v0, v8

    .line 11
    move v9, v0

    .line 12
    :goto_0
    if-ltz v9, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1, v8}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    .line 45
    iget-object v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 46
    .line 47
    iget-wide v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 48
    .line 49
    sub-long v3, v6, v3

    .line 50
    .line 51
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    long-to-int v0, v0

    .line 56
    iput v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mCurrentTransitionDelayMs:I

    .line 57
    .line 58
    invoke-virtual {p1, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    .line 69
    .line 70
    iput-boolean v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    .line 71
    .line 72
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    const-string/jumbo v3, "notifyTransitionStarting drawn"

    .line 78
    .line 79
    .line 80
    move-object v0, p0

    .line 81
    move-wide v4, v6

    .line 82
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, -0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    return-void
.end method

.method public final scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda4;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda4;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 12
    .line 13
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
