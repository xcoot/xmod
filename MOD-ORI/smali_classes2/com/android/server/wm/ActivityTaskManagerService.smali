.class public final Lcom/android/server/wm/ActivityTaskManagerService;
.super Landroid/app/IActivityTaskManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sIsPip2ExperimentEnabled:Ljava/lang/Boolean;


# instance fields
.field public final GL_ES_VERSION:I

.field public mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

.field public mAccessibilityServiceUids:[I

.field public volatile mActiveDreamComponent:Landroid/content/ComponentName;

.field public final mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

.field public mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

.field public mActivityClientController:Lcom/android/server/wm/ActivityClientController;

.field public final mActivityInterceptorCallbacks:Landroid/util/SparseArray;

.field public mActivityStartController:Lcom/android/server/wm/ActivityStartController;

.field public final mAllowAppSwitchUids:Landroid/util/SparseArray;

.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAnrController:Ljava/util/List;

.field public final mAppJumpBlockReceiver:Lcom/android/server/wm/ActivityTaskManagerService$3;

.field public mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAppPairController:Lcom/android/server/wm/AppPairController;

.field public volatile mAppSwitchesState:I

.field public mAppWarnings:Lcom/android/server/wm/AppWarnings;

.field public final mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

.field public mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

.field public mBatteryOverheatLevel:I

.field public mCb4Task:Ljava/util/Optional;

.field public final mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

.field public mCheckSIOPLevelList:Ljava/util/HashMap;

.field public final mCompanionAppUidsMap:Ljava/util/Map;

.field public mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

.field public mConfigurationSeq:I

.field public final mContentDispatcher:Lcom/android/server/pm/ContentDispatcher;

.field public final mContext:Landroid/content/Context;

.field public mController:Landroid/app/IActivityController;

.field public mControllerDescription:Ljava/lang/String;

.field public mControllerIsAMonkey:Z

.field public final mCooldownLevelReceiver:Lcom/android/server/wm/ActivityTaskManagerService$3;

.field public mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field public volatile mDemoteTopAppReasons:I

.field public mDevEnableNonResizableMultiWindow:Z

.field public mDeviceOwnerUid:I

.field public final mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

.field public final mFactoryTest:I

.field public mForceResizableActivities:Z

.field public final mFreeformController:Lcom/android/server/wm/FreeformController;

.field public mGesutreHintOn:Z

.field public mGlobalAssetsSeq:I

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mGlobalLockWithoutBoost:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mGrammaticalManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

.field public mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

.field public mHasCompanionDeviceSetupFeature:Z

.field public mHasHeavyWeightFeature:Z

.field public mHasLeanbackFeature:Z

.field public volatile mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

.field public volatile mHomeProcess:Lcom/android/server/wm/WindowProcessController;

.field public final mIdsLock:Ljava/lang/Object;

.field public final mIdsReceiver:Lcom/android/server/wm/ActivityTaskManagerService$3;

.field public mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

.field final mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mKeyEventListener:Lcom/samsung/android/multiwindow/IKeyEventListener;

.field public mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field public mKeyguardShown:Z

.field public mLastANRState:Ljava/lang/String;

.field public mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public volatile mLastStopAppSwitchesTime:J

.field public mLayoutReasons:I

.field public final mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

.field public mLockTaskController:Lcom/android/server/wm/LockTaskController;

.field public final mMWControllers:Ljava/util/ArrayList;

.field public final mMultiInstanceController:Lcom/android/server/wm/MultiInstanceController;

.field public final mMultiStarController:Lcom/android/server/wm/MultiStarController;

.field public final mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

.field public final mMultiTaskingBinder:Lcom/android/server/wm/MultiTaskingBinder;

.field public final mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

.field public final mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

.field public final mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

.field public final mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

.field public final mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

.field public final mNewDexController:Lcom/android/server/wm/NewDexController;

.field public mOverheatTextId:I

.field public mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

.field public final mPendingAssistExtras:Ljava/util/ArrayList;

.field public mPendingIntentController:Lcom/android/server/am/PendingIntentController;

.field public mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

.field public mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mPowerModeReasons:I

.field public volatile mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

.field public mPreviousProcessVisibleTime:J

.field public final mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

.field public final mProcessNames:Lcom/android/internal/app/ProcessMap;

.field public mProfileApp:Ljava/lang/String;

.field public mProfileOwnerUids:Ljava/util/Set;

.field public mProfileProc:Lcom/android/server/wm/WindowProcessController;

.field public mProfilerInfo:Landroid/app/ProfilerInfo;

.field public mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field public mRespectsActivityMinWidthHeightMultiWindow:I

.field public volatile mRetainPowerModeAndTopProcessState:Z

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

.field public mSIOPLevel:I

.field public final mScreenObservers:Ljava/util/List;

.field public mSetClearIds:Ljava/util/Set;

.field public mShowDialogs:Z

.field public volatile mShuttingDown:Z

.field public volatile mSleeping:Z

.field public mSpeg:Lcom/android/server/pm/SpegService;

.field public final mStartingProcessActivities:Ljava/util/ArrayList;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mSupportedSystemLocales:[Ljava/lang/String;

.field public mSupportsExpandedPictureInPicture:Z

.field public mSupportsFreeformWindowManagement:Z

.field public mSupportsMultiDisplay:Z

.field public mSupportsMultiWindow:Z

.field public mSupportsNonResizableMultiWindow:I

.field public mSupportsPictureInPicture:Z

.field public mSuppressResizeConfigChanges:Z

.field public mSysUiServiceComponent:Landroid/content/ComponentName;

.field public final mSystemThread:Landroid/app/ActivityThread;

.field public mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field public final mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field public final mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field public mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTempConfig:Landroid/content/res/Configuration;

.field public mThumbnailHeight:I

.field public mThumbnailWidth:I

.field public final mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

.field public mTopAction:Ljava/lang/String;

.field public volatile mTopApp:Lcom/android/server/wm/WindowProcessController;

.field public mTopComponent:Landroid/content/ComponentName;

.field public volatile mTopProcessState:I

.field public mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUiContext:Landroid/content/Context;

.field public mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

.field public final mUpdateLock:Landroid/os/UpdateLock;

.field public final mUpdateOomAdjRunnable:Lcom/android/server/wm/ActivityTaskManagerService$2;

.field public mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public mUserManager:Lcom/android/server/pm/UserManagerService;

.field public mViSessionId:I

.field public final mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

.field public volatile mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

.field public mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mVr2dDisplayId:I

.field public mVrController:Lcom/android/server/wm/VrController;

.field public mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

.field public mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field public final mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;


# direct methods
.method public static -$$Nest$monLocalVoiceInteractionStartedLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-object p2, v0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 15
    .line 16
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 19
    .line 20
    invoke-interface {v2, p1, p3}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 28
    .line 29
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 32
    .line 33
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    :catch_0
    const/4 p0, 0x0

    .line 46
    iput-object p0, v0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 47
    .line 48
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public static -$$Nest$mwriteSleepStateToProto(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/util/proto/ProtoOutputStream;IZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10b0000001bL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide v2, 0x10e00000001L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Landroid/os/PowerManagerInternal;->wakefulnessToProtoEnum(I)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 26
    .line 27
    iget-object p2, p2, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, p2, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 45
    .line 46
    const-wide v4, 0x20900000002L

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-wide v2, 0x10800000003L

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 67
    .line 68
    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 69
    .line 70
    .line 71
    const-wide v2, 0x10800000004L

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 77
    .line 78
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 79
    .line 80
    .line 81
    const-wide v2, 0x10800000005L

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/app/IActivityTaskManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mOverheatTextId:I

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 33
    .line 34
    new-instance v1, Lcom/android/server/wm/MirrorActiveUids;

    .line 35
    .line 36
    invoke-direct {v1}, Lcom/android/server/wm/MirrorActiveUids;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 40
    .line 41
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    .line 42
    .line 43
    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 47
    .line 48
    new-instance v1, Lcom/android/server/wm/WindowProcessControllerMap;

    .line 49
    .line 50
    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessControllerMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 57
    .line 58
    const/16 v2, 0x3e8

    .line 59
    .line 60
    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    .line 61
    .line 62
    new-instance v2, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance v2, Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    .line 75
    .line 76
    new-instance v2, Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    .line 82
    .line 83
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 89
    .line 90
    new-instance v2, Ljava/lang/Object;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIdsLock:Ljava/lang/Object;

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 99
    .line 100
    new-instance v3, Landroid/content/res/Configuration;

    .line 101
    .line 102
    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 106
    .line 107
    const/4 v3, 0x2

    .line 108
    iput v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 109
    .line 110
    new-instance v4, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    .line 116
    .line 117
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerDescription:Ljava/lang/String;

    .line 118
    .line 119
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 120
    .line 121
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 122
    .line 123
    const-string v4, "android.intent.action.MAIN"

    .line 124
    .line 125
    iput-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 126
    .line 127
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    .line 128
    .line 129
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    .line 130
    .line 131
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 132
    .line 133
    new-instance v4, Landroid/os/UpdateLock;

    .line 134
    .line 135
    const-string v5, "immersive"

    .line 136
    .line 137
    invoke-direct {v4, v5}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iput-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    .line 141
    .line 142
    new-instance v4, Landroid/util/SparseArray;

    .line 143
    .line 144
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    .line 148
    .line 149
    new-instance v4, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    iput-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    .line 159
    .line 160
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    .line 161
    .line 162
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 163
    .line 164
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 165
    .line 166
    .line 167
    iput v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 168
    .line 169
    const/4 v3, 0x1

    .line 170
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 171
    .line 172
    new-array v3, v1, [I

    .line 173
    .line 174
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessibilityServiceUids:[I

    .line 175
    .line 176
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 177
    .line 178
    new-instance v0, Landroid/util/ArraySet;

    .line 179
    .line 180
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 181
    .line 182
    .line 183
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileOwnerUids:Ljava/util/Set;

    .line 184
    .line 185
    new-instance v0, Lcom/android/server/wm/MultiTaskingController;

    .line 186
    .line 187
    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 188
    .line 189
    .line 190
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 191
    .line 192
    new-instance v0, Lcom/android/server/wm/MultiTaskingBinder;

    .line 193
    .line 194
    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingBinder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 195
    .line 196
    .line 197
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingBinder:Lcom/android/server/wm/MultiTaskingBinder;

    .line 198
    .line 199
    new-instance v0, Lcom/android/server/wm/MultiStarController;

    .line 200
    .line 201
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 202
    .line 203
    .line 204
    iput-object p0, v0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 205
    .line 206
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    .line 207
    .line 208
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$1;

    .line 209
    .line 210
    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$1;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 211
    .line 212
    .line 213
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMWControllers:Ljava/util/ArrayList;

    .line 214
    .line 215
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$2;

    .line 216
    .line 217
    invoke-direct {v3, p0}, Lcom/android/server/wm/ActivityTaskManagerService$2;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 218
    .line 219
    .line 220
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Lcom/android/server/wm/ActivityTaskManagerService$2;

    .line 221
    .line 222
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$3;

    .line 223
    .line 224
    const/4 v4, 0x0

    .line 225
    invoke-direct {v3, v4, p0}, Lcom/android/server/wm/ActivityTaskManagerService$3;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;)V

    .line 226
    .line 227
    .line 228
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIdsReceiver:Lcom/android/server/wm/ActivityTaskManagerService$3;

    .line 229
    .line 230
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$3;

    .line 231
    .line 232
    const/4 v4, 0x1

    .line 233
    invoke-direct {v3, v4, p0}, Lcom/android/server/wm/ActivityTaskManagerService$3;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;)V

    .line 234
    .line 235
    .line 236
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppJumpBlockReceiver:Lcom/android/server/wm/ActivityTaskManagerService$3;

    .line 237
    .line 238
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$3;

    .line 239
    .line 240
    const/4 v4, 0x2

    .line 241
    invoke-direct {v3, v4, p0}, Lcom/android/server/wm/ActivityTaskManagerService$3;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;)V

    .line 242
    .line 243
    .line 244
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCooldownLevelReceiver:Lcom/android/server/wm/ActivityTaskManagerService$3;

    .line 245
    .line 246
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCb4Task:Ljava/util/Optional;

    .line 251
    .line 252
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 253
    .line 254
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    iput v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    .line 259
    .line 260
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 265
    .line 266
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 271
    .line 272
    new-instance v3, Lcom/android/server/wm/ClientLifecycleManager;

    .line 273
    .line 274
    invoke-direct {v3}, Lcom/android/server/wm/ClientLifecycleManager;-><init>()V

    .line 275
    .line 276
    .line 277
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 278
    .line 279
    new-instance v3, Lcom/android/server/wm/VisibleActivityProcessTracker;

    .line 280
    .line 281
    invoke-direct {v3, p0}, Lcom/android/server/wm/VisibleActivityProcessTracker;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 282
    .line 283
    .line 284
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    .line 285
    .line 286
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 287
    .line 288
    invoke-direct {v3, p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 289
    .line 290
    .line 291
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 292
    .line 293
    const-string/jumbo v3, "ro.opengles.version"

    .line 294
    .line 295
    .line 296
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    .line 301
    .line 302
    new-instance v1, Lcom/android/server/wm/WindowOrganizerController;

    .line 303
    .line 304
    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 305
    .line 306
    .line 307
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 308
    .line 309
    iget-object v3, v1, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 310
    .line 311
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 312
    .line 313
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 314
    .line 315
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 316
    .line 317
    new-instance v1, Lcom/android/server/wm/BackNavigationController;

    .line 318
    .line 319
    invoke-direct {v1}, Lcom/android/server/wm/BackNavigationController;-><init>()V

    .line 320
    .line 321
    .line 322
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 323
    .line 324
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    .line 325
    .line 326
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 327
    .line 328
    invoke-direct {v1, p1, p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 329
    .line 330
    .line 331
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 332
    .line 333
    new-instance v1, Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 334
    .line 335
    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 336
    .line 337
    .line 338
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    new-instance v1, Lcom/android/server/wm/MultiWindowEnableController;

    .line 344
    .line 345
    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiWindowEnableController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 346
    .line 347
    .line 348
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 354
    .line 355
    if-eqz v1, :cond_0

    .line 356
    .line 357
    new-instance v1, Lcom/android/server/wm/ChangeTransitionController;

    .line 358
    .line 359
    invoke-direct {v1, p0}, Lcom/android/server/wm/ChangeTransitionController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 360
    .line 361
    .line 362
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX:Z

    .line 368
    .line 369
    if-eqz v1, :cond_1

    .line 370
    .line 371
    new-instance v1, Lcom/android/server/wm/NewDexController;

    .line 372
    .line 373
    invoke-direct {v1, p0}, Lcom/android/server/wm/NewDexController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 374
    .line 375
    .line 376
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mNewDexController:Lcom/android/server/wm/NewDexController;

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    :cond_1
    new-instance v1, Lcom/android/server/wm/FreeformController;

    .line 382
    .line 383
    invoke-direct {v1, p0}, Lcom/android/server/wm/FreeformController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 384
    .line 385
    .line 386
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    new-instance v1, Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 392
    .line 393
    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiTaskingAppCompatController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 394
    .line 395
    .line 396
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    new-instance v1, Lcom/android/server/wm/NaturalSwitchingController;

    .line 402
    .line 403
    invoke-direct {v1, p0}, Lcom/android/server/wm/NaturalSwitchingController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 404
    .line 405
    .line 406
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 407
    .line 408
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    new-instance v1, Lcom/android/server/wm/MultiInstanceController;

    .line 412
    .line 413
    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiInstanceController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 414
    .line 415
    .line 416
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiInstanceController:Lcom/android/server/wm/MultiInstanceController;

    .line 417
    .line 418
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    new-instance v1, Lcom/android/server/wm/AppPairController;

    .line 422
    .line 423
    invoke-direct {v1, p0}, Lcom/android/server/wm/AppPairController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 424
    .line 425
    .line 426
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    .line 427
    .line 428
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 432
    .line 433
    if-eqz v1, :cond_2

    .line 434
    .line 435
    new-instance v1, Lcom/android/server/wm/MultiWindowFoldController;

    .line 436
    .line 437
    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiWindowFoldController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 438
    .line 439
    .line 440
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    .line 441
    .line 442
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    :cond_2
    new-instance v0, Lcom/android/server/pm/ContentDispatcher;

    .line 446
    .line 447
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;

    .line 448
    .line 449
    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 450
    .line 451
    .line 452
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 453
    .line 454
    .line 455
    new-instance v2, Landroid/util/ArrayMap;

    .line 456
    .line 457
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 458
    .line 459
    .line 460
    iput-object v2, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    .line 461
    .line 462
    iput-object p1, v0, Lcom/android/server/pm/ContentDispatcher;->mContext:Landroid/content/Context;

    .line 463
    .line 464
    new-instance p1, Landroid/os/Handler;

    .line 465
    .line 466
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 475
    .line 476
    .line 477
    iput-object p1, v0, Lcom/android/server/pm/ContentDispatcher;->mHandler:Landroid/os/Handler;

    .line 478
    .line 479
    iput-object v1, v0, Lcom/android/server/pm/ContentDispatcher;->mGrantUriPermission:Ljava/util/function/BiConsumer;

    .line 480
    .line 481
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 482
    .line 483
    .line 484
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContentDispatcher:Lcom/android/server/pm/ContentDispatcher;

    .line 485
    .line 486
    return-void
.end method

.method public static checkCallingPermission(Ljava/lang/String;)I
    .locals 6

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
    const/4 v5, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, -0x1

    .line 12
    move-object v2, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static dumpLastANRTracesLocked(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    const-string v0, "ACTIVITY MANAGER LAST ANR TRACES (dumpsys activity lastanr-traces)"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    const-string v1, "/data/anr"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v0, "  <no ANR has occurred since boot>"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    array-length v1, v0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_0
    if-ge v3, v1, :cond_3

    .line 33
    .line 34
    aget-object v4, v0, v3

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    .line 43
    .line 44
    .line 45
    move-result-wide v7

    .line 46
    cmp-long v5, v5, v7

    .line 47
    .line 48
    if-gez v5, :cond_2

    .line 49
    .line 50
    :cond_1
    move-object v2, v4

    .line 51
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const-string v0, "File: "

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 67
    .line 68
    .line 69
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 70
    .line 71
    new-instance v1, Ljava/io/FileReader;

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception v1

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_5

    .line 95
    :catch_0
    move-exception v0

    .line 96
    goto :goto_4

    .line 97
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 106
    :goto_4
    const-string v1, "Unable to read: "

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 115
    .line 116
    .line 117
    :goto_5
    return-void
.end method

.method public static enforceNotIsolatedCaller(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 13
    .line 14
    const-string v1, "Isolated process not allowed to call "

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public static enforceTaskPermission(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "ActivityTaskManager"

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string p0, "MANAGE_ACTIVITY_STACKS is deprecated, please use alternative permission: MANAGE_ACTIVITY_TASKS"

    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const-string v0, "Permission Denial: "

    .line 27
    .line 28
    const-string v2, " from pid="

    .line 29
    .line 30
    invoke-static {v0, p0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v0, ", uid="

    .line 35
    .line 36
    const-string v2, " requires android.permission.MANAGE_ACTIVITY_TASKS"

    .line 37
    .line 38
    invoke-static {p0, v0, v2, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance v0, Ljava/lang/SecurityException;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public static isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8

    .line 1
    :try_start_0
    const-string v0, "application_policy"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move-object v2, p0

    .line 16
    move v3, p1

    .line 17
    move-object v4, p2

    .line 18
    move-object v5, p3

    .line 19
    move-object v6, p4

    .line 20
    move v7, p5

    .line 21
    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return p0

    .line 26
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public static isPip2ExperimentEnabled()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 10
    .line 11
    const-string/jumbo v1, "org.chromium.arc"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/content/pm/FeatureInfo;

    .line 19
    .line 20
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v1, v1, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 25
    .line 26
    const-string v2, "android.software.leanback"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/content/pm/FeatureInfo;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget v0, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 37
    .line 38
    :cond_0
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget v0, v1, Landroid/content/pm/FeatureInfo;->version:I

    .line 41
    .line 42
    :cond_1
    const-string/jumbo v0, "persist.wm_shell.pip2"

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    invoke-static {}, Lcom/android/wm/shell/Flags;->enablePip2Implementation()Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v1, 0x1

    .line 57
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 62
    .line 63
    :cond_3
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    return v0
.end method

.method public static logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/RuntimeException;Ljava/lang/String;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/SecurityException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, " onTransact aborts UID:"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " PID:"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "ActivityTaskManager"

    .line 35
    .line 36
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    throw p0
.end method

.method public static printDisplayInfoAndNewLine(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 1
    const-string v0, " displayId="

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "N/A"

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 25
    .line 26
    .line 27
    const-string v0, "(type="

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {p1}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p1, ")"

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .locals 9

    .line 1
    const-string v0, "Bad thumbnail size: got "

    .line 2
    .line 3
    const-string v1, "Can\'t add task for another application: target uid="

    .line 4
    .line 5
    const-string v2, "Intent "

    .line 6
    .line 7
    const-string v3, "Activity does not exist; token="

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 20
    .line 21
    .line 22
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    if-eqz v8, :cond_9

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_8

    .line 34
    .line 35
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    .line 40
    .line 41
    if-ne v2, v3, :cond_7

    .line 42
    .line 43
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    .line 48
    .line 49
    if-ne v2, v3, :cond_7

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    const/4 v0, 0x0

    .line 56
    if-eqz p4, :cond_0

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    if-eqz p4, :cond_1

    .line 70
    .line 71
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 75
    .line 76
    .line 77
    move-result p4

    .line 78
    const/high16 v0, 0x80000

    .line 79
    .line 80
    and-int/2addr p4, v0

    .line 81
    if-eqz p4, :cond_2

    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 84
    .line 85
    .line 86
    move-result p4

    .line 87
    const/16 v0, 0x2000

    .line 88
    .line 89
    and-int/2addr p4, v0

    .line 90
    if-nez p4, :cond_2

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 96
    .line 97
    .line 98
    move-result-object p4

    .line 99
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    const-wide/16 v2, 0x400

    .line 104
    .line 105
    invoke-interface {p4, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const/4 p4, -0x1

    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 113
    .line 114
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 115
    .line 116
    if-eq v0, v4, :cond_3

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    new-instance v1, Lcom/android/server/wm/Task$Builder;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    iput v2, v1, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    iput v2, v1, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 139
    .line 140
    iput-object p1, v1, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 141
    .line 142
    iput-object p2, v1, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getNextRootTaskId()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iput p1, v1, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 159
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-ne p2, p4, :cond_4

    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 167
    .line 168
    .line 169
    iget-object p0, p1, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 170
    .line 171
    invoke-virtual {p0, p3}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 172
    .line 173
    .line 174
    iget p0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 175
    .line 176
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 178
    .line 179
    .line 180
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    .line 182
    .line 183
    return p0

    .line 184
    :cond_4
    :try_start_2
    const-string p0, "addAppTask"

    .line 185
    .line 186
    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :goto_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 191
    .line 192
    .line 193
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    .line 195
    .line 196
    return p4

    .line 197
    :cond_5
    :goto_2
    :try_start_3
    const-string p0, "ActivityTaskManager"

    .line 198
    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    if-nez p1, :cond_6

    .line 205
    .line 206
    move p1, p4

    .line 207
    goto :goto_3

    .line 208
    :cond_6
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 209
    .line 210
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 211
    .line 212
    :goto_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string p1, ", calling uid="

    .line 216
    .line 217
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    monitor-exit v7

    .line 231
    goto :goto_1

    .line 232
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 233
    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 240
    .line 241
    .line 242
    move-result p3

    .line 243
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string/jumbo p3, "x"

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 253
    .line 254
    .line 255
    move-result p3

    .line 256
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string p3, ", require "

    .line 260
    .line 261
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    .line 265
    .line 266
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string/jumbo p3, "x"

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    .line 276
    .line 277
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw p1

    .line 288
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 289
    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string p2, " must specify explicit component"

    .line 299
    .line 300
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw p0

    .line 311
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 312
    .line 313
    new-instance p2, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw p0

    .line 329
    :goto_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 331
    .line 332
    .line 333
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 334
    :catchall_1
    move-exception p0

    .line 335
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    .line 337
    .line 338
    throw p0
.end method

.method public final alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    .line 17
    .line 18
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :catchall_1
    move-exception p0

    .line 29
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Moving "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " from display "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " to main display for VR"

    .line 36
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
    const-string v1, "ActivityTaskManager"

    .line 45
    .line 46
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 50
    .line 51
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v1, -0x1

    .line 63
    :goto_0
    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->moveRootTaskToDisplay(II)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 68
    .line 69
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final assertPackageMatchesCallingUid(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    if-eqz v6, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x3e8

    .line 8
    .line 9
    if-eq v6, v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 12
    .line 13
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    move-object v0, p0

    .line 18
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    move v1, v6

    .line 23
    move-object v5, p1

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->isSameApp(IIJLjava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x1

    .line 30
    :goto_0
    if-eqz p0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "Permission Denial: package="

    .line 36
    .line 37
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, " does not belong to uid="

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, "ActivityTaskManager"

    .line 56
    .line 57
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    new-instance p1, Ljava/lang/SecurityException;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public final canCloseSystemDialogs(II)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v4, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    .line 4
    .line 5
    const/4 v7, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, -0x1

    .line 8
    move v2, p1

    .line 9
    move v3, p2

    .line 10
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 20
    .line 21
    .line 22
    monitor-enter p1

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v2, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/util/ArraySet;

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    move v4, v0

    .line 46
    :goto_0
    if-ge v4, v3, :cond_3

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lcom/android/server/wm/WindowProcessController;

    .line 53
    .line 54
    iget v7, v5, Lcom/android/server/wm/WindowProcessController;->mInstrumentationSourceUid:I

    .line 55
    .line 56
    iget-boolean v6, v5, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    .line 57
    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    const/4 v6, -0x1

    .line 61
    if-eq v7, v6, :cond_1

    .line 62
    .line 63
    const-string v8, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    .line 64
    .line 65
    const/4 v6, -0x1

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, -0x1

    .line 68
    const/4 v11, 0x1

    .line 69
    invoke-static/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_1

    .line 74
    .line 75
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 77
    .line 78
    .line 79
    return v1

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->canCloseSystemDialogsByToken()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 90
    .line 91
    .line 92
    return v1

    .line 93
    :cond_2
    add-int/2addr v4, v1

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    const-wide/32 v2, 0xa692aad

    .line 96
    .line 97
    .line 98
    :try_start_2
    invoke-static {v2, v3, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_5

    .line 103
    .line 104
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    new-array v3, v1, [Z

    .line 110
    .line 111
    aput-boolean v0, v3, v0

    .line 112
    .line 113
    new-instance v4, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;

    .line 114
    .line 115
    invoke-direct {v4, p2, v3}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;-><init>(I[Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v4, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_4

    .line 123
    .line 124
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 126
    .line 127
    .line 128
    return v1

    .line 129
    :cond_4
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessibilityServiceUids:[I

    .line 130
    .line 131
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_5

    .line 136
    .line 137
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 139
    .line 140
    .line 141
    return v1

    .line 142
    :cond_5
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 144
    .line 145
    .line 146
    return v0

    .line 147
    :goto_1
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 149
    .line 150
    .line 151
    throw p0
.end method

.method public final cancelRecentsAnimation(Z)V
    .locals 8

    .line 1
    const-string v0, "cancelRecentsAnimation/uid="

    .line 2
    .line 3
    const-string v1, "cancelRecentsAnimation()"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-long v1, v1

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 20
    .line 21
    .line 22
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p1, v6

    .line 31
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, p1, v0, v6}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final cancelTaskWindowTransition(I)V
    .locals 6

    .line 1
    const-string v0, "cancelTaskWindowTransition: taskId="

    .line 2
    .line 3
    const-string v1, "cancelTaskWindowTransition()"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 15
    .line 16
    .line 17
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-virtual {p0, p1, v5, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    const-string p0, "ActivityTaskManager"

    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " not found"

    .line 39
    .line 40
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    add-int/lit8 p1, p1, -0x1

    .line 67
    .line 68
    :goto_0
    if-ltz p1, :cond_1

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 79
    .line 80
    .line 81
    add-int/lit8 p1, p1, -0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    goto :goto_2

    .line 94
    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 96
    .line 97
    .line 98
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 99
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method public final checkCanCloseSystemDialogs(IILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 15
    .line 16
    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object p3, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    const-string v0, "(pid="

    .line 26
    .line 27
    const-string v1, ", uid="

    .line 28
    .line 29
    const-string v2, ")"

    .line 30
    .line 31
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    const-string v1, " "

    .line 38
    .line 39
    invoke-static {p3, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->canCloseSystemDialogs(II)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    const/4 p1, 0x1

    .line 48
    if-nez p0, :cond_4

    .line 49
    .line 50
    const-wide/32 v1, 0xa692aad

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_3

    .line 58
    .line 59
    const-wide/32 v1, 0xa6929b8

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    const-string p0, "ActivityTaskManager"

    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string p2, "Permission Denial: android.intent.action.CLOSE_SYSTEM_DIALOGS broadcast from "

    .line 73
    .line 74
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p2, " requires android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS, dropping broadcast."

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    return p0

    .line 94
    :cond_2
    const-string p0, "ActivityTaskManager"

    .line 95
    .line 96
    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS broadcast from "

    .line 97
    .line 98
    const-string p3, " will require android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS in future builds."

    .line 99
    .line 100
    invoke-static {p2, v0, p3, p0}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return p1

    .line 104
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 105
    .line 106
    const-string p1, "Permission Denial: android.intent.action.CLOSE_SYSTEM_DIALOGS broadcast from "

    .line 107
    .line 108
    const-string p2, " requires android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS."

    .line 109
    .line 110
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_4
    return p1

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final clearAppLockedUnLockedApp()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSystemUid(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->clearAppLockedUnLockedApp()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 27
    .line 28
    const-string v1, " cannot call clearAppLockedUnLockedApp()"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final clearLaunchParamsForPackages(Ljava/util/List;)V
    .locals 4

    .line 1
    const-string v0, "clearLaunchParamsForPackages"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 22
    .line 23
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/android/server/wm/LaunchParamsPersister;->removeRecordForPackage(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final clearRecentTasks(I)Z
    .locals 2

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
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->isContainerService(Landroid/content/Context;I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 21
    .line 22
    const-string p1, "Pid "

    .line 23
    .line 24
    const-string v1, " cannot clear recent tasks!"

    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 35
    .line 36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 37
    .line 38
    .line 39
    monitor-enter v0

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->clearRecentTasksLocked(I)V

    .line 43
    .line 44
    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    iget v4, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    check-cast v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    move-object v1, p1

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->internalCheckGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public final continueWindowLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    iget v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 15
    .line 16
    sub-int/2addr v4, v3

    .line 17
    iput v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 18
    .line 19
    if-lez v4, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    if-nez v1, :cond_2

    .line 23
    .line 24
    iget v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    .line 25
    .line 26
    if-lez v1, :cond_3

    .line 27
    .line 28
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 29
    .line 30
    .line 31
    iput v2, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    .line 32
    .line 33
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/ClientLifecycleManager;->shouldDispatchPendingTransactionsImmediately()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/ClientLifecycleManager;->dispatchPendingTransactions()V

    .line 42
    .line 43
    .line 44
    :cond_4
    return-void
.end method

.method public createPersonaActivityHelper()Lcom/android/server/wm/PersonaActivityHelper;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/PersonaActivityHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/PersonaActivityHelper;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final deferWindowLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 6
    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    .line 12
    .line 13
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    iput v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 16
    .line 17
    return-void
.end method

.method public final detachNavigationBarFromApp(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    .line 4
    .line 5
    const-string v2, "detachNavigationBarFromApp"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->legacyRestoreNavigationBarFromApp()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "Transition isn\'t playing: "

    .line 49
    .line 50
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string p1, "TransitionController"

    .line 61
    .line 62
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :catchall_1
    move-exception p0

    .line 76
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 78
    .line 79
    .line 80
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public final dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move/from16 v11, p6

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x1

    .line 1
    const-string v1, "ACTIVITY MANAGER ACTIVITIES (dumpsys activity activities)"

    .line 2
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-array v8, v14, [Z

    aput-boolean v12, v8, v12

    .line 5
    new-array v7, v14, [Z

    aput-boolean v12, v7, v12

    .line 6
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v14

    move v6, v1

    :goto_0
    if-ltz v6, :cond_2

    .line 7
    invoke-virtual {v15, v6}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 8
    aget-boolean v1, v8, v12

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    if-eq v11, v13, :cond_1

    .line 10
    iget v1, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eq v1, v11, :cond_1

    move/from16 v16, v6

    move v1, v13

    move-object v13, v7

    goto :goto_1

    .line 11
    :cond_1
    const-string v1, "Display #"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    iget v1, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 13
    const-string v1, " (activities from top to bottom):"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    new-instance v4, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;

    move-object v1, v4

    move-object v2, v7

    move-object/from16 v3, p2

    move-object v14, v4

    move-object/from16 v4, p1

    move-object v12, v5

    move/from16 v5, p3

    move/from16 v16, v6

    move/from16 v6, p4

    move-object v13, v7

    move-object/from16 v7, p5

    move-object/from16 v17, v8

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;-><init>([ZLjava/io/PrintWriter;Ljava/io/FileDescriptor;ZZLjava/lang/String;[Z)V

    invoke-virtual {v12, v14}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 15
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;

    invoke-direct {v1, v8, v9, v10, v13}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;-><init>([ZLjava/io/PrintWriter;Ljava/lang/String;[Z)V

    invoke-virtual {v12, v1}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    const/4 v1, -0x1

    :goto_1
    add-int/lit8 v6, v16, -0x1

    move-object v7, v13

    const/4 v12, 0x0

    const/4 v14, 0x1

    move v13, v1

    goto :goto_0

    .line 16
    :cond_2
    aget-boolean v13, v8, v12

    iget-object v1, v15, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const/4 v1, 0x1

    xor-int/lit8 v14, p3, 0x1

    new-instance v7, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;

    invoke-direct {v7, v12, v9}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;-><init>(ILjava/io/PrintWriter;)V

    const-string v4, "Fin"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v5, v14

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)V

    aput-boolean v13, v8, v12

    .line 17
    iget-object v1, v15, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;

    const/4 v1, 0x1

    invoke-direct {v7, v1, v9}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;-><init>(ILjava/io/PrintWriter;)V

    const-string v4, "Stop"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v5, v14

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)V

    const/4 v12, 0x0

    aput-boolean v13, v8, v12

    .line 18
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 19
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const-string v6, "  ResumedActivity: "

    const/4 v7, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p5

    move/from16 v4, p6

    move v5, v13

    .line 20
    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZLjava/lang/String;Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v13, v12

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v13

    :goto_2
    if-nez v10, :cond_12

    if-eqz v13, :cond_4

    .line 21
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 22
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v2, "  "

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 24
    const-string v3, "ActivityTaskSupervisor state:"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v9, v2, v4}, Lcom/android/server/wm/RootWindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 26
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 27
    invoke-virtual {v3, v9}, Lcom/android/server/wm/KeyguardController;->dump(Ljava/io/PrintWriter;)V

    .line 28
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 29
    invoke-virtual {v3, v9}, Lcom/android/server/wm/LockTaskController;->dump(Ljava/io/PrintWriter;)V

    .line 30
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mCurTaskIdForUser="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  mUserRootTaskInFront="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  mVisibilityTransactionDepth="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "isHomeRecentsComponent="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, v3, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 36
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 37
    const-string v2, "  mWaitingActivityLaunched="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_3
    if-ltz v2, :cond_5

    .line 39
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    const-string v4, "    WaitInfo:"

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "      mTargetComponent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    const-string v4, "      mResult="

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    const-string v4, "        "

    invoke-virtual {v3, v9, v4}, Landroid/app/WaitResult;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v3, -0x1

    add-int/2addr v2, v3

    goto :goto_3

    .line 44
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mNoHistoryActivities="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 46
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const-string v2, "  "

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "TaskOrganizerController:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    iget-object v2, v1, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/ITaskOrganizer;

    .line 49
    iget-object v3, v1, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/ITaskOrganizer;

    .line 50
    iget-object v5, v1, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    invoke-interface {v4}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 51
    iget-object v6, v5, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    .line 52
    const-string v7, "      "

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iget-object v8, v8, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mUid:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ne v2, v4, :cond_7

    .line 54
    const-string v4, " (active)"

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    const/16 v4, 0x3a

    .line 55
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(C)V

    move v4, v12

    .line 56
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 57
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 58
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v7

    .line 59
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "        ("

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {v7}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_4

    .line 62
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 63
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    const-string v2, "  VisibleActivityProcess:["

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    iget-object v2, v1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 66
    :try_start_0
    iget-object v3, v1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_5
    if-ltz v3, :cond_9

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, -0x1

    add-int/2addr v3, v4

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    .line 68
    :cond_9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    const-string v1, "]"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    const-string v2, "  "

    .line 71
    monitor-enter v1

    .line 72
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NumNonAppVisibleWindowUidMap:["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    iget-object v2, v1, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_6
    if-ltz v2, :cond_a

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    .line 75
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, -0x1

    add-int/2addr v2, v3

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    .line 77
    :cond_a
    const-string v2, "]"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    monitor-exit v1

    .line 79
    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    if-eqz v1, :cond_b

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mDemoteTopAppReasons="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 81
    invoke-static {v1, v2, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 82
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 83
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY:Z

    if-eqz v1, :cond_e

    .line 84
    sget-object v1, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 85
    iget v2, v1, Lcom/android/server/wm/SizeCompatPolicyManager;->mCompatPolicyCount:I

    if-lez v2, :cond_e

    .line 86
    const-string v2, "  SIZE COMPAT POLICY MANAGER"

    .line 87
    const-string v3, "    mLaunchPolicy="

    .line 88
    invoke-static {v9, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    iget v3, v1, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    iget-object v2, v1, Lcom/android/server/wm/SizeCompatPolicyManager;->mDisplayIdsForActiveMode:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 93
    const-string v3, "    mActiveMode={ "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_7
    if-ge v12, v2, :cond_c

    .line 94
    iget-object v3, v1, Lcom/android/server/wm/SizeCompatPolicyManager;->mDisplayIdsForActiveMode:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 95
    iget-object v4, v1, Lcom/android/server/wm/SizeCompatPolicyManager;->mDisplayIdsForActiveMode:Landroid/util/SparseArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 96
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 97
    const-string v3, "="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    invoke-static {v4}, Lcom/samsung/android/core/SizeCompatInfo;->sizeCompatModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    const-string v3, " "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x1

    add-int/2addr v12, v3

    goto :goto_7

    :cond_c
    const/4 v3, 0x1

    .line 100
    const-string/jumbo v2, "}"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    const/4 v3, 0x1

    .line 101
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    mCompatPolicyCount="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/wm/SizeCompatPolicyManager;->mCompatPolicyCount:I

    .line 102
    invoke-static {v2, v1, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    goto :goto_9

    :cond_e
    const/4 v3, 0x1

    .line 103
    :goto_9
    sget-object v1, Lcom/android/server/wm/PackagesChange;->sDumpCallbacks:Ljava/util/List;

    .line 104
    const-string v1, "  PACKAGE SETTINGS MANAGER"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v1, "    "

    .line 106
    sget-object v2, Lcom/android/server/wm/PackagesChange;->sDumpCallbacks:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/PackagesChange$PackagesDumpCallback;

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/wm/PackagesChange$PackagesDumpCallback;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v5, "      "

    invoke-interface {v4, v9, v5}, Lcom/android/server/wm/PackagesChange$PackagesDumpCallback;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_a

    .line 109
    :cond_f
    const-string v2, "  PACKAGE SETTINGS MANAGER - USER CHANGES"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    sget-object v2, Lcom/android/server/wm/PackagesChange;->sUserChangeCallbacks:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;

    .line 111
    invoke-interface {v4, v9, v1}, Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;->dumpUserChanges(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_b

    .line 112
    :cond_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 113
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mStartingProcessActivities="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    move v14, v3

    goto :goto_e

    .line 115
    :goto_c
    monitor-exit v1

    throw v0

    .line 116
    :goto_d
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_12
    move v14, v1

    :goto_e
    if-nez v14, :cond_13

    .line 117
    const-string v0, "  (nothing)"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public final dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZZZIIJ)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v0, p4

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    move/from16 v4, p9

    .line 10
    .line 11
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v5

    .line 17
    :try_start_0
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 18
    .line 19
    move-object/from16 v7, p3

    .line 20
    .line 21
    move/from16 v8, p7

    .line 22
    .line 23
    move/from16 v9, p8

    .line 24
    .line 25
    move/from16 v10, p10

    .line 26
    .line 27
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/wm/RootWindowContainer;->getDumpActivities(Ljava/lang/String;ZZI)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 33
    .line 34
    .line 35
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    const-string v0, "TASK com.baidu.carlife id=23203 userId=0\n"

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "ACTIVITY com.baidu.carlife/.CarlifeActivity 5b92975 pid=18428\n"

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "Local Activity bae17e9 State:\n"

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v0, "mResumed=true mStopped=false mFinished=false\n"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "mChangingConfigurations=false\n"

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return v7

    .line 73
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    const/4 v8, 0x0

    .line 78
    if-gtz v5, :cond_1

    .line 79
    .line 80
    return v8

    .line 81
    :cond_1
    array-length v5, v0

    .line 82
    sub-int/2addr v5, v3

    .line 83
    new-array v5, v5, [Ljava/lang/String;

    .line 84
    .line 85
    array-length v9, v0

    .line 86
    sub-int/2addr v9, v3

    .line 87
    invoke-static {v0, v3, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    sub-int/2addr v0, v7

    .line 95
    const/4 v3, 0x0

    .line 96
    move-object v10, v3

    .line 97
    move v9, v8

    .line 98
    move v8, v0

    .line 99
    move v0, v9

    .line 100
    :goto_0
    if-ltz v8, :cond_9

    .line 101
    .line 102
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    check-cast v11, Lcom/android/server/wm/ActivityRecord;

    .line 107
    .line 108
    if-eqz v9, :cond_2

    .line 109
    .line 110
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v9, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 114
    .line 115
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 116
    .line 117
    .line 118
    monitor-enter v9

    .line 119
    :try_start_1
    iget-object v12, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 120
    .line 121
    invoke-virtual {v12}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    const/4 v14, -0x1

    .line 126
    if-eq v4, v14, :cond_3

    .line 127
    .line 128
    if-eq v13, v4, :cond_3

    .line 129
    .line 130
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 132
    .line 133
    .line 134
    move-object/from16 v9, p1

    .line 135
    .line 136
    move-wide/from16 v14, p11

    .line 137
    .line 138
    goto/16 :goto_9

    .line 139
    .line 140
    :catchall_0
    move-exception v0

    .line 141
    goto/16 :goto_b

    .line 142
    .line 143
    :cond_3
    if-eq v10, v12, :cond_5

    .line 144
    .line 145
    :try_start_2
    const-string v0, "TASK "

    .line 146
    .line 147
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v12, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v0, " id="

    .line 156
    .line 157
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget v0, v12, Lcom/android/server/wm/Task;->mTaskId:I

    .line 161
    .line 162
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 163
    .line 164
    .line 165
    const-string v0, " userId="

    .line 166
    .line 167
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget v0, v12, Lcom/android/server/wm/Task;->mUserId:I

    .line 171
    .line 172
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 173
    .line 174
    .line 175
    invoke-static {v2, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->printDisplayInfoAndNewLine(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;)V

    .line 176
    .line 177
    .line 178
    if-eqz p6, :cond_4

    .line 179
    .line 180
    const-string v0, "  "

    .line 181
    .line 182
    invoke-virtual {v12, v2, v0}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    move v10, v7

    .line 186
    goto :goto_1

    .line 187
    :cond_5
    move-object v12, v10

    .line 188
    move v10, v0

    .line 189
    :goto_1
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 191
    .line 192
    .line 193
    const-string v0, "  "

    .line 194
    .line 195
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    .line 200
    .line 201
    const-string v11, "    "

    .line 202
    .line 203
    iget-object v13, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 204
    .line 205
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 206
    .line 207
    .line 208
    monitor-enter v13

    .line 209
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string v0, "ACTIVITY "

    .line 213
    .line 214
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, v9, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const-string v0, " "

    .line 223
    .line 224
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    const-string v0, " pid="

    .line 239
    .line 240
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_6

    .line 248
    .line 249
    iget-object v0, v9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 250
    .line 251
    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 252
    .line 253
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 254
    .line 255
    .line 256
    iget-object v0, v9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 257
    .line 258
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :catchall_1
    move-exception v0

    .line 262
    goto/16 :goto_a

    .line 263
    .line 264
    :cond_6
    const-string v0, "(not running)"

    .line 265
    .line 266
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    move-object v0, v3

    .line 270
    :goto_2
    const-string v14, " userId="

    .line 271
    .line 272
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget v14, v9, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 276
    .line 277
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 278
    .line 279
    .line 280
    const-string v14, " uid="

    .line 281
    .line 282
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 286
    .line 287
    .line 288
    move-result v14

    .line 289
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 290
    .line 291
    .line 292
    invoke-static {v2, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->printDisplayInfoAndNewLine(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;)V

    .line 293
    .line 294
    .line 295
    if-eqz p6, :cond_7

    .line 296
    .line 297
    invoke-virtual {v9, v2, v11, v7}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 298
    .line 299
    .line 300
    :cond_7
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 301
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 302
    .line 303
    .line 304
    if-eqz v0, :cond_8

    .line 305
    .line 306
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 307
    .line 308
    .line 309
    :try_start_4
    new-instance v13, Lcom/android/internal/os/TransferPipe;

    .line 310
    .line 311
    invoke-direct {v13}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 312
    .line 313
    .line 314
    :try_start_5
    invoke-virtual {v13}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    .line 315
    .line 316
    .line 317
    move-result-object v14

    .line 318
    iget-object v9, v9, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 319
    .line 320
    invoke-interface {v0, v14, v9, v11, v5}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 321
    .line 322
    .line 323
    move-object/from16 v9, p1

    .line 324
    .line 325
    move-wide/from16 v14, p11

    .line 326
    .line 327
    :try_start_6
    invoke-virtual {v13, v9, v14, v15}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 328
    .line 329
    .line 330
    :try_start_7
    invoke-virtual {v13}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 331
    .line 332
    .line 333
    goto :goto_8

    .line 334
    :catch_0
    move-exception v0

    .line 335
    goto :goto_7

    .line 336
    :catchall_2
    move-exception v0

    .line 337
    :goto_3
    move-object v11, v0

    .line 338
    goto :goto_4

    .line 339
    :catchall_3
    move-exception v0

    .line 340
    move-object/from16 v9, p1

    .line 341
    .line 342
    move-wide/from16 v14, p11

    .line 343
    .line 344
    goto :goto_3

    .line 345
    :goto_4
    :try_start_8
    invoke-virtual {v13}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 346
    .line 347
    .line 348
    goto :goto_5

    .line 349
    :catchall_4
    move-exception v0

    .line 350
    move-object v13, v0

    .line 351
    :try_start_9
    invoke-virtual {v11, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 352
    .line 353
    .line 354
    :goto_5
    throw v11
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    .line 355
    :catch_1
    move-object/from16 v9, p1

    .line 356
    .line 357
    move-wide/from16 v14, p11

    .line 358
    .line 359
    goto :goto_6

    .line 360
    :catch_2
    move-exception v0

    .line 361
    move-object/from16 v9, p1

    .line 362
    .line 363
    move-wide/from16 v14, p11

    .line 364
    .line 365
    goto :goto_7

    .line 366
    :catch_3
    :goto_6
    const-string v0, "    Got a RemoteException while dumping the activity"

    .line 367
    .line 368
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    goto :goto_8

    .line 372
    :goto_7
    new-instance v11, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v13, "    Failure while dumping the activity: "

    .line 375
    .line 376
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    goto :goto_8

    .line 390
    :cond_8
    move-object/from16 v9, p1

    .line 391
    .line 392
    move-wide/from16 v14, p11

    .line 393
    .line 394
    :goto_8
    move v0, v10

    .line 395
    move-object v10, v12

    .line 396
    :goto_9
    add-int/lit8 v8, v8, -0x1

    .line 397
    .line 398
    move v9, v7

    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :goto_a
    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 402
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 403
    .line 404
    .line 405
    throw v0

    .line 406
    :goto_b
    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 407
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 408
    .line 409
    .line 410
    throw v0

    .line 411
    :cond_9
    if-nez v0, :cond_a

    .line 412
    .line 413
    const-string v0, "(nothing)"

    .line 414
    .line 415
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    :cond_a
    return v7

    .line 419
    :catchall_5
    move-exception v0

    .line 420
    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 421
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 422
    .line 423
    .line 424
    throw v0
.end method

.method public final dumpInstalledPackagesConfig(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "INSTALLED PACKAGES HAVING APP-SPECIFIC CONFIGURATIONS"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "Current user ID : "

    .line 18
    .line 19
    invoke-static {p1, v1, p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/util/HashMap;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 56
    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v3, "    PackageName : "

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v3, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v3, "        NightMode : "

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v3, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v3, "        Locales : "

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 113
    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto :goto_1

    .line 127
    :cond_0
    monitor-exit v1

    .line 128
    return-void

    .line 129
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    throw p0
.end method

.method public final dumpVisibleActivitiesLocked(ILjava/io/PrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "ACTIVITY MANAGER VISIBLE ACTIVITIES (dumpsys activity visible)"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 7
    .line 8
    const-string v0, "all"

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, -0x1

    .line 13
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDumpActivities(Ljava/lang/String;ZZI)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr v0, v1

    .line 22
    move v4, v2

    .line 23
    :goto_0
    if-ltz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 32
    .line 33
    if-eqz v6, :cond_2

    .line 34
    .line 35
    if-eq p1, v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eq v6, p1, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 47
    .line 48
    .line 49
    :cond_1
    const-string v2, ""

    .line 50
    .line 51
    invoke-virtual {v5, p2, v2, v1}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    move v2, v1

    .line 55
    move v4, v2

    .line 56
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    if-nez v2, :cond_4

    .line 60
    .line 61
    const-string p0, "(nothing)"

    .line 62
    .line 63
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public final endPowerMode(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerModeReasons:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    not-int p1, p1

    .line 7
    and-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerModeReasons:I

    .line 9
    .line 10
    and-int/lit8 p1, p1, 0x4

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v2, 0x1

    .line 22
    sub-int/2addr p1, v2

    .line 23
    :goto_0
    if-ltz p1, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 26
    .line 27
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 32
    .line 33
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    and-int/2addr v2, v3

    .line 42
    add-int/lit8 p1, p1, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iget p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerModeReasons:I

    .line 48
    .line 49
    and-int/lit8 p1, p1, -0x5

    .line 50
    .line 51
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerModeReasons:I

    .line 52
    .line 53
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 56
    .line 57
    const/4 v2, 0x3

    .line 58
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 62
    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    and-int/lit8 p1, v0, 0x5

    .line 67
    .line 68
    const-wide/16 v2, 0x20

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    iget p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerModeReasons:I

    .line 73
    .line 74
    const/4 v4, 0x5

    .line 75
    and-int/2addr p1, v4

    .line 76
    if-nez p1, :cond_4

    .line 77
    .line 78
    const-string p1, "EndModeLaunch"

    .line 79
    .line 80
    invoke-static {v2, v3, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 84
    .line 85
    invoke-virtual {p1, v4, v1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 89
    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 93
    .line 94
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityVisibleLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    and-int/lit8 p1, v0, 0x2

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    iget p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerModeReasons:I

    .line 102
    .line 103
    and-int/lit8 p1, p1, 0x2

    .line 104
    .line 105
    if-nez p1, :cond_5

    .line 106
    .line 107
    const-string p1, "EndModeDisplayChange"

    .line 108
    .line 109
    invoke-static {v2, v3, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 113
    .line 114
    const/16 p1, 0x11

    .line 115
    .line 116
    invoke-virtual {p0, p1, v1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 117
    .line 118
    .line 119
    :cond_5
    return-void
.end method

.method public final enforceSystemHasVrFeature()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "android.hardware.vr.high_performance"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 17
    .line 18
    const-string v0, "VR mode not supported on this device!"

    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final enqueueAssistContext(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZIJI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p4

    .line 3
    .line 4
    const-string v8, "getAssistContextExtras failed: crash calling "

    .line 5
    .line 6
    const-string v2, "enqueueAssistContext failed: no process for "

    .line 7
    .line 8
    const-string v3, "enqueueAssistContext failed: activity for token="

    .line 9
    .line 10
    const-string v4, "enqueueAssistContext failed: caller "

    .line 11
    .line 12
    const-string v5, "getAssistContextExtras failed: no process for "

    .line 13
    .line 14
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 15
    .line 16
    const-string v7, "android.permission.GET_TOP_ACTIVITY_INFO"

    .line 17
    .line 18
    const-string v9, "enqueueAssistContext()"

    .line 19
    .line 20
    invoke-virtual {v6, v7, v9}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 24
    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 26
    .line 27
    .line 28
    monitor-enter v9

    .line 29
    :try_start_0
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 30
    .line 31
    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const/4 v10, 0x1

    .line 36
    const/4 v11, 0x0

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    invoke-virtual {v6, v10, v10}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v6, v11

    .line 45
    :goto_0
    if-nez v6, :cond_1

    .line 46
    .line 47
    const-string v0, "ActivityTaskManager"

    .line 48
    .line 49
    const-string v1, "getAssistContextExtras failed: no top activity"

    .line 50
    .line 51
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 56
    .line 57
    .line 58
    return-object v11

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_2

    .line 67
    .line 68
    const-string v0, "ActivityTaskManager"

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 87
    .line 88
    .line 89
    return-object v11

    .line 90
    :cond_2
    if-eqz p5, :cond_4

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    :try_start_2
    invoke-static/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eq v6, v1, :cond_3

    .line 99
    .line 100
    const-string v0, "ActivityTaskManager"

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, " is not current top "

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 127
    .line 128
    .line 129
    return-object v11

    .line 130
    :cond_3
    move-object v12, v6

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    :try_start_3
    invoke-static/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    if-nez v6, :cond_5

    .line 137
    .line 138
    const-string v0, "ActivityTaskManager"

    .line 139
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, " couldn\'t be found"

    .line 149
    .line 150
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 162
    .line 163
    .line 164
    return-object v11

    .line 165
    :cond_5
    :try_start_4
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_3

    .line 170
    .line 171
    const-string v0, "ActivityTaskManager"

    .line 172
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 190
    .line 191
    .line 192
    return-object v11

    .line 193
    :goto_1
    :try_start_5
    new-instance v4, Landroid/os/Bundle;

    .line 194
    .line 195
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v1, "android.intent.extra.ASSIST_PACKAGE"

    .line 199
    .line 200
    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string v1, "android.intent.extra.ASSIST_UID"

    .line 206
    .line 207
    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 208
    .line 209
    iget v2, v2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 210
    .line 211
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    new-instance v13, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 215
    .line 216
    move-object v1, v13

    .line 217
    move-object v2, p0

    .line 218
    move-object v3, v12

    .line 219
    move-object/from16 v5, p2

    .line 220
    .line 221
    move-object/from16 v6, p3

    .line 222
    .line 223
    move/from16 v7, p7

    .line 224
    .line 225
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/os/Bundle;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    iput-boolean v1, v13, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    .line 233
    .line 234
    if-eqz p6, :cond_6

    .line 235
    .line 236
    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    .line 237
    .line 238
    add-int/2addr v1, v10

    .line 239
    iput v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
    .line 241
    :cond_6
    :try_start_6
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 242
    .line 243
    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 244
    .line 245
    iget-object v2, v12, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 246
    .line 247
    iget v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    .line 248
    .line 249
    move-object/from16 p2, v1

    .line 250
    .line 251
    move-object/from16 p3, v2

    .line 252
    .line 253
    move-object/from16 p4, v13

    .line 254
    .line 255
    move/from16 p5, p1

    .line 256
    .line 257
    move/from16 p6, v3

    .line 258
    .line 259
    move/from16 p7, p10

    .line 260
    .line 261
    invoke-interface/range {p2 .. p7}, Landroid/app/IApplicationThread;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 262
    .line 263
    .line 264
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 270
    .line 271
    move-wide/from16 v1, p8

    .line 272
    .line 273
    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 274
    .line 275
    .line 276
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 277
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 278
    .line 279
    .line 280
    return-object v13

    .line 281
    :catch_0
    :try_start_8
    const-string v0, "ActivityTaskManager"

    .line 282
    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 299
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 300
    .line 301
    .line 302
    return-object v11

    .line 303
    :goto_2
    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 304
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 305
    .line 306
    .line 307
    throw v0
.end method

.method public final ensureConfigAndVisibilityAfterUpdate(ILcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :cond_1
    if-eqz p2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 35
    .line 36
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 37
    .line 38
    .line 39
    move v0, p1

    .line 40
    :cond_2
    return v0
.end method

.method public final enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;ZZ)Z
    .locals 12

    .line 1
    move-object v6, p0

    .line 2
    move-object v7, p1

    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v8, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v8

    .line 11
    :cond_0
    const-string v0, "enterPictureInPictureMode"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    .line 22
    .line 23
    if-eqz p3, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const-string v0, "ActivityTaskManager"

    .line 38
    .line 39
    const-string v2, "Skip client enterPictureInPictureMode request while pausing, auto-enter-pip is enabled"

    .line 40
    .line 41
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/16 v3, 0xa

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    new-instance v0, Lcom/android/server/wm/Transition;

    .line 54
    .line 55
    iget-object v2, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 58
    .line 59
    iget-object v4, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 60
    .line 61
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 62
    .line 63
    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 64
    .line 65
    .line 66
    iput-object v7, v0, Lcom/android/server/wm/Transition;->mPipActivity:Lcom/android/server/wm/ActivityRecord;

    .line 67
    .line 68
    move/from16 v4, p4

    .line 69
    .line 70
    iput-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    .line 71
    .line 72
    iget-object v1, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 75
    .line 76
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda23;

    .line 77
    .line 78
    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/Transition;Lcom/android/server/wm/ActivityRecord;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    .line 82
    .line 83
    .line 84
    return v8

    .line 85
    :cond_3
    move/from16 v4, p4

    .line 86
    .line 87
    if-eqz p3, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    :cond_4
    move v0, v8

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    move v0, v1

    .line 104
    :goto_0
    iget-object v2, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 105
    .line 106
    iget-object v2, v2, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    const/4 v9, 0x0

    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    new-instance v0, Lcom/android/server/wm/Transition;

    .line 118
    .line 119
    iget-object v2, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 120
    .line 121
    iget-object v2, v2, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 122
    .line 123
    iget-object v5, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 124
    .line 125
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 126
    .line 127
    invoke-direct {v0, v3, v1, v2, v5}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 128
    .line 129
    .line 130
    move-object v10, v0

    .line 131
    goto :goto_1

    .line 132
    :cond_6
    move-object v10, v9

    .line 133
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedWithBoundsOverride()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    if-eqz v10, :cond_7

    .line 150
    .line 151
    const/16 v0, 0x200

    .line 152
    .line 153
    invoke-virtual {v10, v0}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 154
    .line 155
    .line 156
    :cond_7
    new-instance v11, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;

    .line 157
    .line 158
    move-object v0, v11

    .line 159
    move-object v1, p0

    .line 160
    move-object v2, p1

    .line 161
    move-object v3, v10

    .line 162
    move/from16 v4, p4

    .line 163
    .line 164
    move-object v5, p2

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;ZLandroid/app/PictureInPictureParams;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_8

    .line 173
    .line 174
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 175
    .line 176
    iget-object v1, v7, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 177
    .line 178
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$6;

    .line 179
    .line 180
    invoke-direct {v2, p0, v10, v11}, Lcom/android/server/wm/ActivityTaskManagerService$6;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/Transition;Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/wm/ActivityClientController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_8
    if-eqz v10, :cond_9

    .line 188
    .line 189
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 190
    .line 191
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 192
    .line 193
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;

    .line 194
    .line 195
    invoke-direct {v1, v11}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v10, v1}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_9
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;->run()V

    .line 203
    .line 204
    .line 205
    :goto_2
    return v8
.end method

.method public final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-direct {v3, v4, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    .line 30
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final focusTopTask(I)V
    .locals 5

    .line 1
    const-string v0, "focusTopTask()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :try_start_2
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda6;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-direct {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda6;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    invoke-virtual {p1, v3, v4}, Lcom/android/server/wm/DisplayArea;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    monitor-exit v2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(ILcom/android/server/wm/ActivityRecord;)V

    .line 53
    .line 54
    .line 55
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 67
    .line 68
    .line 69
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 70
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method public final getActivityClientController()Landroid/app/IActivityClientController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAllRootTaskInfos()Ljava/util/List;
    .locals 4

    .line 1
    const-string v0, "getAllRootTaskInfos()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->getAllRootTaskInfos(I)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final getAllRootTaskInfosOnDisplay(I)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "getAllRootTaskInfosOnDisplay()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getAllRootTaskInfos(I)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 33
    .line 34
    .line 35
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final getAnrController(Landroid/content/pm/ApplicationInfo;)Landroid/app/AnrController;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    move-wide v4, v2

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_2

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Landroid/app/AnrController;

    .line 42
    .line 43
    invoke-interface {v6, p0, p1}, Landroid/app/AnrController;->getAnrDelayMillis(Ljava/lang/String;I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    cmp-long v9, v7, v2

    .line 48
    .line 49
    if-lez v9, :cond_1

    .line 50
    .line 51
    cmp-long v9, v7, v4

    .line 52
    .line 53
    if-lez v9, :cond_1

    .line 54
    .line 55
    move-object v0, v6

    .line 56
    move-wide v4, v7

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return-object v0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0

    .line 62
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getAppCompatAlignment()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mReachabilityPolicy:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->getAlignment()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final getAppLockedCheckAction()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->getAppLockedCheckAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public final getAppLockedLockType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSystemUid(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->getAppLockedLockType()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return-object p0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 30
    .line 31
    const-string v1, " cannot call getAppLockedLockType()"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final getAppLockedPackageList()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->getAppLockedPackageList()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public final getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v1, Landroid/app/AppOpsManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/AppOpsManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getAppTaskThumbnailSize()Landroid/graphics/Point;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v1, Landroid/graphics/Point;

    .line 8
    .line 9
    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    .line 12
    .line 13
    invoke-direct {v1, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final getAppTasks(ILjava/lang/String;)Ljava/util/List;
    .locals 3

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9
    throw p0
.end method

.method public final getAppTasks(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppTasks(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getApplockLockedAppsClass()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->getApplockLockedAppsClass()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public final getApplockLockedAppsPackage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->getApplockLockedAppsPackage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public final getApplockType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->getApplockType()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public final getAssistContextExtras(I)Landroid/os/Bundle;
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v7

    .line 5
    const/4 v5, 0x1

    .line 6
    const/4 v6, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const-wide/16 v8, 0x1f4

    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    move-object v0, p0

    .line 14
    move v1, p1

    .line 15
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZIJI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_0
    monitor-enter p1

    .line 24
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 36
    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 38
    .line 39
    .line 40
    monitor-enter v0

    .line 41
    :try_start_3
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    .line 46
    .line 47
    const-string v3, "android.intent.extra.ASSIST_CONTEXT"

    .line 48
    .line 49
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 74
    .line 75
    .line 76
    iget-object p0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    .line 77
    .line 78
    return-object p0

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :goto_1
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    throw p0
.end method

.method public getAtmInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCompatChangeablePackageInfoList(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 2

    .line 1
    const-string p0, "getCompatChangeablePackageInfoList()"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/android/server/util/CompatChangeableAppsService;->getCompatChangeablePackageInfoList(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final getConfiguration()Landroid/content/res/Configuration;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v1, Landroid/content/res/Configuration;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v1, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    iput-boolean p0, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final getCoverLauncherAvailableAppList(I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getCoverLauncherEnabledAppList(I)Ljava/util/Map;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getCoverLauncherEnabledAppListByType(II)Ljava/util/Map;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getCutoutPolicy(ILjava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "getCutoutPolicy()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayCutoutController;->getPolicy(ILjava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    return p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    :catchall_1
    move-exception p0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 6

    .line 1
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget v3, v2, Landroid/content/res/Configuration;->touchscreen:I

    .line 17
    .line 18
    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 19
    .line 20
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    .line 21
    .line 22
    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 23
    .line 24
    iget v2, v2, Landroid/content/res/Configuration;->navigation:I

    .line 25
    .line 26
    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    if-eq v2, v4, :cond_0

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    if-ne v2, v5, :cond_1

    .line 33
    .line 34
    :cond_0
    iget v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 35
    .line 36
    or-int/2addr v2, v4

    .line 37
    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 38
    .line 39
    :cond_1
    if-eqz v3, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    if-eq v3, v2, :cond_2

    .line 43
    .line 44
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 45
    .line 46
    or-int/2addr v2, v3

    .line 47
    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    .line 53
    .line 54
    iput p0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 55
    .line 56
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 5

    .line 1
    const-string v0, "getFocusedRootTaskInfo()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 26
    .line 27
    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-static {p0}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-object v4

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :try_start_2
    monitor-exit v2

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    .line 54
    .line 55
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public final getFoldStarManagerService()Lcom/samsung/android/core/IFoldStarManager;
    .locals 2

    .line 1
    const-string v0, "getFoldStarManagerService()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/android/server/wm/FoldStarManagerService;->sService:Lcom/android/server/wm/FoldStarManagerService;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/wm/FoldStarManagerService;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/android/server/wm/FoldStarManagerService;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/android/server/wm/FoldStarManagerService;->sService:Lcom/android/server/wm/FoldStarManagerService;

    .line 22
    .line 23
    :cond_0
    sget-object p0, Lcom/android/server/wm/FoldStarManagerService;->sService:Lcom/android/server/wm/FoldStarManagerService;

    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final getFrontActivityScreenCompatMode()I
    .locals 5

    .line 1
    const-string v0, "getFrontActivityScreenCompatMode"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    if-nez v1, :cond_1

    .line 28
    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    const/4 p0, -0x3

    .line 34
    return p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 40
    .line 41
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    const/4 p0, -0x2

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    const/4 p0, -0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    and-int/lit8 p0, p0, 0x2

    .line 70
    .line 71
    if-eqz p0, :cond_4

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    :cond_4
    move p0, v2

    .line 75
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 77
    .line 78
    .line 79
    return p0

    .line 80
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public final getGlobalConfiguration()Landroid/content/res/Configuration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Landroid/content/res/Configuration;

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/content/res/Configuration;-><init>()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-object p0
.end method

.method public final getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    return-object p0

    .line 30
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final getHomeIntent()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x100

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq p0, v1, :cond_0

    .line 23
    .line 24
    const-string p0, "android.intent.category.HOME"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v0
.end method

.method public final getIdsClearSet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSetClearIds:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSetClearIds:Ljava/util/Set;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSetClearIds:Ljava/util/Set;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;
    .locals 16

    .line 1
    move/from16 v13, p1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v14, 0x3

    .line 5
    if-ne v13, v14, :cond_2

    .line 6
    .line 7
    invoke-static/range {p7 .. p7}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "Failed createPendingResult: activity "

    .line 12
    .line 13
    const-string v3, "ActivityTaskManager"

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object/from16 v7, p7

    .line 23
    .line 24
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " not in any root task"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_0
    move-object/from16 v7, p7

    .line 41
    .line 42
    iget-boolean v4, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " is finishing"

    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_1
    move-object/from16 v0, p0

    .line 68
    .line 69
    move-object v15, v1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move-object/from16 v7, p7

    .line 72
    .line 73
    move-object v15, v0

    .line 74
    move-object/from16 v0, p0

    .line 75
    .line 76
    :goto_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    .line 77
    .line 78
    move/from16 v1, p1

    .line 79
    .line 80
    move/from16 v2, p2

    .line 81
    .line 82
    move/from16 v3, p3

    .line 83
    .line 84
    move/from16 v4, p4

    .line 85
    .line 86
    move/from16 v5, p5

    .line 87
    .line 88
    move-object/from16 v6, p6

    .line 89
    .line 90
    move-object/from16 v7, p7

    .line 91
    .line 92
    move-object/from16 v8, p8

    .line 93
    .line 94
    move-object/from16 v9, p9

    .line 95
    .line 96
    move-object/from16 v10, p10

    .line 97
    .line 98
    move-object/from16 v11, p11

    .line 99
    .line 100
    move-object/from16 v12, p12

    .line 101
    .line 102
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentController;->getIntentSender(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/high16 v1, 0x20000000

    .line 107
    .line 108
    and-int v1, p5, v1

    .line 109
    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    return-object v0

    .line 113
    :cond_3
    if-ne v13, v14, :cond_5

    .line 114
    .line 115
    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 116
    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    new-instance v1, Ljava/util/HashSet;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object v1, v15, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 125
    .line 126
    :cond_4
    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 127
    .line 128
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    :cond_5
    return-object v0
.end method

.method public final getLastResumedActivityUserId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 4
    .line 5
    const-string v2, "getLastResumedActivityUserId()"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    :try_start_1
    iget p0, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 34
    .line 35
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 37
    .line 38
    .line 39
    return p0

    .line 40
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final getLockTaskModeState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 4
    .line 5
    return p0
.end method

.method public final getMultiTaskingBinder()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingBinder:Lcom/android/server/wm/MultiTaskingBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOrientationControlPolicy(ILjava/lang/String;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string v0, "getOrientationControlPolicy()"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->getRespectOrientationRequest(ILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 p1, -0x1

    .line 21
    if-eq p0, p1, :cond_0

    .line 22
    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final getPackageAskScreenCompat(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "getPackageAskScreenCompat"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 p1, 0x1

    .line 19
    and-int/2addr p0, p1

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    return p1

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

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
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    return-object p0
.end method

.method public final getPackageScreenCompatMode(Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string v0, "getPackageScreenCompatMode"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    invoke-interface {v2, p1, v3, v4, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    if-nez p1, :cond_0

    .line 31
    .line 32
    const/4 p0, -0x3

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const/4 p0, -0x2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    const/4 p0, -0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    and-int/lit8 p0, p0, 0x2

    .line 61
    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    :cond_3
    move p0, v1

    .line 66
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 68
    .line 69
    .line 70
    return p0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public final getProcessController(II)Lcom/android/server/wm/WindowProcessController;
    .locals 1

    .line 17
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 18
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v0, p2, :cond_1

    return-object p0

    :cond_1
    return-object p1
.end method

.method public final getProcessController(ILjava/lang/String;)Lcom/android/server/wm/WindowProcessController;
    .locals 5

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 2
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 4
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 5
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3, p1}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowProcessController;

    return-object p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method public final getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 8
    :cond_0
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 11
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    .line 13
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    .line 14
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 15
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 16
    invoke-interface {v5}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, p1, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final getRecentTasks(III)Landroid/content/pm/ParceledListSlice;
    .locals 6

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
    move-result v0

    .line 9
    const-string v1, "getRecentTasks"

    .line 10
    .line 11
    invoke-virtual {p0, v0, v4, p3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const-string p3, "getRecentTasks"

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0, v0, v4, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(IILjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    invoke-virtual {p3, v3, v0}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-nez p3, :cond_0

    .line 33
    .line 34
    const-string p0, "ActivityTaskManager"

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p2, "User "

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, " is locked. Cannot load recents"

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_0
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 64
    .line 65
    invoke-virtual {p3, v3}, Lcom/android/server/wm/RecentTasks;->loadRecentTasksIfNeeded(I)V

    .line 66
    .line 67
    .line 68
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 69
    .line 70
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 71
    .line 72
    .line 73
    monitor-enter p3

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 80
    .line 81
    move v1, p1

    .line 82
    move v2, p2

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RecentTasks;->getRecentTasksImpl(IIIIZ)Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public final getResumedTaskThumbnail(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.READ_FRAME_BUFFER"

    .line 4
    .line 5
    const-string v2, "getResumedTaskThumbnail()"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    .line 30
    .line 31
    return-object v3

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-object p1, p1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 62
    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 66
    .line 67
    if-eq v1, p0, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    .line 71
    .line 72
    if-eqz p1, :cond_5

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSnapshotAsBitmapLocked()Landroid/graphics/Bitmap;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    :cond_6
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    .line 82
    .line 83
    return-object v3

    .line 84
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method public final getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 6

    .line 1
    const-string v0, "getRootTaskInfo()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    add-int/lit8 v3, v3, -0x1

    .line 23
    .line 24
    :goto_0
    const/4 v4, 0x0

    .line 25
    if-ltz v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 32
    .line 33
    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v5, v4

    .line 44
    :goto_1
    if-eqz v5, :cond_2

    .line 45
    .line 46
    invoke-static {v5}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    return-object v4

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 61
    .line 62
    .line 63
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 3

    .line 1
    const-string v0, "getRootTaskInfoOnDisplay()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 p3, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    move-object p0, p3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-static {p0}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    return-object p3

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final getScpmVersion()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$LazyHolder;->sInstance:Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;

    .line 2
    .line 3
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    .line 15
    .line 16
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->getCurrentVersion()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    monitor-exit v1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    monitor-exit v1

    .line 39
    const/4 p0, 0x0

    .line 40
    :goto_0
    return-object p0

    .line 41
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x1110279

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const v1, 0x10403b4

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    :goto_1
    const/16 p1, 0x100

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    if-eq p0, p1, :cond_2

    .line 56
    .line 57
    const-string p0, "android.intent.category.SECONDARY_HOME"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    :cond_2
    return-object v0
.end method

.method public final getSsecureHiddenAppsPackages()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->getSsecureHiddenAppsPackages()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public final getSysUiServiceComponentLocked()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    .line 16
    .line 17
    return-object p0
.end method

.method public final getTaskBounds(I)Landroid/graphics/Rect;
    .locals 8

    .line 1
    const-string v0, "getTaskBounds: taskId="

    .line 2
    .line 3
    const-string v1, "getTaskBounds()"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    new-instance v3, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 20
    .line 21
    .line 22
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x1

    .line 28
    invoke-virtual {p0, p1, v7, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    const-string p0, "ActivityTaskManager"

    .line 35
    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, " not found"

    .line 45
    .line 46
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    return-object v3

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 81
    .line 82
    if-eqz p0, :cond_2

    .line 83
    .line 84
    invoke-virtual {v3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    .line 93
    .line 94
    return-object v3

    .line 95
    :catchall_1
    move-exception p0

    .line 96
    goto :goto_2

    .line 97
    :goto_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 99
    .line 100
    .line 101
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 102
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method public final getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    const-string v0, "getTaskDescriptionIcon(): request (callingUid="

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "getTaskDescriptionIcon"

    .line 12
    .line 13
    invoke-virtual {p0, v2, v1, p2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 20
    .line 21
    .line 22
    monitor-enter v2

    .line 23
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 24
    .line 25
    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda11;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-direct {v4, v5, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 38
    .line 39
    .line 40
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-eq v3, v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_0
    :goto_0
    :try_start_1
    const-string v3, "getTaskDescriptionIcon"

    .line 48
    .line 49
    invoke-static {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    .line 55
    .line 56
    new-instance v0, Ljava/io/File;

    .line 57
    .line 58
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Ljava/io/File;

    .line 62
    .line 63
    new-instance v2, Ljava/io/File;

    .line 64
    .line 65
    invoke-static {p2}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string/jumbo v4, "recent_images"

    .line 70
    .line 71
    .line 72
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    const-string v0, "_activity_icon_"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    new-instance p2, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    invoke-direct {p2, p1}, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-class v0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 115
    .line 116
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    check-cast p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 121
    .line 122
    if-eqz p0, :cond_2

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const/4 p0, 0x0

    .line 128
    :goto_1
    if-eqz p0, :cond_3

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    :goto_2
    return-object p0

    .line 136
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    const-string v0, "Bad file path: "

    .line 139
    .line 140
    const-string v1, " passed for userId "

    .line 141
    .line 142
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0

    .line 150
    :catch_0
    move-exception p0

    .line 151
    :try_start_3
    const-string v3, "ActivityTaskManager"

    .line 152
    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, ", filePath="

    .line 162
    .line 163
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string p1, ", user="

    .line 170
    .line 171
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p1, ") doesn\'t match any activity"

    .line 178
    .line 179
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    throw p0

    .line 190
    :goto_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 192
    .line 193
    .line 194
    throw p0
.end method

.method public final getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskSnapshot(IZZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public final getTaskSnapshot(IZZ)Landroid/window/TaskSnapshot;
    .locals 11

    .line 2
    const-string v0, "getTaskSnapshot: taskId="

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.READ_FRAME_BUFFER"

    const-string v3, "getTaskSnapshot()"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 6
    invoke-virtual {v4, p1, v5, v7, v6}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_0

    .line 7
    const-string p0, "ActivityTaskManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v7

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 10
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v7, v4, Lcom/android/server/wm/Task;->mUserId:I

    const/4 v8, 0x1

    move v6, p1

    move v9, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZZ)Landroid/window/TaskSnapshot;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 13
    :goto_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 14
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    throw p0
.end method

.method public final getTaskSnapshotLowResolution(I)Landroid/window/TaskSnapshot;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskSnapshot(IZZ)Landroid/window/TaskSnapshot;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final getTasks(IZZI)Ljava/util/List;
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    const/4 v8, 0x0

    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    const/16 p3, 0x8

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p3, v8

    .line 16
    :goto_0
    or-int/2addr p2, p3

    .line 17
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    const/4 v5, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    move v0, v7

    .line 23
    move v1, v6

    .line 24
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-eqz p3, :cond_2

    .line 29
    .line 30
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 31
    .line 32
    const/4 v4, -0x1

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    move v0, v7

    .line 36
    move v1, v6

    .line 37
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-nez p3, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move p3, v8

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    const/4 p3, 0x4

    .line 47
    :goto_2
    or-int/2addr p2, p3

    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x0

    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-virtual {p3, v1, v2, v8, v0}, Lcom/android/server/pm/UserManagerService;->getProfileIds(Ljava/lang/String;ZZI)[I

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    new-instance v5, Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 65
    .line 66
    .line 67
    move v0, v8

    .line 68
    :goto_3
    array-length v1, p3

    .line 69
    if-ge v0, v1, :cond_3

    .line 70
    .line 71
    aget v1, p3, v0

    .line 72
    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 89
    .line 90
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 91
    .line 92
    .line 93
    monitor-enter v9

    .line 94
    :try_start_0
    const-string v0, "getTasks"

    .line 95
    .line 96
    invoke-virtual {p0, v7, v6, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(IILjava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    const/4 v8, 0x2

    .line 103
    :cond_4
    or-int v3, p2, v8

    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 106
    .line 107
    move v1, p1

    .line 108
    move-object v2, p3

    .line 109
    move v4, v6

    .line 110
    move v6, p4

    .line 111
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RootWindowContainer;->getRunningTasks(ILjava/util/List;IILandroid/util/ArraySet;I)V

    .line 112
    .line 113
    .line 114
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 116
    .line 117
    .line 118
    return-object p3

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final getUserManager()Lcom/android/server/pm/UserManagerService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "user"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/pm/UserManagerService;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 21
    .line 22
    return-object p0
.end method

.method public final getUserOrSystemMinAspectRatioOverrideCode(Ljava/lang/String;I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode(ILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getSystemMinAspectRatio(Ljava/lang/String;)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const p1, 0x3fe38e39

    .line 25
    .line 26
    .line 27
    cmpl-float p1, p0, p1

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    const/4 p2, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const p1, 0x3faaaaab

    .line 34
    .line 35
    .line 36
    cmpl-float p0, p0, p1

    .line 37
    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    const/4 p2, 0x3

    .line 41
    :cond_1
    :goto_0
    return p2

    .line 42
    :cond_2
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public final getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal;->getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getWindowOrganizerController()Landroid/window/IWindowOrganizerController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleIncomingUser(IIILjava/lang/String;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    const/4 v5, 0x0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move-object v6, p4

    .line 10
    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final hasActiveVisibleWindow(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    sub-int/2addr v2, v3

    .line 14
    :goto_0
    if-ltz v2, :cond_1

    .line 15
    .line 16
    iget-object v4, v0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    .line 23
    .line 24
    iget v4, v4, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 25
    .line 26
    if-ne v4, p1, :cond_0

    .line 27
    .line 28
    monitor-exit v1

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_1
    if-eqz v3, :cond_2

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MirrorActiveUids;->hasNonAppVisibleWindow(I)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public final hasSystemAlertWindowPermission(IILjava/lang/String;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v5, ""

    .line 6
    .line 7
    const/16 v1, 0x18

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    move v2, p1

    .line 11
    move-object v3, p3

    .line 12
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 p3, 0x3

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne p0, p3, :cond_1

    .line 20
    .line 21
    const-string v4, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, -0x1

    .line 25
    const/4 v7, 0x1

    .line 26
    move v2, p2

    .line 27
    move v3, p1

    .line 28
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    move v0, v1

    .line 35
    :cond_0
    return v0

    .line 36
    :cond_1
    if-nez p0, :cond_2

    .line 37
    .line 38
    move v0, v1

    .line 39
    :cond_2
    return v0
.end method

.method public final isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v8

    .line 13
    move-object v0, p0

    .line 14
    move v1, p4

    .line 15
    move v2, v6

    .line 16
    move v3, v7

    .line 17
    move-object v4, p2

    .line 18
    move-object v5, p3

    .line 19
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(IIILandroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 24
    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 26
    .line 27
    .line 28
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    move v1, p1

    .line 33
    move v2, v7

    .line 34
    move v3, v6

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 50
    .line 51
    .line 52
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public final isAppLockedPackage(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedPackage(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public final isAppLockedVerifying(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedVerifying(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public final isApplockEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->isApplockEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public final isAssistDataAllowed()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v1, v3, v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :try_start_1
    iget v4, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    return v2

    .line 50
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :try_start_3
    new-instance v7, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda16;

    .line 55
    .line 56
    invoke-direct {v7, p0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v7, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(I)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    if-nez p0, :cond_3

    .line 81
    .line 82
    move v2, v3

    .line 83
    :cond_3
    return v2

    .line 84
    :catchall_1
    move-exception p0

    .line 85
    :try_start_5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 91
    .line 92
    .line 93
    return v2

    .line 94
    :goto_1
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 95
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public final isCallerRecents(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 4
    .line 5
    invoke-static {p1, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isGetTasksAllowed(IILjava/lang/String;)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const-string v3, "android.permission.REAL_GET_TASKS"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, -0x1

    .line 13
    const/4 v6, 0x1

    .line 14
    move v1, p1

    .line 15
    move v2, p2

    .line 16
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    move p0, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    :goto_0
    if-nez p0, :cond_5

    .line 26
    .line 27
    const-string v3, "android.permission.GET_TASKS"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, -0x1

    .line 31
    const/4 v6, 0x1

    .line 32
    move v1, p1

    .line 33
    move v2, p2

    .line 34
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    if-nez p1, :cond_4

    .line 42
    .line 43
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1, p2}, Landroid/content/pm/IPackageManager;->isUidPrivileged(I)Z

    .line 48
    .line 49
    .line 50
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    :try_start_1
    aget-boolean p0, v1, v2

    .line 54
    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    int-to-long p0, p2

    .line 58
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 59
    .line 60
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    filled-new-array {p3, p0}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    const/4 v6, 0x4

    .line 69
    const/4 v7, 0x0

    .line 70
    const-wide v4, 0x74793b51fe2e3788L    # 1.156174081332775E253

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    :cond_2
    move v0, p0

    .line 80
    :catch_1
    :cond_3
    :goto_1
    move p0, v0

    .line 81
    :cond_4
    aget-boolean p1, v1, v2

    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    int-to-long p1, p2

    .line 86
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 87
    .line 88
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    filled-new-array {p3, p1}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    const/4 v3, 0x4

    .line 97
    const/4 v4, 0x0

    .line 98
    const-wide v1, 0x3bb9f9922ec939eaL    # 5.500396234831023E-21

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    return p0
.end method

.method public final isInLockTaskMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isPackageEnabledForCoverLauncher(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isPackageSettingsEnabledForCoverLauncher(Ljava/lang/String;II)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isPossibleToStart(Landroid/content/Intent;)Z
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
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android.intent.action.MAIN"

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const-string v2, "android.intent.category.HOME"

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    return v3

    .line 27
    :cond_1
    if-eqz v1, :cond_3

    .line 28
    .line 29
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    const-string v2, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v4, "emergency"

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    const-string v2, "intent.action.INTERACTION_ICE"

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    :cond_2
    return v3

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    .line 67
    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_6

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_6

    .line 85
    .line 86
    const-string v1, "isPossibleToStart  : "

    .line 87
    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v2, "checkingSIOP"

    .line 93
    .line 94
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    return p0

    .line 118
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_6

    .line 133
    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Ljava/util/Map$Entry;

    .line 139
    .line 140
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_5

    .line 153
    .line 154
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    return p0

    .line 171
    :cond_6
    iget p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    .line 172
    .line 173
    const/16 v1, 0x8

    .line 174
    .line 175
    if-eq p1, v1, :cond_7

    .line 176
    .line 177
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    .line 178
    .line 179
    if-gtz p0, :cond_7

    .line 180
    .line 181
    move v0, v3

    .line 182
    :cond_7
    return v0
.end method

.method public final isTopActivityImmersive()Z
    .locals 2

    .line 1
    const-string v0, "isTopActivityImmersive"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final keyguardGoingAway(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.CONTROL_KEYGUARD"

    .line 4
    .line 5
    const-string/jumbo v2, "unlock keyguard"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "keyguardGoingAway"

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 23
    .line 24
    .line 25
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 26
    and-int/lit8 v3, p1, 0x10

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityClientController;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_4

    .line 39
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 44
    .line 45
    or-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    iput v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 48
    .line 49
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 50
    .line 51
    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-direct {v4, p0, p1, v5}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 58
    .line 59
    .line 60
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 65
    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    const-class p1, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 77
    .line 78
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 79
    .line 80
    if-eqz p0, :cond_4

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 85
    .line 86
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    array-length v2, p0

    .line 92
    const/4 v3, 0x0

    .line 93
    :goto_1
    if-ge v3, v2, :cond_3

    .line 94
    .line 95
    aget-object v4, p0, v3

    .line 96
    .line 97
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 98
    .line 99
    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda26;

    .line 100
    .line 101
    const/4 v6, 0x0

    .line 102
    invoke-direct {v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda26;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 106
    .line 107
    .line 108
    add-int/lit8 v3, v3, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    monitor-exit p1

    .line 114
    goto :goto_3

    .line 115
    :goto_2
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 117
    :cond_4
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :catchall_2
    move-exception p0

    .line 122
    goto :goto_5

    .line 123
    :goto_4
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 125
    .line 126
    .line 127
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 128
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    .line 130
    .line 131
    throw p0
.end method

.method public final maybeHideLockedProfileActivityLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget v2, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 62
    .line 63
    iget v2, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->dismissPip()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    const-string/jumbo v1, "maybeHideLockedProfileActivityInPictureInPictureModeLocked"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeActivity(ILjava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_3

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda11;

    .line 113
    .line 114
    const/4 v2, 0x2

    .line 115
    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    const-string/jumbo v1, "maybeHideLockedProfileActivityInSplitScreenModeLocked"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeActivity(ILjava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 144
    .line 145
    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_5

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 161
    .line 162
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 163
    .line 164
    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_6

    .line 171
    .line 172
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 173
    .line 174
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    const-string/jumbo v1, "maybeHideLockedProfileActivityLocked"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeActivity(ILjava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    :cond_6
    :goto_2
    return-void
.end method

.method public final moveRootTaskToDisplay(II)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 4
    .line 5
    const-string/jumbo v2, "moveRootTaskToDisplay()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aget-boolean v3, v3, v4

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    int-to-long v3, p1

    .line 29
    int-to-long v5, p2

    .line 30
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 31
    .line 32
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v12

    .line 44
    const/4 v10, 0x5

    .line 45
    const/4 v11, 0x0

    .line 46
    const-wide v8, 0xc6749005a703ea3L

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->moveRootTaskToDisplay(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_1
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :goto_1
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public final moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.REORDER_TASKS"

    .line 4
    .line 5
    const-string/jumbo v2, "moveTaskToFront()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aget-boolean v0, v0, v1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    int-to-long v0, p3

    .line 19
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    const/4 v5, 0x1

    .line 30
    const/4 v6, 0x0

    .line 31
    const-wide v3, 0x62798d5ff8d1301cL    # 2.3543265383752976E166

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 40
    .line 41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 42
    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    invoke-static {p5}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    move-object v1, p0

    .line 50
    move-object v2, p1

    .line 51
    move-object v3, p2

    .line 52
    move v4, p3

    .line 53
    move v5, p4

    .line 54
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V

    .line 55
    .line 56
    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    move-object/from16 v6, p2

    .line 16
    .line 17
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v15

    .line 24
    const/4 v14, 0x0

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    move-object v9, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v9, v14

    .line 34
    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 37
    .line 38
    sget-object v11, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v12, 0x0

    .line 42
    const/4 v7, -0x1

    .line 43
    const/4 v8, -0x1

    .line 44
    const/4 v13, 0x0

    .line 45
    const/16 v17, 0x0

    .line 46
    .line 47
    move-object/from16 v6, p2

    .line 48
    .line 49
    move-object/from16 v14, v17

    .line 50
    .line 51
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget v4, v3, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    if-nez v4, :cond_1

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v4, v5

    .line 63
    :goto_1
    const-string v6, "ActivityTaskManager"

    .line 64
    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_2

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string/jumbo v1, "moveTaskToFront blocked: "

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 95
    .line 96
    invoke-virtual {v3, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    if-nez v8, :cond_4

    .line 101
    .line 102
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 103
    .line 104
    aget-boolean v0, v0, v5

    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    int-to-long v0, v1

    .line 109
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 110
    .line 111
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    const/4 v6, 0x1

    .line 120
    const/4 v7, 0x0

    .line 121
    const-wide v4, -0x3ddf057d1e20c0aeL    # -3.646117911962367E10

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto :goto_4

    .line 132
    :cond_3
    :goto_2
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_4
    :try_start_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 140
    .line 141
    invoke-virtual {v1, v8, v5}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    const-string/jumbo v0, "moveTaskToFront: Attempt to violate Lock Task Mode"

    .line 148
    .line 149
    .line 150
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_5
    :try_start_2
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_6

    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    .line 173
    .line 174
    .line 175
    :cond_6
    if-eqz v2, :cond_7

    .line 176
    .line 177
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 178
    .line 179
    const/4 v3, 0x0

    .line 180
    invoke-virtual {v2, v3, v3, v3, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    move-object v10, v14

    .line 185
    goto :goto_3

    .line 186
    :cond_7
    const/4 v3, 0x0

    .line 187
    move-object v10, v3

    .line 188
    :goto_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_RESUMED_AFFORDANCE_ANIMATION:Z

    .line 189
    .line 190
    if-eqz v1, :cond_8

    .line 191
    .line 192
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_8

    .line 197
    .line 198
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    invoke-static {v8, v10}, Lcom/android/server/wm/MultiTaskingController;->needAffordanceAnimation(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_8

    .line 208
    .line 209
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 210
    .line 211
    invoke-virtual {v1, v8}, Lcom/android/server/wm/MultiTaskingController;->setAffordanceTargetTask(Lcom/android/server/wm/Task;)V

    .line 212
    .line 213
    .line 214
    :cond_8
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 215
    .line 216
    const-string/jumbo v11, "moveTaskToFront"

    .line 217
    .line 218
    .line 219
    const/4 v12, 0x0

    .line 220
    move/from16 v9, p4

    .line 221
    .line 222
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    .line 224
    .line 225
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :goto_4
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    .line 231
    .line 232
    throw v0
.end method

.method public final moveTaskToRootTask(IIZ)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const-string/jumbo v3, "moveTaskToRootTask: Attempt to move task "

    .line 8
    .line 9
    .line 10
    const-string/jumbo v4, "moveTaskToRootTask: No rootTask for rootTaskId="

    .line 11
    .line 12
    .line 13
    const-string/jumbo v5, "moveTaskToRootTask: No task for id="

    .line 14
    .line 15
    .line 16
    const-string/jumbo v6, "moveTaskToRootTask()"

    .line 17
    .line 18
    .line 19
    invoke-static {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 25
    .line 26
    .line 27
    monitor-enter v6

    .line 28
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 33
    .line 34
    invoke-virtual {v9, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    if-nez v10, :cond_0

    .line 39
    .line 40
    const-string v0, "ActivityTaskManager"

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .line 56
    .line 57
    :try_start_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :catchall_1
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    :try_start_3
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    aget-boolean v5, v5, v9

    .line 74
    .line 75
    if-eqz v5, :cond_1

    .line 76
    .line 77
    int-to-long v11, v1

    .line 78
    int-to-long v13, v2

    .line 79
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 80
    .line 81
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    filled-new-array {v5, v9, v11}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v20

    .line 97
    const/16 v18, 0x35

    .line 98
    .line 99
    const/16 v19, 0x0

    .line 100
    .line 101
    const-wide v16, -0xfc70cd9d580c222L    # -3.8735017633455034E232

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    invoke-static/range {v15 .. v20}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    if-eqz v11, :cond_3

    .line 116
    .line 117
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    const-string/jumbo v16, "moveTaskToRootTask"

    .line 124
    .line 125
    .line 126
    const/4 v14, 0x1

    .line 127
    const/4 v15, 0x0

    .line 128
    const/4 v13, 0x1

    .line 129
    move/from16 v12, p3

    .line 130
    .line 131
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 132
    .line 133
    .line 134
    :try_start_4
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    .line 136
    .line 137
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_2
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 143
    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, " to rootTask "

    .line 153
    .line 154
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 169
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 186
    :goto_0
    :try_start_6
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 187
    .line 188
    .line 189
    throw v0

    .line 190
    :goto_1
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 191
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 192
    .line 193
    .line 194
    throw v0
.end method

.method public final notifyDedicated(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "notifyDedicatedState:"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ActivityTaskManager"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ","

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCb4Task:Ljava/util/Optional;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCb4Task:Ljava/util/Optional;

    .line 39
    .line 40
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 47
    .line 48
    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "onPictureInPictureUiStateChanged"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda6;

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-direct {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda6;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_0
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    .line 71
    .line 72
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    .line 73
    .line 74
    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    .line 75
    .line 76
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 77
    .line 78
    if-eq v3, v2, :cond_2

    .line 79
    .line 80
    if-eq v4, v2, :cond_2

    .line 81
    .line 82
    if-ne v5, v2, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityClientController;->onPictureInPictureUiStateChanged(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureUiState;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method public final onScreenAwakeChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZI)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 16
    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 19
    .line 20
    and-int/lit8 v0, v0, -0x2

    .line 21
    .line 22
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setProcessAnimatingWhileDozing(Lcom/android/server/wm/WindowProcessController;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p0
.end method

.method public final onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 4
    .line 5
    const-string v2, "copySplashScreenViewFinish()"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, p1, v2, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/16 v1, 0xd

    .line 29
    .line 30
    invoke-direct {p1, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->onCopySplashScreenFinish(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final onSystemReady()V
    .locals 9

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "com.samsung.CHECK_COOLDOWN_LEVEL"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCooldownLevelReceiver:Lcom/android/server/wm/ActivityTaskManagerService$3;

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SUPPORT_APP_JUMP_BLOCK:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "package"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppJumpBlockReceiver:Lcom/android/server/wm/ActivityTaskManagerService$3;

    .line 44
    .line 45
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 49
    .line 50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 51
    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "android.software.cant_save_state"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    .line 67
    .line 68
    const-string v2, "android.software.leanback"

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    .line 75
    .line 76
    const-string v2, "android.software.companion_device_setup"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasCompanionDeviceSetupFeature:Z

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const-class v2, Lcom/android/server/vr/VrManagerService$LocalService;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lcom/android/server/vr/VrManagerService$LocalService;

    .line 96
    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    iput-object v2, v1, Lcom/android/server/wm/VrController;->mVrService:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 100
    .line 101
    iget-object v1, v1, Lcom/android/server/wm/VrController;->mPersistentVrModeListener:Lcom/android/server/wm/VrController$1;

    .line 102
    .line 103
    iget-object v2, v2, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 104
    .line 105
    iget-object v2, v2, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 106
    .line 107
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 108
    .line 109
    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->onSystemReadyLocked()V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 116
    .line 117
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 123
    .line 124
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 129
    .line 130
    new-instance v3, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;

    .line 131
    .line 132
    invoke-direct {v3, v1}, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;-><init>(Lcom/android/server/wm/LaunchParamsPersister;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iput-object v2, v1, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    new-instance v2, Lcom/android/internal/app/AssistUtils;

    .line 147
    .line 148
    iget-object v3, v1, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    invoke-direct {v2, v3}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    iput-object v2, v1, Lcom/android/server/wm/ActivityClientController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 154
    .line 155
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings;->onSystemReady()V

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->onSystemReady()V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 166
    .line 167
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string/jumbo v2, "window_manager"

    .line 172
    .line 173
    .line 174
    const-string v3, "ActivitySecurity__asm_toasts_enabled"

    .line 175
    .line 176
    const/4 v4, 0x0

    .line 177
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    sput v3, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmToastsEnabled:I

    .line 182
    .line 183
    const-string v3, "ActivitySecurity__asm_restrictions_enabled"

    .line 184
    .line 185
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    sput v2, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmRestrictionsEnabled:I

    .line 190
    .line 191
    new-instance v2, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags$$ExternalSyntheticLambda0;

    .line 192
    .line 193
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string/jumbo v3, "window_manager"

    .line 197
    .line 198
    .line 199
    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 200
    .line 201
    .line 202
    const-class v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 203
    .line 204
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 209
    .line 210
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGrammaticalManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 211
    .line 212
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    new-instance v2, Landroid/content/IntentFilter;

    .line 218
    .line 219
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    .line 228
    .line 229
    .line 230
    new-instance v1, Landroid/os/HandlerThread;

    .line 231
    .line 232
    const-string v2, "activeLaunch"

    .line 233
    .line 234
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-instance v5, Landroid/content/IntentFilter;

    .line 238
    .line 239
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v2, "com.samsung.DO_ACTIVE_LAUNCH"

    .line 243
    .line 244
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const-string v2, "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX"

    .line 248
    .line 249
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const-string v2, "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX_LAUNCHER"

    .line 253
    .line 254
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 258
    .line 259
    .line 260
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    .line 261
    .line 262
    if-eqz v2, :cond_2

    .line 263
    .line 264
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    const/16 v3, 0xa

    .line 269
    .line 270
    invoke-static {v2, v3}, Landroid/os/Process;->setThreadGroup(II)V

    .line 271
    .line 272
    .line 273
    goto :goto_0

    .line 274
    :catchall_0
    move-exception p0

    .line 275
    goto/16 :goto_6

    .line 276
    .line 277
    :cond_2
    :goto_0
    new-instance v7, Landroid/os/Handler;

    .line 278
    .line 279
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-direct {v7, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 284
    .line 285
    .line 286
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 287
    .line 288
    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$3;

    .line 289
    .line 290
    const/4 v1, 0x3

    .line 291
    invoke-direct {v4, v1, p0}, Lcom/android/server/wm/ActivityTaskManagerService$3;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;)V

    .line 292
    .line 293
    .line 294
    const/4 v6, 0x0

    .line 295
    const/4 v8, 0x2

    .line 296
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 297
    .line 298
    .line 299
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 300
    .line 301
    if-eqz v1, :cond_3

    .line 302
    .line 303
    const-class v1, Lcom/android/server/pm/SpegService;

    .line 304
    .line 305
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    check-cast v1, Lcom/android/server/pm/SpegService;

    .line 310
    .line 311
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 312
    .line 313
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 315
    .line 316
    .line 317
    new-instance v0, Landroid/content/IntentFilter;

    .line 318
    .line 319
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 320
    .line 321
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const-string/jumbo v1, "package"

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 331
    .line 332
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIdsReceiver:Lcom/android/server/wm/ActivityTaskManagerService$3;

    .line 333
    .line 334
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    .line 336
    .line 337
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIdsLock:Ljava/lang/Object;

    .line 338
    .line 339
    monitor-enter v1

    .line 340
    :try_start_1
    new-instance v0, Ljava/io/ObjectInputStream;

    .line 341
    .line 342
    new-instance v2, Ljava/io/FileInputStream;

    .line 343
    .line 344
    const-string v3, "/data/system/idsFile.txt"

    .line 345
    .line 346
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 350
    .line 351
    .line 352
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    check-cast v2, Ljava/util/Set;

    .line 357
    .line 358
    if-eqz v2, :cond_4

    .line 359
    .line 360
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getIdsClearSet()Ljava/util/Set;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    invoke-interface {p0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 365
    .line 366
    .line 367
    goto :goto_1

    .line 368
    :catchall_1
    move-exception p0

    .line 369
    goto :goto_2

    .line 370
    :cond_4
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 371
    .line 372
    .line 373
    goto :goto_4

    .line 374
    :catchall_2
    move-exception p0

    .line 375
    goto :goto_5

    .line 376
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 377
    .line 378
    .line 379
    goto :goto_3

    .line 380
    :catchall_3
    move-exception v0

    .line 381
    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 382
    .line 383
    .line 384
    :goto_3
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 385
    :catch_0
    :try_start_6
    const-string p0, "ActivityTaskManager"

    .line 386
    .line 387
    const-string v0, "Error reading IDS file during onSystemReady."

    .line 388
    .line 389
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    :goto_4
    monitor-exit v1

    .line 393
    return-void

    .line 394
    :goto_5
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 395
    throw p0

    .line 396
    :goto_6
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 397
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 398
    .line 399
    .line 400
    throw p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IActivityTaskManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string p1, "ActivityTaskManager"

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public final registKeyEventListener(Lcom/samsung/android/multiwindow/IKeyEventListener;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "registKeyEventListener()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyEventListener:Lcom/samsung/android/multiwindow/IKeyEventListener;

    .line 8
    .line 9
    return-void
.end method

.method public final registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    .line 4
    .line 5
    const-string/jumbo v2, "registerRemoteAnimationForNextActivityStart"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 25
    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 35
    .line 36
    iget-object p0, v4, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    .line 37
    .line 38
    new-instance v9, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    .line 39
    .line 40
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_REMOTE:Z

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    move-object v3, v9

    .line 44
    move-object v5, p1

    .line 45
    move-object v6, p2

    .line 46
    move-object v7, p3

    .line 47
    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;-><init>(Lcom/android/server/wm/PendingRemoteAnimationRegistry;Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;Landroid/window/RemoteTransition;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    .line 52
    .line 53
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_0

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public final registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V
    .locals 4

    .line 1
    const-string v0, "Couldn\'t find display with id: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    const-string v2, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    .line 6
    .line 7
    const-string/jumbo v3, "registerRemoteAnimations"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
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
    invoke-virtual {p2, v1, v2}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 27
    .line 28
    .line 29
    monitor-enter v1

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    const-string p0, "ActivityTaskManager"

    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 67
    .line 68
    iput-object p2, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    .line 70
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_1
    move-exception p0

    .line 79
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 85
    .line 86
    .line 87
    throw p0
.end method

.method public final registerRemoteTransitionForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;Landroid/window/RemoteTransition;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    .line 4
    .line 5
    const-string/jumbo v2, "registerRemoteTransitionForNextActivityStart"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 25
    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 35
    .line 36
    iget-object p0, v4, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    .line 37
    .line 38
    new-instance v9, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    .line 39
    .line 40
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_REMOTE:Z

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    :goto_0
    move-object v8, p4

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/4 p4, 0x0

    .line 47
    goto :goto_0

    .line 48
    :goto_1
    move-object v3, v9

    .line 49
    move-object v5, p1

    .line 50
    move-object v6, p2

    .line 51
    move-object v7, p3

    .line 52
    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;-><init>(Lcom/android/server/wm/PendingRemoteAnimationRegistry;Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;Landroid/window/RemoteTransition;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    .line 57
    .line 58
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public final registerScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.DETECT_SCREEN_CAPTURE"

    .line 4
    .line 5
    const-string/jumbo v2, "registerScreenCaptureObserver"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->registerCaptureObserver(Landroid/app/IScreenCaptureObserver;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "registerTaskStackListener()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    instance-of v0, p1, Landroid/os/Binder;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    instance-of v1, p1, Landroid/app/TaskStackListener;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    move-object v1, p1

    .line 32
    check-cast v1, Landroid/app/TaskStackListener;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/app/TaskStackListener;->setIsLocal()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    monitor-exit v0

    .line 46
    goto :goto_2

    .line 47
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0

    .line 49
    :cond_2
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 57
    .line 58
    .line 59
    monitor-exit v0

    .line 60
    goto :goto_2

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    throw p0

    .line 64
    :cond_3
    :goto_2
    return-void
.end method

.method public final releaseSomeActivities(Landroid/app/IApplicationThread;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->releaseSomeActivities()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    .line 17
    .line 18
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :catchall_1
    move-exception p0

    .line 29
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final removeAllVisibleRecentTasks()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.REMOVE_TASKS"

    .line 4
    .line 5
    const-string/jumbo v2, "removeAllVisibleRecentTasks()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {v3, p0}, Lcom/android/server/wm/RecentTasks;->removeAllVisibleTasks(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final removeRootTasksInWindowingModes([I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "removeRootTasksInWindowingModes()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p0

    .line 33
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final removeRootTasksWithActivityTypes([I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "removeRootTasksWithActivityTypes()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksWithActivityTypes([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p0

    .line 33
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final removeTask(I)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-string/jumbo v2, "removeTask: No task remove with id="

    .line 6
    .line 7
    .line 8
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 9
    .line 10
    const-string v4, "android.permission.REMOVE_TASKS"

    .line 11
    .line 12
    const-string/jumbo v5, "removeTask()"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 19
    .line 20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 21
    .line 22
    .line 23
    monitor-enter v3

    .line 24
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x1

    .line 33
    invoke-virtual {v6, v1, v9, v7, v8}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 34
    .line 35
    .line 36
    move-result-object v11

    .line 37
    if-nez v11, :cond_0

    .line 38
    .line 39
    const-string v0, "ActivityTaskManager"

    .line 40
    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    .line 56
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 61
    .line 62
    .line 63
    return v8

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto :goto_2

    .line 66
    :catchall_1
    move-exception v0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    :try_start_3
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 75
    .line 76
    const-string/jumbo v14, "remove-task"

    .line 77
    .line 78
    .line 79
    const/4 v15, 0x0

    .line 80
    const/16 v17, -0x1

    .line 81
    .line 82
    const/4 v12, 0x1

    .line 83
    const/4 v13, 0x1

    .line 84
    const/16 v16, 0x3e8

    .line 85
    .line 86
    const/16 v18, 0x0

    .line 87
    .line 88
    invoke-virtual/range {v10 .. v18}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIIZ)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 93
    .line 94
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    .line 96
    .line 97
    :goto_0
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 102
    .line 103
    .line 104
    return v9

    .line 105
    :goto_1
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :goto_2
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 110
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 111
    .line 112
    .line 113
    throw v0
.end method

.method public final removeTaskWithFlags(II)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "removeTaskWithFlags: callingUid="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 5
    .line 6
    const-string v2, "android.permission.REMOVE_TASKS"

    .line 7
    .line 8
    const-string/jumbo v3, "removeTask()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    const-string v2, "ActivityTaskManager"

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ", callerPid="

    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ", taskId="

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ", flags="

    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 77
    .line 78
    .line 79
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 81
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->removeTaskWithFlagsLocked(II)Z

    .line 83
    .line 84
    .line 85
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 91
    .line 92
    .line 93
    return p0

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_0

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method public final reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iput-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    .line 5
    .line 6
    iput-object p3, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    .line 7
    .line 8
    iput-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    .line 9
    .line 10
    if-eqz p5, :cond_0

    .line 11
    .line 12
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    .line 13
    .line 14
    const-string v0, "android.intent.extra.REFERRER"

    .line 15
    .line 16
    invoke-virtual {p4, v0, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    :goto_0
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    if-nez p4, :cond_1

    .line 30
    .line 31
    monitor-exit p1

    .line 32
    return-void

    .line 33
    :cond_1
    if-eqz p3, :cond_2

    .line 34
    .line 35
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    .line 36
    .line 37
    iget-object p4, p4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 38
    .line 39
    iget p4, p4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 40
    .line 41
    invoke-virtual {p3, p4}, Landroid/app/assist/AssistStructure;->setTaskId(I)V

    .line 42
    .line 43
    .line 44
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    .line 45
    .line 46
    iget-object p4, p4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 47
    .line 48
    invoke-virtual {p3, p4}, Landroid/app/assist/AssistStructure;->setActivityComponent(Landroid/content/ComponentName;)V

    .line 49
    .line 50
    .line 51
    iget-boolean p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    .line 52
    .line 53
    invoke-virtual {p3, p4}, Landroid/app/assist/AssistStructure;->setHomeActivity(Z)V

    .line 54
    .line 55
    .line 56
    :cond_2
    const/4 p3, 0x1

    .line 57
    iput-boolean p3, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 60
    .line 61
    .line 62
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    .line 63
    .line 64
    if-nez p4, :cond_3

    .line 65
    .line 66
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    .line 67
    .line 68
    if-nez p4, :cond_3

    .line 69
    .line 70
    monitor-exit p1

    .line 71
    return-void

    .line 72
    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 74
    .line 75
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 76
    .line 77
    .line 78
    monitor-enter p4

    .line 79
    if-eqz p2, :cond_4

    .line 80
    .line 81
    :try_start_1
    iget-object p5, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    .line 82
    .line 83
    const-string v0, "android.intent.extra.ASSIST_CONTEXT"

    .line 84
    .line 85
    invoke-virtual {p5, v0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz p2, :cond_5

    .line 91
    .line 92
    iget-object p5, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    .line 93
    .line 94
    invoke-virtual {p5, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    :cond_5
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 104
    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    .line 107
    .line 108
    if-nez p2, :cond_6

    .line 109
    .line 110
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catchall_1
    move-exception p0

    .line 116
    goto/16 :goto_4

    .line 117
    .line 118
    :cond_6
    :try_start_2
    iget-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    .line 119
    .line 120
    if-eqz p2, :cond_7

    .line 121
    .line 122
    new-instance p3, Landroid/os/Bundle;

    .line 123
    .line 124
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string/jumbo p5, "taskId"

    .line 128
    .line 129
    .line 130
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    .line 131
    .line 132
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 133
    .line 134
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 135
    .line 136
    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    const-string p5, "activityId"

    .line 140
    .line 141
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    .line 144
    .line 145
    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 146
    .line 147
    .line 148
    const-string p5, "data"

    .line 149
    .line 150
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    .line 151
    .line 152
    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 153
    .line 154
    .line 155
    const-string/jumbo p5, "structure"

    .line 156
    .line 157
    .line 158
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    .line 159
    .line 160
    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 161
    .line 162
    .line 163
    const-string p5, "content"

    .line 164
    .line 165
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    .line 166
    .line 167
    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    .line 169
    .line 170
    const-string/jumbo p5, "receiverExtras"

    .line 171
    .line 172
    .line 173
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    .line 174
    .line 175
    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_7
    const/4 p3, 0x0

    .line 180
    :goto_1
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 182
    .line 183
    .line 184
    if-eqz p2, :cond_8

    .line 185
    .line 186
    :try_start_3
    invoke-interface {p2, p3}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 187
    .line 188
    .line 189
    :catch_0
    return-void

    .line 190
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 191
    .line 192
    .line 193
    move-result-wide p2

    .line 194
    :try_start_4
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    .line 195
    .line 196
    iget-object p5, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    .line 197
    .line 198
    invoke-virtual {p4, p5}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    .line 202
    .line 203
    const/high16 p5, 0x34000000

    .line 204
    .line 205
    invoke-virtual {p4, p5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    .line 207
    .line 208
    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 209
    .line 210
    const-string p5, "assist"

    .line 211
    .line 212
    invoke-virtual {p4, p5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 213
    .line 214
    .line 215
    :try_start_5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 216
    .line 217
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    .line 218
    .line 219
    new-instance p5, Landroid/os/UserHandle;

    .line 220
    .line 221
    iget p1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->userHandle:I

    .line 222
    .line 223
    invoke-direct {p5, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, p4, p5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :catchall_2
    move-exception p0

    .line 231
    goto :goto_3

    .line 232
    :catch_1
    move-exception p0

    .line 233
    :try_start_6
    const-string p1, "ActivityTaskManager"

    .line 234
    .line 235
    const-string p4, "No activity to handle assist action."

    .line 236
    .line 237
    invoke-static {p1, p4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 238
    .line 239
    .line 240
    :goto_2
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :goto_3
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    .line 246
    .line 247
    throw p0

    .line 248
    :goto_4
    :try_start_7
    monitor-exit p4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 249
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 250
    .line 251
    .line 252
    throw p0

    .line 253
    :goto_5
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 254
    throw p0
.end method

.method public final requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v7

    .line 5
    const-wide/16 v8, 0x7d0

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    move/from16 v5, p5

    .line 14
    .line 15
    move/from16 v6, p6

    .line 16
    .line 17
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZIJI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public final requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 6
    .line 7
    const-string v3, "android.permission.GET_TOP_ACTIVITY_INFO"

    .line 8
    .line 9
    const-string/jumbo v4, "requestAssistDataForTask()"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    :try_start_0
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    .line 23
    .line 24
    .line 25
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const-string v3, "ActivityTaskManager"

    .line 31
    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    const-string v1, "Could not find activity for task "

    .line 35
    .line 36
    invoke-static {v0, v1, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_0
    new-instance v9, Lcom/android/server/wm/AssistDataReceiverProxy;

    .line 41
    .line 42
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    move-object/from16 v0, p1

    .line 46
    .line 47
    iput-object v0, v9, Lcom/android/server/wm/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    .line 48
    .line 49
    move-object/from16 v15, p3

    .line 50
    .line 51
    iput-object v15, v9, Lcom/android/server/wm/AssistDataReceiverProxy;->mCallerPackage:Ljava/lang/String;

    .line 52
    .line 53
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/app/IAssistDataReceiver;->asBinder()Landroid/os/IBinder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0, v9, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v2, "Could not link to client death"

    .line 63
    .line 64
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :goto_0
    new-instance v10, Ljava/lang/Object;

    .line 68
    .line 69
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/android/server/am/AssistDataRequester;

    .line 73
    .line 74
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 77
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    const/4 v11, -0x1

    .line 83
    move-object v5, v0

    .line 84
    invoke-direct/range {v5 .. v11}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    new-instance v11, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    .line 93
    .line 94
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 98
    .line 99
    .line 100
    move-result v18

    .line 101
    const/16 v16, 0x0

    .line 102
    .line 103
    const/16 v17, 0x1

    .line 104
    .line 105
    const/4 v12, 0x1

    .line 106
    const/4 v13, 0x0

    .line 107
    const/4 v14, 0x0

    .line 108
    const/4 v1, 0x1

    .line 109
    const/16 v21, 0x0

    .line 110
    .line 111
    move-object v10, v0

    .line 112
    move v15, v1

    .line 113
    move-object/from16 v19, p3

    .line 114
    .line 115
    move-object/from16 v20, p4

    .line 116
    .line 117
    invoke-virtual/range {v10 .. v21}, Lcom/android/server/am/AssistDataRequester;->requestData(Ljava/util/List;ZZZZZZILjava/lang/String;Ljava/lang/String;Z)V

    .line 118
    .line 119
    .line 120
    const/4 v0, 0x1

    .line 121
    return v0

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    throw v0
.end method

.method public final requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v7

    .line 5
    const/4 v5, 0x1

    .line 6
    const/4 v6, 0x1

    .line 7
    const/4 v1, 0x2

    .line 8
    const-wide/16 v8, 0x7d0

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move-object v4, p3

    .line 14
    move v10, p4

    .line 15
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZIJI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final resetUserPackageSettings(II)V
    .locals 3

    .line 1
    const-string/jumbo p0, "resetUserPackageSettings()"

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    sget-object p0, Lcom/android/server/wm/PackagesChange;->sUserChangeCallbacks:Ljava/util/List;

    .line 12
    .line 13
    check-cast p0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;

    .line 30
    .line 31
    invoke-interface {v2, p1, p2}, Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;->resetAllIfNeeded(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final resizeTask(ILandroid/graphics/Rect;I)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p1

    .line 3
    .line 4
    move/from16 v6, p3

    .line 5
    .line 6
    const-string/jumbo v2, "resizeTask not allowed on task="

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "resizeTask: taskId="

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "resizeTask()"

    .line 13
    .line 14
    .line 15
    invoke-static {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v8

    .line 22
    :try_start_0
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 25
    .line 26
    .line 27
    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    invoke-virtual {v4, v1, v7, v5, v7}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    const-string v0, "ActivityTaskManager"

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " not found"

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    .line 63
    .line 64
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_1

    .line 80
    .line 81
    const-string v0, "ActivityTaskManager"

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    monitor-exit v10

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    and-int/lit8 v1, v6, 0x1

    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    move v11, v1

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move v11, v7

    .line 108
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 109
    .line 110
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_3

    .line 117
    .line 118
    move-object/from16 v5, p2

    .line 119
    .line 120
    invoke-virtual {v4, v6, v5}, Lcom/android/server/wm/Task;->resize(ILandroid/graphics/Rect;)V

    .line 121
    .line 122
    .line 123
    monitor-exit v10

    .line 124
    goto :goto_0

    .line 125
    :cond_3
    move-object/from16 v5, p2

    .line 126
    .line 127
    new-instance v12, Lcom/android/server/wm/Transition;

    .line 128
    .line 129
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 130
    .line 131
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 132
    .line 133
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 134
    .line 135
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 136
    .line 137
    const/4 v3, 0x6

    .line 138
    invoke-direct {v12, v3, v7, v1, v2}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 142
    .line 143
    iget-object v13, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 144
    .line 145
    new-instance v14, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;

    .line 146
    .line 147
    move-object v1, v14

    .line 148
    move-object v2, p0

    .line 149
    move-object v3, v4

    .line 150
    move-object v4, v12

    .line 151
    move-object/from16 v5, p2

    .line 152
    .line 153
    move/from16 v6, p3

    .line 154
    .line 155
    move v7, v11

    .line 156
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/graphics/Rect;IZ)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v13, v12, v14}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    .line 160
    .line 161
    .line 162
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    .line 165
    .line 166
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :catchall_1
    move-exception v0

    .line 171
    goto :goto_3

    .line 172
    :goto_2
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 174
    .line 175
    .line 176
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 177
    :goto_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    .line 179
    .line 180
    throw v0
.end method

.method public final resolveActivityInfoForIntent(IIILandroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 8

    .line 1
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2
    .line 3
    const/16 v0, -0x2710

    .line 4
    .line 5
    invoke-static {p2, p2, v0}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 6
    .line 7
    .line 8
    move-result v5

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v0, v7

    .line 11
    move-object v1, p4

    .line 12
    move-object v2, p5

    .line 13
    move v3, p1

    .line 14
    move v6, p3

    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 p3, 0x0

    .line 20
    const/4 p5, 0x0

    .line 21
    invoke-virtual {v7, p4, p2, p3, p5}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 26
    .line 27
    invoke-virtual {p0, p2, p1}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final resumeAppSwitches()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.STOP_APP_SWITCHES"

    .line 4
    .line 5
    const-string/jumbo v2, "resumeAppSwitches"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v0

    .line 17
    const/4 v1, 0x2

    .line 18
    :try_start_0
    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final saveANRState(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v8, Lcom/android/internal/util/FastPrintWriter;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/16 v2, 0x400

    .line 10
    .line 11
    invoke-direct {v8, v0, v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "  ANR time: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Ljava/util/Date;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    const-string v1, "  Reason: "

    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {v8, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 56
    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-eqz p2, :cond_1

    .line 65
    .line 66
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda29;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-direct {v1, v2, v8}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda29;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 79
    .line 80
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 81
    .line 82
    const-string v2, "  "

    .line 83
    .line 84
    invoke-virtual {p2, v8, v2, v1}, Lcom/android/server/wm/ActivityStartController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 88
    .line 89
    iget-object p2, p2, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 90
    .line 91
    if-eqz p2, :cond_2

    .line 92
    .line 93
    iget-object p2, p2, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const/4 p2, 0x0

    .line 97
    :goto_0
    if-eq p2, p1, :cond_3

    .line 98
    .line 99
    const/4 p2, 0x1

    .line 100
    invoke-virtual {p1, v8, v2, p2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const/4 v4, -0x1

    .line 110
    const/4 v5, 0x1

    .line 111
    const/4 v3, 0x0

    .line 112
    const-string v6, "  ResumedActivity: "

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    move-object v1, v8

    .line 116
    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZLjava/lang/String;Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;)Z

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 120
    .line 121
    invoke-virtual {p1, v8}, Lcom/android/server/wm/LockTaskController;->dump(Ljava/io/PrintWriter;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 125
    .line 126
    invoke-virtual {p1, v8}, Lcom/android/server/wm/KeyguardController;->dump(Ljava/io/PrintWriter;)V

    .line 127
    .line 128
    .line 129
    const-string p1, "-------------------------------------------------------------------------------"

    .line 130
    .line 131
    invoke-virtual {v8, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastANRState:Ljava/lang/String;

    .line 142
    .line 143
    return-void
.end method

.method public final sendSaLoggingBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    instance-of p0, p6, Ljava/util/HashMap;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    check-cast p6, Ljava/util/HashMap;

    .line 13
    .line 14
    move-object v7, p6

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p0, 0x0

    .line 17
    move-object v7, p0

    .line 18
    :goto_0
    const-string v8, "None"

    .line 19
    .line 20
    move-object v2, p1

    .line 21
    move-object v3, p2

    .line 22
    move-object v4, p3

    .line 23
    move-wide v5, p4

    .line 24
    invoke-static/range {v1 .. v8}, Lcom/samsung/android/core/CoreSaLogger;->sendSaLoggingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final sendSaLoggingBroadcastForSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/core/CoreSaLogger;->sendSaLoggingBroadcastForSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setActivityController(Landroid/app/IActivityController;Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "pid = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 5
    .line 6
    const-string v2, "android.permission.SET_ACTIVITY_WATCHER"

    .line 7
    .line 8
    const-string/jumbo v3, "setActivityController()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 25
    .line 26
    .line 27
    monitor-enter v3

    .line 28
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 29
    .line 30
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 31
    .line 32
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2, p1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, " uid = "

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerDescription:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerDescription:Ljava/lang/String;

    .line 66
    .line 67
    iget-object p2, p1, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    iput-object p0, p1, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    .line 71
    .line 72
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_0

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    :try_start_4
    throw p0

    .line 83
    :goto_0
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 85
    .line 86
    .line 87
    throw p0
.end method

.method public final setAppCompatAlignment(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mReachabilityPolicy:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAlignment:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mRecomputeConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final setAppLockedUnLockPackage(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSystemUid(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->setAppLockedUnLockPackage(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " cannot call setAppLockedUnLockPackage("

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, ")"

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final setAppLockedVerifying(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setApplockEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->setApplockEnabled(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setApplockLockedAppsClass(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->setApplockLockedAppsClass(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setApplockLockedAppsPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->setApplockLockedAppsPackage(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setApplockType(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->setApplockType(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setCoverLauncherPackageDisabled(Ljava/lang/String;I)I
    .locals 0

    .line 1
    const/16 p0, -0x64

    .line 2
    .line 3
    return p0
.end method

.method public final setCoverLauncherPackageEnabled(Ljava/lang/String;I)I
    .locals 0

    .line 1
    const/16 p0, -0x64

    .line 2
    .line 3
    return p0
.end method

.method public final setCutoutPolicy(ILjava/lang/String;I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setCutoutPolicy()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/android/server/wm/DisplayCutoutController;->setPolicy(IILjava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :catchall_1
    move-exception p0

    .line 36
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 37
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 38
    .line 39
    .line 40
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 41
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final setDisallowWhenLandscape(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "setDisallowWhenLandscape()"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 17
    .line 18
    xor-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldIgnoreLandscapeRequestDueToMultiStar:Z

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0

    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method public final setFocusedRootTask(I)V
    .locals 11

    .line 1
    const-string/jumbo v0, "setFocusedRootTask: No task with id="

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "setFocusedRootTask()"

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aget-boolean v1, v1, v2

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    int-to-long v3, p1

    .line 18
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 19
    .line 20
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    const/4 v8, 0x1

    .line 29
    const/4 v9, 0x0

    .line 30
    const-wide v6, -0x3c7700f8b55acf7bL    # -2.251457991439853E17

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 43
    .line 44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 45
    .line 46
    .line 47
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 49
    .line 50
    invoke-virtual {v5, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    if-nez v5, :cond_1

    .line 55
    .line 56
    const-string p0, "ActivityTaskManager"

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    :try_start_2
    invoke-virtual {v5, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    const-string/jumbo v0, "setFocusedRootTask"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 101
    .line 102
    .line 103
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .line 106
    .line 107
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    goto :goto_1

    .line 113
    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 115
    .line 116
    .line 117
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 118
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public final setFocusedTask(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setFocusedTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2
    const-string v0, "ActivityTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setFocusedTask: taskId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 7
    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(ILcom/android/server/wm/ActivityRecord;)V

    .line 8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 10
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    throw p0
.end method

.method public final setFocusedTask(ILcom/android/server/wm/ActivityRecord;)V
    .locals 10

    .line 13
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide v5, 0x4305c041da03983L

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, p1, v1, v2, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 17
    :cond_2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FLEX_PANEL:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    if-eqz v3, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_4

    if-ne v0, p2, :cond_5

    .line 18
    :cond_4
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 19
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-ne v0, v3, :cond_5

    .line 20
    const-string/jumbo p1, "setFocusedTask-alreadyTop"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 22
    iget-object v3, v3, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 23
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v3

    if-nez v3, :cond_7

    .line 24
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 25
    iget-object v3, v3, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 26
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 27
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 28
    iget-object v3, v3, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v4, 0x3

    .line 29
    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object v3

    goto :goto_1

    :cond_7
    :goto_0
    move-object v3, v2

    :goto_1
    const/4 v4, 0x1

    if-eqz v3, :cond_8

    .line 30
    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 31
    :cond_8
    const-string/jumbo p1, "setFocusedTask"

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz v3, :cond_9

    .line 32
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 33
    iget-object p2, p2, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 34
    invoke-virtual {p2, v3, v2, v2, v2}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 35
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    goto :goto_2

    :cond_a
    if-eqz p2, :cond_b

    .line 36
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 38
    iget-boolean v0, v0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v0, :cond_b

    .line 39
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 41
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_b
    :goto_2
    if-eqz v3, :cond_c

    if-nez p1, :cond_c

    .line 42
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->abort()V

    :cond_c
    return-void
.end method

.method public final setFrontActivityScreenCompatMode(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    .line 4
    .line 5
    const-string/jumbo v2, "setFrontActivityScreenCompatMode"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-nez v1, :cond_1

    .line 33
    .line 34
    const-string p0, "ActivityTaskManager"

    .line 35
    .line 36
    const-string/jumbo p1, "setFrontActivityScreenCompatMode failed: no top activity"

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :try_start_1
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 50
    .line 51
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 54
    .line 55
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 56
    .line 57
    .line 58
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda28;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 11
    .line 12
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 13
    .line 14
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v0, p0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 12
    .line 13
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 14
    .line 15
    if-eq v1, v4, :cond_1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 34
    .line 35
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v5, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;

    .line 41
    .line 42
    const/4 v6, 0x2

    .line 43
    invoke-direct {v5, v6, v4}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 47
    .line 48
    .line 49
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 50
    .line 51
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iput-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 66
    .line 67
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    iget-object v1, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 72
    .line 73
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 74
    .line 75
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 76
    .line 77
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 78
    .line 79
    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 84
    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 95
    .line 96
    .line 97
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 98
    .line 99
    if-eqz v1, :cond_7

    .line 100
    .line 101
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 102
    .line 103
    if-eqz v4, :cond_6

    .line 104
    .line 105
    iget-object v4, v4, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 106
    .line 107
    if-eqz v4, :cond_6

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 111
    .line 112
    :goto_1
    if-eqz v4, :cond_7

    .line 113
    .line 114
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 115
    .line 116
    .line 117
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 118
    .line 119
    if-eqz v1, :cond_8

    .line 120
    .line 121
    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 122
    .line 123
    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 124
    .line 125
    if-eq v4, v1, :cond_8

    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 128
    .line 129
    invoke-virtual {v1, v4}, Landroid/app/ActivityManagerInternal;->sendForegroundProfileChanged(I)V

    .line 130
    .line 131
    .line 132
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 133
    .line 134
    if-eqz v1, :cond_c

    .line 135
    .line 136
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 137
    .line 138
    if-eqz v4, :cond_c

    .line 139
    .line 140
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 141
    .line 142
    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 143
    .line 144
    if-ne v4, v5, :cond_c

    .line 145
    .line 146
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 147
    .line 148
    if-ne v4, v5, :cond_c

    .line 149
    .line 150
    if-eq p1, v1, :cond_c

    .line 151
    .line 152
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 153
    .line 154
    const-string/jumbo v1, "notifyMultiWindowChanged() focus changed\n[Activity] prev: "

    .line 155
    .line 156
    .line 157
    const-class v4, Lcom/android/server/wm/ActivityManagerPerformance;

    .line 158
    .line 159
    monitor-enter v4

    .line 160
    :try_start_0
    sget-boolean v5, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 161
    .line 162
    if-eqz v5, :cond_b

    .line 163
    .line 164
    sget-object v5, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 165
    .line 166
    if-ne v5, p1, :cond_9

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_9
    sget-boolean v5, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 170
    .line 171
    if-eqz v5, :cond_a

    .line 172
    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 179
    .line 180
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ", cur: "

    .line 184
    .line 185
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const-string v5, "ActivityManagerPerformance"

    .line 196
    .line 197
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 201
    .line 202
    if-eqz v1, :cond_a

    .line 203
    .line 204
    new-instance v1, Ljava/lang/Exception;

    .line 205
    .line 206
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :catchall_0
    move-exception p0

    .line 214
    goto :goto_5

    .line 215
    :cond_a
    :goto_3
    sput-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .line 217
    monitor-exit v4

    .line 218
    goto :goto_6

    .line 219
    :cond_b
    :goto_4
    monitor-exit v4

    .line 220
    goto :goto_6

    .line 221
    :goto_5
    monitor-exit v4

    .line 222
    throw p0

    .line 223
    :cond_c
    :goto_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 224
    .line 225
    if-eqz v1, :cond_d

    .line 226
    .line 227
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 228
    .line 229
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 230
    .line 231
    .line 232
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 233
    .line 234
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 235
    .line 236
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 237
    .line 238
    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 239
    .line 240
    const/4 v4, 0x0

    .line 241
    if-eqz v1, :cond_e

    .line 242
    .line 243
    invoke-virtual {v1, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_e

    .line 248
    .line 249
    move v1, v2

    .line 250
    goto :goto_7

    .line 251
    :cond_e
    move v1, v4

    .line 252
    :goto_7
    if-nez v1, :cond_12

    .line 253
    .line 254
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 255
    .line 256
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_f

    .line 261
    .line 262
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 263
    .line 264
    invoke-virtual {v5, v4, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 265
    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_f
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    if-nez v5, :cond_11

    .line 273
    .line 274
    const/16 v5, 0x18

    .line 275
    .line 276
    if-eqz v3, :cond_10

    .line 277
    .line 278
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 279
    .line 280
    iget v7, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 281
    .line 282
    iget-object v8, v6, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 283
    .line 284
    invoke-virtual {v8, v5, v7, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    iget-object v7, v6, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 289
    .line 290
    invoke-virtual {v6, v7, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 294
    .line 295
    .line 296
    :cond_10
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 297
    .line 298
    iget v6, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 299
    .line 300
    iget-object v7, v4, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 301
    .line 302
    invoke-virtual {v7, v5, v6, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    iget-object v5, v4, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 307
    .line 308
    invoke-virtual {v4, v5, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 312
    .line 313
    .line 314
    :cond_11
    :goto_8
    move v4, v1

    .line 315
    :cond_12
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 316
    .line 317
    if-eqz v1, :cond_13

    .line 318
    .line 319
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 320
    .line 321
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 322
    .line 323
    iget v1, v1, Landroid/view/DisplayInfo;->flags:I

    .line 324
    .line 325
    const v2, 0x8000

    .line 326
    .line 327
    .line 328
    and-int/2addr v1, v2

    .line 329
    if-nez v1, :cond_14

    .line 330
    .line 331
    :cond_13
    if-eq v0, v3, :cond_14

    .line 332
    .line 333
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 334
    .line 335
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 336
    .line 337
    invoke-virtual {v1, v0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 338
    .line 339
    .line 340
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 341
    .line 342
    .line 343
    move-result-wide v1

    .line 344
    iput-wide v1, v0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    .line 345
    .line 346
    if-eqz v4, :cond_15

    .line 347
    .line 348
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 349
    .line 350
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 351
    .line 352
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;

    .line 353
    .line 354
    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZLcom/android/server/wm/ActivityRecord;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    .line 359
    .line 360
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 361
    .line 362
    iget-object v0, v0, Lcom/android/server/wm/VrController;->mVrService:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 363
    .line 364
    if-eqz v0, :cond_16

    .line 365
    .line 366
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 367
    .line 368
    .line 369
    :cond_16
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 370
    .line 371
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 372
    .line 373
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    filled-new-array {v0, v1, p2}, [Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object p2

    .line 381
    const/16 v0, 0x755b

    .line 382
    .line 383
    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 384
    .line 385
    .line 386
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    .line 387
    .line 388
    invoke-virtual {p2}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-nez v0, :cond_17

    .line 393
    .line 394
    goto :goto_9

    .line 395
    :cond_17
    iput-object p1, p2, Lcom/android/server/wm/PersonaActivityHelper;->mLastReceivedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 396
    .line 397
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 398
    .line 399
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-nez v0, :cond_18

    .line 404
    .line 405
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {p2, v0}, Lcom/android/server/wm/PersonaActivityHelper;->isLockSecureFolderExceptionalCase(Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-eqz v0, :cond_19

    .line 412
    .line 413
    :cond_18
    iput-object p1, p2, Lcom/android/server/wm/PersonaActivityHelper;->mLastResumedSFActivity:Lcom/android/server/wm/ActivityRecord;

    .line 414
    .line 415
    :cond_19
    iget-object p2, p2, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    .line 416
    .line 417
    const/16 v0, 0x25d

    .line 418
    .line 419
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 427
    .line 428
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 429
    .line 430
    .line 431
    :goto_9
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    .line 432
    .line 433
    if-eqz p2, :cond_1a

    .line 434
    .line 435
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 436
    .line 437
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->startAppLockActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 438
    .line 439
    .line 440
    :cond_1a
    return-void
.end method

.method public final setLockScreenShown(ZZ)V
    .locals 8

    .line 1
    const-string v0, "android.permission.DEVICE_POWER"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 20
    .line 21
    if-eq v3, p1, :cond_0

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 24
    .line 25
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-direct {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 42
    .line 43
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    and-int/2addr v3, v4

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 56
    .line 57
    and-int/lit8 v3, v3, -0x2

    .line 58
    .line 59
    iput v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 62
    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->scheduleUpdateOomAdj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :cond_1
    const-wide/16 v5, 0x20

    .line 71
    .line 72
    :try_start_1
    const-string/jumbo v3, "setLockScreenShown"

    .line 73
    .line 74
    .line 75
    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 79
    .line 80
    new-instance v7, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;

    .line 81
    .line 82
    invoke-direct {v7, p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v7}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->maybeHideLockedProfileActivityLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    .line 90
    .line 91
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    .line 96
    .line 97
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 98
    .line 99
    if-eqz p2, :cond_2

    .line 100
    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    .line 104
    .line 105
    iget-object v1, p2, Lcom/android/server/wm/MultiWindowFoldController;->mH:Lcom/android/server/wm/MultiWindowFoldController$H;

    .line 106
    .line 107
    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    iget-object p2, p2, Lcom/android/server/wm/MultiWindowFoldController;->mH:Lcom/android/server/wm/MultiWindowFoldController$H;

    .line 114
    .line 115
    invoke-virtual {p2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    .line 117
    .line 118
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 123
    .line 124
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;

    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZI)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :catchall_1
    move-exception p0

    .line 135
    :try_start_3
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 136
    .line 137
    .line 138
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 148
    .line 149
    const-string p1, "Requires permission android.permission.DEVICE_POWER"

    .line 150
    .line 151
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0
.end method

.method public final setLongLiveTask(IZ)Landroid/util/Pair;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    new-instance p0, Landroid/util/Pair;

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 34
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->dedicateTo(Lcom/android/server/wm/Task;Z)V

    .line 36
    .line 37
    .line 38
    new-instance p0, Landroid/util/Pair;

    .line 39
    .line 40
    iget-object p2, p1, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    iget-object p2, p2, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p2, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 47
    .line 48
    :cond_1
    iget-object p2, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 49
    .line 50
    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final setOrientationControlDefault(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "setOrientationControlDefault()"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->setDefaultEnabled(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final setOrientationControlPolicy(ILjava/lang/String;I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    const-string/jumbo v0, "setOrientationControlPolicy()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 21
    .line 22
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {v2, p2, p1, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 31
    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 33
    .line 34
    .line 35
    monitor-enter p3

    .line 36
    :try_start_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    .line 37
    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->existsEnabledUserOverride()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput-boolean v0, v1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldApplyIgnoreOrientationRequestDueToMultiStar:Z

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setIgnoreOrientationRequestOverrideIfNeeded()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 59
    .line 60
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;

    .line 61
    .line 62
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;-><init>(ILjava/lang/String;Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 66
    .line 67
    .line 68
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :catchall_1
    move-exception p0

    .line 79
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    throw p0

    .line 81
    :cond_1
    :goto_2
    return-void
.end method

.method public final setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    .line 4
    .line 5
    const-string/jumbo v2, "setPackageAskScreenCompat"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    and-int/lit8 p2, v1, -0x2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    or-int/lit8 p2, v1, 0x1

    .line 29
    .line 30
    :goto_0
    if-eq v1, p2, :cond_2

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 50
    .line 51
    .line 52
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method public final setPackageScreenCompatMode(Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    .line 4
    .line 5
    const-string/jumbo v2, "setPackageScreenCompatMode"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-interface {v1, p1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    if-nez v1, :cond_0

    .line 36
    .line 37
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string/jumbo p2, "setPackageScreenCompatMode failed: unknown package "

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "ActivityTaskManager"

    .line 53
    .line 54
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 59
    .line 60
    .line 61
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public final setPersistentVrThread(I)V
    .locals 6

    .line 1
    const-string v0, "android.permission.RESTRICTED_VR_ACCESS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_6

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 15
    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 29
    .line 30
    iget v3, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 31
    .line 32
    and-int/lit8 v3, v3, 0x2

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v3, v4

    .line 40
    :goto_0
    const-string v5, "VrController"

    .line 41
    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    const-string p0, "Persistent VR thread may only be set in persistent VR mode!"

    .line 45
    .line 46
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    if-nez v2, :cond_2

    .line 51
    .line 52
    const-string p0, "Persistent VR thread not set, calling process doesn\'t exist!"

    .line 53
    .line 54
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    if-eqz p1, :cond_4

    .line 59
    .line 60
    invoke-static {v1, p1}, Landroid/os/Process;->isThreadInProcess(II)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string p1, "VR thread does not belong to process"

    .line 70
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_4
    :goto_1
    iget v1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 76
    .line 77
    and-int/lit8 v1, v1, 0x2

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    const-string p0, "VrController"

    .line 86
    .line 87
    const-string p1, "Failed to set persistent VR thread, system not in persistent VR mode."

    .line 88
    .line 89
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string p1, "Permission Denial: setPersistentVrThread() from pid="

    .line 106
    .line 107
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string p1, ", uid="

    .line 111
    .line 112
    const-string v0, " requires android.permission.RESTRICTED_VR_ACCESS"

    .line 113
    .line 114
    const-string v1, "ActivityTaskManager"

    .line 115
    .line 116
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    new-instance p1, Ljava/lang/SecurityException;

    .line 121
    .line 122
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p1
.end method

.method public final setProcessAnimatingWhileDozing(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessRecord;->setRunningRemoteAnimation(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 21
    .line 22
    const/4 v1, 0x6

    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 27
    .line 28
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-wide/16 v0, 0x7d0

    .line 33
    .line 34
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 35
    .line 36
    .line 37
    const-wide/16 p0, 0x20

    .line 38
    .line 39
    const-string/jumbo v0, "requestWakefulnessAnimating"

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public setRecentTasks(Lcom/android/server/wm/RecentTasks;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V
    .locals 9

    .line 1
    const-string v0, "Can\'t call setRunningRemoteTransition from a process (pid="

    .line 2
    .line 3
    const-string/jumbo v1, "setRunningRemoteTransition: no process for "

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v4, v2, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    .line 14
    .line 15
    iget-object v5, v4, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    .line 16
    .line 17
    monitor-enter v5

    .line 18
    :try_start_0
    iget-object v6, v4, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;

    .line 29
    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    iget-boolean v7, v6, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mNeedReport:Z

    .line 33
    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    iput-boolean v3, v6, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mNeedReport:Z

    .line 37
    .line 38
    iget-object v4, v4, Lcom/android/server/wm/TransitionController$RemotePlayer;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 41
    .line 42
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    monitor-exit v5

    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0

    .line 54
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 55
    .line 56
    const-string v5, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    .line 57
    .line 58
    const-string/jumbo v6, "setRunningRemoteTransition"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 73
    .line 74
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 75
    .line 76
    .line 77
    monitor-enter v6

    .line 78
    :try_start_1
    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    if-eqz v7, :cond_3

    .line 83
    .line 84
    iget v7, v7, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 85
    .line 86
    const/4 v8, 0x1

    .line 87
    and-int/2addr v7, v8

    .line 88
    if-eqz v7, :cond_3

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    if-nez p0, :cond_2

    .line 95
    .line 96
    const-string p0, "ActivityTaskManager"

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catchall_1
    move-exception p0

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    :try_start_2
    iget-object p1, v2, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    .line 121
    .line 122
    invoke-virtual {p1, p0, v8, v3}, Lcom/android/server/wm/TransitionController$RemotePlayer;->update(Lcom/android/server/wm/WindowProcessController;ZZ)V

    .line 123
    .line 124
    .line 125
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_3
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p1, " uid="

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p1, ") which isn\'t itself running a remote transition."

    .line 147
    .line 148
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    const-string p1, "ActivityTaskManager"

    .line 156
    .line 157
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    new-instance p1, Ljava/lang/SecurityException;

    .line 161
    .line 162
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :goto_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 168
    .line 169
    .line 170
    throw p0
.end method

.method public final setSsecureHiddenAppsPackages(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->setSsecureHiddenAppsPackages(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setTaskResizeable(II)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setTaskResizeable: taskId="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7
    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const-string p0, "ActivityTaskManager"

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " not found"

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :try_start_1
    iget p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 51
    .line 52
    if-ne p1, p2, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iput p2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription$1()V

    .line 68
    .line 69
    .line 70
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 77
    .line 78
    .line 79
    throw p0
.end method

.method public final setUseLetterbox(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string/jumbo v0, "setUseLetterbox()"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    sget p1, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$Preset;->DEFAULT:I

    .line 20
    .line 21
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 24
    .line 25
    .line 26
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateAppCompatConfigurationPreset(I)V

    .line 28
    .line 29
    .line 30
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 43
    .line 44
    .line 45
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 46
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    :goto_2
    return-void
.end method

.method public final setUserMinAspectRatioOverrideCode(Ljava/lang/String;II)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->setUserMinAspectRatio(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const-string p1, "ActivityTaskManager"

    .line 18
    .line 19
    const-string p3, "Failed to set user min aspect ratio"

    .line 20
    .line 21
    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 25
    .line 26
    const-string/jumbo p1, "setUserMinAspectRatioOverrideCode"

    .line 27
    .line 28
    .line 29
    const/4 p3, 0x1

    .line 30
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/android/server/wm/MultiTaskingAppCompatController;->removeTaskWithoutRemoveFromRecents(ILjava/lang/String;ZLjava/util/List;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-ne v1, p1, :cond_1

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final setVrThread(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7
    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 21
    .line 22
    iget v3, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 23
    .line 24
    and-int/lit8 v3, v3, 0x2

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    move v3, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v3, v5

    .line 33
    :goto_0
    const-string v6, "VrController"

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    const-string p0, "VR thread cannot be set in persistent VR mode!"

    .line 38
    .line 39
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_5

    .line 43
    :cond_1
    if-nez v2, :cond_2

    .line 44
    .line 45
    const-string p0, "Persistent VR thread not set, calling process doesn\'t exist!"

    .line 46
    .line 47
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_2
    if-eqz p1, :cond_4

    .line 52
    .line 53
    invoke-static {v1, p1}, Landroid/os/Process;->isThreadInProcess(II)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string p1, "VR thread does not belong to process"

    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_4
    :goto_1
    iget v1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 69
    .line 70
    and-int/2addr v1, v4

    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_5
    move v4, v5

    .line 75
    :goto_2
    if-nez v4, :cond_6

    .line 76
    .line 77
    const-string p0, "VR thread cannot be set when not in VR mode!"

    .line 78
    .line 79
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_6
    iget v1, v2, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    .line 84
    .line 85
    invoke-virtual {p0, p1, v1, v5}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    .line 86
    .line 87
    .line 88
    :goto_3
    if-lez p1, :cond_7

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_7
    move p1, v5

    .line 92
    :goto_4
    iput p1, v2, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    .line 93
    .line 94
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method public final setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 21
    .line 22
    iput-object v2, v1, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 23
    .line 24
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    .line 25
    .line 26
    iput-object v2, v1, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    .line 27
    .line 28
    iget-boolean v2, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    xor-int/2addr v2, v3

    .line 32
    iput-boolean v2, v1, Lcom/android/server/wm/TransitionController;->mIsWaitingForDisplayEnabled:Z

    .line 33
    .line 34
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerService$4;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TransitionController;->setSyncEngine(Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/android/window/flags/Flags;->transitReadyTracking()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iput-boolean v2, v1, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 51
    .line 52
    iput-object p1, v1, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 60
    .line 61
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 69
    .line 70
    iput v3, v1, Landroid/content/res/Configuration;->seq:I

    .line 71
    .line 72
    iput v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 80
    .line 81
    iput-object p1, v1, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 84
    .line 85
    iput-object p1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 88
    .line 89
    iput-object p1, v1, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 90
    .line 91
    iget-object v2, v1, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 92
    .line 93
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 94
    .line 95
    iput-object v2, v1, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 98
    .line 99
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 103
    .line 104
    iput-object p1, v1, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 105
    .line 106
    new-instance v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 107
    .line 108
    invoke-direct {v2, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 109
    .line 110
    .line 111
    iput-object v2, v1, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMWControllers:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_0

    .line 124
    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Lcom/android/server/wm/IController;

    .line 130
    .line 131
    invoke-interface {v2, p1}, Lcom/android/server/wm/IController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catchall_0
    move-exception p0

    .line 136
    goto :goto_1

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    .line 138
    .line 139
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 140
    .line 141
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :try_start_1
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 143
    .line 144
    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 145
    .line 146
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :catchall_1
    move-exception p0

    .line 153
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    :try_start_4
    throw p0

    .line 155
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 157
    .line 158
    .line 159
    throw p0
.end method

.method public final startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v8, p2

    .line 3
    .line 4
    invoke-virtual {p0, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "startActivities"

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    move/from16 v4, p8

    .line 22
    .line 23
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v11

    .line 27
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SUPPORT_APP_JUMP_BLOCK:Z

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    move-object/from16 v2, p2

    .line 46
    .line 47
    move v3, v11

    .line 48
    move-object/from16 v7, p7

    .line 49
    .line 50
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/core/AppJumpBlockTool;->createAppBlockIntent(Landroid/content/Context;Ljava/lang/String;IIILjava/util/List;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    new-array v7, v2, [Landroid/content/Intent;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    aput-object v1, v7, v2

    .line 61
    .line 62
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    filled-new-array {v1}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 77
    .line 78
    invoke-static/range {p7 .. p7}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    const/4 v13, 0x0

    .line 83
    sget-object v14, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 84
    .line 85
    const/4 v2, -0x1

    .line 86
    const/4 v3, 0x0

    .line 87
    const/4 v4, -0x1

    .line 88
    const-string/jumbo v12, "startActivities"

    .line 89
    .line 90
    .line 91
    move-object/from16 v1, p1

    .line 92
    .line 93
    move-object/from16 v5, p2

    .line 94
    .line 95
    move-object/from16 v6, p3

    .line 96
    .line 97
    move-object v8, v9

    .line 98
    move-object/from16 v9, p6

    .line 99
    .line 100
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;)I

    .line 101
    .line 102
    .line 103
    const/16 v0, -0x67

    .line 104
    .line 105
    return v0

    .line 106
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 107
    .line 108
    invoke-static/range {p7 .. p7}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    const/4 v13, 0x0

    .line 113
    sget-object v14, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 114
    .line 115
    const/4 v2, -0x1

    .line 116
    const/4 v3, 0x0

    .line 117
    const/4 v4, -0x1

    .line 118
    const-string/jumbo v12, "startActivities"

    .line 119
    .line 120
    .line 121
    move-object/from16 v1, p1

    .line 122
    .line 123
    move-object/from16 v5, p2

    .line 124
    .line 125
    move-object/from16 v6, p3

    .line 126
    .line 127
    move-object/from16 v7, p4

    .line 128
    .line 129
    move-object/from16 v8, p5

    .line 130
    .line 131
    move-object/from16 v9, p6

    .line 132
    .line 133
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    return v0
.end method

.method public final startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .locals 15

    .line 1
    const-string/jumbo v0, "ro.csc.sales_code"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "VZW"

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string v0, "android.intent.action.MAIN"

    .line 25
    .line 26
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    if-eqz p11, :cond_0

    .line 37
    .line 38
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isActiveApplaunch()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isMlLaunch()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/4 v1, -0x1

    .line 55
    if-ne v0, v1, :cond_0

    .line 56
    .line 57
    move-object v0, p0

    .line 58
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const-string/jumbo v2, "sem_wifi"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    const-string v2, "ActivityTaskManager"

    .line 72
    .line 73
    const-string/jumbo v3, "start wifioffload check"

    .line 74
    .line 75
    .line 76
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->checkAppForWiFiOffloading(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move-object v0, p0

    .line 92
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    const/4 v14, 0x1

    .line 97
    move-object v1, p0

    .line 98
    move-object/from16 v2, p1

    .line 99
    .line 100
    move-object/from16 v3, p2

    .line 101
    .line 102
    move-object/from16 v4, p3

    .line 103
    .line 104
    move-object/from16 v5, p4

    .line 105
    .line 106
    move-object/from16 v6, p5

    .line 107
    .line 108
    move-object/from16 v7, p6

    .line 109
    .line 110
    move-object/from16 v8, p7

    .line 111
    .line 112
    move/from16 v9, p8

    .line 113
    .line 114
    move/from16 v10, p9

    .line 115
    .line 116
    move-object/from16 v11, p10

    .line 117
    .line 118
    move-object/from16 v12, p11

    .line 119
    .line 120
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    return v0
.end method

.method public final startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v2, Landroid/app/WaitResult;

    .line 7
    .line 8
    invoke-direct {v2}, Landroid/app/WaitResult;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v3, "startActivityAndWait"

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    move/from16 v6, p12

    .line 26
    .line 27
    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 32
    .line 33
    move-object v5, p4

    .line 34
    invoke-virtual {v0, p4, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 39
    .line 40
    move-object v5, p1

    .line 41
    iput-object v5, v3, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 42
    .line 43
    iput-object v1, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 44
    .line 45
    move-object v1, p3

    .line 46
    iput-object v1, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 47
    .line 48
    move-object v1, p5

    .line 49
    iput-object v1, v3, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 50
    .line 51
    move-object v1, p6

    .line 52
    iput-object v1, v3, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 53
    .line 54
    move-object v1, p7

    .line 55
    iput-object v1, v3, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 56
    .line 57
    move v1, p8

    .line 58
    iput v1, v3, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 59
    .line 60
    move/from16 v1, p9

    .line 61
    .line 62
    iput v1, v3, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 63
    .line 64
    invoke-static/range {p11 .. p11}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 69
    .line 70
    iput-object v1, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 71
    .line 72
    iput v4, v3, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 73
    .line 74
    move-object/from16 v1, p10

    .line 75
    .line 76
    iput-object v1, v3, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 77
    .line 78
    iput-object v2, v3, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 81
    .line 82
    .line 83
    return-object v2
.end method

.method public final startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I
    .locals 3

    .line 1
    const-string p1, "Calling activity in uid "

    .line 2
    .line 3
    const-string p2, "Called with bad activity token: "

    .line 4
    .line 5
    iget-object p9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p9

    .line 11
    if-eqz p5, :cond_c

    .line 12
    .line 13
    :try_start_0
    invoke-static {p5}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_b

    .line 18
    .line 19
    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 20
    .line 21
    if-eqz p2, :cond_a

    .line 22
    .line 23
    const-string p2, "android.permission.START_ACTIVITY_AS_CALLER"

    .line 24
    .line 25
    invoke-static {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 32
    .line 33
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "android"

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 44
    .line 45
    iget p2, p2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 46
    .line 47
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    const/16 v1, 0x3e8

    .line 52
    .line 53
    if-eq p2, v1, :cond_2

    .line 54
    .line 55
    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 56
    .line 57
    iget p2, p2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 58
    .line 59
    iget v1, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 60
    .line 61
    if-ne p2, v1, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 65
    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 72
    .line 73
    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, " must be system uid or original calling uid "

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget p1, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto/16 :goto_3

    .line 98
    .line 99
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 100
    .line 101
    const-string p1, "Must be called from an activity that is declared in the android package"

    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_2
    :goto_0
    if-eqz p11, :cond_5

    .line 108
    .line 109
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p3}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-nez p1, :cond_3

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 123
    .line 124
    const-string p1, "Selector not allowed with ignoreTargetSecurity"

    .line 125
    .line 126
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 131
    .line 132
    const-string p1, "Component must be specified with ignoreTargetSecurity"

    .line 133
    .line 134
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    :cond_5
    :goto_1
    iget p1, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 139
    .line 140
    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 141
    .line 142
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrChildActivity()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    monitor-exit p9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 150
    .line 151
    .line 152
    const/16 p9, -0x2710

    .line 153
    .line 154
    if-ne p12, p9, :cond_6

    .line 155
    .line 156
    iget-object p9, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 157
    .line 158
    iget p9, p9, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 159
    .line 160
    invoke-static {p9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 161
    .line 162
    .line 163
    move-result p12

    .line 164
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 165
    .line 166
    const-string/jumbo p9, "startActivityAsCaller"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, p3, p9}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 174
    .line 175
    iput p1, p3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 176
    .line 177
    iput-object p2, p3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 178
    .line 179
    iput-object v1, p3, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 180
    .line 181
    iput-object p4, p3, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 182
    .line 183
    iput-object p5, p3, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 184
    .line 185
    iput-object p6, p3, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 186
    .line 187
    iput p7, p3, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 188
    .line 189
    iput p8, p3, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 190
    .line 191
    invoke-static {p10}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    const/4 p3, 0x1

    .line 196
    if-nez p2, :cond_7

    .line 197
    .line 198
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    goto :goto_2

    .line 207
    :cond_7
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    .line 208
    .line 209
    .line 210
    move-result p4

    .line 211
    if-nez p4, :cond_8

    .line 212
    .line 213
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 214
    .line 215
    .line 216
    :cond_8
    :goto_2
    new-instance p3, Lcom/android/server/wm/SafeActivityOptions;

    .line 217
    .line 218
    invoke-direct {p3, p2}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 219
    .line 220
    .line 221
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 222
    .line 223
    iput-object p3, p2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 224
    .line 225
    iput p12, p2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 226
    .line 227
    iput-boolean p11, p2, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 228
    .line 229
    if-eqz v2, :cond_9

    .line 230
    .line 231
    const/4 p1, 0x0

    .line 232
    :cond_9
    iput p1, p2, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 233
    .line 234
    sget-object p1, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    .line 235
    .line 236
    iput-object p1, p2, Lcom/android/server/wm/ActivityStarter$Request;->forcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    return p0

    .line 243
    :cond_a
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 244
    .line 245
    const-string p1, "Called without a process attached to activity"

    .line 246
    .line 247
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw p0

    .line 251
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    .line 252
    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p0

    .line 269
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    .line 270
    .line 271
    const-string p1, "Must be called from an activity"

    .line 272
    .line 273
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw p0

    .line 277
    :goto_3
    monitor-exit p9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 279
    .line 280
    .line 281
    throw p0
.end method

.method public final startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .locals 14

    const/4 v13, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    .line 1
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I

    move-result v0

    return v0
.end method

.method public final startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v2, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v9, p10

    .line 2
    iget v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    const/4 v4, 0x6

    const-string v5, "ActivityTaskManager"

    const/4 v7, 0x7

    if-ge v3, v4, :cond_0

    iget v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    if-lez v3, :cond_3

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isPossibleToStart(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4
    const-string v0, ""

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 7
    :goto_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v6, :cond_2

    const/16 v2, 0x2000

    .line 8
    :try_start_0
    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    const-string v2, "No such package"

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v6, :cond_2

    .line 11
    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v0, -0x66

    return v0

    .line 13
    :cond_3
    invoke-static/range {p11 .. p11}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v8

    .line 14
    invoke-virtual {v1, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v4, "startActivityAsUser"

    invoke-static {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 16
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_5

    .line 17
    invoke-static {}, Lcom/android/sdksandbox/flags/Flags;->sandboxActivitySdkBasedContext()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 18
    invoke-static {v3, v2}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;->isSdkSandboxActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v2, v3}, Landroid/content/Intent;->isSandboxActivity(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 20
    :goto_2
    const-class v3, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    invoke-static {v3}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 22
    invoke-interface {v3, v2, v6, v10}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->enforceAllowedToHostSandboxedActivity(Landroid/content/Intent;ILjava/lang/String;)V

    .line 23
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 24
    const-class v3, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    invoke-static {v3}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    if-eqz v3, :cond_6

    .line 25
    invoke-interface {v3, v2}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->enforceAllowedToStartActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 26
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SdkSandboxManagerLocal not found when starting an activity from an SDK sandbox uid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_7
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startActivityAsUser: callingPid="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", callingUid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", caller="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    const-string/jumbo v20, "startActivityAsUser"

    move-object/from16 v17, v3

    move/from16 v18, p12

    move/from16 v22, p13

    .line 33
    invoke-virtual/range {v17 .. v22}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IILjava/lang/String;IZ)I

    move-result v3

    .line 34
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    if-eqz v2, :cond_8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    const-string v6, "android.app.action.PROVISION_MANAGED_PROFILE"

    .line 36
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "android.app.action.PROVISION_MANAGED_USER"

    .line 37
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "android.app.action.PROVISION_MANAGED_DEVICE"

    .line 38
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "android.app.action.PROVISION_MANAGED_SHAREABLE_DEVICE"

    .line 39
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "com.android.managedprovisioning.action.RESUME_PROVISIONING"

    .line 40
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    move-object/from16 v17, v4

    move-object/from16 v18, v8

    goto :goto_5

    .line 41
    :cond_9
    :goto_4
    const-string v6, "com.samsung.knox.container.requestId"

    const/4 v7, -0x1

    move-object/from16 v17, v4

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object/from16 v18, v8

    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " KnoxContainerManager.EXTRA_REQUEST_ID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " caller : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "PersonaActivityHelper"

    .line 44
    invoke-static {v8, v7, v9}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v8, -0x1

    if-eq v4, v8, :cond_b

    const/16 v4, 0x3e8

    if-ne v7, v4, :cond_a

    goto :goto_6

    .line 45
    :cond_a
    invoke-virtual {v2, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_6

    .line 46
    :cond_b
    :goto_5
    invoke-virtual {v5}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    .line 47
    :goto_6
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 49
    sget-object v5, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v4, v3, v5, v2, v10}, Lcom/android/server/DualAppManagerService;->startDAChooserActivity(IIILandroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_c

    move-object v2, v5

    const/16 v16, 0x0

    goto :goto_7

    :cond_c
    move-object/from16 v16, p5

    .line 51
    :goto_7
    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 52
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 53
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 54
    :cond_d
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    :goto_8
    if-eqz v10, :cond_e

    if-eqz v4, :cond_e

    .line 55
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 56
    invoke-static {v4}, Lcom/android/server/DualAppManagerService;->shouldForwardToOwner(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v3, 0x0

    :cond_e
    move-object v9, v2

    move v7, v3

    move-object/from16 v8, v16

    goto :goto_9

    :cond_f
    move-object/from16 v8, p5

    move-object v9, v2

    move v7, v3

    .line 57
    :goto_9
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SUPPORT_APP_JUMP_BLOCK:Z

    if-eqz v2, :cond_11

    .line 58
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 59
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object/from16 v3, p2

    move-object/from16 v15, v17

    move v4, v7

    move/from16 v23, v7

    move-object v7, v9

    move-object v14, v8

    move-object/from16 v24, v18

    move/from16 v8, p8

    move-object/from16 v25, v9

    move-object/from16 v9, p11

    .line 60
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/core/AppJumpBlockTool;->createAppBlockIntent(Landroid/content/Context;Ljava/lang/String;IIILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 61
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 62
    invoke-virtual {v1, v2, v15}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 63
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v0, v2, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 64
    iput-object v10, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 65
    iput-object v11, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 66
    iput-object v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 67
    iput-object v12, v2, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 68
    iput-object v13, v2, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    move/from16 v3, p8

    .line 69
    iput v3, v2, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    move/from16 v4, p9

    .line 70
    iput v4, v2, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    move-object/from16 v5, p10

    .line 71
    iput-object v5, v2, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    move-object/from16 v6, v24

    .line 72
    iput-object v6, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    move/from16 v7, v23

    .line 73
    iput v7, v2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 74
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    const/16 v0, -0x67

    return v0

    :cond_10
    move/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p10

    move-object v8, v14

    move-object v2, v15

    move/from16 v7, v23

    move-object/from16 v6, v24

    goto :goto_a

    :cond_11
    move-object/from16 v5, p10

    move-object/from16 v25, v9

    move v3, v14

    move v4, v15

    move-object/from16 v2, v17

    move-object/from16 v6, v18

    .line 75
    :goto_a
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    move-object/from16 v9, v25

    .line 76
    invoke-virtual {v1, v9, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 77
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v0, v2, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 78
    iput-object v10, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 79
    iput-object v11, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 80
    iput-object v8, v2, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 81
    iput-object v12, v2, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 82
    iput-object v13, v2, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 83
    iput v3, v2, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 84
    iput v4, v2, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 85
    iput-object v5, v2, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 86
    iput-object v6, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 87
    iput v7, v2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 88
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    return v0
.end method

.method public final startActivityForCoverLauncher(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityForCoverLauncherAsUser(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final startActivityForCoverLauncherAsUser(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p3, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 10
    .line 11
    const-string/jumbo v2, "startActivityForCoverLauncher"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string v0, "ActivityTaskManager"

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-string p0, "Intent for startActivityForCoverLauncher is null, requestReason="

    .line 22
    .line 23
    invoke-static {p0, p2, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "Launch application for CoverLauncher : "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " for user="

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, ", requestReason="

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {v1, p2, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/4 p2, 0x0

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    throw p2

    .line 71
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 72
    .line 73
    invoke-virtual {p0, p2, p2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    throw p2
.end method

.method public final startActivityForDexRestart(I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "startActivityForDexRestart"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {p0, p1, v4, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const-string p0, "ActivityTaskManager"

    .line 28
    .line 29
    const-string/jumbo p1, "startActivityForDexRestart : invalid task"

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_2
    throw v3

    .line 46
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I
    .locals 2

    .line 1
    const-string v0, "android.permission.MANAGE_GAME_ACTIVITY"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2, p7}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo p7, "startActivityFromGameSession"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p4, p5, p8, p7}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p8

    .line 26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 31
    .line 32
    invoke-virtual {p0, p6, p7}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-object p7, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 37
    .line 38
    iput-object p1, p7, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 39
    .line 40
    iput p5, p7, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 41
    .line 42
    iput p4, p7, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 43
    .line 44
    invoke-virtual {p6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 49
    .line 50
    iput-object p1, p4, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p3, p4, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 53
    .line 54
    iput p8, p4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 65
    .line 66
    iput-object p1, p2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 67
    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 73
    .line 74
    iput p1, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 77
    .line 78
    .line 79
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    .line 82
    .line 83
    return p0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p1, "Permission Denial: startActivityFromGameSession() from pid="

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string p1, ", uid="

    .line 97
    .line 98
    const-string p2, " requires android.permission.MANAGE_GAME_ACTIVITY"

    .line 99
    .line 100
    const-string p3, "ActivityTaskManager"

    .line 101
    .line 102
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    new-instance p1, Ljava/lang/SecurityException;

    .line 107
    .line 108
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
.end method

.method public final startActivityFromRecents(ILandroid/os/Bundle;)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.START_TASKS_FROM_RECENTS"

    .line 4
    .line 5
    const-string/jumbo v2, "startActivityFromRecents()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    move v6, p1

    .line 31
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;Z)I

    .line 32
    .line 33
    .line 34
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    :try_start_1
    const-string p1, "ActivityTaskManager"

    .line 43
    .line 44
    const-string/jumbo p2, "startActivity: reason=startActivityFromRecents"

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v3, p4

    .line 6
    .line 7
    const-string/jumbo v2, "startActivityIntentSender"

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v3, v2}, Landroid/content/Intent;->removeExtendedFlags(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v1, "File descriptors passed in Intent"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    :goto_0
    instance-of v2, v1, Lcom/android/server/am/PendingIntentRecord;

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    .line 39
    .line 40
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 41
    .line 42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 43
    .line 44
    .line 45
    monitor-enter v2

    .line 46
    :try_start_0
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 65
    .line 66
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 67
    .line 68
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 69
    .line 70
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-ne v4, v5, :cond_2

    .line 75
    .line 76
    const/4 v4, 0x2

    .line 77
    iput v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 84
    .line 85
    .line 86
    const/4 v14, -0x1

    .line 87
    const/4 v15, -0x1

    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    move-object v0, v1

    .line 92
    move-object/from16 v1, p1

    .line 93
    .line 94
    move-object/from16 v3, p4

    .line 95
    .line 96
    move-object/from16 v4, p5

    .line 97
    .line 98
    move-object/from16 v5, p3

    .line 99
    .line 100
    move-object/from16 v8, p6

    .line 101
    .line 102
    move-object/from16 v9, p7

    .line 103
    .line 104
    move/from16 v10, p8

    .line 105
    .line 106
    move/from16 v11, p9

    .line 107
    .line 108
    move/from16 v12, p10

    .line 109
    .line 110
    move-object/from16 v13, p11

    .line 111
    .line 112
    invoke-virtual/range {v0 .. v15}, Lcom/android/server/am/PendingIntentRecord;->sendInner(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;II)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    return v0

    .line 117
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 123
    .line 124
    const-string v1, "Bad PendingIntent object"

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0
.end method

.method public final startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "startActivityWithConfig"

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p0, v1, v2, p12, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p12

    .line 22
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 23
    .line 24
    invoke-virtual {p0, p4, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 29
    .line 30
    iput-object p1, p4, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 31
    .line 32
    iput-object p2, p4, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p3, p4, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p5, p4, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p6, p4, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 39
    .line 40
    iput-object p7, p4, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 41
    .line 42
    iput p8, p4, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 43
    .line 44
    iput p9, p4, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 45
    .line 46
    iput-object p10, p4, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 47
    .line 48
    invoke-static {p11}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 53
    .line 54
    iput-object p1, p2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 55
    .line 56
    iput p12, p2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0
.end method

.method public final startAppLockService(Landroid/os/IBinder;Landroid/content/Intent;ZLjava/lang/String;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getAppLockLaunchingState(Landroid/os/IBinder;)[Z

    .line 12
    .line 13
    .line 14
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v1

    .line 17
    const-string v2, "ActivityTaskManagerServiceExt"

    .line 18
    .line 19
    const-string v3, "exception while querying AppLock Launching State"

    .line 20
    .line 21
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-eqz v1, :cond_6

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    aget-boolean v3, v1, v2

    .line 29
    .line 30
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppLockIsInMultiWindowMode:Z

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    aget-boolean v4, v1, v3

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    aget-boolean v1, v1, v5

    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-ne v5, v3, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v3, v2

    .line 52
    :goto_1
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 57
    .line 58
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v5, p1}, Lcom/android/internal/app/AppLockPolicy;->isAppLockBypassList(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    iget-object p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    if-nez v1, :cond_6

    .line 76
    .line 77
    :cond_3
    if-nez v1, :cond_4

    .line 78
    .line 79
    if-nez v4, :cond_4

    .line 80
    .line 81
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppLockIsInMultiWindowMode:Z

    .line 82
    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_6

    .line 98
    .line 99
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 100
    .line 101
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/android/internal/app/AppLockPolicy;->isManagedProfileUserId(I)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_6

    .line 126
    .line 127
    :cond_5
    if-nez v3, :cond_6

    .line 128
    .line 129
    invoke-virtual {p0, p2, p3, p4, v4}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->checkAppLockState(Landroid/content/Intent;ZLjava/lang/String;Z)V

    .line 130
    .line 131
    .line 132
    :cond_6
    :goto_2
    return-void
.end method

.method public final startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 5
    .line 6
    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    .line 7
    .line 8
    const-string/jumbo v2, "startAssistantActivity()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "startAssistantActivity"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p3, p4, p8, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 26
    .line 27
    invoke-virtual {p0, p5, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object p5, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 32
    .line 33
    iput p4, p5, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 34
    .line 35
    iput-object p1, p5, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p2, p5, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p6, p5, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p7}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 p2, 0x1

    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    .line 58
    .line 59
    .line 60
    move-result p4

    .line 61
    if-nez p4, :cond_1

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    new-instance p2, Lcom/android/server/wm/SafeActivityOptions;

    .line 67
    .line 68
    invoke-direct {p2, p1}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 72
    .line 73
    iput-object p2, p1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 74
    .line 75
    iput p3, p1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 76
    .line 77
    sget-object p2, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    .line 78
    .line 79
    iput-object p2, p1, Lcom/android/server/wm/ActivityStarter$Request;->forcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 82
    .line 83
    .line 84
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    return p0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public final startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.START_TASKS_FROM_RECENTS"

    .line 4
    .line 5
    const-string/jumbo v2, "startBackNavigation()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackNavigationController;->startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final startLockTaskMode(Lcom/android/server/wm/Task;Z)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 13
    .line 14
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    const-wide v2, 0x6082015cbb353636L    # 7.725180435044763E156

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-ne p1, v0, :cond_2

    .line 48
    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 58
    .line 59
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(ILcom/android/server/wm/Task;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string p1, "Invalid task, not in foreground"

    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_3
    :goto_0
    return-void
.end method

.method public final startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasFileDescriptors()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v1, "File descriptors passed in Intent"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 27
    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 29
    .line 30
    .line 31
    monitor-enter v3

    .line 32
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/4 v5, 0x0

    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    return v5

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto/16 :goto_9

    .line 49
    .line 50
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-nez v6, :cond_3

    .line 55
    .line 56
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 57
    .line 58
    .line 59
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 61
    .line 62
    .line 63
    return v5

    .line 64
    :cond_3
    :try_start_2
    new-instance v6, Landroid/content/Intent;

    .line 65
    .line 66
    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    invoke-virtual {v6, v1}, Landroid/content/Intent;->removeExtendedFlags(I)V

    .line 71
    .line 72
    .line 73
    iget-object v7, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 74
    .line 75
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    iget-object v8, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 80
    .line 81
    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    const/4 v13, 0x0

    .line 89
    invoke-virtual {v6, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    and-int/lit8 v7, v7, 0x8

    .line 97
    .line 98
    if-eqz v7, :cond_4

    .line 99
    .line 100
    move v14, v1

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    move v14, v5

    .line 103
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 104
    .line 105
    .line 106
    move-result v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    iget-object v9, v4, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 112
    .line 113
    const-wide/32 v10, 0x10400

    .line 114
    .line 115
    .line 116
    move-object v8, v6

    .line 117
    move v12, v15

    .line 118
    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    if-eqz v7, :cond_5

    .line 127
    .line 128
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    goto :goto_2

    .line 133
    :cond_5
    move v8, v5

    .line 134
    :goto_2
    move v9, v5

    .line 135
    :goto_3
    if-ge v9, v8, :cond_9

    .line 136
    .line 137
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 142
    .line 143
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 144
    .line 145
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v12, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    if-eqz v11, :cond_8

    .line 154
    .line 155
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 156
    .line 157
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v11, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 160
    .line 161
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    if-eqz v10, :cond_8

    .line 168
    .line 169
    add-int/2addr v9, v1

    .line 170
    if-ge v9, v8, :cond_6

    .line 171
    .line 172
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 177
    .line 178
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_6
    move-object v7, v13

    .line 182
    :goto_4
    if-eqz v14, :cond_a

    .line 183
    .line 184
    :try_start_4
    const-string v8, "ActivityTaskManager"

    .line 185
    .line 186
    new-instance v9, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v10, "Next matching activity: found current "

    .line 192
    .line 193
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-object v10, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v10, "/"

    .line 202
    .line 203
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v10, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 207
    .line 208
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    const-string v8, "ActivityTaskManager"

    .line 221
    .line 222
    new-instance v9, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v10, "Next matching activity: next is "

    .line 228
    .line 229
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    if-nez v7, :cond_7

    .line 233
    .line 234
    const-string/jumbo v10, "null"

    .line 235
    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v11, "/"

    .line 249
    .line 250
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    :goto_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 274
    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :catch_0
    :cond_9
    move-object v7, v13

    .line 278
    :catch_1
    :cond_a
    :goto_6
    if-nez v7, :cond_c

    .line 279
    .line 280
    :try_start_5
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 281
    .line 282
    .line 283
    if-eqz v14, :cond_b

    .line 284
    .line 285
    const-string v0, "ActivityTaskManager"

    .line 286
    .line 287
    const-string v1, "Next matching activity: nothing found"

    .line 288
    .line 289
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    :cond_b
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 293
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 294
    .line 295
    .line 296
    return v5

    .line 297
    :cond_c
    :try_start_6
    new-instance v8, Landroid/content/ComponentName;

    .line 298
    .line 299
    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 300
    .line 301
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 302
    .line 303
    iget-object v10, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 304
    .line 305
    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    const v9, -0x1e000001

    .line 316
    .line 317
    .line 318
    and-int/2addr v8, v9

    .line 319
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 320
    .line 321
    .line 322
    iget-boolean v8, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 323
    .line 324
    iput-boolean v1, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 325
    .line 326
    iget-object v9, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 327
    .line 328
    iget-object v10, v4, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 329
    .line 330
    iget v11, v4, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 331
    .line 332
    iput-object v13, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 333
    .line 334
    if-eqz v9, :cond_d

    .line 335
    .line 336
    invoke-virtual {v9, v4, v10, v11}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 337
    .line 338
    .line 339
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 340
    .line 341
    .line 342
    move-result v12

    .line 343
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 344
    .line 345
    .line 346
    move-result v14

    .line 347
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 348
    .line 349
    .line 350
    move-result-wide v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 351
    if-nez v2, :cond_e

    .line 352
    .line 353
    :try_start_7
    new-instance v2, Lcom/android/server/wm/SafeActivityOptions;

    .line 354
    .line 355
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-direct {v2, v1}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 360
    .line 361
    .line 362
    goto :goto_7

    .line 363
    :catchall_1
    move-exception v0

    .line 364
    goto :goto_8

    .line 365
    :cond_e
    :goto_7
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 366
    .line 367
    const-string/jumbo v1, "startNextMatchingActivity"

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v6, v1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 375
    .line 376
    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 377
    .line 378
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 379
    .line 380
    iput-object v1, v6, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 381
    .line 382
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 383
    .line 384
    iput-object v1, v6, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 385
    .line 386
    iput-object v7, v6, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 387
    .line 388
    if-eqz v9, :cond_f

    .line 389
    .line 390
    iget-object v13, v9, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 391
    .line 392
    :cond_f
    iput-object v13, v6, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 393
    .line 394
    iput-object v10, v6, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 395
    .line 396
    iput v11, v6, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 397
    .line 398
    const/4 v1, -0x1

    .line 399
    iput v1, v6, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 400
    .line 401
    iget v1, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 402
    .line 403
    iput v1, v6, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 404
    .line 405
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 406
    .line 407
    iput-object v1, v6, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 408
    .line 409
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 410
    .line 411
    iput-object v1, v6, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 412
    .line 413
    iput v14, v6, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 414
    .line 415
    iput v12, v6, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 416
    .line 417
    iput-object v2, v6, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 418
    .line 419
    iput v15, v6, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 420
    .line 421
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    iput-boolean v8, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 426
    .line 427
    if-nez v0, :cond_10

    .line 428
    .line 429
    const/4 v5, 0x1

    .line 430
    :cond_10
    :try_start_8
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    .line 432
    .line 433
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 434
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 435
    .line 436
    .line 437
    return v5

    .line 438
    :goto_8
    :try_start_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    .line 440
    .line 441
    throw v0

    .line 442
    :goto_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 443
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 444
    .line 445
    .line 446
    throw v0
.end method

.method public final startPowerMode(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerModeReasons:I

    .line 2
    .line 3
    or-int v1, v0, p1

    .line 4
    .line 5
    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerModeReasons:I

    .line 6
    .line 7
    and-int/lit8 v1, p1, 0x4

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 25
    .line 26
    const-wide/16 v4, 0x3e8

    .line 27
    .line 28
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 29
    .line 30
    .line 31
    const-string v1, "ActivityTaskManager"

    .line 32
    .line 33
    const-string v3, "Temporarily retain top process state for launching app"

    .line 34
    .line 35
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    and-int/lit8 v1, p1, 0x1

    .line 44
    .line 45
    const-wide/16 v3, 0x20

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    and-int/lit8 v1, v0, 0x1

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    const-string p1, "StartModeLaunch"

    .line 54
    .line 55
    invoke-static {v3, v4, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 59
    .line 60
    const/4 p1, 0x5

    .line 61
    invoke-virtual {p0, p1, v2}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/4 v1, 0x2

    .line 66
    if-ne p1, v1, :cond_4

    .line 67
    .line 68
    and-int/lit8 p1, v0, 0x2

    .line 69
    .line 70
    if-nez p1, :cond_4

    .line 71
    .line 72
    const-string p1, "StartModeDisplayChange"

    .line 73
    .line 74
    invoke-static {v3, v4, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 78
    .line 79
    const/16 p1, 0x11

    .line 80
    .line 81
    invoke-virtual {p0, p1, v2}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_0
    return-void
.end method

.method public final startProcessAsync(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)V
    .locals 11

    .line 1
    const-string v0, "dispatchingStartProcess:"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 18
    .line 19
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 22
    .line 23
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 24
    .line 25
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    :goto_0
    const-wide/16 v1, 0x20

    .line 35
    .line 36
    :try_start_0
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    :goto_1
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda32;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 68
    .line 69
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 72
    .line 73
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 74
    .line 75
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    move-object v9, p2

    .line 90
    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 104
    .line 105
    .line 106
    throw p0
.end method

.method public final startRecentsActivity(Landroid/content/Intent;JLandroid/view/IRecentsAnimationRunner;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v10, p4

    .line 3
    .line 4
    const-string/jumbo v1, "startRecentsActivity()"

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v11

    .line 22
    :try_start_0
    iget-object v13, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 25
    .line 26
    .line 27
    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 29
    .line 30
    iget-object v7, v3, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 31
    .line 32
    iget v8, v3, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 33
    .line 34
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    new-instance v14, Lcom/android/server/wm/RecentsAnimation;

    .line 39
    .line 40
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 41
    .line 42
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 43
    .line 44
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 45
    .line 46
    move-object v1, v14

    .line 47
    move-object v2, p0

    .line 48
    move-object/from16 v6, p1

    .line 49
    .line 50
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/RecentsAnimation;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Landroid/content/Intent;Landroid/content/ComponentName;ILcom/android/server/wm/WindowProcessController;)V

    .line 51
    .line 52
    .line 53
    if-nez v10, :cond_0

    .line 54
    .line 55
    invoke-virtual {v14}, Lcom/android/server/wm/RecentsAnimation;->preloadRecentsActivity()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    move-wide/from16 v0, p2

    .line 62
    .line 63
    invoke-virtual {v14, v10, v0, v1}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivity(Landroid/view/IRecentsAnimationRunner;J)V

    .line 64
    .line 65
    .line 66
    :goto_0
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    .line 69
    .line 70
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    goto :goto_2

    .line 76
    :goto_1
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 78
    .line 79
    .line 80
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    :goto_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    throw v0
.end method

.method public final startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    .locals 2

    .line 1
    const-string v0, "ActivityTaskManager"

    .line 2
    .line 3
    const-string v1, "<<<  startRunningVoiceLocked()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 9
    .line 10
    new-instance v1, Landroid/os/WorkSource;

    .line 11
    .line 12
    invoke-direct {v1, p2}, Landroid/os/WorkSource;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-interface {p2}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eq p2, v0, :cond_2

    .line 31
    .line 32
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p2, 0x0

    .line 39
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 40
    .line 41
    if-nez p2, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public final startSystemLockTaskMode(I)V
    .locals 6

    .line 1
    const-string/jumbo v0, "startSystemLockTaskMode"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-virtual {v3, p1, v5, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string/jumbo v5, "startSystemLockTaskMode"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskMode(Lcom/android/server/wm/Task;Z)V

    .line 49
    .line 50
    .line 51
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :goto_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 66
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final startTimeTrackingFocusedActivityLocked()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 12
    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    iget-wide v3, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    .line 27
    .line 28
    const-wide/16 v5, 0x0

    .line 29
    .line 30
    cmp-long v3, v3, v5

    .line 31
    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    iput-wide v1, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    .line 35
    .line 36
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    iget-wide v7, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    .line 49
    .line 50
    sub-long/2addr v1, v7

    .line 51
    iget-wide v7, v3, Landroid/util/MutableLong;->value:J

    .line 52
    .line 53
    add-long/2addr v7, v1

    .line 54
    iput-wide v7, v3, Landroid/util/MutableLong;->value:J

    .line 55
    .line 56
    iget-wide v3, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    .line 57
    .line 58
    add-long/2addr v3, v1

    .line 59
    iput-wide v3, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    .line 60
    .line 61
    :cond_1
    iput-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroid/util/MutableLong;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    .line 72
    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    new-instance v1, Landroid/util/MutableLong;

    .line 76
    .line 77
    invoke-direct {v1, v5, v6}, Landroid/util/MutableLong;-><init>(J)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    .line 83
    .line 84
    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method

.method public final startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 5
    .line 6
    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    .line 7
    .line 8
    const-string/jumbo v2, "startVoiceActivity()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz p7, :cond_2

    .line 15
    .line 16
    if-eqz p8, :cond_2

    .line 17
    .line 18
    const-string/jumbo v0, "startVoiceActivity"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p3, p4, p12, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 26
    .line 27
    invoke-virtual {p0, p5, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object p5, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 32
    .line 33
    iput p4, p5, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 34
    .line 35
    iput-object p1, p5, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p2, p5, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p6, p5, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p7, p5, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 42
    .line 43
    iput-object p8, p5, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 44
    .line 45
    iput p9, p5, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 46
    .line 47
    iput-object p10, p5, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 48
    .line 49
    invoke-static {p11}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 p2, 0x1

    .line 54
    if-nez p1, :cond_0

    .line 55
    .line 56
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    .line 66
    .line 67
    .line 68
    move-result p4

    .line 69
    if-nez p4, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    new-instance p2, Lcom/android/server/wm/SafeActivityOptions;

    .line 75
    .line 76
    invoke-direct {p2, p1}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 80
    .line 81
    iput-object p2, p1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 82
    .line 83
    iput p3, p1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 84
    .line 85
    sget-object p2, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    .line 86
    .line 87
    iput-object p2, p1, Lcom/android/server/wm/ActivityStarter$Request;->forcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    return p0

    .line 94
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 95
    .line 96
    const-string/jumbo p1, "null session or interactor"

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method public final stopAppSwitches()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.STOP_APP_SWITCHES"

    .line 4
    .line 5
    const-string/jumbo v2, "stopAppSwitches"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v0

    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_0
    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iput-wide v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 33
    .line 34
    const-wide/16 v3, 0x1f4

    .line 35
    .line 36
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 37
    .line 38
    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final stopLockTaskModeInternal(Landroid/os/IBinder;Z)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :try_start_2
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 38
    .line 39
    invoke-virtual {v4, v0, p1, p2}, Lcom/android/server/wm/LockTaskController;->stopLockTaskMode(ILcom/android/server/wm/Task;Z)V

    .line 40
    .line 41
    .line 42
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-string/jumbo p1, "telecom"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Landroid/telecom/TelecomManager;

    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 72
    .line 73
    .line 74
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 75
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public final stopSystemLockTaskMode()V
    .locals 2

    .line 1
    const-string/jumbo v0, "stopSystemLockTaskMode"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Landroid/os/IBinder;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final supportsLocalVoiceInteraction()Z
    .locals 0

    .line 1
    const-class p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal;->supportsLocalVoiceInteraction()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final suppressResizeConfigChanges(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 4
    .line 5
    const-string/jumbo v2, "suppressResizeConfigChanges()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSuppressResizeConfigChanges:Z

    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;
    .locals 8

    .line 1
    const-string/jumbo v0, "takeTaskSnapshot: taskId="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 5
    .line 6
    const-string v2, "android.permission.READ_FRAME_BUFFER"

    .line 7
    .line 8
    const-string/jumbo v3, "takeTaskSnapshot()"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 19
    .line 20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 21
    .line 22
    .line 23
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x1

    .line 29
    invoke-virtual {v4, p1, v7, v6, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    if-eqz p2, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 47
    .line 48
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 65
    .line 66
    iget p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    .line 67
    .line 68
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    monitor-exit v3

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    :goto_1
    const-string p0, "ActivityTaskManager"

    .line 75
    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p1, " not found or not visible"

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    .line 102
    .line 103
    return-object v6

    .line 104
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 106
    .line 107
    .line 108
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    :catchall_1
    move-exception p0

    .line 110
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    .line 112
    .line 113
    throw p0
.end method

.method public final unhandledBack()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.FORCE_BACK"

    .line 4
    .line 5
    const-string/jumbo v2, "unhandledBack()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    const-string/jumbo v3, "unhandled-back"

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :goto_1
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public final unregisterScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.DETECT_SCREEN_CAPTURE"

    .line 4
    .line 5
    const-string/jumbo v2, "unregisterScreenCaptureObserver"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 26
    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 28
    .line 29
    .line 30
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_1
    move-exception p1

    .line 57
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public final unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "unregisterTaskStackListener()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    instance-of v0, p1, Landroid/os/Binder;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_0
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    throw p0

    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateActiveRecents(I)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const-string v0, "focusTopTask()"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_5

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    iget-object v3, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 36
    .line 37
    const-string/jumbo v4, "recents_animation_input_consumer"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    :try_start_2
    iget-object v4, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 57
    .line 58
    invoke-virtual {v4, p1}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_2

    .line 63
    .line 64
    monitor-exit v2

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v4, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 67
    .line 68
    iget-object v4, v4, Lcom/android/server/wm/InputMonitor;->mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

    .line 69
    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/4 v4, 0x0

    .line 80
    :goto_1
    if-eqz v4, :cond_4

    .line 81
    .line 82
    iget-object v3, v3, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 83
    .line 84
    iget-object v3, v3, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v3, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 91
    .line 92
    .line 93
    iget-object v3, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 94
    .line 95
    invoke-virtual {v3, p0, v4}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 96
    .line 97
    .line 98
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 99
    .line 100
    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 102
    .line 103
    .line 104
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    .line 110
    .line 111
    goto :goto_5

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    goto :goto_4

    .line 114
    :cond_5
    :goto_2
    :try_start_4
    monitor-exit v2

    .line 115
    goto :goto_0

    .line 116
    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 118
    .line 119
    .line 120
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 121
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_6
    :goto_5
    return-void
.end method

.method public final updateActivityUsageStats(ILcom/android/server/wm/ActivityRecord;)V
    .locals 10

    .line 1
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 15
    .line 16
    :cond_0
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 17
    .line 18
    :goto_0
    move-object v7, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v0, -0x1

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda31;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 28
    .line 29
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 30
    .line 31
    iget v4, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 32
    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget-object v6, p2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 42
    .line 43
    new-instance v8, Landroid/app/assist/ActivityId;

    .line 44
    .line 45
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    .line 46
    .line 47
    invoke-direct {v8, v0, p1}, Landroid/app/assist/ActivityId;-><init>(ILandroid/os/IBinder;)V

    .line 48
    .line 49
    .line 50
    iget-object v9, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 51
    .line 52
    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final updateAppCompatConfigurationPreset(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mPresetManager:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;

    .line 6
    .line 7
    iget v1, v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mPreset:I

    .line 8
    .line 9
    if-eq v1, p1, :cond_0

    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-gt p1, v2, :cond_0

    .line 15
    .line 16
    iput p1, v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mPreset:I

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Preset is updated "

    .line 21
    .line 22
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->presetToString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, " to "

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mPreset:I

    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->presetToString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "MultiTaskingAppCompat"

    .line 51
    .line 52
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 56
    .line 57
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda3;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method public final updateBatteryStats(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda30;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 7
    .line 8
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 9
    .line 10
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 11
    .line 12
    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget p2, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final updateConfiguration(Landroid/content/res/Configuration;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.CHANGE_CONFIGURATION"

    .line 4
    .line 5
    const-string/jumbo v2, "updateConfiguration()"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string p0, "ActivityTaskManager"

    .line 23
    .line 24
    const-string p1, "Skip updateConfiguration because mWindowManager isn\'t set"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    if-nez p1, :cond_1

    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 43
    .line 44
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-direct {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    :try_start_2
    invoke-static {p1}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    const/16 v1, -0x2710

    .line 76
    .line 77
    invoke-virtual {p0, p1, v2, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;ZZI)Z

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 81
    .line 82
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    .line 84
    if-eqz p0, :cond_3

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    :cond_3
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 92
    .line 93
    .line 94
    return v2

    .line 95
    :goto_1
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 101
    .line 102
    .line 103
    throw p0
.end method

.method public final updateConfigurationLocked(Landroid/content/res/Configuration;ZZI)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    :try_start_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_DISPLAY_CHANGE_ANIM:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    new-instance v3, Landroid/content/res/Configuration;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    move-object v3, v0

    .line 25
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZI)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    sget-boolean p3, Lcom/android/server/wm/WindowManagerService;->sEnableShellTransitions:Z

    .line 32
    .line 33
    if-nez p3, :cond_1

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 38
    .line 39
    new-instance p4, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;

    .line 40
    .line 41
    invoke-direct {p4, p0, v3, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 48
    .line 49
    iput p2, p1, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 50
    .line 51
    const/4 p3, 0x1

    .line 52
    iput-boolean p3, p1, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->mIsUpdating:Z

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move p2, v1

    .line 56
    :goto_1
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(ILcom/android/server/wm/ActivityRecord;)Z

    .line 57
    .line 58
    .line 59
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 61
    .line 62
    iput-boolean v1, p2, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->mIsUpdating:Z

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    return p1

    .line 73
    :goto_2
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 74
    .line 75
    iput-boolean v1, p2, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->mIsUpdating:Z

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method public final updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZI)I
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    return v3

    .line 24
    :cond_0
    const-wide/16 v4, 0x20

    .line 25
    .line 26
    const-string/jumbo v6, "updateGlobalConfiguration"

    .line 27
    .line 28
    .line 29
    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    .line 33
    .line 34
    const/4 v7, 0x2

    .line 35
    aget-boolean v7, v6, v7

    .line 36
    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 44
    .line 45
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    const-wide v9, 0x1be1633e35933425L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v12, 0x0

    .line 56
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    const/16 v7, 0xa9f

    .line 60
    .line 61
    invoke-static {v7, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 62
    .line 63
    .line 64
    iget v9, v1, Landroid/content/res/Configuration;->colorMode:I

    .line 65
    .line 66
    iget v10, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 67
    .line 68
    iget v11, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 69
    .line 70
    iget v12, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 71
    .line 72
    iget v13, v1, Landroid/content/res/Configuration;->keyboard:I

    .line 73
    .line 74
    iget v14, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 75
    .line 76
    iget v15, v1, Landroid/content/res/Configuration;->mcc:I

    .line 77
    .line 78
    iget v7, v1, Landroid/content/res/Configuration;->mnc:I

    .line 79
    .line 80
    move/from16 v16, v7

    .line 81
    .line 82
    iget v7, v1, Landroid/content/res/Configuration;->navigation:I

    .line 83
    .line 84
    move/from16 v17, v7

    .line 85
    .line 86
    iget v7, v1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 87
    .line 88
    move/from16 v18, v7

    .line 89
    .line 90
    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    .line 91
    .line 92
    move/from16 v19, v7

    .line 93
    .line 94
    iget v7, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 95
    .line 96
    move/from16 v20, v7

    .line 97
    .line 98
    iget v7, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 99
    .line 100
    move/from16 v21, v7

    .line 101
    .line 102
    iget v7, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 103
    .line 104
    move/from16 v22, v7

    .line 105
    .line 106
    iget v7, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 107
    .line 108
    move/from16 v23, v7

    .line 109
    .line 110
    iget v7, v1, Landroid/content/res/Configuration;->touchscreen:I

    .line 111
    .line 112
    move/from16 v24, v7

    .line 113
    .line 114
    iget v7, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 115
    .line 116
    move/from16 v25, v7

    .line 117
    .line 118
    const/16 v8, 0x42

    .line 119
    .line 120
    invoke-static/range {v8 .. v25}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFIIIIIIIIIIIIII)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    const/16 v8, 0x3e8

    .line 128
    .line 129
    if-ne v7, v8, :cond_3

    .line 130
    .line 131
    iget v7, v1, Landroid/content/res/Configuration;->mcc:I

    .line 132
    .line 133
    if-eqz v7, :cond_2

    .line 134
    .line 135
    const-string v8, "debug.tracing.mcc"

    .line 136
    .line 137
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_2
    iget v7, v1, Landroid/content/res/Configuration;->mnc:I

    .line 145
    .line 146
    if-eqz v7, :cond_3

    .line 147
    .line 148
    const-string v8, "debug.tracing.mnc"

    .line 149
    .line 150
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_3
    const/4 v7, 0x1

    .line 158
    if-nez p2, :cond_6

    .line 159
    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-virtual {v8}, Landroid/os/LocaleList;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-nez v8, :cond_6

    .line 169
    .line 170
    iget-boolean v8, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 171
    .line 172
    if-eqz v8, :cond_6

    .line 173
    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-le v8, v7, :cond_5

    .line 183
    .line 184
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 185
    .line 186
    if-nez v8, :cond_4

    .line 187
    .line 188
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    iput-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 201
    .line 202
    :cond_4
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v1, v8}, Landroid/os/LocaleList;->getFirstMatchIndex([Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    :cond_5
    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    invoke-virtual {v8}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    const-string/jumbo v9, "persist.sys.locale"

    .line 221
    .line 222
    .line 223
    invoke-static {v9, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v1, v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 227
    .line 228
    .line 229
    :cond_6
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 230
    .line 231
    iget v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 232
    .line 233
    add-int/2addr v3, v7

    .line 234
    iput v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 235
    .line 236
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    iput v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 241
    .line 242
    iput v3, v1, Landroid/content/res/Configuration;->seq:I

    .line 243
    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v3, "Config changes="

    .line 247
    .line 248
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string v3, " "

    .line 252
    .line 253
    invoke-static {v2, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 257
    .line 258
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    const-string v3, "ActivityTaskManager"

    .line 266
    .line 267
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 271
    .line 272
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 273
    .line 274
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 275
    .line 276
    invoke-virtual {v8}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    check-cast v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    if-nez v3, :cond_7

    .line 286
    .line 287
    const-string v1, "UsageStatsService"

    .line 288
    .line 289
    const-string v3, "Configuration event reported with a null config"

    .line 290
    .line 291
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    goto :goto_0

    .line 295
    :cond_7
    new-instance v9, Landroid/app/usage/UsageEvents$Event;

    .line 296
    .line 297
    const/4 v10, 0x5

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 299
    .line 300
    .line 301
    move-result-wide v11

    .line 302
    invoke-direct {v9, v10, v11, v12}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 303
    .line 304
    .line 305
    const-string v10, "android"

    .line 306
    .line 307
    iput-object v10, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 308
    .line 309
    new-instance v10, Landroid/content/res/Configuration;

    .line 310
    .line 311
    invoke-direct {v10, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 312
    .line 313
    .line 314
    iput-object v10, v9, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 315
    .line 316
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 317
    .line 318
    invoke-virtual {v1, v8, v9}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    .line 319
    .line 320
    .line 321
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    .line 324
    .line 325
    .line 326
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    if-eqz v1, :cond_8

    .line 331
    .line 332
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 333
    .line 334
    invoke-virtual {v1, v3}, Lcom/android/internal/policy/AttributeCache;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 335
    .line 336
    .line 337
    :cond_8
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 338
    .line 339
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 340
    .line 341
    invoke-virtual {v1, v3}, Landroid/app/ActivityThread;->applyConfigurationToResources(Landroid/content/res/Configuration;)V

    .line 342
    .line 343
    .line 344
    if-eqz p3, :cond_9

    .line 345
    .line 346
    invoke-static {v2}, Landroid/provider/Settings$System;->hasInterestingConfigurationChanges(I)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-eqz v1, :cond_9

    .line 351
    .line 352
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda19;

    .line 353
    .line 354
    const/4 v3, 0x0

    .line 355
    invoke-direct {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda19;-><init>(I)V

    .line 356
    .line 357
    .line 358
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    new-instance v8, Landroid/content/res/Configuration;

    .line 363
    .line 364
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 365
    .line 366
    invoke-direct {v8, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 367
    .line 368
    .line 369
    invoke-static {v1, v0, v3, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 374
    .line 375
    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 376
    .line 377
    .line 378
    :cond_9
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 379
    .line 380
    iget-object v1, v1, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    .line 381
    .line 382
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    sub-int/2addr v3, v7

    .line 387
    :goto_1
    if-ltz v3, :cond_b

    .line 388
    .line 389
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 390
    .line 391
    .line 392
    move-result v8

    .line 393
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v8

    .line 397
    check-cast v8, Lcom/android/server/wm/WindowProcessController;

    .line 398
    .line 399
    aget-boolean v9, v6, v7

    .line 400
    .line 401
    if-eqz v9, :cond_a

    .line 402
    .line 403
    iget-object v9, v8, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 404
    .line 405
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v9

    .line 409
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 410
    .line 411
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v10

    .line 415
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 416
    .line 417
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v16

    .line 421
    const-wide v12, -0x58dfca7eb194cd0dL

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    const/4 v14, 0x0

    .line 427
    const/4 v15, 0x0

    .line 428
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    :cond_a
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 432
    .line 433
    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 434
    .line 435
    .line 436
    add-int/lit8 v3, v3, -0x1

    .line 437
    .line 438
    goto :goto_1

    .line 439
    :cond_b
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda19;

    .line 440
    .line 441
    const/4 v3, 0x1

    .line 442
    invoke-direct {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda19;-><init>(I)V

    .line 443
    .line 444
    .line 445
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 446
    .line 447
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    invoke-static {v1, v3, v6, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 460
    .line 461
    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 462
    .line 463
    .line 464
    const-string v1, "RootConfigChange"

    .line 465
    .line 466
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 467
    .line 468
    .line 469
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 470
    .line 471
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 472
    .line 473
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 474
    .line 475
    .line 476
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 477
    .line 478
    .line 479
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 480
    .line 481
    .line 482
    return v2
.end method

.method public final updateLockTaskFeatures(II)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x3e8

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 12
    .line 13
    const-string v1, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    .line 14
    .line 15
    const-string/jumbo v2, "updateLockTaskFeatures()"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 24
    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    aget-boolean v1, v1, v2

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    int-to-long v1, p1

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 44
    .line 45
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const-wide v5, -0x7c41581ae22c51cL

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    const/4 v7, 0x1

    .line 59
    const/4 v8, 0x0

    .line 60
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskFeatures(II)V

    .line 69
    .line 70
    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public final updateLockTaskPackages(I[Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x3e8

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 12
    .line 13
    const-string v1, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    .line 14
    .line 15
    const-string/jumbo v2, "updateLockTaskPackages()"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 26
    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 28
    .line 29
    .line 30
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    aget-boolean v3, v3, v4

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    int-to-long v3, p1

    .line 39
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 48
    .line 49
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    const-wide v7, -0xb837816caa1c3acL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    const/4 v9, 0x1

    .line 63
    const/4 v10, 0x0

    .line 64
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 87
    .line 88
    .line 89
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 90
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public final updateOomAdj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Lcom/android/server/wm/ActivityTaskManagerService$2;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Lcom/android/server/wm/ActivityTaskManagerService$2;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final updatePersistentConfiguration(Landroid/content/res/Configuration;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {p0, p1, v4, v3, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;ZZI)Z

    .line 19
    .line 20
    .line 21
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 33
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 37
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    .line 1
    const-wide/16 v0, 0x20

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    const-string v3, "Focused app"

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-static {v0, v1, v3, v2, v4}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 38
    .line 39
    return-void
.end method

.method public final updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_1

    .line 6
    .line 7
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 8
    .line 9
    if-ne v0, v2, :cond_1

    .line 10
    .line 11
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    .line 12
    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v0, v2

    .line 19
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "hide_error_dialogs"

    .line 26
    .line 27
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    move v3, v2

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move v3, v1

    .line 36
    :goto_2
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-static {p1}, Landroid/app/ActivityTaskManager;->currentUiModeSupportsErrorDialogs(Landroid/content/res/Configuration;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    if-nez v3, :cond_3

    .line 45
    .line 46
    move v1, v2

    .line 47
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 48
    .line 49
    return-void
.end method

.method public final updateSleepIfNeededLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    const/4 v3, 0x0

    .line 10
    if-ltz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    move v0, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v0, v3

    .line 30
    :goto_1
    xor-int/2addr v0, v2

    .line 31
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 32
    .line 33
    const/16 v4, 0xe

    .line 34
    .line 35
    const-string v5, "ActivityTaskManager"

    .line 36
    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    invoke-static {v4, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    .line 57
    .line 58
    .line 59
    :cond_2
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 60
    .line 61
    const-string v0, "Top Process State changed to PROCESS_STATE_TOP"

    .line 62
    .line 63
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 67
    .line 68
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 69
    .line 70
    const/16 v4, 0xcb

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    .line 74
    .line 75
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->applySleepTokens(Z)V

    .line 91
    .line 92
    .line 93
    if-eqz v1, :cond_7

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 97
    .line 98
    if-nez v1, :cond_6

    .line 99
    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 103
    .line 104
    invoke-static {v4, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 108
    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 112
    .line 113
    .line 114
    :cond_5
    const/16 v0, 0xc

    .line 115
    .line 116
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 117
    .line 118
    const-string v0, "Top Process State changed to PROCESS_STATE_TOP_SLEEPING"

    .line 119
    .line 120
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->goingToSleepLocked()V

    .line 126
    .line 127
    .line 128
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    const-string v0, "Top Process State changed to PROCESS_STATE_TOP_SLEEPING#2"

    .line 137
    .line 138
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 142
    .line 143
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->applySleepTokens(Z)V

    .line 144
    .line 145
    .line 146
    :cond_7
    :goto_3
    return-void
.end method
