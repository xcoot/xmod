.class public final Lcom/android/server/wm/Task;
.super Lcom/android/server/wm/TaskFragment;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

.field public static final sTmpBounds:Landroid/graphics/Rect;

.field public static sTmpException:Ljava/lang/Exception;


# instance fields
.field public affinity:Ljava/lang/String;

.field public affinityIntent:Landroid/content/Intent;

.field public autoRemoveRecents:Z

.field public effectiveUid:I

.field public inRecents:Z

.field public intent:Landroid/content/Intent;

.field public isAvailable:Z

.field public isPersistable:Z

.field public lastActiveTime:J

.field public lastDescription:Ljava/lang/CharSequence;

.field public lastGainFocusTime:J

.field public mAffiliatedTaskId:I

.field public mAlignActivityLocaleWithTask:Z

.field public final mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

.field public mBoostRootTaskLayerForFreeform:Z

.field public mCallingFeatureId:Ljava/lang/String;

.field public mCallingPackage:Ljava/lang/String;

.field public mCallingUid:I

.field public mCanAffectSystemUiFlags:Z

.field public mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

.field public mConfigWillChange:Z

.field public mCurrentUser:I

.field public mCutoutPolicy:I

.field public mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

.field public mDedicatedTask:Z

.field public mDeferTaskAppear:Z

.field public mDragResizing:Z

.field public final mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

.field public mForceShowForAllUsers:Z

.field public mFreeformStashMode:I

.field public mFreeformStashScale:F

.field public final mHandler:Lcom/android/server/wm/Task$ActivityTaskHandler;

.field public mHasBeenVisible:Z

.field public final mHasTopFullscreenWindow:Z

.field public mHasWindowFocus:Z

.field public mHiddenWhileActivatingDrag:Z

.field public mHostProcessName:Ljava/lang/String;

.field public mIgnoreDevSettingForNonResizable:Z

.field public mInRemoveTask:Z

.field public mInResumeTopActivity:Z

.field public mIsAliasManaged:Z

.field public mIsAnimatingByRecentsAndDragSourceTask:Z

.field public mIsCaptionFullScreenState:Z

.field public mIsCaptionHandlerHidden:Z

.field public mIsChangingPipToSplit:Z

.field public mIsDragSourceTask:Z

.field public mIsEffectivelySystemApp:Z

.field public mIsMinimized:Z

.field public mIsPipReparetingToLastParent:Z

.field public mIsWaitingRemoveEmbedActivityTask:Z

.field public mKeepScreenOn:Z

.field public mKillProcessesOnDestroyed:Z

.field public mLastDensityDpi:F

.field public mLastDispatchedWindowFocusInTask:Z

.field public mLastFreeformBoundsBeforeDragMoving:Landroid/graphics/Rect;

.field public mLastMinimizedDisplayType:I

.field public mLastMinimizedRotation:I

.field public mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field public mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

.field public mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field public mLastReportedRequestedOrientation:I

.field public mLastSurfaceShowing:Z

.field public final mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

.field public mLastTimeMoved:J

.field public final mLaunchCookie:Landroid/os/IBinder;

.field public mLaunchTaskOnHome:Z

.field public mLayerRank:I

.field public mLockTaskAuth:I

.field public mLockTaskUid:I

.field public final mMaxDimensions:Landroid/graphics/Point;

.field public mMaxHeight:I

.field public mMaxWidth:I

.field public final mMinDimensions:Landroid/graphics/Point;

.field public mMultiWindowRestoreParent:Landroid/window/WindowContainerToken;

.field public mMultiWindowRestoreWindowingMode:I

.field public mNeedToSendFreeformLogging:Z

.field public mNeverRelinquishIdentity:Z

.field public mNextAffiliate:Lcom/android/server/wm/Task;

.field public mNextAffiliateTaskId:I

.field public mOffsetXForInsets:I

.field public mOffsetYForInsets:I

.field public mOldHostProcessName:Ljava/lang/String;

.field public mPendingConvertFromTranslucentActivity:Lcom/android/server/wm/ActivityRecord;

.field public mPendingEnsureVisibleForPopOver:Z

.field public mPrevAffiliate:Lcom/android/server/wm/Task;

.field public mPrevAffiliateTaskId:I

.field public mPrevDisplayId:I

.field public mReason:Ljava/lang/String;

.field public mRemoveByDrag:Z

.field public final mRemoveWithTaskOrganizer:Z

.field public mRemoving:Z

.field public mReparentLeafTaskIfRelaunch:Z

.field public mRequiredDisplayCategory:Ljava/lang/String;

.field public mResizeMode:I

.field public mRespectOrientationRequestOverride:I

.field public mReuseTask:Z

.field public mRootProcess:Lcom/android/server/wm/WindowProcessController;

.field public mRotation:I

.field public mSetDisplayChangeTransitionByCornerGesture:Z

.field public mSharedStartingData:Lcom/android/server/wm/StartingData;

.field public mSizeCompatPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

.field public mSkipLayoutTask:Z

.field public final mSnappingGuideBounds:Landroid/graphics/Rect;

.field public mSupportsPictureInPicture:Z

.field public mTaskAppearedSent:Z

.field public mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public mTaskFragmentHostProcessName:Ljava/lang/String;

.field public mTaskFragmentHostUid:I

.field public final mTaskId:I

.field public mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field public mTaskViewTaskOrganizerTaskId:I

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

.field public final mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

.field public mUserId:I

.field public mUserSetupComplete:Z

.field public mWindowLayoutAffinity:Ljava/lang/String;

.field public maxRecents:I

.field public origActivity:Landroid/content/ComponentName;

.field public realActivity:Landroid/content/ComponentName;

.field public realActivitySuspended:Z

.field public rootAffinity:Ljava/lang/String;

.field public rootWasReset:Z

.field public stringName:Ljava/lang/String;

.field public voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/wm/Task;->sTmpBounds:Landroid/graphics/Rect;

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/wm/ResetTargetTaskHelper;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    .line 33
    .line 34
    sput-object v0, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V
    .locals 10

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object/from16 v3, p31

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p1

    move/from16 v7, p34

    .line 1
    invoke-direct {p0, p1, v4, v7, v5}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V

    .line 2
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mRemoveByDrag:Z

    const/4 v6, -0x1

    .line 3
    iput v6, v0, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    .line 4
    iput v6, v0, Lcom/android/server/wm/Task;->mLastMinimizedRotation:I

    .line 5
    iput-object v4, v0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 7
    iput-object v4, v0, Lcom/android/server/wm/Task;->mPendingConvertFromTranslucentActivity:Lcom/android/server/wm/ActivityRecord;

    .line 8
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    const/4 v7, 0x1

    .line 9
    iput v7, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 10
    iput v6, v0, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 11
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 12
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 13
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 14
    iput v6, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 15
    iput v6, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 16
    iput-object v4, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 17
    iput v6, v0, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 18
    iput v6, v0, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    .line 19
    iput v6, v0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 20
    iput v6, v0, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    .line 21
    iput v6, v0, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    .line 22
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 23
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 24
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mSkipLayoutTask:Z

    .line 25
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mIsDragSourceTask:Z

    .line 26
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    .line 27
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mIsAnimatingByRecentsAndDragSourceTask:Z

    .line 28
    new-instance v8, Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 29
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    iput-object v9, v8, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    .line 31
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    iput-object v9, v8, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    .line 32
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    .line 33
    iput-object v8, v0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 34
    new-instance v8, Lcom/android/server/wm/Task$FindRootHelper;

    invoke-direct {v8, p0}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;)V

    iput-object v8, v0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    .line 35
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mAlignActivityLocaleWithTask:Z

    .line 36
    iput-object v4, v0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 37
    iput-object v4, v0, Lcom/android/server/wm/Task;->mOldHostProcessName:Ljava/lang/String;

    .line 38
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 39
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mIsChangingPipToSplit:Z

    .line 40
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mKeepScreenOn:Z

    .line 41
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v8, v0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    .line 42
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v8, v0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    .line 43
    iput v6, v0, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 44
    iput v6, v0, Lcom/android/server/wm/Task;->mMaxHeight:I

    const/4 v8, 0x0

    .line 45
    iput v8, v0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    .line 46
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mBoostRootTaskLayerForFreeform:Z

    .line 47
    iput-object v4, v0, Lcom/android/server/wm/Task;->mLastFreeformBoundsBeforeDragMoving:Landroid/graphics/Rect;

    .line 48
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 49
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mIsWaitingRemoveEmbedActivityTask:Z

    .line 50
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mHasTopFullscreenWindow:Z

    .line 51
    iput v5, v0, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    .line 52
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/Task;->mSnappingGuideBounds:Landroid/graphics/Rect;

    .line 53
    iput v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v4, p11

    .line 54
    iput v4, v0, Lcom/android/server/wm/Task;->mUserId:I

    move/from16 v4, p26

    .line 55
    iput-boolean v4, v0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-eqz p17, :cond_0

    move-object/from16 v4, p17

    goto :goto_0

    .line 56
    :cond_0
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v4}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    :goto_0
    iput-object v4, v0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p18, :cond_1

    move-object/from16 v4, p18

    goto :goto_1

    .line 57
    :cond_1
    new-instance v4, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct {v4}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    :goto_1
    iput-object v4, v0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    move-object v4, p4

    .line 58
    iput-object v4, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    move-object v4, p5

    .line 59
    iput-object v4, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    move-object/from16 v4, p6

    .line 60
    iput-object v4, v0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    move-object/from16 v4, p32

    .line 61
    iput-object v4, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v4, p33

    .line 62
    iput-object v4, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v4, p7

    .line 63
    iput-object v4, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    move/from16 v4, p27

    .line 64
    iput-boolean v4, v0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    move-object/from16 v4, p8

    .line 65
    iput-object v4, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    move/from16 v4, p9

    .line 66
    iput-boolean v4, v0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 67
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->isAvailable:Z

    move/from16 v4, p10

    .line 68
    iput-boolean v4, v0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    move/from16 v4, p28

    .line 69
    iput-boolean v4, v0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    move/from16 v4, p12

    .line 70
    iput v4, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/server/wm/Task;->lastActiveTime:J

    move-object/from16 v4, p13

    .line 72
    iput-object v4, v0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    move-wide/from16 v7, p14

    .line 73
    iput-wide v7, v0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    move/from16 v4, p16

    .line 74
    iput-boolean v4, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    move/from16 v4, p19

    .line 75
    iput v4, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    move/from16 v4, p20

    .line 76
    iput v4, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    move/from16 v4, p21

    .line 77
    iput v4, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    move/from16 v4, p22

    .line 78
    iput v4, v0, Lcom/android/server/wm/Task;->mCallingUid:I

    move-object/from16 v4, p23

    .line 79
    iput-object v4, v0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v4, p24

    .line 80
    iput-object v4, v0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    move/from16 v4, p25

    .line 81
    iput v4, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-eqz v3, :cond_3

    .line 82
    invoke-virtual {p0, p3, v3}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 83
    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v2, :cond_2

    .line 84
    iget v4, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v4, v0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 85
    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v2, v0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    goto :goto_2

    .line 86
    :cond_2
    iput v6, v0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 87
    iput v6, v0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    goto :goto_2

    .line 88
    :cond_3
    iput-object v2, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    move/from16 v2, p29

    .line 89
    iput v2, v0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    move/from16 v2, p30

    .line 90
    iput v2, v0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 91
    :goto_2
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {v2, p0, v3}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V

    .line 92
    invoke-static {p0}, Lcom/android/server/wm/PackagesChange;->updateAllValueToTask(Lcom/android/server/wm/Task;)V

    .line 93
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 94
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 95
    iget-object v3, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 96
    iget-object v4, v2, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/16 v6, 0x8

    .line 97
    invoke-virtual {v4, v6, p2, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 98
    iget-object v4, v2, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 99
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 100
    new-instance v2, Lcom/android/server/wm/Task$ActivityTaskHandler;

    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/Task$ActivityTaskHandler;-><init>(Lcom/android/server/wm/Task;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/wm/Task;->mHandler:Lcom/android/server/wm/Task$ActivityTaskHandler;

    .line 101
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/Task;->mCurrentUser:I

    move-object/from16 v2, p35

    .line 102
    iput-object v2, v0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    move/from16 v2, p36

    .line 103
    iput-boolean v2, v0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    move/from16 v2, p37

    .line 104
    iput-boolean v2, v0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    const/16 v0, 0x7919

    .line 105
    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p3, :cond_1

    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    if-eqz p1, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_3
    if-eqz p2, :cond_4

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_4
    const/4 p1, 0x0

    .line 35
    :goto_0
    if-nez p1, :cond_5

    .line 36
    .line 37
    const-string p0, "ActivityTaskManager"

    .line 38
    .line 39
    const-string p1, "No root task for enter pip, both to front task and activity are null?"

    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_5
    if-eqz p2, :cond_9

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eq v0, v1, :cond_7

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_7

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_7

    .line 74
    .line 75
    :cond_6
    return-void

    .line 76
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_8

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_8

    .line 87
    .line 88
    return-void

    .line 89
    :cond_8
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_9

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_9

    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eq p2, v0, :cond_9

    .line 110
    .line 111
    return-void

    .line 112
    :cond_9
    const/4 p2, 0x0

    .line 113
    const/4 v0, 0x1

    .line 114
    if-eqz p3, :cond_a

    .line 115
    .line 116
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    if-nez p3, :cond_b

    .line 121
    .line 122
    :cond_a
    iget-object p3, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 123
    .line 124
    invoke-virtual {p3, p1}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    if-eqz p3, :cond_c

    .line 129
    .line 130
    :cond_b
    move p3, v0

    .line 131
    goto :goto_1

    .line 132
    :cond_c
    move p3, p2

    .line 133
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_d

    .line 138
    .line 139
    if-nez p3, :cond_d

    .line 140
    .line 141
    move p2, v0

    .line 142
    :cond_d
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 143
    .line 144
    return-void
.end method

.method public static findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    aget-object p0, v0, p0

    .line 19
    .line 20
    return-object p0
.end method

.method public static fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/Task;
    .locals 80

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const-string/jumbo v9, "user_id"

    .line 6
    .line 7
    .line 8
    new-instance v12, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 14
    .line 15
    .line 16
    move-result v13

    .line 17
    new-instance v14, Landroid/app/ActivityManager$TaskDescription;

    .line 18
    .line 19
    invoke-direct {v14}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 23
    .line 24
    invoke-direct {v15}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v7, 0x1

    .line 32
    sub-int/2addr v1, v7

    .line 33
    const/4 v4, -0x1

    .line 34
    const-wide/16 v2, 0x0

    .line 35
    .line 36
    const-string v16, ""

    .line 37
    .line 38
    const/16 v17, 0x4

    .line 39
    .line 40
    move v5, v4

    .line 41
    move/from16 v19, v5

    .line 42
    .line 43
    move/from16 v34, v19

    .line 44
    .line 45
    move/from16 v35, v34

    .line 46
    .line 47
    move/from16 v36, v35

    .line 48
    .line 49
    move/from16 v37, v36

    .line 50
    .line 51
    move/from16 v42, v37

    .line 52
    .line 53
    move/from16 v43, v42

    .line 54
    .line 55
    move/from16 v31, v7

    .line 56
    .line 57
    move/from16 v33, v31

    .line 58
    .line 59
    move-object/from16 v18, v16

    .line 60
    .line 61
    move/from16 v39, v17

    .line 62
    .line 63
    const/16 v20, 0x0

    .line 64
    .line 65
    const/16 v21, 0x0

    .line 66
    .line 67
    const/16 v22, 0x0

    .line 68
    .line 69
    const/16 v23, 0x0

    .line 70
    .line 71
    const/16 v24, 0x0

    .line 72
    .line 73
    const/16 v25, 0x0

    .line 74
    .line 75
    const/16 v26, 0x0

    .line 76
    .line 77
    const/16 v27, 0x0

    .line 78
    .line 79
    const/16 v28, 0x0

    .line 80
    .line 81
    const/16 v29, 0x0

    .line 82
    .line 83
    const/16 v30, 0x0

    .line 84
    .line 85
    const/16 v32, 0x0

    .line 86
    .line 87
    const/16 v38, 0x0

    .line 88
    .line 89
    const/16 v40, 0x0

    .line 90
    .line 91
    const/16 v41, 0x0

    .line 92
    .line 93
    const/16 v44, 0x0

    .line 94
    .line 95
    const/16 v45, 0x0

    .line 96
    .line 97
    const/16 v46, 0x0

    .line 98
    .line 99
    :goto_0
    const-string v6, "ActivityTaskManager"

    .line 100
    .line 101
    if-ltz v1, :cond_22

    .line 102
    .line 103
    invoke-interface {v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    invoke-interface {v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v48

    .line 111
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v49

    .line 118
    sparse-switch v49, :sswitch_data_0

    .line 119
    .line 120
    .line 121
    :goto_1
    move v10, v4

    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :sswitch_0
    const-string/jumbo v10, "root_has_reset"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-nez v10, :cond_0

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_0
    const/16 v10, 0x20

    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :sswitch_1
    const-string/jumbo v10, "window_layout_affinity"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    if-nez v10, :cond_1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_1
    const/16 v10, 0x1f

    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :sswitch_2
    const-string/jumbo v10, "real_activity"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    if-nez v10, :cond_2

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_2
    const/16 v10, 0x1e

    .line 163
    .line 164
    goto/16 :goto_2

    .line 165
    .line 166
    :sswitch_3
    const-string/jumbo v10, "never_relinquish_identity"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    if-nez v10, :cond_3

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_3
    const/16 v10, 0x1d

    .line 177
    .line 178
    goto/16 :goto_2

    .line 179
    .line 180
    :sswitch_4
    const-string v10, "host_process_name"

    .line 181
    .line 182
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    if-nez v10, :cond_4

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_4
    const/16 v10, 0x1c

    .line 190
    .line 191
    goto/16 :goto_2

    .line 192
    .line 193
    :sswitch_5
    const-string v10, "calling_package"

    .line 194
    .line 195
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    if-nez v10, :cond_5

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_5
    const/16 v10, 0x1b

    .line 203
    .line 204
    goto/16 :goto_2

    .line 205
    .line 206
    :sswitch_6
    const-string/jumbo v10, "persist_task_version"

    .line 207
    .line 208
    .line 209
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    if-nez v10, :cond_6

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_6
    const/16 v10, 0x1a

    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :sswitch_7
    const-string v10, "last_description"

    .line 221
    .line 222
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    if-nez v10, :cond_7

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_7
    const/16 v10, 0x19

    .line 230
    .line 231
    goto/16 :goto_2

    .line 232
    .line 233
    :sswitch_8
    const-string v10, "affinity"

    .line 234
    .line 235
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    if-nez v10, :cond_8

    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_8
    const/16 v10, 0x18

    .line 243
    .line 244
    goto/16 :goto_2

    .line 245
    .line 246
    :sswitch_9
    const-string/jumbo v10, "min_width"

    .line 247
    .line 248
    .line 249
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    if-nez v10, :cond_9

    .line 254
    .line 255
    goto/16 :goto_1

    .line 256
    .line 257
    :cond_9
    const/16 v10, 0x17

    .line 258
    .line 259
    goto/16 :goto_2

    .line 260
    .line 261
    :sswitch_a
    const-string v10, "calling_feature_id"

    .line 262
    .line 263
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    if-nez v10, :cond_a

    .line 268
    .line 269
    goto/16 :goto_1

    .line 270
    .line 271
    :cond_a
    const/16 v10, 0x16

    .line 272
    .line 273
    goto/16 :goto_2

    .line 274
    .line 275
    :sswitch_b
    const-string/jumbo v10, "prev_affiliation"

    .line 276
    .line 277
    .line 278
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    if-nez v10, :cond_b

    .line 283
    .line 284
    goto/16 :goto_1

    .line 285
    .line 286
    :cond_b
    const/16 v10, 0x15

    .line 287
    .line 288
    goto/16 :goto_2

    .line 289
    .line 290
    :sswitch_c
    const-string/jumbo v10, "task_type"

    .line 291
    .line 292
    .line 293
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v10

    .line 297
    if-nez v10, :cond_c

    .line 298
    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :cond_c
    const/16 v10, 0x14

    .line 302
    .line 303
    goto/16 :goto_2

    .line 304
    .line 305
    :sswitch_d
    const-string v10, "calling_uid"

    .line 306
    .line 307
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v10

    .line 311
    if-nez v10, :cond_d

    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :cond_d
    const/16 v10, 0x13

    .line 316
    .line 317
    goto/16 :goto_2

    .line 318
    .line 319
    :sswitch_e
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v10

    .line 323
    if-nez v10, :cond_e

    .line 324
    .line 325
    goto/16 :goto_1

    .line 326
    .line 327
    :cond_e
    const/16 v10, 0x12

    .line 328
    .line 329
    goto/16 :goto_2

    .line 330
    .line 331
    :sswitch_f
    const-string/jumbo v10, "root_affinity"

    .line 332
    .line 333
    .line 334
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v10

    .line 338
    if-nez v10, :cond_f

    .line 339
    .line 340
    goto/16 :goto_1

    .line 341
    .line 342
    :cond_f
    const/16 v10, 0x11

    .line 343
    .line 344
    goto/16 :goto_2

    .line 345
    .line 346
    :sswitch_10
    const-string/jumbo v10, "supports_picture_in_picture"

    .line 347
    .line 348
    .line 349
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v10

    .line 353
    if-nez v10, :cond_10

    .line 354
    .line 355
    goto/16 :goto_1

    .line 356
    .line 357
    :cond_10
    const/16 v10, 0x10

    .line 358
    .line 359
    goto/16 :goto_2

    .line 360
    .line 361
    :sswitch_11
    const-string v10, "auto_remove_recents"

    .line 362
    .line 363
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v10

    .line 367
    if-nez v10, :cond_11

    .line 368
    .line 369
    goto/16 :goto_1

    .line 370
    .line 371
    :cond_11
    const/16 v10, 0xf

    .line 372
    .line 373
    goto/16 :goto_2

    .line 374
    .line 375
    :sswitch_12
    const-string v10, "last_snapshot_buffer_size"

    .line 376
    .line 377
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v10

    .line 381
    if-nez v10, :cond_12

    .line 382
    .line 383
    goto/16 :goto_1

    .line 384
    .line 385
    :cond_12
    const/16 v10, 0xe

    .line 386
    .line 387
    goto/16 :goto_2

    .line 388
    .line 389
    :sswitch_13
    const-string/jumbo v10, "orig_activity"

    .line 390
    .line 391
    .line 392
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v10

    .line 396
    if-nez v10, :cond_13

    .line 397
    .line 398
    goto/16 :goto_1

    .line 399
    .line 400
    :cond_13
    const/16 v10, 0xd

    .line 401
    .line 402
    goto/16 :goto_2

    .line 403
    .line 404
    :sswitch_14
    const-string/jumbo v10, "non_fullscreen_bounds"

    .line 405
    .line 406
    .line 407
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v10

    .line 411
    if-nez v10, :cond_14

    .line 412
    .line 413
    goto/16 :goto_1

    .line 414
    .line 415
    :cond_14
    const/16 v10, 0xc

    .line 416
    .line 417
    goto/16 :goto_2

    .line 418
    .line 419
    :sswitch_15
    const-string v10, "last_snapshot_task_size"

    .line 420
    .line 421
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v10

    .line 425
    if-nez v10, :cond_15

    .line 426
    .line 427
    goto/16 :goto_1

    .line 428
    .line 429
    :cond_15
    const/16 v10, 0xb

    .line 430
    .line 431
    goto/16 :goto_2

    .line 432
    .line 433
    :sswitch_16
    const-string/jumbo v10, "min_height"

    .line 434
    .line 435
    .line 436
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v10

    .line 440
    if-nez v10, :cond_16

    .line 441
    .line 442
    goto/16 :goto_1

    .line 443
    .line 444
    :cond_16
    const/16 v10, 0xa

    .line 445
    .line 446
    goto/16 :goto_2

    .line 447
    .line 448
    :sswitch_17
    const-string/jumbo v10, "resize_mode"

    .line 449
    .line 450
    .line 451
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v10

    .line 455
    if-nez v10, :cond_17

    .line 456
    .line 457
    goto/16 :goto_1

    .line 458
    .line 459
    :cond_17
    const/16 v10, 0x9

    .line 460
    .line 461
    goto/16 :goto_2

    .line 462
    .line 463
    :sswitch_18
    const-string v10, "effective_uid"

    .line 464
    .line 465
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v10

    .line 469
    if-nez v10, :cond_18

    .line 470
    .line 471
    goto/16 :goto_1

    .line 472
    .line 473
    :cond_18
    const/16 v10, 0x8

    .line 474
    .line 475
    goto/16 :goto_2

    .line 476
    .line 477
    :sswitch_19
    const-string/jumbo v10, "user_setup_complete"

    .line 478
    .line 479
    .line 480
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v10

    .line 484
    if-nez v10, :cond_19

    .line 485
    .line 486
    goto/16 :goto_1

    .line 487
    .line 488
    :cond_19
    const/4 v10, 0x7

    .line 489
    goto :goto_2

    .line 490
    :sswitch_1a
    const-string/jumbo v10, "task_affiliation"

    .line 491
    .line 492
    .line 493
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v10

    .line 497
    if-nez v10, :cond_1a

    .line 498
    .line 499
    goto/16 :goto_1

    .line 500
    .line 501
    :cond_1a
    const/4 v10, 0x6

    .line 502
    goto :goto_2

    .line 503
    :sswitch_1b
    const-string/jumbo v10, "real_activity_suspended"

    .line 504
    .line 505
    .line 506
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v10

    .line 510
    if-nez v10, :cond_1b

    .line 511
    .line 512
    goto/16 :goto_1

    .line 513
    .line 514
    :cond_1b
    const/4 v10, 0x5

    .line 515
    goto :goto_2

    .line 516
    :sswitch_1c
    const-string v10, "dedicated_task"

    .line 517
    .line 518
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result v10

    .line 522
    if-nez v10, :cond_1c

    .line 523
    .line 524
    goto/16 :goto_1

    .line 525
    .line 526
    :cond_1c
    move/from16 v10, v17

    .line 527
    .line 528
    goto :goto_2

    .line 529
    :sswitch_1d
    const-string/jumbo v10, "next_affiliation"

    .line 530
    .line 531
    .line 532
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v10

    .line 536
    if-nez v10, :cond_1d

    .line 537
    .line 538
    goto/16 :goto_1

    .line 539
    .line 540
    :cond_1d
    const/4 v10, 0x3

    .line 541
    goto :goto_2

    .line 542
    :sswitch_1e
    const-string/jumbo v10, "task_id"

    .line 543
    .line 544
    .line 545
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result v10

    .line 549
    if-nez v10, :cond_1e

    .line 550
    .line 551
    goto/16 :goto_1

    .line 552
    .line 553
    :cond_1e
    const/4 v10, 0x2

    .line 554
    goto :goto_2

    .line 555
    :sswitch_1f
    const-string v10, "last_time_moved"

    .line 556
    .line 557
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result v10

    .line 561
    if-nez v10, :cond_1f

    .line 562
    .line 563
    goto/16 :goto_1

    .line 564
    .line 565
    :cond_1f
    move v10, v7

    .line 566
    goto :goto_2

    .line 567
    :sswitch_20
    const-string v10, "last_snapshot_content_insets"

    .line 568
    .line 569
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v10

    .line 573
    if-nez v10, :cond_20

    .line 574
    .line 575
    goto/16 :goto_1

    .line 576
    .line 577
    :cond_20
    const/4 v10, 0x0

    .line 578
    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 579
    .line 580
    .line 581
    const-string/jumbo v10, "task_description_"

    .line 582
    .line 583
    .line 584
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 585
    .line 586
    .line 587
    move-result v10

    .line 588
    if-nez v10, :cond_21

    .line 589
    .line 590
    const-string v10, "Task: Unknown attribute="

    .line 591
    .line 592
    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v10

    .line 596
    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .line 598
    .line 599
    goto/16 :goto_3

    .line 600
    .line 601
    :pswitch_0
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 602
    .line 603
    .line 604
    move-result v6

    .line 605
    move/from16 v27, v6

    .line 606
    .line 607
    goto/16 :goto_3

    .line 608
    .line 609
    :pswitch_1
    move-object/from16 v26, v48

    .line 610
    .line 611
    goto/16 :goto_3

    .line 612
    .line 613
    :pswitch_2
    invoke-static/range {v48 .. v48}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 614
    .line 615
    .line 616
    move-result-object v23

    .line 617
    goto/16 :goto_3

    .line 618
    .line 619
    :pswitch_3
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 620
    .line 621
    .line 622
    move-result v33

    .line 623
    goto/16 :goto_3

    .line 624
    .line 625
    :pswitch_4
    move-object/from16 v45, v48

    .line 626
    .line 627
    goto/16 :goto_3

    .line 628
    .line 629
    :pswitch_5
    move-object/from16 v18, v48

    .line 630
    .line 631
    goto/16 :goto_3

    .line 632
    .line 633
    :pswitch_6
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 634
    .line 635
    .line 636
    move-result v6

    .line 637
    move/from16 v44, v6

    .line 638
    .line 639
    goto/16 :goto_3

    .line 640
    .line 641
    :pswitch_7
    move-object/from16 v32, v48

    .line 642
    .line 643
    goto/16 :goto_3

    .line 644
    .line 645
    :pswitch_8
    move-object/from16 v20, v48

    .line 646
    .line 647
    goto/16 :goto_3

    .line 648
    .line 649
    :pswitch_9
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 650
    .line 651
    .line 652
    move-result v42

    .line 653
    goto/16 :goto_3

    .line 654
    .line 655
    :pswitch_a
    move-object/from16 v38, v48

    .line 656
    .line 657
    goto/16 :goto_3

    .line 658
    .line 659
    :pswitch_b
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 660
    .line 661
    .line 662
    move-result v35

    .line 663
    goto/16 :goto_3

    .line 664
    .line 665
    :pswitch_c
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 666
    .line 667
    .line 668
    move-result v6

    .line 669
    move/from16 v29, v6

    .line 670
    .line 671
    goto/16 :goto_3

    .line 672
    .line 673
    :pswitch_d
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 674
    .line 675
    .line 676
    move-result v37

    .line 677
    goto/16 :goto_3

    .line 678
    .line 679
    :pswitch_e
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 680
    .line 681
    .line 682
    move-result v6

    .line 683
    move/from16 v30, v6

    .line 684
    .line 685
    goto/16 :goto_3

    .line 686
    .line 687
    :pswitch_f
    move/from16 v22, v7

    .line 688
    .line 689
    move-object/from16 v21, v48

    .line 690
    .line 691
    goto/16 :goto_3

    .line 692
    .line 693
    :pswitch_10
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 694
    .line 695
    .line 696
    move-result v6

    .line 697
    move/from16 v40, v6

    .line 698
    .line 699
    goto/16 :goto_3

    .line 700
    .line 701
    :pswitch_11
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 702
    .line 703
    .line 704
    move-result v6

    .line 705
    move/from16 v28, v6

    .line 706
    .line 707
    goto :goto_3

    .line 708
    :pswitch_12
    invoke-static/range {v48 .. v48}, Landroid/graphics/Point;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Point;

    .line 709
    .line 710
    .line 711
    move-result-object v6

    .line 712
    iput-object v6, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 713
    .line 714
    goto :goto_3

    .line 715
    :pswitch_13
    invoke-static/range {v48 .. v48}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 716
    .line 717
    .line 718
    move-result-object v25

    .line 719
    goto :goto_3

    .line 720
    :pswitch_14
    invoke-static/range {v48 .. v48}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 721
    .line 722
    .line 723
    move-result-object v41

    .line 724
    goto :goto_3

    .line 725
    :pswitch_15
    invoke-static/range {v48 .. v48}, Landroid/graphics/Point;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Point;

    .line 726
    .line 727
    .line 728
    move-result-object v6

    .line 729
    iput-object v6, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 730
    .line 731
    goto :goto_3

    .line 732
    :pswitch_16
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 733
    .line 734
    .line 735
    move-result v43

    .line 736
    goto :goto_3

    .line 737
    :pswitch_17
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 738
    .line 739
    .line 740
    move-result v39

    .line 741
    goto :goto_3

    .line 742
    :pswitch_18
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 743
    .line 744
    .line 745
    move-result v19

    .line 746
    goto :goto_3

    .line 747
    :pswitch_19
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 748
    .line 749
    .line 750
    move-result v31

    .line 751
    goto :goto_3

    .line 752
    :pswitch_1a
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 753
    .line 754
    .line 755
    move-result v34

    .line 756
    goto :goto_3

    .line 757
    :pswitch_1b
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 758
    .line 759
    .line 760
    move-result-object v6

    .line 761
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 762
    .line 763
    .line 764
    move-result v6

    .line 765
    move/from16 v24, v6

    .line 766
    .line 767
    goto :goto_3

    .line 768
    :pswitch_1c
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 769
    .line 770
    .line 771
    move-result v6

    .line 772
    move/from16 v46, v6

    .line 773
    .line 774
    goto :goto_3

    .line 775
    :pswitch_1d
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 776
    .line 777
    .line 778
    move-result v36

    .line 779
    goto :goto_3

    .line 780
    :pswitch_1e
    if-ne v5, v4, :cond_21

    .line 781
    .line 782
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 783
    .line 784
    .line 785
    move-result v5

    .line 786
    goto :goto_3

    .line 787
    :pswitch_1f
    invoke-static/range {v48 .. v48}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 788
    .line 789
    .line 790
    move-result-wide v2

    .line 791
    goto :goto_3

    .line 792
    :pswitch_20
    invoke-static/range {v48 .. v48}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 793
    .line 794
    .line 795
    move-result-object v6

    .line 796
    iput-object v6, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 797
    .line 798
    :cond_21
    :goto_3
    add-int/2addr v1, v4

    .line 799
    goto/16 :goto_0

    .line 800
    .line 801
    :cond_22
    invoke-virtual {v14, v0}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 802
    .line 803
    .line 804
    const/4 v10, 0x0

    .line 805
    const/4 v11, 0x0

    .line 806
    :goto_4
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 807
    .line 808
    .line 809
    move-result v1

    .line 810
    if-eq v1, v7, :cond_38

    .line 811
    .line 812
    const/4 v4, 0x3

    .line 813
    if-ne v1, v4, :cond_23

    .line 814
    .line 815
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 816
    .line 817
    .line 818
    move-result v4

    .line 819
    if-lt v4, v13, :cond_24

    .line 820
    .line 821
    :cond_23
    const/4 v4, 0x2

    .line 822
    goto :goto_5

    .line 823
    :cond_24
    move-wide/from16 v76, v2

    .line 824
    .line 825
    move/from16 v78, v5

    .line 826
    .line 827
    move-object v4, v6

    .line 828
    move v0, v7

    .line 829
    const/4 v2, 0x0

    .line 830
    const/4 v3, 0x0

    .line 831
    const/16 v17, -0x1

    .line 832
    .line 833
    goto/16 :goto_f

    .line 834
    .line 835
    :goto_5
    if-ne v1, v4, :cond_37

    .line 836
    .line 837
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v1

    .line 841
    const-string v4, "affinity_intent"

    .line 842
    .line 843
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v4

    .line 847
    if-eqz v4, :cond_25

    .line 848
    .line 849
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    move-object v11, v1

    .line 854
    :goto_6
    move-wide/from16 v76, v2

    .line 855
    .line 856
    move/from16 v78, v5

    .line 857
    .line 858
    move-object v4, v6

    .line 859
    move v0, v7

    .line 860
    move-object/from16 v75, v9

    .line 861
    .line 862
    const/4 v2, 0x0

    .line 863
    const/4 v3, 0x0

    .line 864
    const/16 v17, -0x1

    .line 865
    .line 866
    goto/16 :goto_e

    .line 867
    .line 868
    :cond_25
    const-string v4, "intent"

    .line 869
    .line 870
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    move-result v48

    .line 874
    if-eqz v48, :cond_26

    .line 875
    .line 876
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    .line 877
    .line 878
    .line 879
    move-result-object v1

    .line 880
    move-object v10, v1

    .line 881
    goto :goto_6

    .line 882
    :cond_26
    const-string v7, "activity"

    .line 883
    .line 884
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    move-result v7

    .line 888
    if-eqz v7, :cond_36

    .line 889
    .line 890
    const-string v1, "launched_from_uid"

    .line 891
    .line 892
    move-wide/from16 v50, v2

    .line 893
    .line 894
    const/4 v2, 0x0

    .line 895
    const/4 v7, 0x0

    .line 896
    invoke-interface {v0, v7, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 897
    .line 898
    .line 899
    move-result v56

    .line 900
    const-string v1, "launched_from_package"

    .line 901
    .line 902
    invoke-interface {v0, v7, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v57

    .line 906
    const-string v1, "launched_from_feature"

    .line 907
    .line 908
    invoke-interface {v0, v7, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v58

    .line 912
    const-string/jumbo v1, "resolved_type"

    .line 913
    .line 914
    .line 915
    invoke-interface {v0, v7, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    const-string v1, "component_specified"

    .line 920
    .line 921
    invoke-interface {v0, v7, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 922
    .line 923
    .line 924
    move-result v66

    .line 925
    invoke-interface {v0, v7, v9, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 926
    .line 927
    .line 928
    move-result v52

    .line 929
    const-string v1, "id"

    .line 930
    .line 931
    move-object/from16 v53, v3

    .line 932
    .line 933
    const-wide/16 v2, -0x1

    .line 934
    .line 935
    invoke-interface {v0, v7, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 936
    .line 937
    .line 938
    move-result-wide v73

    .line 939
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 940
    .line 941
    .line 942
    move-result v1

    .line 943
    new-instance v7, Landroid/app/ActivityManager$TaskDescription;

    .line 944
    .line 945
    invoke-direct {v7}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v7, v0}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 949
    .line 950
    .line 951
    const/4 v2, 0x0

    .line 952
    const/16 v54, 0x0

    .line 953
    .line 954
    const/16 v71, 0x0

    .line 955
    .line 956
    :goto_7
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 957
    .line 958
    .line 959
    move-result v3

    .line 960
    move/from16 v55, v5

    .line 961
    .line 962
    const/4 v5, 0x1

    .line 963
    if-eq v3, v5, :cond_28

    .line 964
    .line 965
    const/4 v5, 0x3

    .line 966
    if-ne v3, v5, :cond_27

    .line 967
    .line 968
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 969
    .line 970
    .line 971
    move-result v5

    .line 972
    if-lt v5, v1, :cond_28

    .line 973
    .line 974
    :cond_27
    const/4 v5, 0x2

    .line 975
    goto :goto_8

    .line 976
    :cond_28
    move-object/from16 v16, v7

    .line 977
    .line 978
    move-object/from16 v75, v9

    .line 979
    .line 980
    const/4 v9, 0x0

    .line 981
    goto/16 :goto_d

    .line 982
    .line 983
    :goto_8
    if-ne v3, v5, :cond_32

    .line 984
    .line 985
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v3

    .line 989
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    move-result v5

    .line 993
    if-eqz v5, :cond_29

    .line 994
    .line 995
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    .line 996
    .line 997
    .line 998
    move-result-object v2

    .line 999
    move/from16 v59, v1

    .line 1000
    .line 1001
    :goto_9
    move-object/from16 v60, v4

    .line 1002
    .line 1003
    move-object/from16 v16, v7

    .line 1004
    .line 1005
    move-object/from16 v75, v9

    .line 1006
    .line 1007
    const/4 v9, 0x0

    .line 1008
    goto/16 :goto_b

    .line 1009
    .line 1010
    :cond_29
    const-string/jumbo v5, "persistable_bundle"

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v5

    .line 1017
    if-eqz v5, :cond_2a

    .line 1018
    .line 1019
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v3

    .line 1023
    move/from16 v59, v1

    .line 1024
    .line 1025
    move-object/from16 v71, v3

    .line 1026
    .line 1027
    goto :goto_9

    .line 1028
    :cond_2a
    invoke-static {}, Landroid/security/Flags;->contentUriPermissionApis()Z

    .line 1029
    .line 1030
    .line 1031
    move-result v5

    .line 1032
    move/from16 v59, v1

    .line 1033
    .line 1034
    const-string/jumbo v1, "restoreActivity: unexpected name="

    .line 1035
    .line 1036
    .line 1037
    if-eqz v5, :cond_31

    .line 1038
    .line 1039
    const-string v5, "initial_caller_info"

    .line 1040
    .line 1041
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v5

    .line 1045
    if-eqz v5, :cond_31

    .line 1046
    .line 1047
    const-string v3, "caller_uid"

    .line 1048
    .line 1049
    move-object/from16 v16, v7

    .line 1050
    .line 1051
    const/4 v5, 0x0

    .line 1052
    const/4 v7, 0x0

    .line 1053
    invoke-interface {v0, v5, v3, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1054
    .line 1055
    .line 1056
    move-result v3

    .line 1057
    const-string v7, "caller_package"

    .line 1058
    .line 1059
    invoke-interface {v0, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v7

    .line 1063
    move-object/from16 v60, v4

    .line 1064
    .line 1065
    const-string v4, "caller_is_share_enabled"

    .line 1066
    .line 1067
    move-object/from16 v75, v9

    .line 1068
    .line 1069
    const/4 v9, 0x0

    .line 1070
    invoke-interface {v0, v5, v4, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1071
    .line 1072
    .line 1073
    move-result v4

    .line 1074
    new-instance v5, Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    .line 1075
    .line 1076
    invoke-direct {v5, v3, v7, v4}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;-><init>(ILjava/lang/String;Z)V

    .line 1077
    .line 1078
    .line 1079
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 1080
    .line 1081
    .line 1082
    move-result v3

    .line 1083
    :cond_2b
    :goto_a
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1084
    .line 1085
    .line 1086
    move-result v4

    .line 1087
    const/4 v7, 0x1

    .line 1088
    if-eq v4, v7, :cond_30

    .line 1089
    .line 1090
    const/4 v7, 0x3

    .line 1091
    if-ne v4, v7, :cond_2c

    .line 1092
    .line 1093
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 1094
    .line 1095
    .line 1096
    move-result v7

    .line 1097
    if-lt v7, v3, :cond_30

    .line 1098
    .line 1099
    :cond_2c
    const/4 v7, 0x2

    .line 1100
    if-ne v4, v7, :cond_2b

    .line 1101
    .line 1102
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v4

    .line 1106
    const-string/jumbo v7, "readable_content_uri"

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1110
    .line 1111
    .line 1112
    move-result v7

    .line 1113
    if-eqz v7, :cond_2d

    .line 1114
    .line 1115
    iget-object v4, v5, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mReadableContentUris:Landroid/util/ArraySet;

    .line 1116
    .line 1117
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->restoreGrantUriFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/uri/GrantUri;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v7

    .line 1121
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1122
    .line 1123
    .line 1124
    goto :goto_a

    .line 1125
    :cond_2d
    const-string/jumbo v7, "writable_content_uri"

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1129
    .line 1130
    .line 1131
    move-result v7

    .line 1132
    if-eqz v7, :cond_2e

    .line 1133
    .line 1134
    iget-object v4, v5, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mWritableContentUris:Landroid/util/ArraySet;

    .line 1135
    .line 1136
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->restoreGrantUriFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/uri/GrantUri;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v7

    .line 1140
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1141
    .line 1142
    .line 1143
    goto :goto_a

    .line 1144
    :cond_2e
    const-string v7, "inaccessible_content_uri"

    .line 1145
    .line 1146
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1147
    .line 1148
    .line 1149
    move-result v7

    .line 1150
    if-eqz v7, :cond_2f

    .line 1151
    .line 1152
    iget-object v4, v5, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mInaccessibleContentUris:Landroid/util/ArraySet;

    .line 1153
    .line 1154
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->restoreGrantUriFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/uri/GrantUri;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v7

    .line 1158
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1159
    .line 1160
    .line 1161
    goto :goto_a

    .line 1162
    :cond_2f
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1163
    .line 1164
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v4

    .line 1174
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    .line 1176
    .line 1177
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1178
    .line 1179
    .line 1180
    goto :goto_a

    .line 1181
    :cond_30
    move-object/from16 v54, v5

    .line 1182
    .line 1183
    goto :goto_b

    .line 1184
    :cond_31
    move-object/from16 v60, v4

    .line 1185
    .line 1186
    move-object/from16 v16, v7

    .line 1187
    .line 1188
    move-object/from16 v75, v9

    .line 1189
    .line 1190
    const/4 v9, 0x0

    .line 1191
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1192
    .line 1193
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v1

    .line 1203
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    .line 1205
    .line 1206
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1207
    .line 1208
    .line 1209
    :goto_b
    move-object/from16 v7, v16

    .line 1210
    .line 1211
    move/from16 v5, v55

    .line 1212
    .line 1213
    move/from16 v1, v59

    .line 1214
    .line 1215
    move-object/from16 v4, v60

    .line 1216
    .line 1217
    :goto_c
    move-object/from16 v9, v75

    .line 1218
    .line 1219
    goto/16 :goto_7

    .line 1220
    .line 1221
    :cond_32
    move-object/from16 v75, v9

    .line 1222
    .line 1223
    const/4 v9, 0x0

    .line 1224
    move/from16 v5, v55

    .line 1225
    .line 1226
    goto :goto_c

    .line 1227
    :goto_d
    if-eqz v2, :cond_35

    .line 1228
    .line 1229
    iget-object v7, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1230
    .line 1231
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 1232
    .line 1233
    .line 1234
    move-result v59

    .line 1235
    const/4 v5, 0x0

    .line 1236
    const/16 v60, 0x0

    .line 1237
    .line 1238
    move-object/from16 v1, p1

    .line 1239
    .line 1240
    move-wide/from16 v3, v50

    .line 1241
    .line 1242
    move-object/from16 v50, v2

    .line 1243
    .line 1244
    move-wide/from16 v76, v3

    .line 1245
    .line 1246
    move-object/from16 v4, v53

    .line 1247
    .line 1248
    move-object/from16 v9, v54

    .line 1249
    .line 1250
    move-object v3, v4

    .line 1251
    move-object/from16 v61, v4

    .line 1252
    .line 1253
    const/16 v17, -0x1

    .line 1254
    .line 1255
    move/from16 v4, v52

    .line 1256
    .line 1257
    move/from16 v78, v55

    .line 1258
    .line 1259
    const/16 v47, 0x0

    .line 1260
    .line 1261
    move-object/from16 v79, v6

    .line 1262
    .line 1263
    move/from16 v6, v59

    .line 1264
    .line 1265
    move-object/from16 v47, v7

    .line 1266
    .line 1267
    const/4 v0, 0x1

    .line 1268
    move/from16 v7, v60

    .line 1269
    .line 1270
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v1

    .line 1274
    move-object/from16 v4, v50

    .line 1275
    .line 1276
    const/4 v2, 0x0

    .line 1277
    const/4 v3, 0x0

    .line 1278
    invoke-virtual {v8, v4, v1, v3, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v1

    .line 1282
    if-eqz v1, :cond_34

    .line 1283
    .line 1284
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v62

    .line 1288
    new-instance v5, Lcom/android/server/wm/ActivityRecord;

    .line 1289
    .line 1290
    move-object/from16 v52, v5

    .line 1291
    .line 1292
    move-object/from16 v6, v47

    .line 1293
    .line 1294
    iget-object v7, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1295
    .line 1296
    move-object/from16 v68, v7

    .line 1297
    .line 1298
    const/16 v65, 0x0

    .line 1299
    .line 1300
    const/16 v67, 0x0

    .line 1301
    .line 1302
    const/16 v54, 0x0

    .line 1303
    .line 1304
    const/16 v55, 0x0

    .line 1305
    .line 1306
    const/16 v63, 0x0

    .line 1307
    .line 1308
    const/16 v64, 0x0

    .line 1309
    .line 1310
    const/16 v69, 0x0

    .line 1311
    .line 1312
    const/16 v70, 0x0

    .line 1313
    .line 1314
    move-object/from16 v53, v6

    .line 1315
    .line 1316
    move-object/from16 v59, v4

    .line 1317
    .line 1318
    move-object/from16 v60, v61

    .line 1319
    .line 1320
    move-object/from16 v61, v1

    .line 1321
    .line 1322
    move-object/from16 v72, v16

    .line 1323
    .line 1324
    invoke-direct/range {v52 .. v74}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;J)V

    .line 1325
    .line 1326
    .line 1327
    invoke-static {}, Landroid/security/Flags;->contentUriPermissionApis()Z

    .line 1328
    .line 1329
    .line 1330
    move-result v1

    .line 1331
    if-eqz v1, :cond_33

    .line 1332
    .line 1333
    if-eqz v9, :cond_33

    .line 1334
    .line 1335
    iget-object v1, v5, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    .line 1336
    .line 1337
    iget-object v4, v5, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    .line 1338
    .line 1339
    iget-object v1, v1, Lcom/android/server/wm/ActivityCallerState;->mCallerTokenInfoMap:Ljava/util/WeakHashMap;

    .line 1340
    .line 1341
    invoke-virtual {v1, v4, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    .line 1343
    .line 1344
    :cond_33
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    .line 1346
    .line 1347
    move-object/from16 v4, v79

    .line 1348
    .line 1349
    goto :goto_e

    .line 1350
    :cond_34
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1351
    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1353
    .line 1354
    const-string/jumbo v2, "restoreActivity resolver error. Intent="

    .line 1355
    .line 1356
    .line 1357
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1361
    .line 1362
    .line 1363
    const-string v2, " resolvedType="

    .line 1364
    .line 1365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    .line 1367
    .line 1368
    move-object/from16 v2, v61

    .line 1369
    .line 1370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    .line 1372
    .line 1373
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v1

    .line 1377
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 1378
    .line 1379
    .line 1380
    throw v0

    .line 1381
    :cond_35
    move-object v4, v2

    .line 1382
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1383
    .line 1384
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    const-string/jumbo v2, "restoreActivity error intent="

    .line 1387
    .line 1388
    .line 1389
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v1

    .line 1399
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 1400
    .line 1401
    .line 1402
    throw v0

    .line 1403
    :cond_36
    move-wide/from16 v76, v2

    .line 1404
    .line 1405
    move/from16 v78, v5

    .line 1406
    .line 1407
    move-object/from16 v79, v6

    .line 1408
    .line 1409
    move-object/from16 v75, v9

    .line 1410
    .line 1411
    const/4 v0, 0x1

    .line 1412
    const/4 v2, 0x0

    .line 1413
    const/4 v3, 0x0

    .line 1414
    const/16 v17, -0x1

    .line 1415
    .line 1416
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1417
    .line 1418
    const-string/jumbo v5, "restoreTask: Unexpected name="

    .line 1419
    .line 1420
    .line 1421
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v1

    .line 1431
    move-object/from16 v4, v79

    .line 1432
    .line 1433
    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    .line 1435
    .line 1436
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1437
    .line 1438
    .line 1439
    :goto_e
    move v7, v0

    .line 1440
    move-object v6, v4

    .line 1441
    move/from16 v4, v17

    .line 1442
    .line 1443
    move-object/from16 v9, v75

    .line 1444
    .line 1445
    move-wide/from16 v2, v76

    .line 1446
    .line 1447
    move/from16 v5, v78

    .line 1448
    .line 1449
    move-object/from16 v0, p0

    .line 1450
    .line 1451
    goto/16 :goto_4

    .line 1452
    .line 1453
    :cond_37
    move-wide/from16 v76, v2

    .line 1454
    .line 1455
    const/16 v17, -0x1

    .line 1456
    .line 1457
    move-object/from16 v0, p0

    .line 1458
    .line 1459
    move/from16 v4, v17

    .line 1460
    .line 1461
    goto/16 :goto_4

    .line 1462
    .line 1463
    :cond_38
    move-wide/from16 v76, v2

    .line 1464
    .line 1465
    move/from16 v17, v4

    .line 1466
    .line 1467
    move/from16 v78, v5

    .line 1468
    .line 1469
    move-object v4, v6

    .line 1470
    move v0, v7

    .line 1471
    const/4 v2, 0x0

    .line 1472
    const/4 v3, 0x0

    .line 1473
    :goto_f
    if-nez v22, :cond_39

    .line 1474
    .line 1475
    move-object/from16 v6, v20

    .line 1476
    .line 1477
    goto :goto_10

    .line 1478
    :cond_39
    const-string v1, "@"

    .line 1479
    .line 1480
    move-object/from16 v6, v21

    .line 1481
    .line 1482
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1483
    .line 1484
    .line 1485
    move-result v1

    .line 1486
    if-eqz v1, :cond_3a

    .line 1487
    .line 1488
    move-object v6, v2

    .line 1489
    :cond_3a
    :goto_10
    if-gtz v19, :cond_3e

    .line 1490
    .line 1491
    if-eqz v10, :cond_3b

    .line 1492
    .line 1493
    move-object v1, v10

    .line 1494
    goto :goto_11

    .line 1495
    :cond_3b
    move-object v1, v11

    .line 1496
    :goto_11
    if-eqz v1, :cond_3c

    .line 1497
    .line 1498
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v2

    .line 1502
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v5

    .line 1506
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    move-object/from16 v79, v4

    .line 1511
    .line 1512
    const-wide/16 v3, 0x2200

    .line 1513
    .line 1514
    move/from16 v7, v30

    .line 1515
    .line 1516
    :try_start_1
    invoke-interface {v2, v5, v3, v4, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v2

    .line 1520
    if-eqz v2, :cond_3d

    .line 1521
    .line 1522
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1523
    .line 1524
    goto :goto_12

    .line 1525
    :catch_0
    :cond_3c
    move-object/from16 v79, v4

    .line 1526
    .line 1527
    move/from16 v7, v30

    .line 1528
    .line 1529
    :catch_1
    :cond_3d
    const/4 v5, 0x0

    .line 1530
    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1531
    .line 1532
    const-string v3, "Updating task #"

    .line 1533
    .line 1534
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1535
    .line 1536
    .line 1537
    move/from16 v4, v78

    .line 1538
    .line 1539
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    .line 1542
    const-string v3, " for "

    .line 1543
    .line 1544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1548
    .line 1549
    .line 1550
    const-string v1, ": effectiveUid="

    .line 1551
    .line 1552
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    .line 1554
    .line 1555
    move-object/from16 v1, v79

    .line 1556
    .line 1557
    invoke-static {v2, v5, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    :goto_13
    move/from16 v1, v44

    .line 1561
    .line 1562
    goto :goto_14

    .line 1563
    :cond_3e
    move/from16 v7, v30

    .line 1564
    .line 1565
    move/from16 v4, v78

    .line 1566
    .line 1567
    move/from16 v5, v19

    .line 1568
    .line 1569
    goto :goto_13

    .line 1570
    :goto_14
    if-ge v1, v0, :cond_40

    .line 1571
    .line 1572
    move/from16 v1, v29

    .line 1573
    .line 1574
    if-ne v1, v0, :cond_3f

    .line 1575
    .line 1576
    move/from16 v1, v39

    .line 1577
    .line 1578
    const/4 v2, 0x2

    .line 1579
    if-ne v1, v2, :cond_41

    .line 1580
    .line 1581
    move v2, v0

    .line 1582
    :goto_15
    move/from16 v1, v40

    .line 1583
    .line 1584
    goto :goto_17

    .line 1585
    :cond_3f
    move/from16 v1, v39

    .line 1586
    .line 1587
    goto :goto_16

    .line 1588
    :cond_40
    move/from16 v1, v39

    .line 1589
    .line 1590
    const/4 v2, 0x2

    .line 1591
    const/4 v3, 0x3

    .line 1592
    if-ne v1, v3, :cond_41

    .line 1593
    .line 1594
    move v1, v0

    .line 1595
    goto :goto_17

    .line 1596
    :cond_41
    :goto_16
    move v2, v1

    .line 1597
    goto :goto_15

    .line 1598
    :goto_17
    new-instance v3, Lcom/android/server/wm/Task$Builder;

    .line 1599
    .line 1600
    iget-object v9, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1601
    .line 1602
    invoke-direct {v3, v9}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1603
    .line 1604
    .line 1605
    iput v4, v3, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    .line 1606
    .line 1607
    iput-object v10, v3, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    .line 1608
    .line 1609
    iput-object v11, v3, Lcom/android/server/wm/Task$Builder;->mAffinityIntent:Landroid/content/Intent;

    .line 1610
    .line 1611
    move-object/from16 v4, v20

    .line 1612
    .line 1613
    iput-object v4, v3, Lcom/android/server/wm/Task$Builder;->mAffinity:Ljava/lang/String;

    .line 1614
    .line 1615
    iput-object v6, v3, Lcom/android/server/wm/Task$Builder;->mRootAffinity:Ljava/lang/String;

    .line 1616
    .line 1617
    move-object/from16 v6, v23

    .line 1618
    .line 1619
    iput-object v6, v3, Lcom/android/server/wm/Task$Builder;->mRealActivity:Landroid/content/ComponentName;

    .line 1620
    .line 1621
    move-object/from16 v6, v25

    .line 1622
    .line 1623
    iput-object v6, v3, Lcom/android/server/wm/Task$Builder;->mOrigActivity:Landroid/content/ComponentName;

    .line 1624
    .line 1625
    move/from16 v4, v27

    .line 1626
    .line 1627
    iput-boolean v4, v3, Lcom/android/server/wm/Task$Builder;->mRootWasReset:Z

    .line 1628
    .line 1629
    move/from16 v4, v28

    .line 1630
    .line 1631
    iput-boolean v4, v3, Lcom/android/server/wm/Task$Builder;->mAutoRemoveRecents:Z

    .line 1632
    .line 1633
    iput v7, v3, Lcom/android/server/wm/Task$Builder;->mUserId:I

    .line 1634
    .line 1635
    iput v5, v3, Lcom/android/server/wm/Task$Builder;->mEffectiveUid:I

    .line 1636
    .line 1637
    move-object/from16 v6, v32

    .line 1638
    .line 1639
    iput-object v6, v3, Lcom/android/server/wm/Task$Builder;->mLastDescription:Ljava/lang/String;

    .line 1640
    .line 1641
    move-wide/from16 v4, v76

    .line 1642
    .line 1643
    iput-wide v4, v3, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    .line 1644
    .line 1645
    move/from16 v7, v33

    .line 1646
    .line 1647
    iput-boolean v7, v3, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    .line 1648
    .line 1649
    iput-object v14, v3, Lcom/android/server/wm/Task$Builder;->mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1650
    .line 1651
    iput-object v15, v3, Lcom/android/server/wm/Task$Builder;->mLastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 1652
    .line 1653
    move/from16 v4, v34

    .line 1654
    .line 1655
    iput v4, v3, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    .line 1656
    .line 1657
    move/from16 v4, v35

    .line 1658
    .line 1659
    iput v4, v3, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    .line 1660
    .line 1661
    move/from16 v4, v36

    .line 1662
    .line 1663
    iput v4, v3, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    .line 1664
    .line 1665
    move/from16 v4, v37

    .line 1666
    .line 1667
    iput v4, v3, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    .line 1668
    .line 1669
    move-object/from16 v4, v18

    .line 1670
    .line 1671
    iput-object v4, v3, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    .line 1672
    .line 1673
    move-object/from16 v6, v38

    .line 1674
    .line 1675
    iput-object v6, v3, Lcom/android/server/wm/Task$Builder;->mCallingFeatureId:Ljava/lang/String;

    .line 1676
    .line 1677
    iput v2, v3, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    .line 1678
    .line 1679
    iput-boolean v1, v3, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    .line 1680
    .line 1681
    move/from16 v5, v24

    .line 1682
    .line 1683
    iput-boolean v5, v3, Lcom/android/server/wm/Task$Builder;->mRealActivitySuspended:Z

    .line 1684
    .line 1685
    move/from16 v7, v31

    .line 1686
    .line 1687
    iput-boolean v7, v3, Lcom/android/server/wm/Task$Builder;->mUserSetupComplete:Z

    .line 1688
    .line 1689
    move/from16 v4, v42

    .line 1690
    .line 1691
    iput v4, v3, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    .line 1692
    .line 1693
    move/from16 v4, v43

    .line 1694
    .line 1695
    iput v4, v3, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    .line 1696
    .line 1697
    invoke-virtual {v3}, Lcom/android/server/wm/Task$Builder;->buildInner()Lcom/android/server/wm/Task;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v1

    .line 1701
    move-object/from16 v6, v41

    .line 1702
    .line 1703
    iput-object v6, v1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1704
    .line 1705
    invoke-virtual {v1, v6}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 1706
    .line 1707
    .line 1708
    move-object/from16 v6, v26

    .line 1709
    .line 1710
    iput-object v6, v1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 1711
    .line 1712
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 1713
    .line 1714
    if-eqz v2, :cond_42

    .line 1715
    .line 1716
    move-object/from16 v6, v45

    .line 1717
    .line 1718
    iput-object v6, v1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 1719
    .line 1720
    move/from16 v5, v46

    .line 1721
    .line 1722
    iput-boolean v5, v1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 1723
    .line 1724
    :cond_42
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1725
    .line 1726
    .line 1727
    move-result v2

    .line 1728
    if-lez v2, :cond_43

    .line 1729
    .line 1730
    iget-object v2, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1731
    .line 1732
    const/4 v3, 0x0

    .line 1733
    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v2

    .line 1737
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v2

    .line 1741
    const/high16 v3, -0x80000000

    .line 1742
    .line 1743
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1744
    .line 1745
    .line 1746
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1747
    .line 1748
    .line 1749
    move-result v2

    .line 1750
    sub-int/2addr v2, v0

    .line 1751
    :goto_18
    if-ltz v2, :cond_43

    .line 1752
    .line 1753
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v0

    .line 1757
    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 1758
    .line 1759
    const v3, 0x7fffffff

    .line 1760
    .line 1761
    .line 1762
    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1763
    .line 1764
    .line 1765
    add-int/lit8 v2, v2, -0x1

    .line 1766
    .line 1767
    goto :goto_18

    .line 1768
    :cond_43
    return-object v1

    .line 1769
    :sswitch_data_0
    .sparse-switch
        -0x5eb23152 -> :sswitch_20
        -0x5ccdaff6 -> :sswitch_1f
        -0x5ba06deb -> :sswitch_1e
        -0x591a685c -> :sswitch_1d
        -0x5131b22b -> :sswitch_1c
        -0x43dc2f14 -> :sswitch_1b
        -0x430d08ca -> :sswitch_1a
        -0x3a0f4851 -> :sswitch_19
        -0x37680e48 -> :sswitch_18
        -0x3395d9b2 -> :sswitch_17
        -0x313f784c -> :sswitch_16
        -0x2fcb75f7 -> :sswitch_15
        -0x2a27c539 -> :sswitch_14
        -0x2a0990b3 -> :sswitch_13
        -0x20dc8352 -> :sswitch_12
        -0x1df202b3 -> :sswitch_11
        -0x158140a0 -> :sswitch_10
        -0x9b3481b -> :sswitch_f
        -0x8c511f1 -> :sswitch_e
        -0x7e175ab -> :sswitch_d
        0xac8bdb4 -> :sswitch_c
        0x13bdcee4 -> :sswitch_b
        0x1782e55f -> :sswitch_a
        0x2046b199 -> :sswitch_9
        0x24172928 -> :sswitch_8
        0x33cf43d3 -> :sswitch_7
        0x3c12eca9 -> :sswitch_6
        0x40756fcb -> :sswitch_5
        0x42bea792 -> :sswitch_4
        0x56e1584e -> :sswitch_3
        0x5bc3bc90 -> :sswitch_2
        0x772fa04e -> :sswitch_1
        0x789a804d -> :sswitch_0
    .end sparse-switch

    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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

.method public static trimIneffectiveInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 20
    .line 21
    :goto_0
    iget-object v1, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 22
    .line 23
    const-string v2, ""

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget v3, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 28
    .line 29
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 32
    .line 33
    if-eq v3, v1, :cond_1

    .line 34
    .line 35
    new-instance v1, Landroid/content/pm/ActivityInfo;

    .line 36
    .line 37
    iget-object v3, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 38
    .line 39
    invoke-direct {v1, v3}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 43
    .line 44
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    .line 45
    .line 46
    iget-object v4, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 47
    .line 48
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 49
    .line 50
    invoke-direct {v3, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 51
    .line 52
    .line 53
    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 54
    .line 55
    new-instance v1, Landroid/content/ComponentName;

    .line 56
    .line 57
    invoke-direct {v1, v2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 61
    .line 62
    iget-object v1, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 63
    .line 64
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 65
    .line 66
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 67
    .line 68
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 79
    .line 80
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 93
    .line 94
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 97
    .line 98
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    .line 99
    .line 100
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    .line 101
    .line 102
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 103
    .line 104
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 105
    .line 106
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 107
    .line 108
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 109
    .line 110
    :cond_1
    iget p0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 111
    .line 112
    if-eq p0, v0, :cond_2

    .line 113
    .line 114
    new-instance p0, Landroid/content/ComponentName;

    .line 115
    .line 116
    invoke-direct {p0, v2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iput-object p0, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 120
    .line 121
    :cond_2
    return-void
.end method


# virtual methods
.method public final abortPipEnter(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    invoke-virtual {p0, p0}, Lcom/android/server/wm/Task;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lcom/android/server/wm/Transition;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-virtual {v2, v0, p0, v5, v5}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 42
    .line 43
    .line 44
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const-string/jumbo v3, "movePinnedActivityToOriginalTask"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 71
    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v8, -0x1

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v9, -0x1

    .line 77
    move-object v3, p0

    .line 78
    move-object v4, p0

    .line 79
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;ZII)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 89
    .line 90
    .line 91
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    .line 92
    .line 93
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 94
    .line 95
    if-eqz p0, :cond_3

    .line 96
    .line 97
    const-string p0, "abort_pip_enter"

    .line 98
    .line 99
    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/ActivityRecord;->setEnteringPipFromSplit(Ljava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/ActivityRecord;->setHiddenWhileEnteringPinnedMode(Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    :cond_3
    const/4 p0, 0x1

    .line 106
    return p0

    .line 107
    :cond_4
    :goto_0
    return v1
.end method

.method public final addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(ILcom/android/server/wm/WindowContainer;)I

    move-result p2

    .line 2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 3
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p2, p2, v0

    if-eqz p2, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, -0xe475a036097c6b2L    # -6.420148178521097E239

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-nez p2, :cond_5

    .line 9
    iget-object p2, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskFragmentHostProcessName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 10
    iget v0, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mTaskFragmentHostUid:I

    .line 11
    iput-object p2, p0, Lcom/android/server/wm/Task;->mTaskFragmentHostProcessName:Ljava/lang/String;

    .line 12
    :cond_2
    iget p2, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_4

    .line 14
    iput p2, p1, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 15
    iput v0, p1, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 17
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz p1, :cond_3

    .line 18
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->associateStartingWindowWithTaskIfNeeded()V

    goto :goto_0

    .line 20
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This method must not be used to Task. The  minimum dimension of Task should be passed from Task constructor."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    return-void
.end method

.method public final addChild(Lcom/android/server/wm/WindowContainer;ZZ)V
    .locals 3

    .line 21
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    :try_start_0
    iput-boolean p3, v0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const p3, 0x7fffffff

    goto :goto_1

    :cond_1
    move p3, v1

    :goto_1
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 24
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 25
    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    :cond_2
    return-void

    :goto_2
    if-eqz v0, :cond_3

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    .line 26
    :cond_3
    throw p0
.end method

.method public final adjustAspectRatioIfNeeded(Landroid/graphics/Rect;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 8
    .line 9
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-le v0, v1, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    const/4 v3, 0x4

    .line 34
    const-string v4, " caller="

    .line 35
    .line 36
    const-string v5, " bounds="

    .line 37
    .line 38
    const-string v6, " resizeMode="

    .line 39
    .line 40
    const-string v7, "adjustAspectRatioIfNeeded: task="

    .line 41
    .line 42
    const-string v8, "ActivityTaskManager"

    .line 43
    .line 44
    const v9, 0x3f99999a    # 1.2f

    .line 45
    .line 46
    .line 47
    if-ne v1, v2, :cond_2

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    int-to-float v0, v0

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    int-to-float v1, v1

    .line 61
    div-float/2addr v0, v1

    .line 62
    cmpg-float v0, v0, v9

    .line 63
    .line 64
    if-gez v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    int-to-float v0, v0

    .line 71
    div-float/2addr v0, v9

    .line 72
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 77
    .line 78
    add-int/2addr v1, v0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget p0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p0, " adjusted(bottom)="

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {v8, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    const/4 v2, 0x6

    .line 130
    if-ne v1, v2, :cond_3

    .line 131
    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    int-to-float v0, v0

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    int-to-float v1, v1

    .line 144
    div-float/2addr v0, v1

    .line 145
    cmpg-float v0, v0, v9

    .line 146
    .line 147
    if-gez v0, :cond_3

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    int-to-float v0, v0

    .line 154
    div-float/2addr v0, v9

    .line 155
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 160
    .line 161
    add-int/2addr v1, v0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget p0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 174
    .line 175
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string p0, " adjusted(right)="

    .line 185
    .line 186
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-static {v8, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 210
    .line 211
    :cond_3
    :goto_1
    return-void
.end method

.method public final adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 9
    .line 10
    xor-int/lit8 p2, p2, 0x1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget v2, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :cond_0
    invoke-virtual {v2, p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    move-object v0, v3

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget-object v3, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isHomeSupported()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    :cond_2
    move-object v0, v1

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    add-int/lit8 v3, v3, -0x1

    .line 54
    .line 55
    :goto_0
    if-ltz v3, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 62
    .line 63
    iget-object v5, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 64
    .line 65
    if-ne v4, v5, :cond_4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4, p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-eqz v4, :cond_5

    .line 77
    .line 78
    move-object v0, v4

    .line 79
    goto :goto_2

    .line 80
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_6
    :goto_2
    if-nez v0, :cond_8

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-eqz p0, :cond_7

    .line 90
    .line 91
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 92
    .line 93
    :cond_7
    return-object v1

    .line 94
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    const/4 v2, 0x0

    .line 99
    if-nez p3, :cond_b

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    :cond_9
    move-object v6, v0

    .line 106
    move-object v0, p0

    .line 107
    move-object p0, v6

    .line 108
    const p1, 0x7fffffff

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1, p0, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_a

    .line 123
    .line 124
    if-nez p0, :cond_9

    .line 125
    .line 126
    :cond_a
    return-object p2

    .line 127
    :cond_b
    const-string p3, " adjustFocusToNextFocusableTask"

    .line 128
    .line 129
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_f

    .line 142
    .line 143
    if-eqz v2, :cond_c

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_f

    .line 150
    .line 151
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 156
    .line 157
    iget p1, p1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 158
    .line 159
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 160
    .line 161
    if-nez v0, :cond_d

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_d
    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    .line 165
    .line 166
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 167
    .line 168
    .line 169
    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 170
    .line 171
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 188
    .line 189
    .line 190
    :goto_3
    if-nez v1, :cond_e

    .line 191
    .line 192
    invoke-virtual {p0, p3}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_e
    invoke-virtual {v1, p3}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    :goto_4
    return-object p2

    .line 200
    :cond_f
    invoke-virtual {v0, p3, v1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    if-eqz p3, :cond_10

    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 212
    .line 213
    .line 214
    :cond_10
    return-object p2
.end method

.method public final adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 7
    .line 8
    iget v0, v0, Lcom/android/server/wm/SizeCompatPolicyManager;->mCompatPolicyCount:I

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {p0, v1}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 26
    .line 27
    iget v2, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_4

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    const/16 v3, 0xdc

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 43
    .line 44
    :goto_0
    iget v4, p3, Landroid/content/res/Configuration;->densityDpi:I

    .line 45
    .line 46
    int-to-float v4, v4

    .line 47
    const/high16 v5, 0x43200000    # 160.0f

    .line 48
    .line 49
    div-float/2addr v4, v5

    .line 50
    int-to-float v3, v3

    .line 51
    mul-float/2addr v3, v4

    .line 52
    float-to-int v3, v3

    .line 53
    const/4 v4, -0x1

    .line 54
    if-ne v0, v4, :cond_2

    .line 55
    .line 56
    move v0, v3

    .line 57
    :cond_2
    if-ne v2, v4, :cond_3

    .line 58
    .line 59
    move v2, v3

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    move v3, v1

    .line 68
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_8

    .line 73
    .line 74
    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 75
    .line 76
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-lt v4, v0, :cond_5

    .line 85
    .line 86
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-ge v4, v2, :cond_6

    .line 91
    .line 92
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_7

    .line 97
    .line 98
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-ge v4, v3, :cond_7

    .line 103
    .line 104
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-ge v4, v3, :cond_7

    .line 109
    .line 110
    :cond_6
    return-void

    .line 111
    :cond_7
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    .line 113
    .line 114
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    const/4 v3, 0x1

    .line 119
    if-le v0, p3, :cond_9

    .line 120
    .line 121
    move p3, v3

    .line 122
    goto :goto_2

    .line 123
    :cond_9
    move p3, v1

    .line 124
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-le v2, v4, :cond_a

    .line 129
    .line 130
    move v1, v3

    .line 131
    :cond_a
    if-nez p3, :cond_b

    .line 132
    .line 133
    if-nez v1, :cond_b

    .line 134
    .line 135
    return-void

    .line 136
    :cond_b
    if-eqz p3, :cond_e

    .line 137
    .line 138
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result p3

    .line 142
    if-nez p3, :cond_d

    .line 143
    .line 144
    iget p3, p1, Landroid/graphics/Rect;->right:I

    .line 145
    .line 146
    iget v3, p2, Landroid/graphics/Rect;->right:I

    .line 147
    .line 148
    if-ne p3, v3, :cond_d

    .line 149
    .line 150
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 151
    .line 152
    if-eqz p3, :cond_c

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 155
    .line 156
    .line 157
    move-result p3

    .line 158
    if-nez p3, :cond_d

    .line 159
    .line 160
    :cond_c
    iget p3, p1, Landroid/graphics/Rect;->right:I

    .line 161
    .line 162
    sub-int/2addr p3, v0

    .line 163
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_d
    iget p3, p1, Landroid/graphics/Rect;->left:I

    .line 167
    .line 168
    add-int/2addr p3, v0

    .line 169
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 170
    .line 171
    :cond_e
    :goto_3
    if-eqz v1, :cond_11

    .line 172
    .line 173
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result p3

    .line 177
    if-nez p3, :cond_10

    .line 178
    .line 179
    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 180
    .line 181
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 182
    .line 183
    if-ne p3, p2, :cond_10

    .line 184
    .line 185
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 186
    .line 187
    if-eqz p2, :cond_f

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    if-nez p0, :cond_10

    .line 194
    .line 195
    :cond_f
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 196
    .line 197
    sub-int/2addr p0, v2

    .line 198
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_10
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 202
    .line 203
    add-int/2addr p0, v2

    .line 204
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 205
    .line 206
    :cond_11
    :goto_4
    return-void
.end method

.method public final applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    if-eqz p2, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_4

    .line 14
    .line 15
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    aget-boolean p1, p1, p2

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    invoke-static {p3}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 39
    .line 40
    filled-new-array {p1, p4, p3}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-wide v2, -0x2f358d43c090cdbfL    # -1.5679951820619561E81

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    if-eqz p5, :cond_1

    .line 55
    .line 56
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move p1, p2

    .line 62
    :goto_0
    new-instance p3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;

    .line 63
    .line 64
    invoke-direct {p3, p5, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, v0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    const/4 p1, 0x1

    .line 72
    iput-boolean p1, v0, Lcom/android/server/wm/RecentsAnimationController;->mIsAddingTaskToTargets:Z

    .line 73
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, v0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    .line 91
    .line 92
    .line 93
    move-result p4

    .line 94
    if-nez p4, :cond_4

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    iget-object p1, v0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/android/server/wm/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-instance p4, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;

    .line 114
    .line 115
    invoke-direct {p4, v0, p1, p3}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/RecentsAnimationController;Landroid/util/SparseBooleanArray;Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/android/server/wm/WindowContainer;->applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_1
    return-void
.end method

.method public final asTask()Lcom/android/server/wm/Task;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 6
    .line 7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    if-ge v1, v4, :cond_b

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 14
    .line 15
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 20
    .line 21
    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_a

    .line 29
    .line 30
    iget-object v5, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    iget-boolean v5, v5, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoosted:Z

    .line 36
    .line 37
    if-nez v5, :cond_2

    .line 38
    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget v7, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 52
    .line 53
    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_0

    .line 58
    .line 59
    move v5, v6

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    move v5, v0

    .line 62
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    if-eqz v7, :cond_1

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    iget-boolean v7, v7, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 73
    .line 74
    if-eqz v7, :cond_1

    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v8, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;

    .line 84
    .line 85
    invoke-direct {v8, v7}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/TaskFragment;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    xor-int/2addr v7, v6

    .line 93
    if-eqz v7, :cond_1

    .line 94
    .line 95
    move v7, v6

    .line 96
    goto :goto_2

    .line 97
    :cond_1
    move v7, v0

    .line 98
    :goto_2
    if-nez v5, :cond_2

    .line 99
    .line 100
    if-nez v7, :cond_2

    .line 101
    .line 102
    iget-object v3, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    .line 103
    .line 104
    add-int/lit8 v5, v2, 0x1

    .line 105
    .line 106
    invoke-static {v3, p1, v2}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$massignLayer(Lcom/android/server/wm/Task$DecorSurfaceContainer;Landroid/view/SurfaceControl$Transaction;I)V

    .line 107
    .line 108
    .line 109
    move v2, v5

    .line 110
    move v3, v6

    .line 111
    :cond_2
    add-int/lit8 v5, v2, 0x1

    .line 112
    .line 113
    invoke-virtual {v4, p1, v2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    if-eqz v7, :cond_8

    .line 121
    .line 122
    iget-boolean v8, v7, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 123
    .line 124
    if-eqz v8, :cond_8

    .line 125
    .line 126
    iget-object v8, v7, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 127
    .line 128
    if-eqz v8, :cond_8

    .line 129
    .line 130
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    if-nez v9, :cond_4

    .line 135
    .line 136
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->isDimmingOnParentTask()Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-nez v9, :cond_3

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_3
    iget-object v9, v8, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 144
    .line 145
    if-nez v9, :cond_5

    .line 146
    .line 147
    :cond_4
    :goto_3
    move v9, v0

    .line 148
    goto :goto_4

    .line 149
    :cond_5
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    iget-object v10, v10, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 154
    .line 155
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    iget-object v11, v11, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 164
    .line 165
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    if-ge v10, v11, :cond_6

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_6
    new-instance v10, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda12;

    .line 173
    .line 174
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v10, v6}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-eqz v9, :cond_7

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    invoke-virtual {v8, v10, v6}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    :goto_4
    if-eqz v9, :cond_8

    .line 189
    .line 190
    add-int/lit8 v2, v2, 0x2

    .line 191
    .line 192
    invoke-virtual {v8, p1, v5}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 193
    .line 194
    .line 195
    move v5, v2

    .line 196
    :cond_8
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_DIVIDER:Z

    .line 197
    .line 198
    if-eqz v2, :cond_9

    .line 199
    .line 200
    if-eqz v3, :cond_9

    .line 201
    .line 202
    if-eqz v7, :cond_9

    .line 203
    .line 204
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_9

    .line 209
    .line 210
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    .line 211
    .line 212
    iget-object v2, v2, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_9

    .line 219
    .line 220
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    .line 221
    .line 222
    add-int/lit8 v7, v5, 0x1

    .line 223
    .line 224
    invoke-static {v2, p1, v5}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$massignLayer(Lcom/android/server/wm/Task$DecorSurfaceContainer;Landroid/view/SurfaceControl$Transaction;I)V

    .line 225
    .line 226
    .line 227
    move v2, v7

    .line 228
    goto :goto_5

    .line 229
    :cond_9
    move v2, v5

    .line 230
    :goto_5
    iget-object v5, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    .line 231
    .line 232
    if-eqz v5, :cond_a

    .line 233
    .line 234
    iget-boolean v7, v5, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoosted:Z

    .line 235
    .line 236
    if-nez v7, :cond_a

    .line 237
    .line 238
    if-nez v3, :cond_a

    .line 239
    .line 240
    iget-object v7, v5, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 241
    .line 242
    if-ne v4, v7, :cond_a

    .line 243
    .line 244
    add-int/lit8 v3, v2, 0x1

    .line 245
    .line 246
    invoke-static {v5, p1, v2}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$massignLayer(Lcom/android/server/wm/Task$DecorSurfaceContainer;Landroid/view/SurfaceControl$Transaction;I)V

    .line 247
    .line 248
    .line 249
    move v2, v3

    .line 250
    move v3, v6

    .line 251
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    .line 256
    .line 257
    if-eqz v1, :cond_c

    .line 258
    .line 259
    iget-boolean v3, v1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoosted:Z

    .line 260
    .line 261
    if-eqz v3, :cond_c

    .line 262
    .line 263
    add-int/lit8 v3, v2, 0x1

    .line 264
    .line 265
    invoke-static {v1, p1, v2}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$massignLayer(Lcom/android/server/wm/Task$DecorSurfaceContainer;Landroid/view/SurfaceControl$Transaction;I)V

    .line 266
    .line 267
    .line 268
    move v2, v3

    .line 269
    :cond_c
    :goto_6
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-ge v0, v1, :cond_e

    .line 276
    .line 277
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 278
    .line 279
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 284
    .line 285
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    if-eqz v3, :cond_d

    .line 290
    .line 291
    add-int/lit8 v3, v2, 0x1

    .line 292
    .line 293
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 294
    .line 295
    .line 296
    move v2, v3

    .line 297
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 301
    .line 302
    if-eqz p0, :cond_f

    .line 303
    .line 304
    iget-object p0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 305
    .line 306
    if-eqz p0, :cond_f

    .line 307
    .line 308
    invoke-virtual {p1, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 309
    .line 310
    .line 311
    :cond_f
    return-void
.end method

.method public final canBeLaunchedOnDisplay(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, -0x1

    .line 6
    move v1, p1

    .line 7
    move-object v4, p0

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final canMinimize()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, p0}, Lcom/android/server/wm/TaskDisplayArea;->isUnderHomeTask(Lcom/android/server/wm/Task;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 50
    :goto_1
    return v0
.end method

.method public final canMoveTaskToBack(Lcom/android/server/wm/Task;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eq p1, p0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 24
    .line 25
    .line 26
    return v0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Task;->topRunningActivity(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    const/4 p1, -0x1

    .line 50
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Task;->topRunningActivity(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_2
    if-eqz p1, :cond_3

    .line 55
    .line 56
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 57
    .line 58
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v3, p1}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 68
    .line 69
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 70
    .line 71
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 76
    .line 77
    .line 78
    move p0, v2

    .line 79
    :goto_0
    if-nez p0, :cond_3

    .line 80
    .line 81
    return v0

    .line 82
    :cond_3
    return v2
.end method

.method public final checkReadyForSleep()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final clearPinnedTaskIfNeed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final clearRootProcess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    xor-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    iput-boolean v1, v0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final clearTopActivities(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v1, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 30
    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/android/server/wm/Task;->moveTaskFragmentsToBottomIfNeeded(Lcom/android/server/wm/ActivityRecord;[I)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;-><init>([I)V

    .line 42
    .line 43
    .line 44
    const-class p3, Lcom/android/server/wm/ActivityRecord;

    .line 45
    .line 46
    invoke-static {p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-static {p1, p3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 58
    .line 59
    .line 60
    iget p0, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    .line 61
    .line 62
    if-nez p0, :cond_2

    .line 63
    .line 64
    const/high16 p0, 0x20000000

    .line 65
    .line 66
    and-int/2addr p0, p2

    .line 67
    if-nez p0, :cond_2

    .line 68
    .line 69
    sget-object p0, Lcom/android/server/wm/ActivityStarter;->mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

    .line 70
    .line 71
    const/high16 p0, 0x80000

    .line 72
    .line 73
    and-int/2addr p0, p2

    .line 74
    if-eqz p0, :cond_1

    .line 75
    .line 76
    const/high16 p0, 0x8000000

    .line 77
    .line 78
    and-int/2addr p0, p2

    .line 79
    if-nez p0, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-boolean p0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 83
    .line 84
    if-nez p0, :cond_2

    .line 85
    .line 86
    const-string p0, "clear-task-top"

    .line 87
    .line 88
    const/4 p1, 0x0

    .line 89
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_0
    return-object v0
.end method

.method public final cropWindowsToRootTaskBounds()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean v1, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_2
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final dismissPip()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBottomMostTask()Lcom/android/server/wm/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const v3, 0x7fffffff

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 39
    .line 40
    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v0, "Can\'t exit pinned mode if it\'s not pinned already."

    .line 47
    .line 48
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v0, "You can\'t move tasks from non-standard root tasks."

    .line 55
    .line 56
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final dispatchTaskInfoChangedIfNeeded(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 22
    .line 23
    invoke-interface {v1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const-string p0, "TaskOrganizerController"

    .line 38
    .line 39
    const-string p1, "cannot send onTaskInfoChanged because pending events queue is not present for this organizer"

    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->getPendingLifecycleTaskEvent(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v2, 0x2

    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    new-instance v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 68
    .line 69
    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(ILcom/android/server/wm/Task;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget p0, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    .line 74
    .line 75
    if-eq p0, v2, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    iget-object p0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :goto_0
    iget-boolean p0, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    .line 84
    .line 85
    or-int/2addr p0, p1

    .line 86
    iput-boolean p0, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    .line 87
    .line 88
    iget-object p0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9

    .line 9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 10
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 11
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 12
    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 13
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    const-string v0, " mCallingFeatureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 16
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 19
    :cond_2
    :goto_0
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windowLayoutAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_6

    .line 23
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_7

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_8

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v3, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    .line 40
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_a

    .line 43
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_c

    .line 46
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 47
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 48
    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 49
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const/4 v1, 0x1

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eq v0, v1, :cond_e

    .line 50
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 51
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 52
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 53
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    :cond_e
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, v2, :cond_f

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_12

    .line 55
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 56
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 57
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string/jumbo v3, "null"

    if-nez v2, :cond_10

    .line 59
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 60
    :cond_10
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    :goto_2
    const-string v2, ") nextAffiliation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 62
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_11

    .line 64
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 65
    :cond_11
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    :goto_3
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 68
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v0, :cond_14

    .line 69
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 71
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 72
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    .line 73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 74
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_16

    .line 75
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 76
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_17

    .line 77
    const-string/jumbo v0, "mSharedStartingData="

    .line 78
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    if-eqz v0, :cond_18

    .line 81
    const-string v0, "mKillProcessesOnDestroyed=true"

    .line 82
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_18
    const-string/jumbo v0, "taskId="

    .line 84
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " rootTaskId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "hasChildPipActivity="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_19

    move v2, v1

    goto :goto_4

    :cond_19
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 92
    const-string/jumbo v2, "mResizeMode="

    .line 93
    invoke-static {p1, p2, v2, v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    const-string v0, " mSupportsPictureInPicture="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 96
    const-string v0, " isResizeable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    .line 98
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " (inactive for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    .line 102
    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v0, "lastGainFocusTime="

    .line 104
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    iget-wide v1, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_1e

    .line 107
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-eqz v0, :cond_1a

    .line 108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    const-string v0, "dedicated=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 111
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-nez v0, :cond_1b

    .line 112
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 113
    :cond_1b
    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    :goto_5
    const-string p2, "hostProcess="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    :cond_1c
    iget-boolean p2, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-nez p2, :cond_1d

    iget-object p0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    if-eqz p0, :cond_1e

    .line 117
    :cond_1d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1e
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2
    iget-object p0, p0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 3
    iget-object p3, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    .line 4
    invoke-virtual {p3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "AnimatingApps:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mAnimatingActivities="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mFinishedTokens="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p4, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p2

    .line 15
    const-wide v0, 0x10500000002L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 30
    .line 31
    const-wide v1, 0x10500000010L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-wide v1, 0x10b0000000cL

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    const-wide v1, 0x1090000000dL

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    const-wide v1, 0x1090000000eL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    const-wide v0, 0x10500000012L

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 95
    .line 96
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 97
    .line 98
    .line 99
    const-wide v0, 0x10800000004L

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 109
    .line 110
    .line 111
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-wide v1, 0x10b00000005L

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 124
    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    const-wide v1, 0x10b00000016L

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 133
    .line 134
    .line 135
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 136
    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    const-wide v1, 0x10500000008L

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    const-wide v1, 0x10500000009L

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 163
    .line 164
    .line 165
    :cond_5
    const-wide v0, 0x1080000001cL

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    iget-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 171
    .line 172
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 173
    .line 174
    .line 175
    const-wide v0, 0x1090000001dL

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    iget-object v2, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    .line 186
    .line 187
    if-eqz v0, :cond_6

    .line 188
    .line 189
    const/4 v0, 0x1

    .line 190
    goto :goto_0

    .line 191
    :cond_6
    const/4 v0, 0x0

    .line 192
    :goto_0
    const-wide v1, 0x1080000001eL

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 198
    .line 199
    .line 200
    const-wide v0, 0x10b0000001fL

    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/TaskFragment;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method public final dumpInner(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskFragment;->dumpInner(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    const-string v1, "  mCreatedByOrganizer=true"

    .line 9
    .line 10
    invoke-static {p1, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget v1, p0, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    :cond_0
    const-string v1, "  mOffsetXForInsets="

    .line 22
    .line 23
    invoke-static {p2, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget v2, p0, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, " mOffsetYForInsets="

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v2, p0, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    .line 38
    .line 39
    invoke-static {v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    const-string v1, "  isAlwaysOnTopFreeform=true"

    .line 49
    .line 50
    invoke-static {p1, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mBoostRootTaskLayerForFreeform:Z

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    const-string v1, "  mBoostRootTaskLayerForFreeform=true"

    .line 58
    .line 59
    invoke-static {p1, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mIsCaptionHandlerHidden:Z

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    const-string v1, "  mIsCaptionHandlerHidden=true"

    .line 71
    .line 72
    invoke-static {p1, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mIsCaptionFullScreenState:Z

    .line 80
    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    const-string v1, "  mIsCaptionFullScreenState=true"

    .line 84
    .line 85
    invoke-static {p1, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY:Z

    .line 89
    .line 90
    const-string v2, "  "

    .line 91
    .line 92
    if-eqz v1, :cond_9

    .line 93
    .line 94
    sget-object v1, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    const/4 v1, 0x1

    .line 115
    invoke-static {p0, v1}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    if-nez v4, :cond_6

    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_6
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v5, "SizeCompatPolicy: "

    .line 127
    .line 128
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v6, "Mode="

    .line 134
    .line 135
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v1}, Lcom/samsung/android/core/SizeCompatInfo;->sizeCompatModeToString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->isEnabled()Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_7

    .line 157
    .line 158
    const-string v1, ", Enabled=false"

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v5, ", Size="

    .line 166
    .line 167
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget v5, v4, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mWidth:I

    .line 171
    .line 172
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string/jumbo v5, "x"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget v5, v4, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mHeight:I

    .line 182
    .line 183
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 194
    .line 195
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const-string v3, "UserScale="

    .line 212
    .line 213
    invoke-static {p1, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v4}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTopOrientationInTask()I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    invoke-static {v3}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->isRotatable(I)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_8

    .line 226
    .line 227
    sget-object v3, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 228
    .line 229
    iget v3, v3, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_8
    iget v3, v4, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserScale:F

    .line 233
    .line 234
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v3, ", UserOrientation="

    .line 247
    .line 248
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget v3, v4, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserOrientation:I

    .line 252
    .line 253
    invoke-static {v3}, Lcom/samsung/android/core/CompatUtils;->orientationToString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 268
    .line 269
    .line 270
    :cond_9
    :goto_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_KEEP_SCREEN_ON:Z

    .line 271
    .line 272
    if-eqz v1, :cond_a

    .line 273
    .line 274
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mKeepScreenOn:Z

    .line 275
    .line 276
    if-eqz v1, :cond_a

    .line 277
    .line 278
    const-string v1, "  mKeepScreenOn=true"

    .line 279
    .line 280
    invoke-static {p1, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_b

    .line 288
    .line 289
    const-string v1, "  mFreeformStashScale="

    .line 290
    .line 291
    invoke-static {p2, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    iget v3, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 296
    .line 297
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v3, "  mFreeformStashMode="

    .line 310
    .line 311
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    iget v3, p0, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    .line 315
    .line 316
    invoke-static {v1, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 317
    .line 318
    .line 319
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-eqz v1, :cond_c

    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-nez v1, :cond_d

    .line 331
    .line 332
    goto :goto_2

    .line 333
    :cond_d
    const-string v1, "  isMinimized="

    .line 334
    .line 335
    invoke-static {p2, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :goto_2
    invoke-static {p2, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    sget-object v2, Lcom/android/server/wm/PackagesChange;->sTaskChangeCallbacks:Ljava/util/List;

    .line 358
    .line 359
    check-cast v2, Ljava/util/ArrayList;

    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    if-eqz v3, :cond_e

    .line 370
    .line 371
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    check-cast v3, Lcom/android/server/wm/PackagesChange$PackagesTaskChangeCallback;

    .line 376
    .line 377
    invoke-interface {v3, p0, p1, v1}, Lcom/android/server/wm/PackagesChange$PackagesTaskChangeCallback;->onDumpInTask(Lcom/android/server/wm/Task;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    goto :goto_3

    .line 381
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mIsDragSourceTask:Z

    .line 382
    .line 383
    if-eqz v1, :cond_f

    .line 384
    .line 385
    const-string v1, "  mIsDragSourceTask=true"

    .line 386
    .line 387
    invoke-static {p1, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    :cond_f
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    .line 391
    .line 392
    if-eqz v1, :cond_10

    .line 393
    .line 394
    const-string v1, "  mHiddenWhileActivatingDrag=true"

    .line 395
    .line 396
    invoke-static {p1, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    :cond_10
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mIsAnimatingByRecentsAndDragSourceTask:Z

    .line 400
    .line 401
    if-eqz v1, :cond_11

    .line 402
    .line 403
    const-string v1, "  mIsAnimatingByRecentsAndDragSourceTask=true"

    .line 404
    .line 405
    invoke-static {p1, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 409
    .line 410
    if-eqz v1, :cond_12

    .line 411
    .line 412
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    const-string v1, "  mLastNonFullscreenBounds="

    .line 416
    .line 417
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 421
    .line 422
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    if-eqz v1, :cond_14

    .line 430
    .line 431
    const-string v1, "  isSleeping="

    .line 432
    .line 433
    invoke-static {p2, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    const-string v1, "  topPausingActivity="

    .line 456
    .line 457
    invoke-static {p2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v6

    .line 461
    const/4 v5, 0x0

    .line 462
    const/4 v7, 0x0

    .line 463
    const/4 v4, -0x1

    .line 464
    move-object v1, p1

    .line 465
    move-object v3, p3

    .line 466
    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZLjava/lang/String;Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;)Z

    .line 467
    .line 468
    .line 469
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    const-string v1, "  topResumedActivity="

    .line 474
    .line 475
    invoke-static {p2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    const/4 v5, 0x0

    .line 480
    const/4 v7, 0x0

    .line 481
    const/4 v4, -0x1

    .line 482
    move-object v1, p1

    .line 483
    move-object v3, p3

    .line 484
    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZLjava/lang/String;Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;)Z

    .line 485
    .line 486
    .line 487
    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 488
    .line 489
    const/4 v2, -0x1

    .line 490
    if-ne v1, v2, :cond_13

    .line 491
    .line 492
    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 493
    .line 494
    if-eq v1, v2, :cond_14

    .line 495
    .line 496
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    const-string v1, "  mMinWidth="

    .line 500
    .line 501
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 505
    .line 506
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 507
    .line 508
    .line 509
    const-string v1, " mMinHeight="

    .line 510
    .line 511
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 515
    .line 516
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 517
    .line 518
    .line 519
    :cond_14
    return-void
.end method

.method public final ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    .line 11
    .line 12
    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;-><init>(ZLcom/android/server/wm/ActivityRecord;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public final executeAppTransition(Landroid/app/ActivityOptions;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final fillTaskInfo(Landroid/app/TaskInfo;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method public final fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 2
    iget-object v3, v1, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v3, v0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    .line 4
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskInfoHelper:Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    .line 5
    iput v4, v1, Landroid/app/TaskInfo;->numActivities:I

    const/4 v5, 0x0

    .line 6
    iput-object v5, v1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 7
    iput-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    .line 8
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 9
    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mTopRunning:Lcom/android/server/wm/ActivityRecord;

    .line 10
    iput-object v5, v3, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mTopRunning:Lcom/android/server/wm/ActivityRecord;

    .line 11
    iput-object v5, v3, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/android/server/wm/Task;->mCurrentUser:I

    :goto_0
    iput v3, v1, Landroid/app/TaskInfo;->userId:I

    .line 13
    iget v3, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v3, v1, Landroid/app/TaskInfo;->taskId:I

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v3

    iput v3, v1, Landroid/app/TaskInfo;->displayId:I

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 15
    iget v7, v2, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    iput v7, v1, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_2

    move v8, v4

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v8

    :goto_2
    if-nez v7, :cond_3

    .line 18
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 19
    invoke-virtual {v7}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v9

    goto :goto_3

    :cond_4
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_3
    iput-object v9, v1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 20
    invoke-virtual {v9, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v8, 0x1

    if-eqz v6, :cond_5

    move v9, v8

    goto :goto_4

    :cond_5
    move v9, v4

    .line 21
    :goto_4
    iput-boolean v9, v1, Landroid/app/TaskInfo;->isRunning:Z

    if-eqz v6, :cond_6

    .line 22
    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_5

    :cond_6
    move-object v9, v5

    :goto_5
    iput-object v9, v1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 23
    iget-object v9, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    iput-object v9, v1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 24
    iget-object v9, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v9, v1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 25
    iget-wide v9, v0, Lcom/android/server/wm/Task;->lastActiveTime:J

    iput-wide v9, v1, Landroid/app/TaskInfo;->lastActiveTime:J

    .line 26
    new-instance v9, Landroid/app/ActivityManager$TaskDescription;

    .line 27
    iget-object v10, v0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 28
    invoke-direct {v9, v10}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v9, v1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 29
    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v9

    .line 30
    iput-boolean v9, v1, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    .line 31
    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v2

    iput-boolean v2, v1, Landroid/app/TaskInfo;->originallySupportedMultiWindow:Z

    .line 32
    iget-boolean v2, v1, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    if-eqz v2, :cond_7

    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v8

    goto :goto_6

    :cond_7
    move v2, v4

    :goto_6
    iput-boolean v2, v1, Landroid/app/TaskInfo;->supportsPipOnly:Z

    .line 33
    iget-object v2, v1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 34
    iget-object v2, v1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 35
    iget-object v2, v1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 36
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    iput-object v2, v1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    if-eqz v6, :cond_8

    .line 37
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_7

    :cond_8
    move-object v2, v0

    .line 38
    :goto_7
    iget v9, v2, Lcom/android/server/wm/Task;->mResizeMode:I

    iput v9, v1, Landroid/app/TaskInfo;->resizeMode:I

    .line 39
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v9

    iput v9, v1, Landroid/app/TaskInfo;->topActivityType:I

    .line 40
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayCutoutInsets()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, v1, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    .line 41
    invoke-virtual {v0, v8}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v2

    .line 42
    iput-boolean v2, v1, Landroid/app/TaskInfo;->isResizeable:Z

    .line 43
    iget v2, v0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iput v2, v1, Landroid/app/TaskInfo;->minWidth:I

    .line 44
    iget v2, v0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    iput v2, v1, Landroid/app/TaskInfo;->minHeight:I

    .line 45
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v2, :cond_9

    const/16 v2, 0xdc

    goto :goto_8

    .line 46
    :cond_9
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    :goto_8
    iput v2, v1, Landroid/app/TaskInfo;->defaultMinSize:I

    .line 47
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 48
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->getRelativePosition(Landroid/graphics/Point;)V

    .line 49
    iput-object v2, v1, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    if-eqz v6, :cond_a

    .line 50
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_9

    :cond_a
    move-object v2, v5

    :goto_9
    iput-object v2, v1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_c

    .line 51
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->empty()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_a

    .line 52
    :cond_b
    new-instance v2, Landroid/app/PictureInPictureParams;

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-direct {v2, v9}, Landroid/app/PictureInPictureParams;-><init>(Landroid/app/PictureInPictureParams;)V

    goto :goto_b

    :cond_c
    :goto_a
    move-object v2, v5

    .line 53
    :goto_b
    iput-object v2, v1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v2, :cond_d

    .line 54
    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 55
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_d

    .line 56
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_c

    :cond_d
    move v2, v3

    :goto_c
    iput v2, v1, Landroid/app/TaskInfo;->launchIntoPipHostTaskId:I

    if-eqz v6, :cond_e

    .line 57
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_e

    .line 58
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_d

    :cond_e
    move v2, v3

    :goto_d
    iput v2, v1, Landroid/app/TaskInfo;->lastParentTaskIdBeforePip:I

    if-eqz v6, :cond_f

    .line 59
    iget-boolean v2, v6, Lcom/android/server/wm/ActivityRecord;->shouldDockBigOverlays:Z

    if-eqz v2, :cond_f

    move v2, v8

    goto :goto_e

    :cond_f
    move v2, v4

    :goto_e
    iput-boolean v2, v1, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    if-eqz v6, :cond_10

    .line 60
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->mLocusId:Landroid/content/LocusId;

    goto :goto_f

    :cond_10
    move-object v2, v5

    .line 61
    :goto_f
    iput-object v2, v1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_10

    :cond_11
    move-object v2, v5

    :goto_10
    if-eqz v2, :cond_12

    .line 63
    iget-boolean v9, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v9, :cond_12

    .line 64
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_11

    :cond_12
    move v2, v3

    .line 65
    :goto_11
    iput v2, v1, Landroid/app/TaskInfo;->parentTaskId:I

    .line 66
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_15

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_13

    goto :goto_12

    .line 67
    :cond_13
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v2, v0, :cond_14

    if-eqz v2, :cond_15

    .line 68
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-ne v2, v0, :cond_15

    :cond_14
    move v2, v8

    goto :goto_13

    :cond_15
    :goto_12
    move v2, v4

    .line 69
    :goto_13
    iput-boolean v2, v1, Landroid/app/TaskInfo;->isFocused:Z

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_14

    .line 71
    :cond_16
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/4 v9, 0x4

    invoke-direct {v2, v9}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_17

    move v2, v8

    goto :goto_15

    :cond_17
    :goto_14
    move v2, v4

    .line 72
    :goto_15
    iput-boolean v2, v1, Landroid/app/TaskInfo;->isVisible:Z

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    iput-boolean v2, v1, Landroid/app/TaskInfo;->isVisibleRequested:Z

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v2

    iput-boolean v2, v1, Landroid/app/TaskInfo;->isSleeping:Z

    if-eqz v6, :cond_18

    .line 75
    invoke-virtual {v6, v8}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v2

    if-nez v2, :cond_18

    move v2, v8

    goto :goto_16

    :cond_18
    move v2, v4

    .line 76
    :goto_16
    iput-boolean v2, v1, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    .line 77
    iget-object v2, v1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    .line 78
    iput v3, v2, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    .line 79
    iput v3, v2, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    .line 80
    iput v3, v2, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 81
    iput v3, v2, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 82
    iput v3, v2, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxAppHeight:I

    .line 83
    iput v3, v2, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxAppWidth:I

    .line 84
    iget-object v3, v2, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iput v4, v3, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    .line 85
    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->clearTopActivityFlags()V

    if-nez v6, :cond_19

    goto/16 :goto_29

    .line 86
    :cond_19
    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 87
    iget-object v3, v3, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 88
    iget-object v3, v3, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 89
    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v9, :cond_1a

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v9

    goto :goto_17

    :cond_1a
    move-object v9, v5

    :goto_17
    if-ne v9, v0, :cond_1b

    .line 90
    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v9

    if-eqz v9, :cond_1b

    move v9, v8

    goto :goto_18

    :cond_1b
    move v9, v4

    .line 91
    :goto_18
    iget-object v10, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v10, :cond_1c

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v10

    goto :goto_19

    :cond_1c
    move-object v10, v5

    :goto_19
    if-ne v10, v0, :cond_1d

    .line 92
    iget-boolean v10, v6, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v10, :cond_1d

    .line 93
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v10

    if-eqz v10, :cond_1d

    move v10, v8

    goto :goto_1a

    :cond_1d
    move v10, v4

    .line 94
    :goto_1a
    invoke-virtual {v2, v10}, Landroid/app/AppCompatTaskInfo;->setTopActivityInSizeCompat(Z)V

    .line 95
    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v10

    if-eqz v10, :cond_1e

    iget-object v10, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 96
    invoke-virtual {v10}, Lcom/android/server/wm/AppCompatConfiguration;->isTranslucentLetterboxingEnabled()Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 97
    invoke-virtual {v6, v8}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v10

    .line 98
    invoke-virtual {v2, v10}, Landroid/app/AppCompatTaskInfo;->setTopActivityInSizeCompat(Z)V

    :cond_1e
    if-eqz v9, :cond_1f

    .line 99
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isEligibleForLetterboxEducation()Z

    move-result v10

    if-eqz v10, :cond_1f

    move v10, v8

    goto :goto_1b

    :cond_1f
    move v10, v4

    .line 100
    :goto_1b
    invoke-virtual {v2, v10}, Landroid/app/AppCompatTaskInfo;->setEligibleForLetterboxEducation(Z)V

    .line 101
    iget-object v10, v6, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 102
    iget-object v10, v10, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 103
    iget-object v10, v10, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 104
    iget-object v10, v10, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 105
    iget-boolean v10, v10, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    .line 106
    invoke-virtual {v2, v10}, Landroid/app/AppCompatTaskInfo;->setLetterboxEducationEnabled(Z)V

    .line 107
    iget-object v10, v6, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 108
    iget-object v10, v10, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 109
    iget-object v10, v10, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    .line 110
    invoke-virtual {v10}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserFullscreenOverride()Z

    move-result v11

    .line 111
    invoke-virtual {v2, v11}, Landroid/app/AppCompatTaskInfo;->setUserFullscreenOverrideEnabled(Z)V

    .line 112
    invoke-virtual {v10}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->isSystemOverrideToFullscreenEnabled()Z

    move-result v11

    .line 113
    invoke-virtual {v2, v11}, Landroid/app/AppCompatTaskInfo;->setSystemFullscreenOverrideEnabled(Z)V

    .line 114
    iget-object v11, v3, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    .line 115
    iget-boolean v12, v11, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    .line 116
    iput-boolean v4, v11, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    .line 117
    invoke-virtual {v2, v12}, Landroid/app/AppCompatTaskInfo;->setIsFromLetterboxDoubleTap(Z)V

    .line 118
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 119
    invoke-static {v6}, Lcom/android/server/wm/AppCompatUtils;->getAppBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object v12

    .line 120
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    iput v13, v2, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 121
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iput v11, v2, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 122
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v11

    iput v11, v2, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxAppWidth:I

    .line 123
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v11

    iput v11, v2, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxAppHeight:I

    .line 124
    iget-object v11, v3, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result v12

    if-nez v12, :cond_21

    .line 125
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result v11

    if-eqz v11, :cond_20

    goto :goto_1c

    :cond_20
    move v11, v4

    goto :goto_1d

    :cond_21
    :goto_1c
    move v11, v8

    .line 126
    :goto_1d
    invoke-virtual {v2, v11}, Landroid/app/AppCompatTaskInfo;->setLetterboxDoubleTapEnabled(Z)V

    .line 127
    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->isLetterboxDoubleTapEnabled()Z

    move-result v11

    if-eqz v11, :cond_28

    .line 128
    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->isTopActivityPillarboxed()Z

    move-result v11

    iget-object v12, v3, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    iget-object v13, v3, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    if-eqz v11, :cond_25

    .line 129
    invoke-static {}, Lcom/android/window/flags/Flags;->disableThinLetterboxingPolicy()Z

    move-result v11

    if-nez v11, :cond_22

    move v11, v8

    goto :goto_1e

    .line 130
    :cond_22
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalThinLetterboxed()Z

    move-result v11

    xor-int/2addr v11, v8

    :goto_1e
    if-eqz v11, :cond_24

    .line 131
    invoke-virtual {v12, v4}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 132
    iget-boolean v11, v13, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    if-eqz v11, :cond_23

    move v11, v8

    goto :goto_1f

    :cond_23
    move v11, v4

    .line 133
    :goto_1f
    iget-object v12, v13, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 134
    invoke-virtual {v12, v11}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v11

    .line 135
    iput v11, v2, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    goto :goto_21

    .line 136
    :cond_24
    invoke-virtual {v2, v4}, Landroid/app/AppCompatTaskInfo;->setLetterboxDoubleTapEnabled(Z)V

    goto :goto_21

    .line 137
    :cond_25
    invoke-static {}, Lcom/android/window/flags/Flags;->disableThinLetterboxingPolicy()Z

    move-result v11

    if-nez v11, :cond_26

    move v11, v8

    goto :goto_20

    .line 138
    :cond_26
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalThinLetterboxed()Z

    move-result v11

    xor-int/2addr v11, v8

    :goto_20
    if-eqz v11, :cond_27

    .line 139
    invoke-virtual {v12}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndSeparatingHinge()Z

    move-result v11

    .line 140
    iget-object v12, v13, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 141
    invoke-virtual {v12, v11}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v11

    .line 142
    iput v11, v2, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    goto :goto_21

    .line 143
    :cond_27
    invoke-virtual {v2, v4}, Landroid/app/AppCompatTaskInfo;->setLetterboxDoubleTapEnabled(Z)V

    .line 144
    :cond_28
    :goto_21
    iget-boolean v11, v1, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    if-nez v11, :cond_29

    .line 145
    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v11

    if-nez v11, :cond_29

    .line 146
    invoke-virtual {v10}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldEnableUserAspectRatioSettings()Z

    move-result v10

    if-eqz v10, :cond_29

    move v10, v8

    goto :goto_22

    :cond_29
    move v10, v4

    .line 147
    :goto_22
    invoke-virtual {v2, v10}, Landroid/app/AppCompatTaskInfo;->setEligibleForUserAspectRatioButton(Z)V

    .line 148
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v10

    invoke-virtual {v2, v10}, Landroid/app/AppCompatTaskInfo;->setTopActivityLetterboxed(Z)V

    .line 149
    iget-object v10, v2, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 150
    iget-object v12, v11, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 151
    iget-object v12, v12, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 152
    iget-object v12, v12, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    .line 153
    iget v12, v12, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mFreeformCameraCompatMode:I

    .line 154
    iput v12, v10, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    .line 155
    iget-object v10, v11, Lcom/android/server/wm/AppCompatController;->mDesktopAppCompatAspectRatioPolicy:Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    iget-object v11, v10, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 156
    iget-object v12, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v12}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v12

    .line 157
    iget-object v13, v10, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    iget-object v14, v13, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 158
    invoke-virtual {v14}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_2a

    .line 159
    iget-object v10, v13, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 160
    iget v10, v10, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMinAspectRatio:F

    :goto_23
    move/from16 p3, v9

    goto/16 :goto_24

    .line 161
    :cond_2a
    iget-object v13, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 162
    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v14, :cond_2b

    .line 163
    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v10

    goto :goto_23

    .line 164
    :cond_2b
    iget-object v14, v10, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v15, v14, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    .line 165
    iget-object v5, v15, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 166
    invoke-virtual {v5}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result v5

    xor-int/2addr v5, v8

    if-eqz v5, :cond_2c

    .line 167
    iget-object v5, v10, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 168
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioSettingsEnabled()Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 169
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 170
    iget-object v5, v14, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v10, 0x7

    if-eq v5, v10, :cond_2c

    const/4 v10, 0x6

    if-eq v5, v10, :cond_2c

    .line 171
    invoke-virtual {v15}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatio()F

    move-result v10

    goto :goto_23

    .line 172
    :cond_2c
    iget-object v5, v15, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move/from16 p3, v9

    const-wide/32 v8, 0xa5faf64

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v5

    .line 173
    iget-object v8, v15, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v8, v5}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 174
    iget-object v5, v14, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldOverrideMinAspectRatioForCamera()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 175
    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v10

    goto/16 :goto_24

    :cond_2d
    const-wide/32 v8, 0xc2368d6

    .line 176
    invoke-virtual {v13, v8, v9}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 177
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v5

    .line 178
    invoke-static {v5}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 179
    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v10

    goto/16 :goto_24

    :cond_2e
    const-wide/32 v8, 0xd0d1070

    .line 180
    invoke-virtual {v13, v8, v9}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2f

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v5

    if-ne v5, v8, :cond_2f

    .line 183
    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v10

    goto :goto_24

    :cond_2f
    const-wide/32 v8, 0xc6fb886

    .line 184
    invoke-virtual {v13, v8, v9}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 185
    invoke-virtual {v15}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    move-result v5

    .line 186
    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v8

    .line 187
    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v10

    goto :goto_24

    :cond_30
    const-wide/32 v8, 0xabf9183

    .line 188
    invoke-virtual {v13, v8, v9}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_31

    const v5, 0x3fe38e39

    .line 189
    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v8

    .line 190
    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v10

    goto :goto_24

    :cond_31
    const-wide/32 v8, 0xabf91bd

    .line 191
    invoke-virtual {v13, v8, v9}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_32

    const/high16 v5, 0x3fc00000    # 1.5f

    .line 192
    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v8

    .line 193
    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v10

    goto :goto_24

    :cond_32
    const-wide/32 v8, 0x14ce0124

    .line 194
    invoke-virtual {v13, v8, v9}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_33

    const v5, 0x3faaaaab

    .line 195
    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v8

    .line 196
    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v10

    goto :goto_24

    .line 197
    :cond_33
    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v10

    :goto_24
    cmpg-float v5, v12, v10

    if-gez v5, :cond_34

    const/4 v5, 0x1

    goto :goto_25

    :cond_34
    move v5, v4

    .line 198
    :goto_25
    invoke-virtual {v2, v5}, Landroid/app/AppCompatTaskInfo;->setHasMinAspectRatioOverride(Z)V

    .line 199
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    if-eqz v5, :cond_36

    .line 200
    iget-object v5, v6, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 201
    iget-object v5, v5, Lcom/android/server/wm/AppCompatController;->mAppCompatAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    .line 202
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isUserOrSystemMinAspectRatioApplied()Z

    move-result v8

    if-nez v8, :cond_35

    .line 203
    iget v5, v5, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mUserOrSystemMinAspectRatio:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v5, v5, v8

    if-nez v5, :cond_36

    .line 204
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result v5

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-lez v5, :cond_36

    :cond_35
    const/4 v5, 0x1

    goto :goto_26

    :cond_36
    const/4 v5, 0x1

    goto :goto_27

    .line 205
    :goto_26
    invoke-virtual {v2, v5}, Landroid/app/AppCompatTaskInfo;->setHasMinAspectRatioOverride(Z)V

    .line 206
    :goto_27
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    if-eqz v8, :cond_37

    .line 207
    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v8

    if-eqz v8, :cond_37

    .line 208
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v8

    if-eqz v8, :cond_37

    .line 209
    iget-boolean v8, v8, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsRotationCompatMode:Z

    if-eqz v8, :cond_37

    .line 210
    invoke-virtual {v2, v5}, Landroid/app/AppCompatTaskInfo;->setRotationCompatModeEnabled(Z)V

    :cond_37
    if-eqz p3, :cond_38

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v5

    .line 212
    :cond_38
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v5

    if-nez v5, :cond_39

    .line 214
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_28

    :cond_39
    const/4 v5, 0x0

    :goto_28
    iput-object v5, v2, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    .line 215
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v5, :cond_3a

    .line 216
    iget-object v3, v3, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    iget-boolean v3, v3, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsSingleTapEvent:Z

    .line 217
    invoke-virtual {v2, v3}, Landroid/app/AppCompatTaskInfo;->setIsFromLetterboxSingleTap(Z)V

    .line 218
    :cond_3a
    :goto_29
    iget-wide v2, v0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    iput-wide v2, v1, Landroid/app/TaskInfo;->lastGainFocusTime:J

    .line 219
    iget-object v2, v0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/TaskInfo;->rootAffinity:Ljava/lang/String;

    .line 220
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v2, :cond_3c

    .line 221
    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 222
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 223
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_3b

    const/4 v2, 0x1

    goto :goto_2a

    :cond_3b
    move v2, v4

    .line 224
    :goto_2a
    iput-boolean v2, v1, Landroid/app/TaskInfo;->isTranslucentTask:Z

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isCaptionHandlerHidden()Z

    move-result v2

    iput-boolean v2, v1, Landroid/app/TaskInfo;->isCaptionHandlerHidden:Z

    if-eqz v6, :cond_3c

    .line 226
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    iput v2, v1, Landroid/app/TaskInfo;->topActivityUiMode:I

    .line 227
    :cond_3c
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    if-eqz v2, :cond_3d

    .line 228
    iget-boolean v2, v0, Lcom/android/server/wm/Task;->mIsCaptionFullScreenState:Z

    iput-boolean v2, v1, Landroid/app/TaskInfo;->isFullScreenCaptionState:Z

    .line 229
    :cond_3d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY:Z

    if-eqz v2, :cond_41

    .line 230
    sget-object v2, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 231
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    invoke-static {v0, v4}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 233
    iput-boolean v4, v1, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    .line 234
    iget-object v3, v1, Landroid/app/TaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    if-nez v3, :cond_3e

    .line 235
    new-instance v3, Lcom/samsung/android/core/SizeCompatInfo;

    invoke-direct {v3}, Lcom/samsung/android/core/SizeCompatInfo;-><init>()V

    .line 236
    iput-object v3, v1, Landroid/app/TaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    goto :goto_2b

    .line 237
    :cond_3e
    invoke-virtual {v3}, Lcom/samsung/android/core/SizeCompatInfo;->clear()V

    .line 238
    :goto_2b
    iput-boolean v4, v1, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    const/4 v5, 0x1

    .line 239
    invoke-virtual {v3, v5}, Lcom/samsung/android/core/SizeCompatInfo;->setMode(I)V

    .line 240
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY_DRAG:Z

    if-eqz v5, :cond_41

    .line 241
    iget-object v5, v2, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 242
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_DEX_SIZE_COMPAT_DRAG:Z

    if-eqz v5, :cond_3f

    goto :goto_2c

    :cond_3f
    const/4 v2, 0x0

    :goto_2c
    if-eqz v2, :cond_41

    .line 243
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->fillSizeCompatInfoForDrag(Lcom/samsung/android/core/SizeCompatInfo;)V

    goto :goto_2d

    :cond_40
    const/4 v2, 0x0

    .line 244
    iput-object v2, v1, Landroid/app/TaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    goto :goto_2e

    :cond_41
    :goto_2d
    const/4 v2, 0x0

    .line 245
    :goto_2e
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_KEEP_SCREEN_ON:Z

    if-eqz v3, :cond_42

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isKeepScreenOn()Z

    move-result v3

    iput-boolean v3, v1, Landroid/app/TaskInfo;->isKeepScreenOn:Z

    .line 247
    :cond_42
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MD_DEX_COMPAT_CAPTION_SHELL:Z

    if-eqz v3, :cond_44

    if-eqz v6, :cond_43

    const/4 v3, 0x1

    .line 248
    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 249
    iget-object v3, v1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v5, v3, Landroid/content/res/Configuration;->dexCompatEnabled:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_43

    iget v3, v3, Landroid/content/res/Configuration;->dexCompatUiMode:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_43

    iget v3, v1, Landroid/app/TaskInfo;->resizeMode:I

    .line 250
    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v3

    if-nez v3, :cond_43

    .line 251
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v3

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result v3

    if-nez v3, :cond_43

    const/4 v3, 0x1

    goto :goto_2f

    :cond_43
    move v3, v4

    :goto_2f
    iput-boolean v3, v1, Landroid/app/TaskInfo;->isRotationButtonVisible:Z

    :cond_44
    if-eqz v6, :cond_45

    .line 252
    iget-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->mIsAllowedSeamlessRotation:Z

    if-eqz v3, :cond_45

    const/4 v3, 0x1

    goto :goto_30

    :cond_45
    move v3, v4

    :goto_30
    iput-boolean v3, v1, Landroid/app/TaskInfo;->isAllowedSeamlessRotation:Z

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v3

    iput-boolean v3, v1, Landroid/app/TaskInfo;->isForceHidden:Z

    .line 254
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_VIEW:Z

    if-eqz v3, :cond_46

    .line 255
    iget v3, v0, Lcom/android/server/wm/Task;->mMaxWidth:I

    iput v3, v1, Landroid/app/TaskInfo;->maxWidth:I

    .line 256
    iget v3, v0, Lcom/android/server/wm/Task;->mMaxHeight:I

    iput v3, v1, Landroid/app/TaskInfo;->maxHeight:I

    :cond_46
    const/4 v3, 0x1

    .line 257
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_47

    .line 258
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v5

    goto :goto_31

    :cond_47
    move-object v5, v2

    :goto_31
    if-eqz v5, :cond_4a

    .line 259
    iget-object v2, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2

    if-nez v2, :cond_49

    iget-object v2, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_48

    goto :goto_32

    :cond_48
    move v8, v4

    goto :goto_33

    :cond_49
    :goto_32
    const/4 v8, 0x1

    :goto_33
    iput-boolean v8, v1, Landroid/app/TaskInfo;->isTopTransparentActivity:Z

    .line 260
    :cond_4a
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    if-eqz v2, :cond_4c

    .line 261
    iget-object v2, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_4b

    .line 262
    iput-object v2, v1, Landroid/app/TaskInfo;->snappingGuideBounds:Landroid/graphics/Rect;

    goto :goto_34

    .line 263
    :cond_4b
    iget-object v2, v0, Lcom/android/server/wm/Task;->mSnappingGuideBounds:Landroid/graphics/Rect;

    iput-object v2, v1, Landroid/app/TaskInfo;->snappingGuideBounds:Landroid/graphics/Rect;

    .line 264
    :cond_4c
    :goto_34
    iget-boolean v2, v0, Lcom/android/server/wm/Task;->mIsAliasManaged:Z

    iput-boolean v2, v1, Landroid/app/TaskInfo;->isAliasManaged:Z

    const/4 v2, 0x1

    .line 265
    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 266
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mIsAiKeyRemoveAppTarget:Z

    if-nez v0, :cond_4e

    :cond_4d
    if-eqz v7, :cond_4f

    .line 267
    invoke-virtual {v7}, Landroid/content/Intent;->isAiKeyAppLaunch()Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_4e
    move v4, v2

    :cond_4f
    iput-boolean v4, v1, Landroid/app/TaskInfo;->isAiKeyRemoveAppTask:Z

    return-void
.end method

.method public final forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_3

    .line 2
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_3

    .line 4
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    move v2, v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 6
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final forAllLeafTasks(Ljava/util/function/Predicate;)Z
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 8
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v4, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 10
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v3
.end method

.method public final forAllRootTasks(Ljava/util/function/Consumer;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final forAllRootTasks(Ljava/util/function/Predicate;Z)Z
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final forAllTasks(Ljava/util/function/Consumer;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 2
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final forAllTasks(Ljava/util/function/Predicate;)Z
    .locals 1

    .line 3
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getAdjacentTask()Lcom/android/server/wm/Task;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getAdjacentTask()Lcom/android/server/wm/Task;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public final getAdjustedChildPosition(ILcom/android/server/wm/WindowContainer;)I
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    if-lez v1, :cond_4

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    add-int/lit8 v0, v1, -0x1

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_2
    add-int/lit8 v0, v1, -0x1

    .line 42
    .line 43
    :goto_2
    if-lez v0, :cond_5

    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    move v0, v2

    .line 64
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v3, v4}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_7

    .line 81
    .line 82
    if-nez v3, :cond_7

    .line 83
    .line 84
    :goto_4
    if-le v0, v2, :cond_7

    .line 85
    .line 86
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_6

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_7
    :goto_5
    const/high16 v3, -0x80000000

    .line 105
    .line 106
    if-ne p1, v3, :cond_8

    .line 107
    .line 108
    if-nez v2, :cond_8

    .line 109
    .line 110
    return v3

    .line 111
    :cond_8
    const v3, 0x7fffffff

    .line 112
    .line 113
    .line 114
    if-ne p1, v3, :cond_9

    .line 115
    .line 116
    add-int/lit8 v1, v1, -0x1

    .line 117
    .line 118
    if-lt v0, v1, :cond_9

    .line 119
    .line 120
    return v3

    .line 121
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-nez p0, :cond_a

    .line 126
    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 128
    .line 129
    :cond_a
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    return p0
.end method

.method public final getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getAdjacentTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    return-void
.end method

.method public final getBaseIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eq v0, p0, :cond_2

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 p0, 0x0

    .line 25
    :goto_0
    return-object p0
.end method

.method public final getBasePackageName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, ""

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public final getBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final getCreatedByOrganizerTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    return-object v0
.end method

.method public final getDimBounds(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    new-array v2, v2, [Z

    .line 24
    .line 25
    aput-boolean v0, v2, v0

    .line 26
    .line 27
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;

    .line 28
    .line 29
    invoke-direct {v3, v0, p1, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 33
    .line 34
    .line 35
    aget-boolean v0, v2, v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void
.end method

.method public final getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTranslucentAndVisible()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    invoke-static {}, Lcom/android/window/flags/Flags;->getDimmerOnClosing()Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTranslucentForTransition()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->getDimmer()Lcom/android/server/wm/Dimmer;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final getDisplayCutoutInsets()Landroid/graphics/Rect;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 7
    .line 8
    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 24
    .line 25
    :goto_0
    const/4 v2, 0x3

    .line 26
    if-eq v0, v2, :cond_3

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-ne v0, v2, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 35
    .line 36
    iget-object p0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :cond_3
    :goto_1
    return-object v1
.end method

.method public final getDumpActivitiesLocked(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "all"

    .line 7
    .line 8
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance p2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-direct {p2, v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string/jumbo v1, "top"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 44
    .line 45
    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance p2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-direct {p2, v2, v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    const/4 p0, -0x1

    .line 61
    if-eq p1, p0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    add-int/lit8 p0, p0, -0x1

    .line 68
    .line 69
    :goto_1
    if-ltz p0, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    .line 76
    .line 77
    iget p2, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 78
    .line 79
    if-eq p2, p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_3
    add-int/lit8 p0, p0, -0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    return-object v0
.end method

.method public final getFreeformContainerPosition()Landroid/graphics/Point;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mFreeformContainerPoint:Landroid/graphics/PointF;

    .line 6
    .line 7
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 8
    .line 9
    float-to-int v1, v1

    .line 10
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 11
    .line 12
    float-to-int v0, v0

    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    div-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    add-int/2addr v1, v0

    .line 31
    iget-object p0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 32
    .line 33
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    div-int/lit8 p0, p0, 0x2

    .line 40
    .line 41
    add-int/2addr v0, p0

    .line 42
    :cond_1
    new-instance p0, Landroid/graphics/Point;

    .line 43
    .line 44
    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public final getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/16 v4, 0x1b

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3, v4, v0}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v2, v2, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2, v4, v0}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    move-object v3, v0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move-object v3, v1

    .line 63
    :goto_0
    if-eqz v3, :cond_3

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 73
    .line 74
    return-object p0
.end method

.method public getLastSurfaceSize()Landroid/graphics/Point;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLaunchBounds()Landroid/graphics/Rect;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    if-ne v2, v4, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_4
    return-object v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Task="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final getNextFocusableTask(Z)Lcom/android/server/wm/Task;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/Task;Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :cond_1
    return-object p0
.end method

.method public final getOrganizedTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    return-object v0
.end method

.method public final getProtoFieldId()J
    .locals 2

    .line 1
    const-wide v0, 0x10b00000005L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method

.method public final getRelativePosition(Landroid/graphics/Point;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeftStash()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    neg-int v0, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 41
    .line 42
    int-to-float v1, v1

    .line 43
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeftStash()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    int-to-float v3, v3

    .line 64
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    int-to-float v2, v2

    .line 69
    iget p0, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 70
    .line 71
    mul-float/2addr v2, p0

    .line 72
    sub-float/2addr v3, v2

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 v3, 0x0

    .line 75
    :goto_1
    int-to-float p0, v0

    .line 76
    add-float/2addr v3, p0

    .line 77
    add-float/2addr v3, v1

    .line 78
    float-to-int p0, v3

    .line 79
    iput p0, p1, Landroid/graphics/Point;->x:I

    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public final getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mIgnoreRelinquishIdentity:Z

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/server/wm/Task$FindRootHelper;->mSetToBottomIfNone:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->this$0:Lcom/android/server/wm/Task;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput-object p2, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    return-object p1
.end method

.method public final getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public final getSnapshotAsBitmapLocked()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/AbsAppSnapshotController;->snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "snapshotTask() returns null! task="

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "WindowManager"

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_0
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_1
    invoke-static {p0}, Landroid/hardware/HardwareBuffer;->createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public final getStartingWindowInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/StartingWindowInfo;
    .locals 4

    .line 1
    new-instance v0, Landroid/window/StartingWindowInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/window/StartingWindowInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 11
    .line 12
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 17
    .line 18
    if-eq v3, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    :goto_0
    iput-object v3, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 27
    .line 28
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput-boolean v1, v0, Landroid/window/StartingWindowInfo;->isKeyguardOccluded:Z

    .line 35
    .line 36
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget v1, v1, Lcom/android/server/wm/StartingData;->mTypeParams:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v1, 0x110

    .line 44
    .line 45
    :goto_1
    iput v1, v0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    .line 46
    .line 47
    and-int/lit8 v1, v1, 0x10

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/16 v2, 0xb

    .line 54
    .line 55
    invoke-direct {v1, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 65
    .line 66
    iput-object v2, v0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 67
    .line 68
    iget v1, v1, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 69
    .line 70
    iput v1, v0, Landroid/window/StartingWindowInfo;->requestedVisibleTypes:I

    .line 71
    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->taskBounds:Landroid/graphics/Rect;

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    iget-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 82
    .line 83
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 84
    .line 85
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 95
    .line 96
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/android/window/flags/Flags;->drawSnapshotAspectRatioMatch()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_4

    .line 110
    .line 111
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 112
    .line 113
    const/16 v1, 0x8

    .line 114
    .line 115
    invoke-direct {p1, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    if-eqz p0, :cond_4

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowInsetsState:Landroid/view/InsetsState;

    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 131
    .line 132
    iput-object p0, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 133
    .line 134
    :cond_4
    return-object v0
.end method

.method public final getStashedBounds()Landroid/graphics/Rect;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/graphics/Point;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getRelativePosition(Landroid/graphics/Point;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeftStash()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 32
    .line 33
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 34
    .line 35
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    int-to-float v4, v4

    .line 42
    iget p0, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 43
    .line 44
    mul-float/2addr v4, p0

    .line 45
    float-to-int p0, v4

    .line 46
    add-int/2addr p0, v1

    .line 47
    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 52
    .line 53
    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    int-to-float v4, v4

    .line 60
    iget v5, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 61
    .line 62
    mul-float/2addr v4, v5

    .line 63
    float-to-int v4, v4

    .line 64
    add-int/2addr v4, v2

    .line 65
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    int-to-float v5, v5

    .line 72
    iget p0, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 73
    .line 74
    mul-float/2addr v5, p0

    .line 75
    float-to-int p0, v5

    .line 76
    add-int/2addr v1, p0

    .line 77
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-object v0
.end method

.method public final getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    :goto_0
    return-object p0
.end method

.method public final getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final getTopLeafTask()Lcom/android/server/wm/Task;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

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
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :cond_1
    return-object p0
.end method

.method public final getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    :goto_0
    if-ltz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/lit8 v1, v1, -0x1

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    move-object v3, v2

    .line 51
    :goto_1
    if-ltz v1, :cond_5

    .line 52
    .line 53
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 54
    .line 55
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-ne v4, v0, :cond_3

    .line 83
    .line 84
    move-object v3, v0

    .line 85
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 86
    .line 87
    return-object v3

    .line 88
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    return-object v2
.end method

.method public final getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    :goto_0
    if-ltz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/lit8 v1, v1, -0x1

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    move-object v3, v2

    .line 51
    :goto_1
    if-ltz v1, :cond_5

    .line 52
    .line 53
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 54
    .line 55
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-ne v4, v0, :cond_3

    .line 83
    .line 84
    move-object v3, v0

    .line 85
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 86
    .line 87
    return-object v3

    .line 88
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    return-object v2
.end method

.method public final getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;-><init>(ZZ)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    move p1, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    :goto_1
    return-object p0
.end method

.method public final goToSleepIfPossible(Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-direct {v2, v1, v3, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;IZ)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    .line 13
    .line 14
    invoke-direct {p1, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 19
    .line 20
    .line 21
    aget p0, v1, v0

    .line 22
    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    :cond_0
    return v0
.end method

.method public final handlesOrientationChangeFromDescendant(I)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant(I)Z

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
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eq v0, v2, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    if-eq v3, v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    if-eq v3, v0, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    if-ne v3, v0, :cond_3

    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 43
    .line 44
    if-ne v0, p0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayArea;->shouldIgnoreOrientationRequest(I)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_3

    .line 51
    .line 52
    move v1, v2

    .line 53
    :cond_3
    return v1
.end method

.method public final isAlwaysOnTop()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isAlwaysOnTopWhenVisible()Z
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isAnimatingByRecents()Z
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 22
    :goto_1
    return p0
.end method

.method public final isCaptionHandlerHidden()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

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
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    invoke-direct {v0, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 38
    .line 39
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 40
    .line 41
    const/high16 v0, 0x1000000

    .line 42
    .line 43
    and-int/2addr p0, v0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    :cond_1
    :goto_0
    return v1
.end method

.method public final isChangeTransitionBlockedByCommonPolicy()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingPipTask:Lcom/android/server/wm/Task;

    .line 12
    .line 13
    if-ne v0, p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsChangingPipToSplit:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :goto_0
    move v0, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 24
    .line 25
    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    .line 26
    .line 27
    if-nez v3, :cond_3

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 30
    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 66
    .line 67
    if-nez p0, :cond_4

    .line 68
    .line 69
    :cond_3
    move v1, v2

    .line 70
    :cond_4
    return v1
.end method

.method public final isCompatible(II)Z
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->isCompatible(II)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final isFocusedRootTaskOnDisplay()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final isFreeformForceHidden()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isFreeformPinned()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_TASK_PINNING:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getFreeformTaskPinningState()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    const/4 v0, 0x2

    .line 33
    if-ne p0, v0, :cond_1

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    :goto_0
    return p0
.end method

.method public final isFreeformStashed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpg-float v0, v0, v1

    .line 11
    .line 12
    if-ltz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget p0, p0, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-ne p0, v0, :cond_2

    .line 18
    .line 19
    :cond_1
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final isFullscreenRootForStageTask()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 12
    .line 13
    iget-boolean v3, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-ne v2, p0, :cond_1

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-ne v0, p0, :cond_1

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_1
    return v1
.end method

.method public isInChangeTransition()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 10
    .line 11
    sget-object v0, Lcom/android/server/wm/AppTransition;->sFlagToString:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v0, 0x1b

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x1e

    .line 18
    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public final isKeepScreenOn()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 9
    .line 10
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 11
    .line 12
    and-int/lit16 v2, v2, 0x80

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    move v2, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v0

    .line 20
    :goto_0
    if-nez v2, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    iget-object p0, v4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    move v0, v3

    .line 45
    :cond_1
    xor-int/lit8 v2, v0, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canShowTransient()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    :cond_3
    :goto_1
    return v2

    .line 59
    :cond_4
    return v0
.end method

.method public final isLeafTask()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v1
.end method

.method public final isLeftStash()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 26
    .line 27
    if-ge v0, p0, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    :cond_0
    return v2
.end method

.method public final isMinimized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 22
    :goto_1
    return p0
.end method

.method public final isOrganized()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isResizeable(Z)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 24
    .line 25
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 32
    .line 33
    if-eqz p0, :cond_3

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    :cond_2
    :goto_0
    move v2, v1

    .line 38
    :cond_3
    return v2
.end method

.method public final isRootTask()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p0, :cond_0

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

.method public final isSplitAdjustedMinimalBounds()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-lt v0, v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-ge v0, p0, :cond_1

    .line 62
    .line 63
    :cond_0
    const/4 p0, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 p0, 0x0

    .line 66
    :goto_0
    return p0
.end method

.method public final isStageRootTask()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-ne v0, p0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    :goto_0
    return v1
.end method

.method public final isTaskViewTask()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x6

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method

.method public final isTopRootTaskInDisplayArea()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isUnderHomeRootTask()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->isUnderHomeTask(Lcom/android/server/wm/Task;)Z

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

.method public final lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v1, "unknown="

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_0
    const-string p0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    const-string p0, "LOCK_TASK_AUTH_ALLOWLISTED"

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_2
    const-string p0, "LOCK_TASK_AUTH_LAUNCHABLE"

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_3
    const-string p0, "LOCK_TASK_AUTH_PINNABLE"

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_4
    const-string p0, "LOCK_TASK_AUTH_DONT_LOCK"

    .line 48
    .line 49
    return-object p0
.end method

.method public final makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final maybeApplyLastRecentsAnimationTransaction()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 8
    .line 9
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public moveTaskFragmentsToBottomIfNeeded(Lcom/android/server/wm/ActivityRecord;[I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-le v0, p1, :cond_3

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-boolean v3, v2, Lcom/android/server/wm/TaskFragment;->mMoveToBottomIfClearWhenLaunch:Z

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    if-nez v1, :cond_4

    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/4 v0, 0x0

    .line 60
    move v2, v0

    .line 61
    :goto_1
    if-ge v2, p1, :cond_5

    .line 62
    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lcom/android/server/wm/TaskFragment;

    .line 68
    .line 69
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 70
    .line 71
    invoke-virtual {v4, v3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 72
    .line 73
    .line 74
    const/high16 v4, -0x80000000

    .line 75
    .line 76
    invoke-virtual {p0, v4, v3, v0}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    aget p0, p2, v0

    .line 83
    .line 84
    add-int/2addr p0, p1

    .line 85
    aput p0, p2, v0

    .line 86
    .line 87
    return-void
.end method

.method public final moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z
    .locals 7

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZII)Z

    move-result p0

    return p0
.end method

.method public final moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZII)Z
    .locals 13

    move-object v7, p0

    move-object v8, p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformPinned()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->stopFreeformTaskPinning(Lcom/android/server/wm/Task;)V

    .line 6
    :cond_2
    :goto_0
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const/4 v2, 0x4

    const/4 v9, 0x1

    if-eqz v0, :cond_7

    if-eqz p3, :cond_4

    if-nez p4, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 7
    :goto_1
    iget-object v3, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 8
    iget v4, v3, Lcom/android/server/wm/Transition;->mType:I

    if-ne v4, v0, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;ZII)V

    .line 11
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    return v9

    .line 12
    :cond_4
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 13
    iget v0, v3, Lcom/android/server/wm/Transition;->mType:I

    if-ne v0, v9, :cond_5

    .line 14
    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v6

    move v6, v10

    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;ZII)V

    return v9

    .line 16
    :cond_5
    new-instance v10, Lcom/android/server/wm/Transition;

    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v10, v2, v1, v0, v3}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    const/high16 v0, 0x80000

    .line 17
    invoke-virtual {v10, v0}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 18
    :cond_6
    iget-object v11, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v12, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, v10

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;ZII)V

    invoke-virtual {v11, v10, v12}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    goto :goto_2

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 20
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    :cond_8
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 22
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;ZII)V

    :goto_2
    return v9
.end method

.method public final moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;ZII)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/wm/Transition$ReadyCondition;

    .line 2
    .line 3
    const-string/jumbo v1, "moved-to-back"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p2, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string v1, "1005"

    .line 32
    .line 33
    const-string v2, "Tap \'Back\' button"

    .line 34
    .line 35
    invoke-static {v1, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 47
    .line 48
    invoke-static {v1, v2}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x1

    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/Task;->setBoostTaskLayerForFreeform(ZZ)V

    .line 57
    .line 58
    .line 59
    invoke-super {p0, v3}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v1, v3

    .line 68
    :goto_1
    if-eqz p4, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0, p5, p6}, Lcom/android/server/wm/Task;->setMinimized(II)V

    .line 71
    .line 72
    .line 73
    :cond_3
    const-string/jumbo p4, "moveTaskToBackInner"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p4, p1}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 77
    .line 78
    .line 79
    if-eqz p3, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/android/server/wm/AppTransition;->getKeyguardTransition()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-lez p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/android/server/wm/AppTransition;->getFirstAppTransition()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-lez p1, :cond_4

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    invoke-static {p3}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation$1()V

    .line 123
    .line 124
    .line 125
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_7

    .line 130
    .line 131
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 132
    .line 133
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 147
    .line 148
    .line 149
    :cond_5
    if-eqz p2, :cond_6

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 152
    .line 153
    .line 154
    :cond_6
    return-void

    .line 155
    :cond_7
    :try_start_1
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 156
    .line 157
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 158
    .line 159
    const/4 p4, 0x0

    .line 160
    invoke-virtual {p1, p4, p3, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_8

    .line 170
    .line 171
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 174
    .line 175
    .line 176
    :cond_8
    if-eqz p2, :cond_9

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 179
    .line 180
    .line 181
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-nez p1, :cond_a

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 193
    .line 194
    .line 195
    move-result-object p4

    .line 196
    :goto_2
    if-eqz p4, :cond_d

    .line 197
    .line 198
    if-eq p4, p0, :cond_d

    .line 199
    .line 200
    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 201
    .line 202
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    if-eqz p2, :cond_d

    .line 207
    .line 208
    if-eqz v1, :cond_b

    .line 209
    .line 210
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 211
    .line 212
    const-string/jumbo p3, "moveTaskToBackLocked"

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_b
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    if-nez p2, :cond_c

    .line 223
    .line 224
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 225
    .line 226
    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 227
    .line 228
    .line 229
    :cond_c
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 230
    .line 231
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 232
    .line 233
    .line 234
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 235
    .line 236
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 243
    .line 244
    .line 245
    :goto_3
    return-void

    .line 246
    :goto_4
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 247
    .line 248
    invoke-virtual {p3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 249
    .line 250
    .line 251
    move-result p3

    .line 252
    if-eqz p3, :cond_e

    .line 253
    .line 254
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 257
    .line 258
    .line 259
    :cond_e
    if-eqz p2, :cond_f

    .line 260
    .line 261
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 262
    .line 263
    .line 264
    :cond_f
    throw p1
.end method

.method public final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v5, p1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 2
    .line 3
    const-string v6, "Pageboost"

    .line 4
    .line 5
    const-string/jumbo v0, "moveTaskToFront : "

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-eqz v5, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/16 v0, 0xa

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, -0x1

    .line 30
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const-string v0, "failed to moveTaskToFront by exception"

    .line 35
    .line 36
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x1

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v3, 0x3

    .line 54
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 55
    .line 56
    if-eq p1, p0, :cond_5

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_5

    .line 63
    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    if-eqz p3, :cond_4

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-nez p2, :cond_3

    .line 83
    .line 84
    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 92
    .line 93
    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 94
    .line 95
    .line 96
    :goto_2
    return-void

    .line 97
    :cond_5
    if-eqz p4, :cond_6

    .line 98
    .line 99
    new-instance v5, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;

    .line 100
    .line 101
    const/4 v6, 0x0

    .line 102
    invoke-direct {v5, v6, p4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 109
    .line 110
    .line 111
    move-result p4

    .line 112
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 113
    .line 114
    invoke-static {p4, v5}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    .line 115
    .line 116
    .line 117
    move-result p4

    .line 118
    if-eqz p4, :cond_7

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    .line 121
    .line 122
    .line 123
    move-result p4

    .line 124
    if-nez p4, :cond_7

    .line 125
    .line 126
    invoke-super {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :catchall_0
    move-exception p1

    .line 131
    goto/16 :goto_7

    .line 132
    .line 133
    :cond_7
    :goto_3
    iget-object p4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 134
    .line 135
    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 136
    .line 137
    invoke-virtual {p4, p0}, Lcom/android/server/wm/FreeformController;->releaseForceHideTaskLocked(Lcom/android/server/wm/Task;)V

    .line 138
    .line 139
    .line 140
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 141
    .line 142
    if-eqz p4, :cond_8

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 145
    .line 146
    .line 147
    move-result p4

    .line 148
    if-nez p4, :cond_8

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 151
    .line 152
    .line 153
    move-result p4

    .line 154
    if-eqz p4, :cond_8

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 157
    .line 158
    .line 159
    move-result p4

    .line 160
    if-eqz p4, :cond_8

    .line 161
    .line 162
    iget-object p4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 163
    .line 164
    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 165
    .line 166
    invoke-virtual {p4, p1}, Lcom/android/server/wm/FreeformController;->updateFreeformBoundsForDisplayDeviceTypeChanged(Lcom/android/server/wm/Task;)V

    .line 167
    .line 168
    .line 169
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->setUnMinimizedWhenRestored()V

    .line 170
    .line 171
    .line 172
    iget-object p4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 173
    .line 174
    iget v5, p4, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    .line 175
    .line 176
    if-nez v5, :cond_9

    .line 177
    .line 178
    iput-boolean v2, p4, Lcom/android/server/wm/DisplayContent;->mUpdateImeRequestedWhileDeferred:Z

    .line 179
    .line 180
    :cond_9
    add-int/2addr v5, v1

    .line 181
    iput v5, p4, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    .line 182
    .line 183
    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 184
    .line 185
    .line 186
    move-result-object p4

    .line 187
    if-eqz p4, :cond_10

    .line 188
    .line 189
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_a

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_a
    invoke-virtual {p4, p6}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    if-eqz p2, :cond_b

    .line 200
    .line 201
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 202
    .line 203
    invoke-virtual {p2, v2, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 204
    .line 205
    .line 206
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 207
    .line 208
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 214
    .line 215
    invoke-virtual {p2, p4}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 216
    .line 217
    .line 218
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 219
    .line 220
    invoke-virtual {p2, p4}, Lcom/android/server/wm/TransitionController;->setNoAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 221
    .line 222
    .line 223
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_b
    if-eqz p3, :cond_d

    .line 228
    .line 229
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    if-eqz p2, :cond_c

    .line 234
    .line 235
    invoke-virtual {p2, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 236
    .line 237
    .line 238
    move-result p6

    .line 239
    if-nez p6, :cond_c

    .line 240
    .line 241
    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_c
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 246
    .line 247
    .line 248
    :cond_d
    :goto_4
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 249
    .line 250
    invoke-virtual {p2, v3, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 251
    .line 252
    .line 253
    :goto_5
    if-eqz v0, :cond_e

    .line 254
    .line 255
    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 256
    .line 257
    iget-object p6, p4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 258
    .line 259
    if-eq p2, p6, :cond_e

    .line 260
    .line 261
    invoke-static {v0, p1, p4, p3}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 262
    .line 263
    .line 264
    :cond_e
    if-nez p5, :cond_f

    .line 265
    .line 266
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    .line 270
    .line 271
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 272
    .line 273
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :cond_10
    :goto_6
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 278
    .line 279
    .line 280
    if-eqz p4, :cond_11

    .line 281
    .line 282
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 283
    .line 284
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 285
    .line 286
    iget-object p2, p4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 287
    .line 288
    invoke-virtual {p1, p2}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 289
    .line 290
    .line 291
    :cond_11
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    .line 293
    .line 294
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 295
    .line 296
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :goto_7
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 301
    .line 302
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 303
    .line 304
    .line 305
    throw p1
.end method

.method public final moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

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
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v1, :cond_5

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_0
    const/4 v3, 0x0

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1, p1, p0}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/high16 v4, -0x80000000

    .line 41
    .line 42
    invoke-virtual {v0, v4, p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    if-eqz p2, :cond_4

    .line 49
    .line 50
    if-eq p2, p0, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v2, v3

    .line 68
    :goto_2
    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    .line 69
    .line 70
    .line 71
    :cond_4
    return-void

    .line 72
    :cond_5
    if-eqz p2, :cond_a

    .line 73
    .line 74
    if-ne p2, p0, :cond_6

    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :cond_6
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 83
    .line 84
    if-eqz v1, :cond_9

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/4 v3, 0x4

    .line 93
    if-ne v1, v3, :cond_9

    .line 94
    .line 95
    if-eqz p1, :cond_9

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_9

    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-ne p1, v1, :cond_9

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_9

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_9

    .line 120
    .line 121
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-ne v1, v2, :cond_7

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_7
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-lez p1, :cond_a

    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 139
    .line 140
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-eqz p0, :cond_8

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string p1, "handlePositionTaskBehindHome: #"

    .line 155
    .line 156
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget p1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    const-string p1, "ChangeTransitionController"

    .line 169
    .line 170
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    new-instance v5, Landroid/graphics/Rect;

    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-direct {v5, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    const-string/jumbo v6, "position_behind_home"

    .line 187
    .line 188
    .line 189
    const/4 v7, 0x0

    .line 190
    const/4 v3, 0x6

    .line 191
    move-object v2, p2

    .line 192
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ChangeTransitionController;->requestChangeTransition(Lcom/android/server/wm/Task;IILandroid/graphics/Rect;Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    :goto_3
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_9
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    .line 200
    .line 201
    .line 202
    :cond_a
    :goto_4
    return-void
.end method

.method public moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

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
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-class v3, Landroid/hardware/display/DisplayManager;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 31
    .line 32
    const-string v3, "SPEG"

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    const-string v0, "Can\'t get DisplayManager"

    .line 37
    .line 38
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getHiddenDisplayId(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, -0x1

    .line 51
    if-eq v2, v5, :cond_3

    .line 52
    .line 53
    if-eq v2, v4, :cond_3

    .line 54
    .line 55
    const-string v5, "There is speg display "

    .line 56
    .line 57
    const-string v6, " for "

    .line 58
    .line 59
    const-string v7, ", but "

    .line 60
    .line 61
    invoke-static {v2, v5, v6, v1, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, " moveToFront on other display "

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, "Backtrace: "

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Ljava/lang/Throwable;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    if-eqz v2, :cond_4

    .line 142
    .line 143
    if-eqz v1, :cond_4

    .line 144
    .line 145
    iget-boolean v2, v1, Lcom/android/server/wm/Task;->mIsDragSourceTask:Z

    .line 146
    .line 147
    if-eqz v2, :cond_4

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->setHideWhileTwoHandDragging(Lcom/android/server/wm/WindowContainer;)V

    .line 153
    .line 154
    .line 155
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 160
    .line 161
    invoke-static {v0, v1}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    const/4 v1, 0x1

    .line 166
    if-eqz v0, :cond_5

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_5

    .line 173
    .line 174
    invoke-super {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 175
    .line 176
    .line 177
    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 178
    .line 179
    if-eqz v0, :cond_7

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_7

    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_7

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_6

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    .line 201
    .line 202
    :cond_7
    :goto_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 203
    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-nez v0, :cond_9

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_9

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_9

    .line 223
    .line 224
    if-eqz p2, :cond_8

    .line 225
    .line 226
    move-object v0, p2

    .line 227
    goto :goto_2

    .line 228
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 233
    .line 234
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 235
    .line 236
    invoke-virtual {v2, v0}, Lcom/android/server/wm/FreeformController;->updateFreeformBoundsForDisplayDeviceTypeChanged(Lcom/android/server/wm/Task;)V

    .line 237
    .line 238
    .line 239
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->setUnMinimizedWhenRestored()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-nez v0, :cond_a

    .line 247
    .line 248
    return-void

    .line 249
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 250
    .line 251
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 252
    .line 253
    if-nez v0, :cond_b

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Transition;->recordDisplay(Lcom/android/server/wm/DisplayContent;)V

    .line 261
    .line 262
    .line 263
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    const/4 v3, 0x0

    .line 272
    if-nez v2, :cond_d

    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_d

    .line 279
    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v4, " returnToHome"

    .line 289
    .line 290
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-eqz v2, :cond_d

    .line 305
    .line 306
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-nez v2, :cond_d

    .line 311
    .line 312
    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 313
    .line 314
    if-eqz v2, :cond_c

    .line 315
    .line 316
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    goto :goto_4

    .line 321
    :cond_c
    move-object v2, v3

    .line 322
    :goto_4
    if-eqz v2, :cond_d

    .line 323
    .line 324
    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 325
    .line 326
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 327
    .line 328
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    .line 333
    .line 334
    .line 335
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-eqz v2, :cond_e

    .line 340
    .line 341
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    :cond_e
    if-nez p2, :cond_f

    .line 346
    .line 347
    move-object p2, p0

    .line 348
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 349
    .line 350
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 351
    .line 352
    invoke-virtual {v2, p0}, Lcom/android/server/wm/FreeformController;->releaseForceHideTaskLocked(Lcom/android/server/wm/Task;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->setUnMinimizedWhenRestored()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    const v2, 0x7fffffff

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0, v2, p2, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, p1, v3}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 369
    .line 370
    .line 371
    return-void
.end method

.method public final navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    return v3

    .line 20
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const/4 v7, 0x1

    .line 33
    if-eq v6, v1, :cond_2

    .line 34
    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    new-instance v6, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;

    .line 38
    .line 39
    const/4 v8, 0x2

    .line 40
    invoke-direct {v6, v8, v5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v6, p1, v3, v7}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    move-object v4, v5

    .line 50
    move v5, v7

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v5, v3

    .line 53
    :goto_0
    iget-object v6, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 54
    .line 55
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 56
    .line 57
    const/4 v8, -0x1

    .line 58
    if-eqz v6, :cond_3

    .line 59
    .line 60
    iget-object v9, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 61
    .line 62
    invoke-virtual {p0, v8, v9}, Lcom/android/server/wm/Task;->topRunningActivity(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    if-eqz v9, :cond_3

    .line 67
    .line 68
    :try_start_0
    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {v6, v9}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    iget-object v6, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 76
    .line 77
    const/4 v9, 0x0

    .line 78
    iput-object v9, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 79
    .line 80
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v6, v9}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 85
    .line 86
    .line 87
    move v6, v7

    .line 88
    :goto_1
    if-nez v6, :cond_3

    .line 89
    .line 90
    return v3

    .line 91
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 92
    .line 93
    .line 94
    move-result-wide v9

    .line 95
    filled-new-array/range {p5 .. p5}, [I

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    new-array v11, v7, [Landroid/content/Intent;

    .line 100
    .line 101
    aput-object p6, v11, v3

    .line 102
    .line 103
    filled-new-array/range {p7 .. p7}, [Lcom/android/server/uri/NeededUriGrants;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    new-instance v13, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;

    .line 108
    .line 109
    invoke-direct {v13, v4, v6, v11, v12}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v13, p1, v7, v7}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 113
    .line 114
    .line 115
    aget v2, v6, v3

    .line 116
    .line 117
    aget-object v3, v11, v3

    .line 118
    .line 119
    if-eqz v4, :cond_4

    .line 120
    .line 121
    if-eqz v5, :cond_4

    .line 122
    .line 123
    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 124
    .line 125
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 126
    .line 127
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 128
    .line 129
    iget-object v0, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 132
    .line 133
    const-string/jumbo v6, "navigateUpTo"

    .line 134
    .line 135
    .line 136
    move-object/from16 v11, p2

    .line 137
    .line 138
    invoke-virtual {v0, v11, v6}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 143
    .line 144
    move-object/from16 v11, p3

    .line 145
    .line 146
    iput-object v11, v6, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 147
    .line 148
    iget v11, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 149
    .line 150
    iput v11, v6, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 151
    .line 152
    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 153
    .line 154
    iget-object v11, v11, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 155
    .line 156
    iput-object v11, v6, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 157
    .line 158
    iget-object v11, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 159
    .line 160
    iput-object v11, v6, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 161
    .line 162
    move-object/from16 v11, p4

    .line 163
    .line 164
    iput-object v11, v6, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 165
    .line 166
    iput v8, v6, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 167
    .line 168
    iput v5, v6, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 169
    .line 170
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 171
    .line 172
    iput-object v1, v6, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 175
    .line 176
    iput-object v1, v6, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 177
    .line 178
    iput v8, v6, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 179
    .line 180
    iput v5, v6, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 181
    .line 182
    iput-boolean v7, v6, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-nez v0, :cond_4

    .line 193
    .line 194
    const-string/jumbo v0, "navigate-top"

    .line 195
    .line 196
    .line 197
    const/4 v1, 0x1

    .line 198
    move-object p0, v4

    .line 199
    move p1, v2

    .line 200
    move-object/from16 p2, v3

    .line 201
    .line 202
    move-object/from16 p3, p7

    .line 203
    .line 204
    move-object/from16 p4, v0

    .line 205
    .line 206
    move/from16 p5, v1

    .line 207
    .line 208
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 209
    .line 210
    .line 211
    :cond_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 212
    .line 213
    .line 214
    return v5
.end method

.method public final notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/Task;->mHandler:Lcom/android/server/wm/Task$ActivityTaskHandler;

    .line 30
    .line 31
    const/16 v1, 0x65

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 48
    .line 49
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 50
    .line 51
    invoke-static {v3}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    .line 52
    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move p0, v2

    .line 75
    :goto_1
    invoke-interface {v1, v0, p0}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    :catch_0
    :cond_3
    return-void
.end method

.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfaceVisibilityForDragAndDrop()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-direct {p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>(I)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final onAppFocusChanged(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 23
    .line 24
    iget-object v2, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 25
    .line 26
    const/16 v3, 0x18

    .line 27
    .line 28
    invoke-virtual {v2, v3, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 38
    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasWindowFocus:Z

    .line 41
    .line 42
    if-eq v0, p1, :cond_1

    .line 43
    .line 44
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasWindowFocus:Z

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateWindowFocusInTask()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public final onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 21
    .line 22
    iget-boolean v1, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$1;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public final onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 18
    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-nez p1, :cond_2

    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const v5, 0x7fffffff

    .line 68
    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    if-eq v0, v4, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p1, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 80
    .line 81
    if-ne p0, v0, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eq v0, p0, :cond_3

    .line 88
    .line 89
    invoke-virtual {p1, v5, p0, v6}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 90
    .line 91
    .line 92
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY:Z

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    sget-object v0, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {p0, v6}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    move v0, v6

    .line 108
    goto :goto_0

    .line 109
    :cond_4
    iget-object v0, v0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    :goto_0
    if-eqz v0, :cond_5

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_d

    .line 129
    .line 130
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_d

    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 141
    .line 142
    if-eqz v0, :cond_d

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    const/4 v4, 0x1

    .line 153
    if-eq v2, v0, :cond_7

    .line 154
    .line 155
    move v7, v4

    .line 156
    goto :goto_1

    .line 157
    :cond_7
    move v7, v6

    .line 158
    :goto_1
    if-eqz v7, :cond_d

    .line 159
    .line 160
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_LARGE_SCREEN_BOUNDS_POLICY:Z

    .line 161
    .line 162
    if-eqz v7, :cond_a

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-eqz v7, :cond_9

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    if-eqz v7, :cond_9

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    iget-boolean v7, v7, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 181
    .line 182
    if-nez v7, :cond_8

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_8
    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 186
    .line 187
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_9
    :goto_2
    move v4, v6

    .line 192
    :goto_3
    if-nez v4, :cond_c

    .line 193
    .line 194
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-eqz v4, :cond_b

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_b
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 202
    .line 203
    invoke-virtual {v4, v2, v3, v0}, Lcom/android/server/wm/DisplayContent;->rotateBounds(ILandroid/graphics/Rect;I)V

    .line 204
    .line 205
    .line 206
    :cond_c
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->saveFreeformBoundsIfNeeded()V

    .line 210
    .line 211
    .line 212
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eq v1, v0, :cond_e

    .line 217
    .line 218
    invoke-virtual {p1, v5, p0, v6}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 219
    .line 220
    .line 221
    :cond_e
    return-void
.end method

.method public final onConfigurationChangedInner(Landroid/content/res/Configuration;)V
    .locals 15

    .line 1
    move-object v7, p0

    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v9, 0x1

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v3, v8

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    move v3, v9

    .line 68
    :goto_1
    and-int/2addr v2, v3

    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v10, 0x5

    .line 71
    if-nez v1, :cond_5

    .line 72
    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    iget-object v1, v7, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_5

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 90
    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    iget-boolean v2, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    iget v2, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 100
    .line 101
    if-ne v2, v10, :cond_4

    .line 102
    .line 103
    iget-object v2, v7, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-gt v2, v4, :cond_3

    .line 118
    .line 119
    iget-object v2, v7, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-le v2, v1, :cond_4

    .line 134
    .line 135
    :cond_3
    iput-object v3, v7, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 143
    .line 144
    iget-object v2, v7, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_7

    .line 166
    .line 167
    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_7

    .line 172
    .line 173
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 174
    .line 175
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-nez v2, :cond_6

    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_7

    .line 194
    .line 195
    :cond_6
    iget-object v2, v7, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 196
    .line 197
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 198
    .line 199
    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    new-instance v2, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;

    .line 205
    .line 206
    invoke-direct {v2, v8}, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 210
    .line 211
    .line 212
    :cond_7
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 213
    .line 214
    iget-boolean v4, v7, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 215
    .line 216
    if-nez v4, :cond_a

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-eqz v4, :cond_a

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-eqz v4, :cond_a

    .line 229
    .line 230
    iget-object v4, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 231
    .line 232
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 233
    .line 234
    invoke-virtual {v4, p0}, Lcom/android/server/wm/TaskSnapshotController;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_8

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_a

    .line 246
    .line 247
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-eq v4, v9, :cond_9

    .line 252
    .line 253
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-eqz v2, :cond_a

    .line 266
    .line 267
    :cond_9
    filled-new-array {p0}, [Lcom/android/server/wm/Task;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-static {v2}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    iget-object v4, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 276
    .line 277
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 278
    .line 279
    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 280
    .line 281
    .line 282
    iget-object v4, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 283
    .line 284
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 285
    .line 286
    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V

    .line 287
    .line 288
    .line 289
    :cond_a
    :goto_3
    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 303
    .line 304
    .line 305
    move-result v12

    .line 306
    invoke-super/range {p0 .. p1}, Lcom/android/server/wm/TaskFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-eq v12, v4, :cond_b

    .line 321
    .line 322
    move v13, v9

    .line 323
    goto :goto_4

    .line 324
    :cond_b
    move v13, v8

    .line 325
    :goto_4
    if-eqz v13, :cond_c

    .line 326
    .line 327
    iget-object v2, v7, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-virtual {v2, p0, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 334
    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-eq v2, v4, :cond_d

    .line 342
    .line 343
    iget-object v2, v7, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 344
    .line 345
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    new-instance v4, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;

    .line 349
    .line 350
    const/4 v5, 0x0

    .line 351
    invoke-direct {v4, v2, v5}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 355
    .line 356
    .line 357
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 358
    .line 359
    const/16 v4, 0xd6

    .line 360
    .line 361
    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    if-nez v5, :cond_d

    .line 366
    .line 367
    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 368
    .line 369
    .line 370
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 371
    .line 372
    .line 373
    move-result v14

    .line 374
    if-eq v11, v14, :cond_e

    .line 375
    .line 376
    iget v2, v7, Lcom/android/server/wm/Task;->mTaskId:I

    .line 377
    .line 378
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    const/16 v4, 0x7c9e

    .line 395
    .line 396
    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 397
    .line 398
    .line 399
    if-eqz v11, :cond_e

    .line 400
    .line 401
    iget-object v2, v7, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 402
    .line 403
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 404
    .line 405
    iget v4, v7, Lcom/android/server/wm/Task;->mTaskId:I

    .line 406
    .line 407
    iget-object v5, v2, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 408
    .line 409
    const/16 v6, 0x1e

    .line 410
    .line 411
    invoke-virtual {v5, v6, v4, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    iget-object v5, v2, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskWindowingModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 416
    .line 417
    invoke-virtual {v2, v5, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 421
    .line 422
    .line 423
    :cond_e
    if-eq v11, v14, :cond_10

    .line 424
    .line 425
    if-ne v11, v10, :cond_10

    .line 426
    .line 427
    iget v2, v7, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 428
    .line 429
    const/high16 v4, 0x3f800000    # 1.0f

    .line 430
    .line 431
    cmpl-float v2, v2, v4

    .line 432
    .line 433
    if-eqz v2, :cond_f

    .line 434
    .line 435
    iput v4, v7, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 436
    .line 437
    :cond_f
    iget v2, v7, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    .line 438
    .line 439
    if-eqz v2, :cond_10

    .line 440
    .line 441
    iput v8, v7, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    .line 442
    .line 443
    :cond_10
    const/4 v2, 0x2

    .line 444
    if-eq v11, v14, :cond_11

    .line 445
    .line 446
    const/4 v4, 0x6

    .line 447
    if-ne v11, v4, :cond_11

    .line 448
    .line 449
    if-nez v1, :cond_11

    .line 450
    .line 451
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    if-eqz v1, :cond_11

    .line 456
    .line 457
    invoke-virtual {p0, v2, v8}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 458
    .line 459
    .line 460
    :cond_11
    if-eq v11, v14, :cond_15

    .line 461
    .line 462
    if-eq v11, v10, :cond_12

    .line 463
    .line 464
    if-ne v14, v10, :cond_15

    .line 465
    .line 466
    :cond_12
    if-ne v14, v10, :cond_13

    .line 467
    .line 468
    move v1, v9

    .line 469
    goto :goto_6

    .line 470
    :cond_13
    move v1, v8

    .line 471
    :goto_6
    iget-object v4, v7, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 472
    .line 473
    if-nez v4, :cond_14

    .line 474
    .line 475
    goto :goto_7

    .line 476
    :cond_14
    iget-object v4, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 477
    .line 478
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 479
    .line 480
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    .line 485
    .line 486
    iget-object v5, v7, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 487
    .line 488
    invoke-virtual {v4, v5, v1}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 493
    .line 494
    .line 495
    :cond_15
    :goto_7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_NOTIFY_TASKBAR_VISIBLE:Z

    .line 496
    .line 497
    if-eqz v1, :cond_16

    .line 498
    .line 499
    if-eqz v13, :cond_16

    .line 500
    .line 501
    if-ne v14, v9, :cond_16

    .line 502
    .line 503
    iget-object v1, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 504
    .line 505
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 506
    .line 507
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/WindowManagerServiceExt;->updateTaskbarTargetIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)V

    .line 512
    .line 513
    .line 514
    :cond_16
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 515
    .line 516
    if-eqz v1, :cond_22

    .line 517
    .line 518
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 523
    .line 524
    .line 525
    move-result v4

    .line 526
    iget-object v5, v7, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 527
    .line 528
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    if-ne v4, v5, :cond_18

    .line 533
    .line 534
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    iget-object v4, v7, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 539
    .line 540
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 541
    .line 542
    .line 543
    move-result v4

    .line 544
    if-eq v1, v4, :cond_17

    .line 545
    .line 546
    goto :goto_8

    .line 547
    :cond_17
    move v1, v8

    .line 548
    goto :goto_9

    .line 549
    :cond_18
    :goto_8
    move v1, v9

    .line 550
    :goto_9
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 551
    .line 552
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    if-eq v11, v14, :cond_20

    .line 557
    .line 558
    iget-object v0, v7, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 559
    .line 560
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 561
    .line 562
    iget-object v4, v7, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 563
    .line 564
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    if-eq v11, v14, :cond_29

    .line 568
    .line 569
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    if-eqz v1, :cond_19

    .line 574
    .line 575
    goto/16 :goto_11

    .line 576
    .line 577
    :cond_19
    if-eq v11, v2, :cond_29

    .line 578
    .line 579
    if-ne v14, v2, :cond_1a

    .line 580
    .line 581
    goto/16 :goto_11

    .line 582
    .line 583
    :cond_1a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 584
    .line 585
    if-eqz v1, :cond_1b

    .line 586
    .line 587
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    if-eqz v1, :cond_1b

    .line 592
    .line 593
    if-eq v11, v14, :cond_1b

    .line 594
    .line 595
    if-ne v11, v10, :cond_1b

    .line 596
    .line 597
    goto :goto_a

    .line 598
    :cond_1b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    .line 599
    .line 600
    if-eqz v1, :cond_1d

    .line 601
    .line 602
    iget-boolean v1, v7, Lcom/android/server/wm/Task;->mSetDisplayChangeTransitionByCornerGesture:Z

    .line 603
    .line 604
    if-eqz v1, :cond_1d

    .line 605
    .line 606
    :goto_a
    iget-boolean v1, v7, Lcom/android/server/wm/Task;->mSetDisplayChangeTransitionByCornerGesture:Z

    .line 607
    .line 608
    if-eqz v1, :cond_1c

    .line 609
    .line 610
    const-string v1, "compat_to_freeform_by_gesture"

    .line 611
    .line 612
    goto :goto_b

    .line 613
    :cond_1c
    const-string/jumbo v1, "maximize_force_hidden_freeform"

    .line 614
    .line 615
    .line 616
    :goto_b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    invoke-virtual {v0, v2, v1, v9}, Lcom/android/server/wm/ChangeTransitionController;->requestDisplayChangeTransition(ILjava/lang/String;Z)V

    .line 621
    .line 622
    .line 623
    goto/16 :goto_11

    .line 624
    .line 625
    :cond_1d
    if-eq v11, v10, :cond_1f

    .line 626
    .line 627
    if-ne v14, v10, :cond_1e

    .line 628
    .line 629
    goto :goto_c

    .line 630
    :cond_1e
    move-object v5, v3

    .line 631
    move v2, v8

    .line 632
    goto :goto_d

    .line 633
    :cond_1f
    :goto_c
    const-string v1, "freeform-mode-changed"

    .line 634
    .line 635
    move-object v5, v1

    .line 636
    move v2, v9

    .line 637
    :goto_d
    if-eqz v2, :cond_29

    .line 638
    .line 639
    const/4 v6, 0x0

    .line 640
    move-object v1, p0

    .line 641
    move v3, v11

    .line 642
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ChangeTransitionController;->requestChangeTransition(Lcom/android/server/wm/Task;IILandroid/graphics/Rect;Ljava/lang/String;I)V

    .line 643
    .line 644
    .line 645
    goto/16 :goto_11

    .line 646
    .line 647
    :cond_20
    if-eqz v1, :cond_29

    .line 648
    .line 649
    iget v1, v7, Lcom/android/server/wm/Task;->mRotation:I

    .line 650
    .line 651
    if-ne v1, v0, :cond_29

    .line 652
    .line 653
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    if-nez v0, :cond_29

    .line 658
    .line 659
    iget-object v0, v7, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 660
    .line 661
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 662
    .line 663
    iget-object v4, v7, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 664
    .line 665
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    sget-boolean v1, Lcom/android/server/wm/ChangeTransitionController;->DISABLE_LEGACY_RESIZE_TRANSITION:Z

    .line 669
    .line 670
    if-nez v1, :cond_29

    .line 671
    .line 672
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    .line 673
    .line 674
    .line 675
    move-result v1

    .line 676
    if-eqz v1, :cond_21

    .line 677
    .line 678
    goto/16 :goto_11

    .line 679
    .line 680
    :cond_21
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 681
    .line 682
    if-eqz v1, :cond_29

    .line 683
    .line 684
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 685
    .line 686
    .line 687
    move-result v1

    .line 688
    if-eqz v1, :cond_29

    .line 689
    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    .line 691
    .line 692
    const-string v2, "handleTaskSizeChanged: #"

    .line 693
    .line 694
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    iget v2, v7, Lcom/android/server/wm/Task;->mTaskId:I

    .line 698
    .line 699
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    const-string v2, "ChangeTransitionController"

    .line 707
    .line 708
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    .line 710
    .line 711
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 712
    .line 713
    .line 714
    move-result v3

    .line 715
    const-string v5, "freeform_resize"

    .line 716
    .line 717
    const/4 v6, 0x0

    .line 718
    const/4 v2, 0x1

    .line 719
    move-object v1, p0

    .line 720
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ChangeTransitionController;->requestChangeTransition(Lcom/android/server/wm/Task;IILandroid/graphics/Rect;Ljava/lang/String;I)V

    .line 721
    .line 722
    .line 723
    goto :goto_11

    .line 724
    :cond_22
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 725
    .line 726
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 727
    .line 728
    .line 729
    move-result v1

    .line 730
    if-nez v1, :cond_23

    .line 731
    .line 732
    iget-boolean v1, v7, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 733
    .line 734
    if-eqz v1, :cond_29

    .line 735
    .line 736
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->canStartChangeTransition()Z

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    if-nez v1, :cond_24

    .line 741
    .line 742
    goto :goto_11

    .line 743
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 744
    .line 745
    .line 746
    move-result v1

    .line 747
    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 748
    .line 749
    invoke-virtual {v2, p0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    if-eqz v2, :cond_25

    .line 754
    .line 755
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 760
    .line 761
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    if-ne v11, v1, :cond_28

    .line 766
    .line 767
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 772
    .line 773
    .line 774
    move-result v3

    .line 775
    if-ne v1, v3, :cond_28

    .line 776
    .line 777
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 778
    .line 779
    .line 780
    move-result v0

    .line 781
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 782
    .line 783
    .line 784
    move-result v1

    .line 785
    if-eq v0, v1, :cond_29

    .line 786
    .line 787
    goto :goto_10

    .line 788
    :cond_25
    if-ne v11, v10, :cond_26

    .line 789
    .line 790
    move v0, v9

    .line 791
    goto :goto_e

    .line 792
    :cond_26
    move v0, v8

    .line 793
    :goto_e
    if-ne v1, v10, :cond_27

    .line 794
    .line 795
    move v1, v9

    .line 796
    goto :goto_f

    .line 797
    :cond_27
    move v1, v8

    .line 798
    :goto_f
    if-eq v0, v1, :cond_29

    .line 799
    .line 800
    :cond_28
    :goto_10
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 801
    .line 802
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->initializeChangeTransition(Landroid/graphics/Rect;)V

    .line 803
    .line 804
    .line 805
    :cond_29
    :goto_11
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    if-eqz v0, :cond_2a

    .line 814
    .line 815
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 820
    .line 821
    .line 822
    move-result v1

    .line 823
    if-nez v1, :cond_2a

    .line 824
    .line 825
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 826
    .line 827
    .line 828
    :cond_2a
    if-eqz v13, :cond_2b

    .line 829
    .line 830
    if-eqz v12, :cond_2b

    .line 831
    .line 832
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 833
    .line 834
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 835
    .line 836
    .line 837
    move-result v0

    .line 838
    if-nez v0, :cond_2b

    .line 839
    .line 840
    invoke-virtual {p0, v8}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    if-eqz v0, :cond_2b

    .line 845
    .line 846
    iget-object v1, v7, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 847
    .line 848
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 849
    .line 850
    .line 851
    move-result v0

    .line 852
    if-eqz v0, :cond_2b

    .line 853
    .line 854
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetSurfaceControlTransforms()V

    .line 855
    .line 856
    .line 857
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {p0, v8}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    .line 865
    .line 866
    .line 867
    move-result v0

    .line 868
    if-eqz v0, :cond_2c

    .line 869
    .line 870
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 878
    .line 879
    .line 880
    move-result v1

    .line 881
    if-nez v1, :cond_2c

    .line 882
    .line 883
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 884
    .line 885
    .line 886
    move-result-object v1

    .line 887
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 888
    .line 889
    .line 890
    :cond_2c
    if-nez v0, :cond_2d

    .line 891
    .line 892
    invoke-virtual {p0, v8}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 893
    .line 894
    .line 895
    :cond_2d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 896
    .line 897
    if-eqz v0, :cond_2e

    .line 898
    .line 899
    if-eq v11, v10, :cond_2e

    .line 900
    .line 901
    if-ne v14, v10, :cond_2e

    .line 902
    .line 903
    iput-boolean v9, v7, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    .line 904
    .line 905
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateWindowFocusInTask()V

    .line 906
    .line 907
    .line 908
    return-void
.end method

.method public final onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 24
    .line 25
    .line 26
    return v0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, -0x1

    .line 20
    :goto_0
    if-eq v0, p1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 29
    .line 30
    iget-object v2, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 31
    .line 32
    const/16 v3, 0x15

    .line 33
    .line 34
    invoke-virtual {v2, v3, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v1, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 9

    .line 1
    check-cast p1, Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/wm/WindowContainer;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v2, v0

    .line 22
    :goto_1
    if-eqz v2, :cond_2

    .line 23
    .line 24
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    const/4 v3, -0x1

    .line 28
    :goto_2
    iput v3, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz p2, :cond_e

    .line 33
    .line 34
    if-nez p1, :cond_e

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    goto :goto_6

    .line 43
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 48
    .line 49
    .line 50
    iget-object v5, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 51
    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    move v6, v4

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    move v6, v3

    .line 57
    :goto_3
    if-eqz v6, :cond_5

    .line 58
    .line 59
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 60
    .line 61
    iget v8, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 62
    .line 63
    invoke-interface {v5, v7, v8}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    :catch_0
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iget-boolean v7, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 71
    .line 72
    if-nez v7, :cond_a

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_6

    .line 79
    .line 80
    iget-boolean v7, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 81
    .line 82
    if-eqz v7, :cond_a

    .line 83
    .line 84
    :cond_6
    if-eqz v5, :cond_7

    .line 85
    .line 86
    iget-boolean v5, v5, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 87
    .line 88
    if-nez v5, :cond_a

    .line 89
    .line 90
    :cond_7
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 91
    .line 92
    if-eqz v5, :cond_b

    .line 93
    .line 94
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    .line 95
    .line 96
    if-nez v5, :cond_8

    .line 97
    .line 98
    :goto_4
    move v5, v4

    .line 99
    goto :goto_5

    .line 100
    :cond_8
    iget-object v5, v5, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    .line 101
    .line 102
    if-nez v5, :cond_9

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_9
    invoke-virtual {v5}, Landroid/window/DisplayWindowPolicyController;->canShowTasksInHostDeviceRecents()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    :goto_5
    if-nez v5, :cond_b

    .line 110
    .line 111
    :cond_a
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 112
    .line 113
    if-eqz v5, :cond_c

    .line 114
    .line 115
    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 116
    .line 117
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 118
    .line 119
    invoke-virtual {v5, p0}, Lcom/android/server/wm/RecentTasks;->okToRemove(Lcom/android/server/wm/Task;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_c

    .line 124
    .line 125
    :cond_b
    if-eqz v6, :cond_d

    .line 126
    .line 127
    :cond_c
    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 128
    .line 129
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 130
    .line 131
    invoke-virtual {v5, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 132
    .line 133
    .line 134
    :cond_d
    const-string v5, "cleanUpResourcesForDestroy"

    .line 135
    .line 136
    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_e
    :goto_6
    if-eqz v1, :cond_f

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    invoke-virtual {v5, v6}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 156
    .line 157
    .line 158
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MD_DEX_STANDALONE_LAUNCH_POLICY:Z

    .line 163
    .line 164
    if-eqz v6, :cond_12

    .line 165
    .line 166
    iget-object v6, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 167
    .line 168
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mNewDexController:Lcom/android/server/wm/NewDexController;

    .line 169
    .line 170
    if-eqz p1, :cond_11

    .line 171
    .line 172
    iget-object v6, v6, Lcom/android/server/wm/NewDexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 173
    .line 174
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v6}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    if-nez v6, :cond_10

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    if-eqz v6, :cond_12

    .line 190
    .line 191
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-eqz v7, :cond_12

    .line 196
    .line 197
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_12

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-eqz v6, :cond_12

    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    if-eqz v6, :cond_12

    .line 214
    .line 215
    goto :goto_8

    .line 216
    :cond_11
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    :cond_12
    :goto_7
    if-eqz p1, :cond_16

    .line 220
    .line 221
    if-eqz p2, :cond_13

    .line 222
    .line 223
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-ne v6, v7, :cond_14

    .line 232
    .line 233
    :cond_13
    if-nez p2, :cond_16

    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    if-eq v6, v7, :cond_16

    .line 244
    .line 245
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-nez v6, :cond_15

    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    if-eqz v6, :cond_16

    .line 256
    .line 257
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 266
    .line 267
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->unset()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 275
    .line 276
    invoke-virtual {v7, v6}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 277
    .line 278
    .line 279
    :cond_16
    :goto_8
    if-eqz p2, :cond_17

    .line 280
    .line 281
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    if-eqz v6, :cond_17

    .line 286
    .line 287
    if-eqz p1, :cond_17

    .line 288
    .line 289
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    if-eqz v6, :cond_17

    .line 294
    .line 295
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    if-nez v6, :cond_17

    .line 300
    .line 301
    new-instance v6, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    .line 302
    .line 303
    const/4 v7, 0x1

    .line 304
    invoke-direct {v6, v7}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 308
    .line 309
    .line 310
    if-eqz v5, :cond_17

    .line 311
    .line 312
    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 313
    .line 314
    invoke-virtual {v5, p0, v0}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 315
    .line 316
    .line 317
    :cond_17
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    .line 318
    .line 319
    if-eqz v5, :cond_1a

    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformPinned()Z

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    if-eqz v5, :cond_1a

    .line 326
    .line 327
    if-eqz v2, :cond_18

    .line 328
    .line 329
    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 330
    .line 331
    const/4 v6, 0x2

    .line 332
    if-ne v5, v6, :cond_18

    .line 333
    .line 334
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    if-eqz v5, :cond_1a

    .line 339
    .line 340
    invoke-virtual {v5, p0}, Lcom/android/server/wm/TaskDisplayArea;->stopFreeformTaskPinning(Lcom/android/server/wm/Task;)V

    .line 341
    .line 342
    .line 343
    goto :goto_9

    .line 344
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    if-nez v5, :cond_19

    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_19
    invoke-virtual {v5, p0}, Lcom/android/server/wm/TaskDisplayArea;->stopFreeformTaskPinning(Lcom/android/server/wm/Task;)V

    .line 352
    .line 353
    .line 354
    :cond_1a
    :goto_9
    if-eqz v2, :cond_1b

    .line 355
    .line 356
    if-eqz v1, :cond_1b

    .line 357
    .line 358
    if-eq v2, v1, :cond_1b

    .line 359
    .line 360
    move v2, v4

    .line 361
    goto :goto_a

    .line 362
    :cond_1b
    move v2, v3

    .line 363
    :goto_a
    if-eqz v2, :cond_1c

    .line 364
    .line 365
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    if-eqz v5, :cond_1c

    .line 370
    .line 371
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 372
    .line 373
    .line 374
    :cond_1c
    if-eqz v2, :cond_1d

    .line 375
    .line 376
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isMultiTaskingDisplay()Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-eqz v1, :cond_1d

    .line 381
    .line 382
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 383
    .line 384
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 385
    .line 386
    iget-object v1, v1, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    new-instance v1, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;

    .line 392
    .line 393
    invoke-direct {v1, v3}, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 397
    .line 398
    .line 399
    :cond_1d
    invoke-static {p0}, Lcom/android/server/wm/PackagesChange;->updateAllValueToTask(Lcom/android/server/wm/Task;)V

    .line 400
    .line 401
    .line 402
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    .line 406
    .line 407
    .line 408
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    if-nez v1, :cond_1e

    .line 413
    .line 414
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 415
    .line 416
    if-eqz v1, :cond_1e

    .line 417
    .line 418
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 419
    .line 420
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 421
    .line 422
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 423
    .line 424
    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 425
    .line 426
    .line 427
    :cond_1e
    if-eqz p2, :cond_22

    .line 428
    .line 429
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    if-eqz v1, :cond_1f

    .line 434
    .line 435
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;

    .line 436
    .line 437
    const/4 v5, 0x0

    .line 438
    invoke-direct {v2, v5, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;-><init>(ILcom/android/server/wm/Task;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 442
    .line 443
    .line 444
    :cond_1f
    if-eqz p1, :cond_20

    .line 445
    .line 446
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-nez v1, :cond_22

    .line 451
    .line 452
    :cond_20
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    if-eqz v1, :cond_21

    .line 457
    .line 458
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 459
    .line 460
    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 461
    .line 462
    .line 463
    goto :goto_b

    .line 464
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    if-eqz v1, :cond_22

    .line 469
    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    const-string v2, "Pinned task is removed t="

    .line 473
    .line 474
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    const-string v2, "ActivityTaskManager"

    .line 485
    .line 486
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 490
    .line 491
    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 492
    .line 493
    .line 494
    :cond_22
    :goto_b
    if-eqz p1, :cond_27

    .line 495
    .line 496
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 497
    .line 498
    if-nez v0, :cond_26

    .line 499
    .line 500
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    if-nez v0, :cond_25

    .line 505
    .line 506
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 507
    .line 508
    if-eqz v0, :cond_23

    .line 509
    .line 510
    goto :goto_c

    .line 511
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    if-eqz v0, :cond_24

    .line 520
    .line 521
    iget-boolean v0, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 522
    .line 523
    if-eqz v0, :cond_24

    .line 524
    .line 525
    move v3, v4

    .line 526
    :cond_24
    move v4, v3

    .line 527
    :cond_25
    :goto_c
    if-nez v4, :cond_26

    .line 528
    .line 529
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 534
    .line 535
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 536
    .line 537
    .line 538
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 539
    .line 540
    if-eqz v0, :cond_27

    .line 541
    .line 542
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 543
    .line 544
    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 545
    .line 546
    invoke-interface {v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 547
    .line 548
    .line 549
    :catch_1
    :cond_27
    if-nez p2, :cond_28

    .line 550
    .line 551
    if-eqz p1, :cond_28

    .line 552
    .line 553
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateOverrideConfigurationFromLaunchBounds()V

    .line 554
    .line 555
    .line 556
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 557
    .line 558
    .line 559
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 560
    .line 561
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 562
    .line 563
    .line 564
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    .line 565
    .line 566
    const/4 p2, 0x2

    .line 567
    invoke-direct {p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>(I)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 571
    .line 572
    .line 573
    return-void
.end method

.method public final onlyHasTaskOverlayActivities(Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ltz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 25
    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 30
    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    return v2

    .line 34
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    if-lez v3, :cond_4

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_4
    move v1, v2

    .line 43
    :goto_2
    return v1
.end method

.method public final pauseActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

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
    const/4 v0, 0x1

    .line 10
    new-array v2, v0, [I

    .line 11
    .line 12
    aput v1, v2, v1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-ne v3, p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 43
    .line 44
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2, v3, v1}, Lcom/android/server/wm/TaskFragment;->startPausing$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    aget v3, v2, v1

    .line 53
    .line 54
    add-int/2addr v3, v0

    .line 55
    aput v3, v2, v1

    .line 56
    .line 57
    :cond_2
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;

    .line 58
    .line 59
    invoke-direct {v3, p0, p1, p2, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;[I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 63
    .line 64
    .line 65
    aget p0, v2, v1

    .line 66
    .line 67
    if-lez p0, :cond_3

    .line 68
    .line 69
    move v1, v0

    .line 70
    :cond_3
    return v1
.end method

.method public final performClearTaskForReuse(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    const-string v1, "clear-task-all"

    .line 11
    .line 12
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->removeActivities(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 18
    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 27
    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 30
    .line 31
    throw p1
.end method

.method public final performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->clearTopActivities(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 17
    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 20
    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 26
    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 29
    .line 30
    throw p1
.end method

.method public final positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(ILcom/android/server/wm/WindowContainer;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    const/high16 p2, -0x80000000

    .line 29
    .line 30
    if-ne p1, p2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v2

    .line 34
    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/Task;->updateTaskMovement(IZZ)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public positionChildAtBottom(Lcom/android/server/wm/Task;Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final positionChildAtTop(Lcom/android/server/wm/Task;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-ne p1, p0, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    const-string/jumbo v0, "positionChildAtTop"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    const v0, 0x7fffffff

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final prepareSurfaces()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->prepareSurfaces()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 36
    .line 37
    .line 38
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 41
    .line 42
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    sub-int/2addr v2, v4

    .line 45
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 46
    .line 47
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    sub-int/2addr v4, v3

    .line 50
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 72
    .line 73
    .line 74
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 83
    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 88
    .line 89
    const/4 v3, 0x1

    .line 90
    if-eqz v1, :cond_8

    .line 91
    .line 92
    if-eqz v1, :cond_8

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_8

    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_7

    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 109
    .line 110
    iget-object v4, v1, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    sub-int/2addr v4, v3

    .line 117
    :goto_1
    if-ltz v4, :cond_8

    .line 118
    .line 119
    iget-object v5, v1, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Lcom/android/server/wm/Transition;

    .line 126
    .line 127
    iget-object v5, v5, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    new-instance v6, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda1;

    .line 134
    .line 135
    invoke-direct {v6, p0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_6

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_7
    :goto_2
    return-void

    .line 149
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_a

    .line 154
    .line 155
    const/4 v4, 0x7

    .line 156
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_9

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_9
    move v3, v0

    .line 164
    :cond_a
    :goto_3
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 165
    .line 166
    if-eqz v4, :cond_c

    .line 167
    .line 168
    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    .line 169
    .line 170
    if-eq v3, v4, :cond_c

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-nez v4, :cond_b

    .line 177
    .line 178
    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    .line 179
    .line 180
    if-eqz v4, :cond_b

    .line 181
    .line 182
    if-eqz v3, :cond_b

    .line 183
    .line 184
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 185
    .line 186
    invoke-virtual {v2, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_b
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 191
    .line 192
    invoke-virtual {v2, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 193
    .line 194
    .line 195
    :cond_c
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 196
    .line 197
    if-eqz v4, :cond_d

    .line 198
    .line 199
    iget-object v4, v4, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 200
    .line 201
    if-eqz v4, :cond_d

    .line 202
    .line 203
    invoke-virtual {v2, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 204
    .line 205
    .line 206
    :cond_d
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    .line 207
    .line 208
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 209
    .line 210
    if-eqz v1, :cond_e

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isCaptionHandlerHidden()Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mIsCaptionHandlerHidden:Z

    .line 217
    .line 218
    if-eq v2, v1, :cond_e

    .line 219
    .line 220
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mIsCaptionHandlerHidden:Z

    .line 221
    .line 222
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 223
    .line 224
    .line 225
    :cond_e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_KEEP_SCREEN_ON:Z

    .line 226
    .line 227
    if-eqz v1, :cond_f

    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isKeepScreenOn()Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mKeepScreenOn:Z

    .line 234
    .line 235
    if-eq v1, v2, :cond_f

    .line 236
    .line 237
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mKeepScreenOn:Z

    .line 238
    .line 239
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 240
    .line 241
    .line 242
    :cond_f
    return-void
.end method

.method public final removeActivities(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;

    .line 11
    .line 12
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/wm/Task;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 16
    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    invoke-direct {v1, v0, v2, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;IZ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    add-int/lit8 p2, p2, -0x1

    .line 38
    .line 39
    :goto_0
    if-ltz p2, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 46
    .line 47
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 60
    .line 61
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 62
    .line 63
    const/4 v3, 0x2

    .line 64
    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 76
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 77
    .line 78
    .line 79
    :goto_2
    add-int/lit8 p2, p2, -0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    :goto_3
    return-void
.end method

.method public final removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "removeChild"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    return-void
.end method

.method public final removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V
    .locals 9

    .line 2
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "removeChild: r="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found in t="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->removeChild(Lcom/android/server/wm/WindowContainer;Z)V

    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 10
    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne p1, v1, :cond_4

    if-nez v0, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget-object v1, v0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->this$0:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mContainerSurface:Landroid/view/SurfaceControl;

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    .line 17
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x3e8

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, p2

    .line 21
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIIZ)V

    goto :goto_1

    .line 22
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldRemoveSelfOnLastChildRemoval()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", last child = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public removeIfPossible()V
    .locals 1

    .line 1
    const-string/jumbo v0, "removeTaskIfPossible"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-void
.end method

.method public final removeIfPossible(Ljava/lang/String;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isExitAnimationRunningSelfOrChild()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 11
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 12
    iget-object v2, p1, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/16 v3, 0x9

    .line 13
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 14
    iget-object v1, p1, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 15
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 17
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 18
    iget v0, p1, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    if-ne v0, p0, :cond_2

    const/4 p0, -0x1

    .line 19
    iput p0, p1, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    :cond_2
    return-void
.end method

.method public final removeImmediately()V
    .locals 1

    .line 1
    const-string/jumbo v0, "removeTask"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    return-void
.end method

.method public final removeImmediately(Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    .line 4
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x791b

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    .line 9
    iget-object p1, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 10
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_1

    .line 11
    iput-object v0, v1, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    .line 12
    iput-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    .line 13
    :cond_1
    iput-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchIntoPipHostActivity:Lcom/android/server/wm/ActivityRecord;

    .line 14
    iput-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLastTaskFragmentOrganizerBeforePip:Landroid/window/ITaskFragmentOrganizer;

    .line 15
    iput-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLastEmbeddedParentTfTokenBeforePip:Landroid/os/IBinder;

    .line 16
    :cond_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformPinned()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->stopFreeformTaskPinning(Lcom/android/server/wm/Task;)V

    .line 19
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    .line 20
    iget-object p1, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz p1, :cond_5

    .line 21
    iget-object v1, p1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->this$0:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mContainerSurface:Landroid/view/SurfaceControl;

    .line 23
    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 24
    :cond_5
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->mRemoveByDrag:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 25
    iget-object p1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastFreeformBoundsBeforeDragMoving:Landroid/graphics/Rect;

    if-eqz v2, :cond_6

    .line 26
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 27
    iget-object p1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastFreeformBoundsBeforeDragMoving:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 28
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mRemoveByDrag:Z

    .line 29
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->saveFreeformBoundsIfNeeded()V

    .line 30
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY:Z

    if-eqz p1, :cond_8

    .line 31
    sget-object p1, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 32
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/SizeCompatPolicyManager;->setCompatPolicy(Lcom/android/server/wm/Task;Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;)V

    .line 33
    :cond_8
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V

    .line 34
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    return-void
.end method

.method public final reparent(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V
    .locals 4

    .line 59
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 60
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 61
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    const-string/jumbo v3, "reParentTask:"

    .line 62
    invoke-static {v3, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2, p3}, [Ljava/lang/Object;

    move-result-object p3

    const/16 v0, 0x791b

    invoke-static {v0, p3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 64
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 65
    invoke-virtual {p2, p1, p0, p4}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public final reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move-object/from16 v3, p6

    const/4 v4, 0x0

    const v5, 0x7fffffff

    if-eqz p2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    .line 1
    :goto_0
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3
    iget-object v9, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-ne v6, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v4

    .line 5
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v11

    .line 7
    iget v12, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v13

    .line 9
    const-string v15, "ActivityTaskManager"

    if-eqz v11, :cond_2

    iget v14, v11, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v14, v12, :cond_2

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "Can not reparent to same root task, task="

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " already in rootTaskId="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " by "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x8

    .line 11
    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v15, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 13
    :cond_2
    iget-object v14, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v13, :cond_4

    iget-boolean v10, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v10, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Device doesn\'t support multi-window, can not reparent task="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to root-task="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v10

    if-eqz v10, :cond_6

    iget-boolean v10, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-eqz v10, :cond_5

    goto :goto_3

    .line 16
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device doesn\'t support multi-display, can not reparent task="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to rootTaskId="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v10

    const/4 v12, 0x5

    if-ne v10, v12, :cond_8

    iget-boolean v10, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v10, :cond_7

    goto :goto_4

    .line 18
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device doesn\'t support freeform, can not reparent task="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_8
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v10

    if-nez v10, :cond_15

    if-eqz v13, :cond_a

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    .line 21
    invoke-virtual {v1, v10, v4}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v10

    if-nez v10, :cond_a

    .line 22
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Can not move unresizeable task="

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " to multi-window root task="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " Moving to a fullscreen root task instead."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_9

    goto :goto_5

    .line 23
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v11

    .line 25
    new-instance v12, Lcom/android/server/wm/Task$Builder;

    .line 26
    iget-object v13, v10, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 27
    invoke-direct {v12, v13}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    const/4 v13, 0x1

    .line 28
    iput v13, v12, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 29
    iput v11, v12, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 30
    iput-object v10, v12, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 31
    iput-boolean v5, v12, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    const/4 v5, 0x0

    .line 32
    iput-object v5, v12, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 33
    invoke-virtual {v12}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v5

    move-object v11, v5

    goto :goto_5

    :cond_a
    move-object v11, v0

    :goto_5
    if-ne v11, v9, :cond_b

    goto/16 :goto_9

    .line 34
    :cond_b
    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_9

    :cond_c
    const/4 v5, 0x1

    .line 35
    invoke-virtual {v1, v5, v5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    .line 36
    iget-object v5, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 37
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_e

    if-eqz v9, :cond_d

    .line 38
    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-ne v9, v12, :cond_e

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-ne v12, v5, :cond_e

    const/4 v13, 0x1

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 40
    :cond_d
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_e
    move v13, v4

    :goto_6
    if-eqz v5, :cond_f

    .line 41
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 42
    invoke-virtual {v9, v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-ne v12, v5, :cond_f

    const/4 v12, 0x1

    goto :goto_7

    :cond_f
    move v12, v4

    :goto_7
    const/4 v14, 0x1

    if-eqz v2, :cond_11

    if-ne v2, v14, :cond_10

    if-nez v13, :cond_11

    if-eqz v12, :cond_10

    goto :goto_8

    :cond_10
    move v14, v4

    .line 43
    :cond_11
    :goto_8
    invoke-virtual {v1, v6, v11, v3, v14}, Lcom/android/server/wm/Task;->reparent(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V

    .line 44
    invoke-virtual {v7, v1, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    if-eqz v5, :cond_12

    if-eqz v14, :cond_12

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v11, v3, v2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 46
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v5, v2, :cond_12

    .line 47
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v5, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_12
    if-nez p4, :cond_13

    .line 48
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_13
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-nez p5, :cond_14

    .line 50
    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 51
    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 52
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 53
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 55
    invoke-virtual {v7, v1, v0, v11, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    :goto_9
    return-void

    .line 56
    :goto_a
    iget-object v1, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 57
    throw v0

    .line 58
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No support to reparent to PIP, task="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V
    .locals 2

    if-eqz p1, :cond_4

    .line 70
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const-string v1, "Task="

    if-eq v0, p1, :cond_3

    .line 71
    iget-object v0, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 72
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    .line 74
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_2

    xor-int/lit8 v0, p2, 0x1

    .line 76
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskMoved(Lcom/android/server/wm/Task;ZZ)V

    goto :goto_1

    .line 77
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " can\'t reparent to "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    .line 78
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " already child of "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 79
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Task can\'t reparent to null "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final resetSurfaceControlTransforms()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 8
    .line 9
    const/16 v3, 0x9

    .line 10
    .line 11
    new-array v3, v3, [F

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 32
    .line 33
    invoke-virtual {v0, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 4

    .line 1
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    iget p2, p2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4
    .line 5
    and-int/lit8 p2, p2, 0x4

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    move p2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p2, v0

    .line 14
    :goto_0
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 17
    .line 18
    :try_start_0
    sget-object v3, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    .line 19
    .line 20
    invoke-virtual {v3, v2, p2}, Lcom/android/server/wm/ResetTargetTaskHelper;->process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;

    .line 21
    .line 22
    .line 23
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    move-object p1, p0

    .line 41
    :cond_1
    if-eqz p2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-object p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 49
    .line 50
    throw p1
.end method

.method public final resize(ILandroid/graphics/Rect;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "resizeTask_"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    and-int/2addr p1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    move p1, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v2

    .line 18
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-nez v4, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2, p0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->restoreRecentTaskLocked(Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    if-eqz p2, :cond_9

    .line 50
    .line 51
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-le v4, v5, :cond_4

    .line 67
    .line 68
    move v4, v3

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    move v4, v2

    .line 71
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    iget v6, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 76
    .line 77
    const/4 v7, 0x7

    .line 78
    if-ne v6, v7, :cond_6

    .line 79
    .line 80
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_9

    .line 85
    .line 86
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-le v6, v5, :cond_5

    .line 95
    .line 96
    move v5, v3

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    move v5, v2

    .line 99
    :goto_3
    if-ne v4, v5, :cond_8

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_6
    const/4 v5, 0x6

    .line 103
    if-ne v6, v5, :cond_7

    .line 104
    .line 105
    if-nez v4, :cond_8

    .line 106
    .line 107
    :cond_7
    const/4 v5, 0x5

    .line 108
    if-ne v6, v5, :cond_9

    .line 109
    .line 110
    if-eqz v4, :cond_8

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->adjustAspectRatioIfNeeded(Landroid/graphics/Rect;)V

    .line 114
    .line 115
    .line 116
    :cond_9
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 122
    .line 123
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-wide/16 v4, 0x20

    .line 131
    .line 132
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-eqz p1, :cond_a

    .line 140
    .line 141
    and-int/lit8 p1, p2, 0x2

    .line 142
    .line 143
    if-eq p1, v1, :cond_a

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 146
    .line 147
    .line 148
    or-int/lit8 p2, p2, 0x2

    .line 149
    .line 150
    :cond_a
    if-eqz p2, :cond_b

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_b

    .line 157
    .line 158
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 163
    .line 164
    invoke-virtual {v0, v3, p1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 165
    .line 166
    .line 167
    if-nez p2, :cond_b

    .line 168
    .line 169
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 172
    .line 173
    .line 174
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->saveFreeformBoundsIfNeeded()V

    .line 182
    .line 183
    .line 184
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :goto_5
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 192
    .line 193
    .line 194
    throw p1
.end method

.method public final resumeNextFocusAfterReparent()V
    .locals 2

    .line 1
    const-string/jumbo v0, "reparent"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    xor-int/2addr v2, v0

    .line 29
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    const-string/jumbo v2, "noMoreActivities"

    .line 40
    .line 41
    .line 42
    if-nez p3, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    if-eqz p3, :cond_1

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 59
    .line 60
    .line 61
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 62
    .line 63
    aget-boolean p2, p2, v1

    .line 64
    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 68
    .line 69
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v7, 0x0

    .line 75
    const-wide v4, 0x3808e4901a1f301fL    # 9.144179306090412E-39

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p2, p1, v2, p0}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    :goto_0
    return p0

    .line 94
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    new-array v9, v0, [Z

    .line 103
    .line 104
    aput-boolean v3, v9, v1

    .line 105
    .line 106
    new-instance v10, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;

    .line 107
    .line 108
    move-object v3, v10

    .line 109
    move-object v5, v9

    .line 110
    move-object v6, p1

    .line 111
    move-object v7, p2

    .line 112
    move v8, p3

    .line 113
    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;-><init>(Lcom/android/server/wm/TaskFragment;[ZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v10, v0}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 117
    .line 118
    .line 119
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    .line 120
    .line 121
    if-eqz p0, :cond_4

    .line 122
    .line 123
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-eqz p0, :cond_4

    .line 128
    .line 129
    sget-object p0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    .line 130
    .line 131
    if-eqz p0, :cond_4

    .line 132
    .line 133
    iget-object p1, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 134
    .line 135
    new-instance p2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;

    .line 136
    .line 137
    invoke-direct {p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    .line 142
    .line 143
    :cond_4
    aget-boolean p0, v9, v1

    .line 144
    .line 145
    return p0
.end method

.method public final resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_2

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move p1, v1

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    sub-int/2addr v2, v0

    .line 57
    move v4, v2

    .line 58
    move v2, v1

    .line 59
    :goto_0
    if-ltz v4, :cond_7

    .line 60
    .line 61
    add-int/lit8 v5, v4, -0x1

    .line 62
    .line 63
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lcom/android/server/wm/Task;

    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    invoke-virtual {v4, v3}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_6

    .line 81
    .line 82
    invoke-virtual {v4, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    if-nez v4, :cond_7

    .line 87
    .line 88
    :cond_5
    :goto_1
    move v4, v5

    .line 89
    goto :goto_0

    .line 90
    :cond_6
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    or-int/2addr v2, v4

    .line 95
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-lt v5, v4, :cond_5

    .line 102
    .line 103
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    sub-int/2addr v4, v0

    .line 110
    goto :goto_0

    .line 111
    :cond_7
    move p1, v2

    .line 112
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    if-eqz p2, :cond_8

    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-nez p2, :cond_9

    .line 123
    .line 124
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->checkReadyForSleep()V

    .line 125
    .line 126
    .line 127
    :cond_9
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_HALF_OPEN_MODE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    if-nez p2, :cond_a

    .line 130
    .line 131
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 132
    .line 133
    return p1

    .line 134
    :cond_a
    :try_start_1
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 135
    .line 136
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 137
    .line 138
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 139
    .line 140
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :goto_3
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 147
    .line 148
    throw p1
.end method

.method public final returnsToHomeRootTask()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mLaunchTaskOnHome:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mLaunchTaskOnHome:Z

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    :cond_1
    return v1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v0, :cond_7

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const v3, 0x10004000

    .line 31
    .line 32
    .line 33
    and-int/2addr v0, v3

    .line 34
    if-eq v0, v3, :cond_3

    .line 35
    .line 36
    return v1

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const/4 v0, 0x0

    .line 51
    :goto_0
    if-eqz v0, :cond_5

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 56
    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_6

    .line 62
    .line 63
    :cond_5
    move v1, v2

    .line 64
    :cond_6
    return v1

    .line 65
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBottomMostTask()Lcom/android/server/wm/Task;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eq v0, p0, :cond_8

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_8

    .line 76
    .line 77
    move v1, v2

    .line 78
    :cond_8
    return v1
.end method

.method public final reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p4

    .line 6
    move-object/from16 v5, p6

    .line 7
    .line 8
    iget-boolean v6, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    if-nez v6, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-nez v6, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    invoke-static {v6, v8}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    move v6, v7

    .line 34
    :goto_1
    const/4 v8, -0x1

    .line 35
    if-eqz v6, :cond_3

    .line 36
    .line 37
    iput-object v3, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 38
    .line 39
    iput-object v4, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 40
    .line 41
    invoke-virtual {p0, v5, p2, p1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 42
    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget v3, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 51
    .line 52
    iput v3, v0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 53
    .line 54
    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 55
    .line 56
    iput v2, v0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    iput v8, v0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 60
    .line 61
    iput v8, v0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 62
    .line 63
    :goto_2
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 64
    .line 65
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 66
    .line 67
    iget v3, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 68
    .line 69
    iget-object v4, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 70
    .line 71
    iget-object v6, v2, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 72
    .line 73
    const/16 v9, 0x8

    .line 74
    .line 75
    invoke-virtual {v6, v9, v3, v7, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget-object v4, v2, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 85
    .line 86
    .line 87
    move-object/from16 v6, p8

    .line 88
    .line 89
    move-object v9, v0

    .line 90
    goto :goto_4

    .line 91
    :cond_3
    if-eqz v5, :cond_4

    .line 92
    .line 93
    iget-object v6, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 94
    .line 95
    iget v9, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 96
    .line 97
    invoke-virtual {v6, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser(I)I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    goto :goto_3

    .line 102
    :cond_4
    iget-object v6, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 103
    .line 104
    iget-object v9, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 105
    .line 106
    iget v9, v9, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 107
    .line 108
    invoke-virtual {v6, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser(I)I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 113
    .line 114
    .line 115
    new-instance v9, Lcom/android/server/wm/Task$Builder;

    .line 116
    .line 117
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 118
    .line 119
    invoke-direct {v9, v10}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 120
    .line 121
    .line 122
    iput v6, v9, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    .line 123
    .line 124
    iput-object v1, v9, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 125
    .line 126
    move-object/from16 v6, p8

    .line 127
    .line 128
    iput-object v6, v9, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 129
    .line 130
    iput-object v2, v9, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    .line 131
    .line 132
    iput-object v3, v9, Lcom/android/server/wm/Task$Builder;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 133
    .line 134
    iput-object v4, v9, Lcom/android/server/wm/Task$Builder;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 135
    .line 136
    move/from16 v2, p5

    .line 137
    .line 138
    iput-boolean v2, v9, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    .line 139
    .line 140
    iput-object v0, v9, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 141
    .line 142
    invoke-virtual {v9}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    move-object v9, v2

    .line 147
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-ne v2, v8, :cond_5

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_5
    move v7, v2

    .line 158
    :goto_5
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 159
    .line 160
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 161
    .line 162
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 163
    .line 164
    invoke-virtual {v2, v7}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 169
    .line 170
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 171
    .line 172
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 173
    .line 174
    const/4 v7, -0x1

    .line 175
    move-object v1, v2

    .line 176
    move-object v2, v9

    .line 177
    move-object/from16 v4, p6

    .line 178
    .line 179
    move-object/from16 v5, p7

    .line 180
    .line 181
    move-object/from16 v6, p8

    .line 182
    .line 183
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_6

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_6

    .line 198
    .line 199
    const/4 v1, 0x1

    .line 200
    invoke-virtual {v9, v1}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_6

    .line 205
    .line 206
    if-nez v8, :cond_6

    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v9, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 213
    .line 214
    .line 215
    :cond_6
    return-object v9
.end method

.method public final saveFreeformBoundsIfNeeded()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_8

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 14
    .line 15
    if-eqz v1, :cond_8

    .line 16
    .line 17
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 18
    .line 19
    if-eqz v1, :cond_8

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_8

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_8

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string/jumbo v2, "saveFreeformBoundsIfNeeded : task #"

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, " from : "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const/4 v2, 0x5

    .line 60
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "ActivityTaskManager"

    .line 72
    .line 73
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 84
    .line 85
    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 86
    .line 87
    iget-object v4, v1, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 88
    .line 89
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Landroid/util/ArrayMap;

    .line 94
    .line 95
    if-nez v4, :cond_1

    .line 96
    .line 97
    new-instance v4, Landroid/util/ArrayMap;

    .line 98
    .line 99
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 100
    .line 101
    .line 102
    iget-object v5, v1, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 103
    .line 104
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    new-instance v5, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;

    .line 108
    .line 109
    const/4 v6, 0x1

    .line 110
    invoke-direct {v5, v1, v6}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/LaunchParamsPersister;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 118
    .line 119
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    const-string v7, "LaunchParamsPersister"

    .line 123
    .line 124
    const/4 v8, 0x1

    .line 125
    if-eqz v5, :cond_2

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    iget v5, v5, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 132
    .line 133
    iget v9, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayDeviceType:I

    .line 134
    .line 135
    if-eq v9, v5, :cond_2

    .line 136
    .line 137
    iput v5, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayDeviceType:I

    .line 138
    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string/jumbo v9, "saveDisplayDeviceType "

    .line 142
    .line 143
    .line 144
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget v9, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayDeviceType:I

    .line 148
    .line 149
    invoke-static {v5, v9, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    move v5, v8

    .line 153
    goto :goto_0

    .line 154
    :cond_2
    move v5, v6

    .line 155
    :goto_0
    iget-object v9, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 156
    .line 157
    iget-object v10, v9, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    .line 158
    .line 159
    iget-object v11, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 160
    .line 161
    if-eqz v11, :cond_3

    .line 162
    .line 163
    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v11

    .line 167
    if-nez v11, :cond_3

    .line 168
    .line 169
    iget-object v5, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 170
    .line 171
    invoke-virtual {v10, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 172
    .line 173
    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string/jumbo v11, "saveFreeformBounds "

    .line 177
    .line 178
    .line 179
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move v5, v8

    .line 193
    :cond_3
    iget-object v10, v9, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    .line 194
    .line 195
    new-instance v11, Landroid/graphics/Rect;

    .line 196
    .line 197
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 198
    .line 199
    .line 200
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 201
    .line 202
    iget v12, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 203
    .line 204
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 205
    .line 206
    invoke-virtual {v11, v6, v6, v12, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_4

    .line 214
    .line 215
    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 216
    .line 217
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string/jumbo v5, "saveDisplayBounds "

    .line 221
    .line 222
    .line 223
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move v5, v8

    .line 237
    :cond_4
    iget v0, v9, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    .line 238
    .line 239
    iget p0, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 240
    .line 241
    if-eq v0, p0, :cond_5

    .line 242
    .line 243
    iput p0, v9, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    .line 244
    .line 245
    new-instance p0, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string/jumbo v0, "saveRotation "

    .line 248
    .line 249
    .line 250
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget v0, v9, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    .line 254
    .line 255
    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    goto :goto_1

    .line 270
    :cond_5
    move v8, v5

    .line 271
    :goto_1
    if-eqz v8, :cond_7

    .line 272
    .line 273
    iget-object p0, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 274
    .line 275
    if-nez p0, :cond_6

    .line 276
    .line 277
    const-string p0, ""

    .line 278
    .line 279
    iput-object p0, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 280
    .line 281
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 282
    .line 283
    .line 284
    move-result-wide v5

    .line 285
    iput-wide v5, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    .line 286
    .line 287
    :cond_7
    iget-object p0, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    if-eqz v8, :cond_8

    .line 293
    .line 294
    new-instance p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    .line 295
    .line 296
    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)V

    .line 297
    .line 298
    .line 299
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 300
    .line 301
    invoke-virtual {v0, p0}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V

    .line 302
    .line 303
    .line 304
    :cond_8
    :goto_2
    return-void
.end method

.method public final saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

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
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void

    .line 33
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x1

    .line 38
    const/4 v2, 0x5

    .line 39
    if-eq v0, v1, :cond_3

    .line 40
    .line 41
    if-eq v0, v2, :cond_3

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eq v0, v2, :cond_4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 64
    .line 65
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    .line 66
    .line 67
    .line 68
    :cond_5
    :goto_1
    return-void
.end method

.method public final sendFreeformLogging()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    filled-new-array {v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter v2

    .line 14
    const/4 v3, 0x0

    .line 15
    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    .line 16
    .line 17
    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 35
    .line 36
    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    new-instance v6, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    invoke-direct {v6, v7, p0, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v6, v0}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 49
    .line 50
    .line 51
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    .line 54
    .line 55
    const-string p0, "2000"

    .line 56
    .line 57
    aget v0, v1, v3

    .line 58
    .line 59
    invoke-static {p0, v4, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public final sendTaskAppeared()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-interface {v0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 20
    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object v1, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 57
    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    :goto_0
    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-static {v0, p0, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->-$$Nest$mgetPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-nez v2, :cond_5

    .line 75
    .line 76
    new-instance v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 77
    .line 78
    invoke-direct {v2, v1, p0}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(ILcom/android/server/wm/Task;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_1
    return-void
.end method

.method public final sendTaskFragmentParentInfoChangedIfNeeded()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

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
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_4

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v10

    .line 29
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 30
    .line 31
    if-eqz v3, :cond_4

    .line 32
    .line 33
    if-eqz v10, :cond_4

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 36
    .line 37
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-interface {v3}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/lit8 v1, v1, -0x1

    .line 57
    .line 58
    :goto_0
    if-ltz v1, :cond_2

    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 65
    .line 66
    iget-object v4, v2, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTask:Lcom/android/server/wm/Task;

    .line 67
    .line 68
    if-ne v10, v4, :cond_1

    .line 69
    .line 70
    const/4 v4, 0x3

    .line 71
    iget v5, v2, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    .line 72
    .line 73
    if-ne v5, v4, :cond_1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const/4 v2, 0x0

    .line 80
    :goto_1
    if-nez v2, :cond_3

    .line 81
    .line 82
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 83
    .line 84
    const/4 v9, 0x0

    .line 85
    const/4 v11, 0x0

    .line 86
    const/4 v2, 0x3

    .line 87
    const/4 v4, 0x0

    .line 88
    const/4 v5, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    const/4 v8, 0x0

    .line 92
    move-object v1, v0

    .line 93
    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 106
    .line 107
    .line 108
    :cond_4
    return-void
.end method

.method public final setAlwaysOnTop(Z)V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const v0, 0x7fffffff

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final setBoostTaskLayerForFreeform(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mBoostRootTaskLayerForFreeform:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mBoostRootTaskLayerForFreeform:Z

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v0, "setBoostTaskLayerForFreeform: "

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ", boost="

    .line 34
    .line 35
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p1, "ActivityTaskManager"

    .line 46
    .line 47
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final setBounds(Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBoundsUnchecked(Landroid/graphics/Rect;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    :goto_0
    return p0

    .line 31
    :cond_2
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 36
    .line 37
    .line 38
    return p1
.end method

.method public final setBoundsUnchecked(Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 20
    .line 21
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_1
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 42
    .line 43
    .line 44
    return p1
.end method

.method public final setDeferTaskAppear(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final setDragResizing(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "Drag resize isn\'t allowed for root task id="

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 33
    .line 34
    const-string v0, "ActivityTaskManager"

    .line 35
    .line 36
    invoke-static {p1, p0, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final setForceHidden(IZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->setForceHidden(IZ)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eq v0, p1, :cond_2

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    const-string/jumbo v0, "setForceHidden"

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public final setHasBeenVisible()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->setHasBeenVisible()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    :goto_1
    return-void
.end method

.method public final setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 13

    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 12
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 13
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v3, :cond_2

    .line 14
    iput-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 15
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    .line 16
    :cond_2
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 17
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsEffectivelySystemApp:Z

    .line 18
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    const/4 v4, 0x0

    if-nez v0, :cond_7

    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 21
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 22
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 23
    :cond_4
    aget-boolean v0, v3, v2

    if-eqz v0, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, -0x777ad978351fc36fL    # -1.281134414677598E-267

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_6

    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_1

    :cond_6
    move-object p1, v4

    :goto_1
    iput-object p1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 26
    iput-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_2

    .line 27
    :cond_7
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    .line 28
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 29
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 30
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 31
    aget-boolean v3, v3, v2

    if-eqz v3, :cond_8

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v8, -0x7f0d1f88dbf3c496L

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_8
    iput-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 33
    iput-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_2

    .line 35
    :cond_9
    iput-object v4, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 36
    iput-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 37
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 38
    :goto_2
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez p1, :cond_a

    move-object p1, v4

    goto :goto_3

    :cond_a
    iget-object p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_3
    iput-object p1, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 39
    iget-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez p1, :cond_b

    move p1, v1

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    :goto_4
    const/high16 v0, 0x200000

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    .line 40
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 41
    :cond_c
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 42
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "user_setup_complete"

    iget v5, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 44
    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_5

    :cond_d
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 45
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_e

    .line 46
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_6

    :cond_e
    const v0, 0x82000

    and-int/2addr p1, v0

    const/high16 v0, 0x80000

    if-ne p1, v0, :cond_10

    .line 47
    iget p1, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz p1, :cond_f

    .line 48
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_6

    .line 49
    :cond_f
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_6

    .line 50
    :cond_10
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 51
    :goto_6
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V

    .line 52
    iget p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget v0, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq p1, v0, :cond_11

    .line 53
    iput v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 54
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription$1()V

    .line 55
    :cond_11
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 56
    iput-object v4, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 57
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz p1, :cond_12

    .line 58
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 59
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 60
    :cond_12
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz p1, :cond_13

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 62
    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 63
    :cond_13
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_15

    .line 64
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3bcccccd    # 0.00625f

    mul-float/2addr p1, v0

    .line 65
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.sdk.multiwindow.maxWidth"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 66
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.sdk.multiwindow.maxHeight"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_15

    const/high16 v1, 0x3f000000    # 0.5f

    if-eq v0, v2, :cond_14

    .line 67
    iget-object v3, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Point;->x:I

    :cond_14
    if-eq p2, v2, :cond_15

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    int-to-float p2, p2

    mul-float/2addr p2, p1

    add-float/2addr p2, v1

    float-to-int p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 69
    :cond_15
    invoke-static {p0}, Lcom/android/server/wm/PackagesChange;->updateAllValueToTask(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public final setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_5

    if-eqz p3, :cond_1

    move-object v0, p3

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 4
    :goto_0
    iget v1, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mIsEffectivelySystemApp:Z

    if-nez v2, :cond_2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v0, :cond_5

    .line 5
    :cond_2
    :goto_1
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 6
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-eqz p2, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    :goto_2
    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 9
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public final setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastFreeformBoundsBeforeDragMoving:Landroid/graphics/Rect;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastFreeformBoundsBeforeDragMoving:Landroid/graphics/Rect;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastFreeformBoundsBeforeDragMoving:Landroid/graphics/Rect;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 10
    .line 11
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    aget-boolean p1, p1, v0

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-wide v1, 0x8a86e5b51736dcL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-nez v1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    if-eq v1, p0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_3

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsSurfacePositionPaused:Z

    .line 29
    .line 30
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(ILjava/util/function/Consumer;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void
.end method

.method public final setMainWindowSizeChangeTransaction$1(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setMainWindowSizeChangeTransaction: t="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", Callers="

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "ActivityTaskManager"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    .line 48
    .line 49
    const/4 v0, 0x4

    .line 50
    invoke-direct {p1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final setMinimized(II)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq p1, v2, :cond_2

    .line 12
    .line 13
    if-ne p2, v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v3, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getFreeformContainerPosition()Landroid/graphics/Point;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 23
    .line 24
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 25
    .line 26
    move v3, v1

    .line 27
    move v6, p2

    .line 28
    move p2, p1

    .line 29
    move p1, v6

    .line 30
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 31
    .line 32
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 33
    .line 34
    invoke-virtual {v4, p1, p2, p0, v3}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeStateChanged(IILcom/android/server/wm/Task;Z)V

    .line 35
    .line 36
    .line 37
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    .line 38
    .line 39
    if-eqz v3, :cond_6

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_4

    .line 47
    .line 48
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 49
    .line 50
    iget-boolean v5, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 51
    .line 52
    if-nez v5, :cond_4

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x0

    .line 59
    cmpg-float v4, v4, v5

    .line 60
    .line 61
    if-lez v4, :cond_4

    .line 62
    .line 63
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 64
    .line 65
    invoke-virtual {v4, p0}, Lcom/android/server/wm/TransitionController;->inFinishingTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/Task;->updateMinimizeChangeInfo(III)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_SHELL_TRANSITION:Z

    .line 80
    .line 81
    if-eqz p2, :cond_6

    .line 82
    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget p2, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 86
    .line 87
    const/4 v1, 0x2

    .line 88
    if-ne p2, v1, :cond_6

    .line 89
    .line 90
    iget-boolean p2, p1, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 91
    .line 92
    if-eqz p2, :cond_6

    .line 93
    .line 94
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_6

    .line 101
    .line 102
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/android/server/wm/FreeformController;->continueMinimizeStateChangedCallbacks()V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 120
    .line 121
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 131
    .line 132
    iput v0, p2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 133
    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/server/wm/Task;->updateMinimizeChangeInfo(III)V

    .line 137
    .line 138
    .line 139
    :cond_5
    iget-object p1, p1, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 140
    .line 141
    const/16 v0, 0xcb

    .line 142
    .line 143
    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    .line 149
    .line 150
    :cond_6
    :goto_3
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 151
    .line 152
    if-eqz p1, :cond_8

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_8

    .line 159
    .line 160
    iget p1, p0, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    .line 161
    .line 162
    if-ne p1, v2, :cond_7

    .line 163
    .line 164
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 171
    .line 172
    iput p1, p0, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    .line 173
    .line 174
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    iput p1, p0, Lcom/android/server/wm/Task;->mLastMinimizedRotation:I

    .line 183
    .line 184
    :cond_8
    return-void
.end method

.method public final setNextAffiliate(Lcom/android/server/wm/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 8
    .line 9
    :goto_0
    iput p1, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 10
    .line 11
    return-void
.end method

.method public final setPrevAffiliate(Lcom/android/server/wm/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 8
    .line 9
    :goto_0
    iput p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 10
    .line 11
    return-void
.end method

.method public final setSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result p0

    return p0
.end method

.method public setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 5
    iget-object p1, p1, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 6
    invoke-interface {v0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz p1, :cond_1

    .line 7
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->removeTask(Lcom/android/server/wm/Task;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanishedInternal(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz p1, :cond_2

    if-nez p2, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTaskDef(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 13
    iget-object p1, p1, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    const/4 p1, 0x2

    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 15
    iget-boolean p1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p1, :cond_4

    .line 16
    const-string/jumbo p1, "setTaskOrganizer"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final setUnMinimizedWhenRestored()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 8
    .line 9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/Task;->updateMinimizeChangeInfo(III)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v1, v1, p0, v2}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeStateChanged(IILcom/android/server/wm/Task;Z)V

    .line 24
    .line 25
    .line 26
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iput v1, p0, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    .line 37
    .line 38
    iput v1, p0, Lcom/android/server/wm/Task;->mLastMinimizedRotation:I

    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final setWindowingMode(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    .line 3
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setWindowingMode(IZ)V

    return-void
.end method

.method public final setWindowingMode(IZ)V
    .locals 16

    move-object/from16 v8, p0

    .line 5
    const-string/jumbo v0, "movePinnedActivityToOriginalTask"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    const-string v0, "ActivityTaskManager"

    const-string/jumbo v1, "taskDisplayArea is null, bail early"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v6, p1

    if-nez p2, :cond_1

    .line 9
    invoke-virtual {v1, v6, v4, v3}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v7

    if-nez v7, :cond_1

    move v6, v5

    :cond_1
    if-ne v2, v6, :cond_2

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v6}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    return-void

    :cond_2
    const/4 v7, -0x1

    .line 11
    iput v7, v8, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    const/4 v7, 0x1

    .line 12
    invoke-virtual {v8, v7, v7}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-nez v6, :cond_4

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 14
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v10

    goto :goto_0

    :cond_3
    move v10, v7

    goto :goto_0

    :cond_4
    move v10, v6

    :goto_0
    const/4 v11, 0x2

    if-ne v2, v11, :cond_5

    .line 15
    iput-boolean v7, v8, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 16
    iget-object v12, v8, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v12, v8, v4}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    :cond_5
    if-ne v10, v11, :cond_6

    .line 17
    iget-object v12, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-eqz v12, :cond_6

    .line 18
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->dismissPip()V

    :cond_6
    const/4 v12, 0x5

    if-eq v10, v7, :cond_8

    if-eqz v9, :cond_8

    .line 19
    iget-boolean v13, v9, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v13, :cond_8

    .line 20
    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityRecord;->canForceResizeNonResizable(I)Z

    move-result v13

    if-eqz v13, :cond_8

    if-ne v10, v12, :cond_7

    goto :goto_1

    .line 21
    :cond_7
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 22
    iget-object v13, v8, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 23
    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 24
    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v13, v3, v7, v10}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 25
    :cond_8
    :goto_1
    iget-object v3, v8, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    if-eqz v9, :cond_9

    .line 26
    :try_start_0
    iget-object v3, v8, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 27
    :cond_9
    :goto_2
    iget-object v3, v8, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v6, v3}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3, v7}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(Z)V

    .line 29
    :cond_a
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v3

    if-nez v3, :cond_b

    .line 30
    invoke-super {v8, v6}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    :cond_b
    if-ne v2, v11, :cond_11

    if-eqz v9, :cond_11

    .line 31
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v10, :cond_f

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v10

    if-nez v10, :cond_f

    .line 33
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    .line 34
    invoke-virtual {v10}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 35
    iget-object v10, v8, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 36
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    .line 37
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v13

    .line 38
    invoke-virtual {v9, v10, v13, v0}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 39
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 40
    invoke-virtual {v13, v9}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 41
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v13

    .line 42
    invoke-virtual {v9, v13}, Lcom/android/server/wm/WindowToken;->getOrCreateFixedRotationLeash(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 43
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v13, :cond_c

    iget v13, v9, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v13, :cond_c

    move v13, v7

    goto :goto_3

    :cond_c
    move v13, v5

    .line 44
    :goto_3
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 45
    invoke-virtual {v1, v7, v5}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v14

    if-eqz v14, :cond_d

    .line 46
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 47
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_4

    .line 48
    :cond_d
    invoke-virtual {v10, v0, v4}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 49
    :goto_4
    invoke-static {}, Lcom/android/window/flags/Flags;->removePrepareSurfaceInPlacement()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, v10, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_e

    .line 50
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->prepareSurfaces()V

    .line 51
    iget-object v0, v9, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/TransitionController;->inFinishingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 52
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 53
    invoke-static {v0, v1}, Lcom/android/server/wm/Transition;->assignLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 54
    :cond_e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v0, :cond_f

    if-eqz v13, :cond_f

    .line 55
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_f
    if-eqz v3, :cond_10

    .line 56
    invoke-super {v8, v6}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 57
    :cond_10
    invoke-virtual {v9, v5}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 58
    iget-object v0, v8, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    goto :goto_5

    :cond_11
    if-eqz v3, :cond_12

    .line 59
    invoke-super {v8, v6}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 60
    :cond_12
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_15

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 62
    iget-object v0, v8, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    if-eqz p2, :cond_13

    .line 63
    const-string v1, "freeform stack attached"

    goto :goto_6

    :cond_13
    const-string/jumbo v1, "windowing mode change:freeform"

    .line 64
    :goto_6
    iget-object v3, v0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 v10, 0x65

    .line 65
    invoke-virtual {v3, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 66
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    :cond_14
    if-nez p2, :cond_15

    .line 68
    iget-object v0, v8, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string/jumbo v1, "windowing mode change:non-freeform"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformController;->scheduleUnbindMinimizeContainerService(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_15
    :goto_7
    if-eqz p2, :cond_16

    .line 69
    iget-object v0, v8, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :cond_16
    if-eqz v9, :cond_17

    if-ne v2, v7, :cond_17

    if-ne v6, v11, :cond_17

    .line 70
    :try_start_1
    iget-object v0, v8, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 71
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 72
    iget-object v0, v8, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 73
    invoke-virtual {v0}, Lcom/android/server/wm/PinnedTaskController;->deferOrientationChangeForEnteringPipFromFullScreenIfNeeded()V

    :cond_17
    if-ne v6, v12, :cond_19

    .line 74
    invoke-virtual {v8, v7, v5}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 75
    iget-boolean v0, v8, Lcom/android/server/wm/Task;->mSkipLayoutTask:Z

    if-nez v0, :cond_19

    .line 76
    invoke-virtual {v8, v7, v7}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 77
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v7

    .line 78
    invoke-virtual {v7, v6}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 79
    iget-object v1, v8, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 80
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    if-eqz v0, :cond_18

    .line 81
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v3, v2

    goto :goto_8

    :cond_18
    move-object v3, v4

    :goto_8
    const/4 v9, -0x1

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object v4, v0

    move-object v6, v7

    move v7, v9

    .line 82
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_19
    iget-object v0, v8, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 84
    iget-object v0, v8, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 85
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    if-nez v0, :cond_1a

    .line 86
    iget-object v0, v8, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 87
    iget-object v0, v8, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    :cond_1a
    return-void

    .line 88
    :goto_9
    iget-object v1, v8, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 89
    throw v0
.end method

.method public final shouldSleepActivities()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    :goto_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_1
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-boolean p0, v0, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 40
    .line 41
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 42
    .line 43
    :goto_1
    return p0
.end method

.method public final shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0, p2}, Lcom/android/server/wm/ActivityRecord;->computeTaskAffinity(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/content/Intent;->isDocument()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-array v3, v1, [Z

    .line 56
    .line 57
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;

    .line 58
    .line 59
    invoke-direct {v4, p0, v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/wm/Task;[Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    if-nez p0, :cond_2

    .line 79
    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string/jumbo p2, "shouldUpRecreateTask: task not in history for "

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string p1, "ActivityTaskManager"

    .line 96
    .line 97
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    return v2

    .line 101
    :cond_2
    iget-object p1, p2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-nez p0, :cond_4

    .line 110
    .line 111
    :cond_3
    :goto_0
    return v1

    .line 112
    :cond_4
    return v2

    .line 113
    :cond_5
    :goto_1
    return v1
.end method

.method public final showSurfaceOnCreation()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final showToCurrentUser()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget p0, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->isUserVisible(I)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 v1, 0x0

    .line 44
    :cond_3
    :goto_1
    return v1
.end method

.method public final startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-nez v7, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v7, v6

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    move v7, v5

    .line 25
    :goto_1
    if-eq v4, v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eqz v8, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move v8, v6

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    :goto_2
    move v8, v5

    .line 37
    :goto_3
    iget-boolean v9, v1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 38
    .line 39
    if-nez v9, :cond_5

    .line 40
    .line 41
    if-eqz v7, :cond_5

    .line 42
    .line 43
    if-eqz v8, :cond_4

    .line 44
    .line 45
    if-eqz v2, :cond_5

    .line 46
    .line 47
    :cond_4
    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 48
    .line 49
    .line 50
    :cond_5
    if-nez v2, :cond_6

    .line 51
    .line 52
    if-eqz v8, :cond_6

    .line 53
    .line 54
    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_6

    .line 59
    .line 60
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_6
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 65
    .line 66
    const/4 v8, 0x0

    .line 67
    if-nez v4, :cond_7

    .line 68
    .line 69
    iget-object v9, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 70
    .line 71
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    sub-int/2addr v10, v5

    .line 80
    if-eq v9, v10, :cond_7

    .line 81
    .line 82
    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 83
    .line 84
    iput-boolean v6, v9, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 85
    .line 86
    :cond_7
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    .line 87
    .line 88
    const/4 v10, 0x2

    .line 89
    aget-boolean v9, v9, v10

    .line 90
    .line 91
    if-eqz v9, :cond_8

    .line 92
    .line 93
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    new-instance v10, Ljava/lang/RuntimeException;

    .line 102
    .line 103
    const-string v11, "here"

    .line 104
    .line 105
    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 117
    .line 118
    filled-new-array {v9, v4, v10}, [Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v16

    .line 122
    const-wide v12, -0x1f6199d2a916c919L    # -2.6085483983225736E157

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    const/4 v14, 0x0

    .line 128
    const/4 v15, 0x0

    .line 129
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_9

    .line 137
    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 139
    .line 140
    .line 141
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_a

    .line 146
    .line 147
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    if-nez v4, :cond_a

    .line 152
    .line 153
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_a
    if-nez v7, :cond_b

    .line 158
    .line 159
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_b
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 164
    .line 165
    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 166
    .line 167
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    const/high16 v9, 0x10000

    .line 172
    .line 173
    and-int/2addr v7, v9

    .line 174
    if-eqz v7, :cond_c

    .line 175
    .line 176
    invoke-virtual {v4, v6, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 177
    .line 178
    .line 179
    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 180
    .line 181
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 187
    .line 188
    invoke-virtual {v4, v1}, Lcom/android/server/wm/TransitionController;->setNoAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_c
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 193
    .line 194
    .line 195
    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 196
    .line 197
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    :goto_4
    if-eqz v2, :cond_d

    .line 203
    .line 204
    iget-boolean v4, v1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 205
    .line 206
    if-nez v4, :cond_d

    .line 207
    .line 208
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-nez v4, :cond_d

    .line 213
    .line 214
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-static {v4, v8, v1, v3}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 219
    .line 220
    .line 221
    :cond_d
    if-eqz v2, :cond_e

    .line 222
    .line 223
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 224
    .line 225
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    const/high16 v7, 0x200000

    .line 230
    .line 231
    and-int/2addr v4, v7

    .line 232
    if-eqz v4, :cond_10

    .line 233
    .line 234
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v8}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    if-ne v4, v1, :cond_f

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_e
    if-eqz v3, :cond_10

    .line 245
    .line 246
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    const/4 v7, 0x5

    .line 251
    if-ne v4, v7, :cond_10

    .line 252
    .line 253
    :cond_f
    move v4, v6

    .line 254
    goto :goto_6

    .line 255
    :cond_10
    :goto_5
    move v4, v5

    .line 256
    :goto_6
    if-eqz v3, :cond_11

    .line 257
    .line 258
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getDisableStartingWindow()Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-eqz v3, :cond_11

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_11
    move v6, v4

    .line 266
    :goto_7
    iget-boolean v3, v1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 267
    .line 268
    if-eqz v3, :cond_13

    .line 269
    .line 270
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v5, v8}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-nez v2, :cond_12

    .line 281
    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V

    .line 283
    .line 284
    .line 285
    :cond_12
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 286
    .line 287
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 288
    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_13
    if-eqz v6, :cond_16

    .line 292
    .line 293
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 294
    .line 295
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 296
    .line 297
    const/16 v5, 0x9

    .line 298
    .line 299
    invoke-direct {v4, v5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 307
    .line 308
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 309
    .line 310
    iget-boolean v4, v0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    .line 311
    .line 312
    if-eqz v4, :cond_15

    .line 313
    .line 314
    iget-object v4, v0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-eqz v4, :cond_14

    .line 321
    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    iput-boolean v4, v0, Lcom/android/server/wm/StartingSurfaceController;->mInitProcessRunning:Z

    .line 327
    .line 328
    iput-boolean v2, v0, Lcom/android/server/wm/StartingSurfaceController;->mInitNewTask:Z

    .line 329
    .line 330
    move/from16 v4, p4

    .line 331
    .line 332
    iput-boolean v4, v0, Lcom/android/server/wm/StartingSurfaceController;->mInitTaskSwitch:Z

    .line 333
    .line 334
    :cond_14
    iget-object v0, v0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    .line 335
    .line 336
    new-instance v2, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;

    .line 337
    .line 338
    move-object/from16 v6, p6

    .line 339
    .line 340
    invoke-direct {v2, v1, v3, v6}, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    goto :goto_8

    .line 347
    :cond_15
    move/from16 v4, p4

    .line 348
    .line 349
    move-object/from16 v6, p6

    .line 350
    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    const/4 v7, 0x0

    .line 356
    const/4 v8, 0x1

    .line 357
    move-object/from16 v0, p1

    .line 358
    .line 359
    move-object v1, v3

    .line 360
    move/from16 v2, p3

    .line 361
    .line 362
    move/from16 v3, p4

    .line 363
    .line 364
    move v4, v5

    .line 365
    move v5, v8

    .line 366
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 367
    .line 368
    .line 369
    :cond_16
    :goto_8
    return-void
.end method

.method public final startFreeformPinning()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformTaskPinningController:Lcom/android/server/wm/FreeformTaskPinningController;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_TASK_PINNING:Z

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    iget-object v4, v0, Lcom/android/server/wm/FreeformTaskPinningController;->mTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_2

    .line 26
    .line 27
    :cond_1
    move v5, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v5, v0, Lcom/android/server/wm/FreeformTaskPinningController;->mPinnedTask:Lcom/android/server/wm/Task;

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    move v5, v2

    .line 34
    :goto_0
    const-string v6, "FreeformTaskPinningController"

    .line 35
    .line 36
    if-nez v5, :cond_8

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 45
    .line 46
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_4

    .line 58
    .line 59
    const-string p0, "Failed to start freeform task pinning, task isn\'t in freeform."

    .line 60
    .line 61
    invoke-static {v6, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_5

    .line 70
    .line 71
    const-string p0, "Failed to start freeform task pinning, it\'s not in dex mode."

    .line 72
    .line 73
    invoke-static {v6, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    const/4 v5, 0x2

    .line 78
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ConfigurationContainer;->setFreeformTaskPinning(I)V

    .line 79
    .line 80
    .line 81
    if-eqz v1, :cond_6

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_6

    .line 88
    .line 89
    const/4 v5, 0x3

    .line 90
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ConfigurationContainer;->setFreeformTaskPinning(I)V

    .line 91
    .line 92
    .line 93
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-nez v5, :cond_7

    .line 98
    .line 99
    const v5, 0x7fffffff

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v5, p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 103
    .line 104
    .line 105
    if-eqz v1, :cond_7

    .line 106
    .line 107
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_7

    .line 112
    .line 113
    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 114
    .line 115
    .line 116
    :cond_7
    const/4 v1, 0x0

    .line 117
    invoke-virtual {v4, v2, v1}, Lcom/android/server/wm/TaskDisplayArea;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 118
    .line 119
    .line 120
    iput-object p0, v0, Lcom/android/server/wm/FreeformTaskPinningController;->mPinnedTask:Lcom/android/server/wm/Task;

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_8
    :goto_1
    const-string p0, "Failed to start freeform task pinning, already pinned"

    .line 124
    .line 125
    invoke-static {v6, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    :goto_2
    return-void
.end method

.method public final switchUser(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showToCurrentUser()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const v0, 0x7fffffff

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final toFullString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0xc0

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 18
    .line 19
    .line 20
    const-string v1, " U="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eq v1, p0, :cond_0

    .line 35
    .line 36
    const-string v2, " rootTaskId="

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_0
    const-string v1, " visible="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " visibleRequested="

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, " mode="

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStage()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_1

    .line 96
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v3, " stage="

    .line 100
    .line 101
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getStage()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-static {v3}, Landroid/app/WindowConfiguration;->stageConfigToString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    :cond_1
    const-string v2, " translucent="

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, " sz="

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const/16 p0, 0x7d

    .line 151
    .line 152
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x80

    .line 7
    .line 8
    const-string v1, "Task{"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " #"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, " type="

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

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
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    const-string v1, " A="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    const-string v1, " I="

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 105
    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    const-string v1, " aI="

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    :cond_3
    :goto_0
    const/16 v1, 0x7d

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v0, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 142
    .line 143
    return-object v0
.end method

.method public final topRunningActivity(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public final topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public updateEffectiveIntent()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription$1()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final updateMinMaxSizeIfNeeded()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    .line 11
    .line 12
    invoke-virtual {v2, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    xor-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 23
    .line 24
    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 25
    .line 26
    iput v1, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    .line 27
    .line 28
    iput v1, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 46
    .line 47
    :goto_0
    int-to-float v3, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 59
    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    const-string v5, "android.server.wm.app"

    .line 63
    .line 64
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 75
    .line 76
    int-to-float v3, v3

    .line 77
    :cond_2
    iget v4, p0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    .line 78
    .line 79
    cmpl-float v4, v4, v3

    .line 80
    .line 81
    const-string v5, "ActivityTaskManager"

    .line 82
    .line 83
    if-eqz v4, :cond_a

    .line 84
    .line 85
    iput v3, p0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    .line 86
    .line 87
    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 88
    .line 89
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    int-to-float v4, v4

    .line 97
    const/4 v6, 0x0

    .line 98
    cmpg-float v6, v4, v6

    .line 99
    .line 100
    if-gtz v6, :cond_3

    .line 101
    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string/jumbo v0, "updateMinMaxSizeIfNeeded: packageBaseDensity="

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v0, ", Error"

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_3
    div-float/2addr v3, v4

    .line 127
    const/high16 v4, 0x3f000000    # 0.5f

    .line 128
    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    .line 132
    .line 133
    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 134
    .line 135
    if-gez v5, :cond_4

    .line 136
    .line 137
    move v5, v1

    .line 138
    goto :goto_2

    .line 139
    :cond_4
    int-to-float v5, v5

    .line 140
    mul-float/2addr v5, v3

    .line 141
    add-float/2addr v5, v4

    .line 142
    float-to-int v5, v5

    .line 143
    :goto_2
    iput v5, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 144
    .line 145
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 146
    .line 147
    if-gez v0, :cond_5

    .line 148
    .line 149
    move v0, v1

    .line 150
    goto :goto_3

    .line 151
    :cond_5
    int-to-float v0, v0

    .line 152
    mul-float/2addr v0, v3

    .line 153
    add-float/2addr v0, v4

    .line 154
    float-to-int v0, v0

    .line 155
    :goto_3
    iput v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_6
    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 159
    .line 160
    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 161
    .line 162
    :goto_4
    if-eqz v2, :cond_9

    .line 163
    .line 164
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    .line 165
    .line 166
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 167
    .line 168
    if-gez v2, :cond_7

    .line 169
    .line 170
    move v2, v1

    .line 171
    goto :goto_5

    .line 172
    :cond_7
    int-to-float v2, v2

    .line 173
    mul-float/2addr v2, v3

    .line 174
    add-float/2addr v2, v4

    .line 175
    float-to-int v2, v2

    .line 176
    :goto_5
    iput v2, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 177
    .line 178
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 179
    .line 180
    if-gez v0, :cond_8

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_8
    int-to-float v0, v0

    .line 184
    mul-float/2addr v0, v3

    .line 185
    add-float/2addr v0, v4

    .line 186
    float-to-int v1, v0

    .line 187
    :goto_6
    iput v1, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_9
    iput v1, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    .line 191
    .line 192
    iput v1, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string/jumbo v1, "updateMinMaxSizeIfNeeded: new density equals last density. mLastDensityDpi: "

    .line 198
    .line 199
    .line 200
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget p0, p0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    .line 204
    .line 205
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    :goto_7
    return-void
.end method

.method public final updateMinimizeChangeInfo(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, -0x1

    .line 11
    if-eq p2, v1, :cond_1

    .line 12
    .line 13
    if-ne p3, v1, :cond_2

    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getFreeformContainerPosition()Landroid/graphics/Point;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget p3, p2, Landroid/graphics/Point;->x:I

    .line 20
    .line 21
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 22
    .line 23
    move v2, p3

    .line 24
    move p3, p2

    .line 25
    move p2, v2

    .line 26
    :cond_2
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizePoint:Landroid/graphics/PointF;

    .line 41
    .line 42
    int-to-float p2, p2

    .line 43
    int-to-float p3, p3

    .line 44
    invoke-virtual {v1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 45
    .line 46
    .line 47
    iput p1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizeAnimState:I

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lcom/android/server/wm/FreeformController;->releaseForceHideTaskLocked(Lcom/android/server/wm/Task;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const-string p0, "ActivityTaskManager"

    .line 58
    .line 59
    const-string p1, "ChangeInfo is null"

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public final updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 29
    .line 30
    iget-object v2, v1, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sub-int/2addr v2, v0

    .line 37
    :goto_0
    if-ltz v2, :cond_1

    .line 38
    .line 39
    iget-object v0, v1, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 46
    .line 47
    :try_start_0
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0, p1, p0}, Landroid/view/ISurfaceControlViewHost;->onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    add-int/lit8 v2, v2, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method public final updateOverrideConfigurationFromLaunchBounds()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 20
    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    move v0, v1

    .line 33
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 34
    .line 35
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 36
    .line 37
    if-ne v1, v3, :cond_2

    .line 38
    .line 39
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 40
    .line 41
    if-ne v0, v2, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 45
    .line 46
    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 50
    .line 51
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    return-void
.end method

.method public final updateSurfaceVisibilityForDragAndDrop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 19
    .line 20
    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 21
    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final updateTaskDescription$1()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct {v3, v4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const-class v4, Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v3, v4, v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Landroid/app/ActivityManager$TaskDescription;->setResizeMode(I)V

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Landroid/app/ActivityManager$TaskDescription;->setMinWidth(I)V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Landroid/app/ActivityManager$TaskDescription;->setMinHeight(I)V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v3, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 63
    .line 64
    const/16 v4, 0xb

    .line 65
    .line 66
    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-object v3, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->updateTaskDescription$1()V

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final updateTaskMovement(IZZ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    filled-new-array {v0, v1, v2, v3, p1}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/16 v0, 0x791a

    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskMoved(Lcom/android/server/wm/Task;ZZ)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    iput-wide v0, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 66
    .line 67
    :cond_1
    if-eqz p2, :cond_2

    .line 68
    .line 69
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->inRecents:Z

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method public final updateTaskOrganizerState(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

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
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-boolean v0, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 50
    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    if-eq v2, v0, :cond_4

    .line 60
    .line 61
    return v1

    .line 62
    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0
.end method

.method public final updateWindowFocusInTask()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasWindowFocus:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    invoke-direct {v0, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    move v0, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 28
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mLastDispatchedWindowFocusInTask:Z

    .line 29
    .line 30
    if-eq v2, v0, :cond_2

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mLastDispatchedWindowFocusInTask:Z

    .line 33
    .line 34
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;-><init>(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public final writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    const-wide v0, 0x10500000001L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 15
    .line 16
    .line 17
    const-wide v0, 0x10500000002L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string p0, "Task"

    .line 49
    .line 50
    :goto_0
    const-wide v0, 0x10900000003L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
